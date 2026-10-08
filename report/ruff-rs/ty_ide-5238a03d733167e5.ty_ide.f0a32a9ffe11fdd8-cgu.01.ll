Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.01?download=true
inline.NumInlined: 1801
inline.NumDeleted: 1013
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskEUeM34gmJU_6ty_ide7symbols10SymbolTreeENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB1r_:bb.a
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.05.0.i
  %i.g = tail call { i64, ptr } @_RINvXs18_NtCskEUeM34gmJU_6ty_ide7symbolsNtB7_10SymbolTreeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtBV_7tracker15StandardTrackerEB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.6.0.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = add i64 %i.h, %.sroa.02.0.i              ; 2 uses
  %i.k = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskEUeM34gmJU_6ty_ide7symbols10SymbolTreeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2r_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2r_7GetSize26get_heap_size_with_trackerB2m_E0EBU_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskEUeM34gmJU_6ty_ide7symbols10SymbolTreeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2r_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2r_7GetSize26get_heap_size_with_trackerB2m_E0EBU_.exit: ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %.pn18.i = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %i.m = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.n = mul i64 %i.m, 80
  %i.o = add i64 %i.n, %.pn.i
  %i.p = insertvalue { i64, ptr } poison, i64 %i.o, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.pn18.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecIBH_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_8map_with7MapWithINtNtBa_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYB2Z_NtB3Y_19ParallelIteratorExt11map_with_dbB1c_NCNvNtB1i_19goto_implementation19goto_implementations_0E0EEB1i_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !2327
  %i.h = invoke { i64, i64 } @_RNvXs0_NtNtCsg7jhnslYu1x_5rayon4iter8map_withINtB5_7MapWithINtNtB9_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYBV_NtB1U_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetENCNvNtB42_19goto_implementation19goto_implementations_0E0ENtB7_16ParallelIterator7opt_lenB42_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.o       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @_RINvNtNtCsg7jhnslYu1x_5rayon4iter7collect21collect_with_consumerINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetENCINvB2_14special_extendINtNtB4_8map_with7MapWithINtNtB6_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYB2Z_NtB3Y_19ParallelIteratorExt11map_with_dbB10_NCNvNtB1y_19goto_implementation19goto_implementations_0E0EB10_E0EB1y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @_RINvXs0_NtNtCsg7jhnslYu1x_5rayon4iter8map_withINtB6_7MapWithINtNtBa_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYBW_NtB1V_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetENCNvNtB43_19goto_implementation19goto_implementations_0E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB43_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.o = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.o, null
  br i1 %.not.i.i30, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread40, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.m, -1                         ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val.i42 = load i64, ptr %i.q, align 8, !noalias !2328, !noundef !4 ; 3 uses
  %i.r = icmp ult i64 %.val.i42, 384307168202282326
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread40: ; preds = %.lr.ph.i.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.v = phi i64 [ %i.ad, %.lr.ph.ithread-pre-split ], [ %.val.i42, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.w = phi i64 [ %i.aa, %.lr.ph.ithread-pre-split ], [ %i.p, %.lr.ph.ithread-pre-split.preheader ]
  %i.x = phi ptr [ %i.z, %.lr.ph.ithread-pre-split ], [ %i.o, %.lr.ph.ithread-pre-split.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.aa = add i64 %i.w, -1                        ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val.i = load i64, ptr %i.ab, align 8, !noalias !2328, !noundef !4 ; 2 uses
  %i.ac = icmp ult i64 %.val.i, 384307168202282326
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %.val.i, %i.v                   ; 2 uses
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i, %.lr.ph.ithread-pre-split.preheader
  %.lcssa = phi i64 [ %.val.i42, %.lr.ph.ithread-pre-split.preheader ], [ %i.ad, %.lr.ph.ithread-pre-split ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2329, !noundef !4 ; 2 uses
  %i.ah = load i64, ptr %0, align 8, !range !5, !alias.scope !2329, !noundef !4
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = icmp ugt i64 %.lcssa, %i.ai
  br i1 %i.aj, label %bb.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit, !prof !30

bb.e:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit unwind label %bb.n

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread40, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread, %bb.e
  %i.ak = phi ptr [ %i.u, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread ], [ %i.af, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit ], [ %i.af, %bb.e ], [ %i.t, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecIBZ_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB26_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB24_5accumjNtB45_3Sum3sumINtB36_3MapB3_B3G_EE0E0EB1k_.exit.thread40 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEB1d_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs6_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1b_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEE9pop_frontB1x_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.ao, %bb.g ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1b_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.m

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %i.c, align 8, !range !15, !noundef !4
  %.not = icmp eq i64 %i.ap, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecIB1B_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEEB1X_.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.ar = load i64, ptr %i.am, align 8, !noundef !4 ; 5 uses
  %i.as = load i64, ptr %i.ak, align 8, !alias.scope !2330, !noundef !4 ; 5 uses
  %i.at = load i64, ptr %0, align 8, !range !5, !alias.scope !2330, !noundef !4
  %i.au = sub i64 %i.at, %i.as
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i, !prof !6

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.thread.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.as, i64 noundef %i.ar, i64 noundef 8, i64 noundef 24)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.thread.i
  %i.aw = load i64, ptr %i.ak, align 8, !alias.scope !2331, !noundef !4 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 384307168202282326
  call void @llvm.assume(i1 %i.ax)
  br label %bb.j

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i: ; preds = %bb.i
  %i.ay = icmp ult i64 %i.as, 384307168202282326
  call void @llvm.assume(i1 %i.ay)
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i, %.noexc10
  %i.az = phi i64 [ %i.aw, %.noexc10 ], [ %i.as, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i ]
  %i.ba = load ptr, ptr %i.an, align 8, !alias.scope !2331, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.az
  %i.bc = mul i64 %i.ar, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.aq, i64 %i.bc, i1 false)
  %.pre.i = load i64, ptr %i.ak, align 8, !alias.scope !2331
  br label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecIB1B_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEEB1X_.exit12: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1b_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecIB1B_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEEB1X_.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.thread.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body unwind label %bb.m

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i: ; preds = %bb.j, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i
  %i.be = phi i64 [ %.pre.i, %bb.j ], [ %i.as, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEE7reserveBJ_.exit.i ]
  %i.bf = add i64 %i.be, %i.ar
  store i64 %i.bf, ptr %i.ak, align 8, !alias.scope !2331
  store i64 0, ptr %i.am, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEB1d_.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEEB1d_.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.m:                                             ; preds = %bb.n, %.body, %bb.o, %bb.l
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecIB1b_NtCskEUeM34gmJU_6ty_ide16NavigationTargetEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread unwind label %bb.m

.thread:                                          ; preds = %bb.n, %.body, %bb.o
  %.pn717 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn717

bb.o:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsg7jhnslYu1x_5rayon4iter8map_with7MapWithINtNtBI_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYB1o_NtB2n_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide16NavigationTargetENCNvNtB4w_19goto_implementation19goto_implementations_0E0EEB4w_(ptr noalias noundef align 8 dereferenceable(56) %i.g) #23
          to label %.thread unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_13flat_map_iter11FlatMapIterINtNtB8_8map_with7MapWithINtNtB8_3len6MinLenINtNtBa_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYB3t_NtB4M_19ParallelIteratorExt11map_with_dbBG_NCNvNtB1e_10references10referencess_0E0ENCB6s_s0_0EEB1e_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @_RINvXs0_NtNtCsg7jhnslYu1x_5rayon4iter13flat_map_iterINtB6_11FlatMapIterINtNtB8_8map_with7MapWithINtNtB8_3len6MinLenINtNtBa_3vec8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db5files4FileEENtNtCs4o81Y09oZk1_10ty_project8parallel10ParallelDbNCINvYB1w_NtB2P_19ParallelIteratorExt11map_with_dbINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENCNvNtB4Y_10references10referencess_0E0ENCB5D_s0_0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB4Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.i, null
  br i1 %.not.i.i22, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread29, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val.i31 = load i64, ptr %i.k, align 8, !noalias !2340, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %.val.i31, 461168601842738791
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread29: ; preds = %.lr.ph.i.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.p = phi i64 [ %i.x, %.lr.ph.ithread-pre-split ], [ %.val.i31, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.u, %.lr.ph.ithread-pre-split ], [ %i.j, %.lr.ph.ithread-pre-split.preheader ]
  %i.r = phi ptr [ %i.t, %.lr.ph.ithread-pre-split ], [ %i.i, %.lr.ph.ithread-pre-split.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.u = add i64 %i.q, -1                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val.i = load i64, ptr %i.v, align 8, !noalias !2340, !noundef !4 ; 2 uses
  %i.w = icmp ult i64 %.val.i, 461168601842738791
  call void @llvm.assume(i1 %i.w)
  %i.x = add i64 %.val.i, %i.p                    ; 2 uses
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i, %.lr.ph.ithread-pre-split.preheader
  %.lcssa = phi i64 [ %.val.i31, %.lr.ph.ithread-pre-split.preheader ], [ %i.x, %.lr.ph.ithread-pre-split ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2341, !noundef !4 ; 2 uses
  %i.ab = load i64, ptr %0, align 8, !range !5, !alias.scope !2341, !noundef !4
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ugt i64 %.lcssa, %i.ac
  br i1 %i.ad, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit, !prof !2342

bb.b:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef %.lcssa, i64 noundef 4, i64 noundef 20)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit unwind label %bb.k

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread29, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread, %bb.b
  %i.ae = phi ptr [ %i.o, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread ], [ %i.z, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit ], [ %i.z, %bb.b ], [ %i.n, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB20_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1Y_5accumjNtB3Z_3Sum3sumINtB30_3MapB3_B3A_EE0E0EB1g_.exit.thread29 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit15, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEE9pop_frontB1s_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit: ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %i.ax, %bb.h ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1s_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEEB1S_.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.al = load i64, ptr %i.ag, align 8, !noundef !4 ; 5 uses
  %i.am = load i64, ptr %i.ae, align 8, !alias.scope !2343, !noundef !4 ; 5 uses
  %i.an = load i64, ptr %0, align 8, !range !5, !alias.scope !2343, !noundef !4
  %i.ao = sub i64 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i, !prof !6

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.thread.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.am, i64 noundef %i.al, i64 noundef 4, i64 noundef 20)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.thread.i
  %i.aq = load i64, ptr %i.ae, align 8, !alias.scope !2344, !noundef !4 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 461168601842738791
  call void @llvm.assume(i1 %i.ar)
  br label %bb.g

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i: ; preds = %bb.f
  %i.as = icmp ult i64 %i.am, 461168601842738791
  call void @llvm.assume(i1 %i.as)
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i, %.noexc10
  %i.at = phi i64 [ %i.aq, %.noexc10 ], [ %i.am, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i ]
  %i.au = load ptr, ptr %i.ah, align 8, !alias.scope !2344, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw [20 x i8], ptr %i.au, i64 %i.at
  %i.aw = mul i64 %i.al, 20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull readonly align 4 %i.ak, i64 %i.aw, i1 false)
  %.pre.i = load i64, ptr %i.ae, align 8, !alias.scope !2344
  br label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEEB1S_.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1s_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.thread.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i
  %i.ay = phi i64 [ %.pre.i, %bb.g ], [ %i.am, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetE7reserveBF_.exit.i ]
  %i.az = add i64 %i.ay, %i.al
  store i64 %i.az, ptr %i.ae, align 8, !alias.scope !2344
  store i64 0, ptr %i.ag, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit15 unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit15: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.k, %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCskEUeM34gmJU_6ty_ide15ReferenceTargetEEB19_.exit
  %i.ba = landingpad { ptr, i32 }
end_hunk_0
