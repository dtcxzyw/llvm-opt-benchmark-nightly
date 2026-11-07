Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.06?download=true
inline.NumInlined: 1131
inline.NumDeleted: 478
begin_hunk_0_@_RINvXs1R_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15OverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.05.0 = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !45, !noundef !38 ; 2 uses
  %.not9 = icmp eq i64 %i.u, -2
  br i1 %.not9, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.not.i = icmp eq i64 %i.u, -1
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.e)
  %.pre.i = load i64, ptr %i.b, align 8, !noalias !1705
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %i.b, align 8, !noalias !1705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi i64 [ 0, %bb.l ], [ %.pre.i, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !range !37, !alias.scope !1704, !noundef !38
  %.not6.i = icmp eq i64 %i.y, -1
  br i1 %.not6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.v)
  %.pre7.i = load i64, ptr %i.a, align 8
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit: ; preds = %bb.n, %bb.o
  %i.aa = phi i64 [ 0, %bb.o ], [ %.pre7.i, %bb.n ]
  %i.ab = add i64 %i.aa, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.p ], [ %i.ab, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = add i64 %i.o, %i.k
  %i.ae = add i64 %i.ad, %.sroa.05.0
  %i.af = add i64 %i.ae, %.sroa.0.0
  store i64 %i.af, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvXs1R_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15OverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, i1 noundef zeroext %1) unnamed_addr #1 !guid !1708 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !41, !noundef !38
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i1 } @_RINvXsp_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEENtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB2C_7tracker9NoTrackerEB1y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i1 noundef zeroext %1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 0
  %i.d = extractvalue { i64, i1 } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0.in = phi i1 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !41, !noundef !38
  %.not17 = icmp eq i64 %i.f, -1
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i64, i1 } @_RINvXsp_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEENtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB2C_7tracker9NoTrackerEB1y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i1 noundef zeroext %.sroa.5.0.in) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0
  %i.i = extractvalue { i64, i1 } %i.g, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.57.0.in = phi i1 [ %i.i, %bb.d ], [ %.sroa.5.0.in, %bb.c ] ; 2 uses
  %.sroa.06.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !37, !noundef !38
  %.not18 = icmp eq i64 %i.k, -1
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call { i64, i1 } @_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, i1 noundef zeroext %.sroa.57.0.in) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0
  %i.n = extractvalue { i64, i1 } %i.l, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.012.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %.sroa.014.0.in = phi i1 [ %i.n, %bb.f ], [ %.sroa.57.0.in, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !45, !noundef !38
  switch i64 %i.p, label %bb.h [
    i64 -2, label %bb.k
    i64 -1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = tail call { i64, i1 } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, i1 noundef zeroext %.sroa.014.0.in) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 0
  %i.s = extractvalue { i64, i1 } %i.q, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.5.0.in.i = phi i1 [ %i.s, %bb.h ], [ %.sroa.014.0.in, %bb.g ] ; 2 uses
  %.sroa.06.0.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !37, !alias.scope !1709, !noundef !38
  %.not10.i = icmp eq i64 %i.u, -1
  br i1 %.not10.i, label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call { i64, i1 } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, i1 noundef zeroext %.sroa.5.0.in.i) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 0
  %i.x = extractvalue { i64, i1 } %i.v, 1
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit: ; preds = %bb.i, %bb.j
  %.sroa.07.0.i = phi i64 [ %i.w, %bb.j ], [ 0, %bb.i ]
  %.sroa.58.0.in.i = phi i1 [ %i.x, %bb.j ], [ %.sroa.5.0.in.i, %bb.i ]
  %i.y = add i64 %.sroa.07.0.i, %.sroa.06.0.i
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit
  %.sroa.510.0.in = phi i1 [ %.sroa.58.0.in.i, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit ], [ %.sroa.014.0.in, %bb.g ]
  %.sroa.09.0 = phi i64 [ %i.y, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit ], [ 0, %bb.g ]
  %i.z = add i64 %.sroa.06.0, %.sroa.05.0
  %i.aa = add i64 %i.z, %.sroa.012.0
  %i.ab = add i64 %i.aa, %.sroa.09.0
  %i.ac = insertvalue { i64, i1 } poison, i64 %i.ab, 0
  %i.ad = insertvalue { i64, i1 } %i.ac, i1 %.sroa.510.0.in, 1
  ret { i64, i1 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs1R_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15OverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 !guid !1712 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !41, !noundef !38
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_RINvXsp_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEENtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB2C_7tracker15StandardTrackerEB1y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.05.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !41, !noundef !38
  %.not15 = icmp eq i64 %i.f, -1
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call { i64, ptr } @_RINvXsp_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEENtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB2C_7tracker15StandardTrackerEB1y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.57.0 = phi ptr [ %i.i, %bb.d ], [ %.sroa.5.0, %bb.c ] ; 3 uses
  %.sroa.06.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0) ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !37, !noundef !38
  %.not16 = icmp eq i64 %i.k, -1
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call { i64, ptr } @_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB9_7GetSize26get_heap_size_with_trackerQNtNtB9_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.57.0) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.012.0 = phi ptr [ %i.n, %bb.f ], [ %.sroa.57.0, %bb.e ] ; 5 uses
  %.sroa.010.0 = phi i64 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !45, !noundef !38
  switch i64 %i.p, label %bb.h [
    i64 -2, label %2
    i64 -1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.012.0) ]
  %i.q = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.012.0) ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.5.0.i = phi ptr [ %i.s, %bb.h ], [ %.sroa.012.0, %bb.g ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !37, !alias.scope !1713, !noundef !38
  %.not9.i = icmp eq i64 %i.u, -1
  br i1 %.not9.i, label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.i) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit: ; preds = %bb.i, %bb.j
  %.sroa.58.0.i = phi ptr [ %i.x, %bb.j ], [ %.sroa.5.0.i, %bb.i ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.w, %bb.j ], [ 0, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.i) ]
  %i.y = add i64 %.sroa.07.0.i, %.sroa.06.0.i
  br label %bb.k

2:                                                ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.012.0) ]
  br label %bb.k

bb.k:                                             ; preds = %2, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit
  %.sroa.59.0 = phi ptr [ %.sroa.58.0.i, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit ], [ %.sroa.012.0, %2 ]
  %.sroa.08.0 = phi i64 [ %i.y, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit ], [ 0, %2 ]
  %i.z = add i64 %.sroa.06.0, %.sroa.05.0
  %i.aa = add i64 %i.z, %.sroa.010.0
  %i.ab = add i64 %i.aa, %.sroa.08.0
  %i.ac = insertvalue { i64, ptr } poison, i64 %i.ab, 0
  %i.ad = insertvalue { i64, ptr } %i.ac, ptr %.sroa.59.0, 1
  ret { i64, ptr } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs33Yq3JqQgDT_9get_size25impls10sync_implsINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1714 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load atomic i32, ptr %i.b acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @_RINvXsa_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB6_9LineIndexNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB17_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvXs1_NtNtCs33Yq3JqQgDT_9get_size25impls10sync_implsINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1715 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i1 } @_RINvXsa_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB6_9LineIndexNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB17_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i1 noundef zeroext %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { i64, i1 } { i64 0, i1 poison }, i1 %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.merged = phi { i64, i1 } [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret { i64, i1 } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs1_NtNtCs33Yq3JqQgDT_9get_size25impls10sync_implsINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockNtNtCs9BeaGo73rC4_16ruff_source_file10line_index9LineIndexENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1716 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a acquire, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RINvXsa_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB6_9LineIndexNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB17_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %1, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.merged = phi { i64, ptr } [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvXs2j_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_16OptionDiagnosticNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1h_7tracker9NoTrackerEBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, i1 noundef zeroext %1) unnamed_addr #1 !guid !1717 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !46, !noundef !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !range !37, !noundef !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !37, !noundef !38
  %.not9 = icmp eq i64 %i.f, -1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i1 } @_RINvXs19_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB7_10AnnotationNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, i1 noundef zeroext %1) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0
  %i.i = extractvalue { i64, i1 } %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0.in = phi i1 [ %i.i, %bb.b ], [ %1, %bb.a ]
  %.sroa.07.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.not = icmp eq i64 %i.d, -1
  %. = select i1 %.not, i64 0, i64 %i.d
  %i.j = add nuw i64 %., %i.b
  %i.k = add i64 %i.j, %.sroa.07.0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call { i64, i1 } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i1 noundef zeroext %.sroa.5.0.in) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = extractvalue { i64, i1 } %i.m, 1
  %i.p = add i64 %i.k, %i.n
  %i.q = insertvalue { i64, i1 } poison, i64 %i.p, 0
  %i.r = insertvalue { i64, i1 } %i.q, i1 %i.o, 1
  ret { i64, i1 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs2j_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_16OptionDiagnosticNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1h_7tracker15StandardTrackerEBb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 !guid !1718 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !46, !noundef !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !range !37, !noundef !38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !37, !noundef !38
  %.not9 = icmp eq i64 %i.f, -1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, ptr } @_RINvXs19_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB7_10AnnotationNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB10_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.5.0 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.07.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.not = icmp eq i64 %i.d, -1
  %. = select i1 %.not, i64 0, i64 %i.d
  %i.j = add nuw i64 %., %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %i.k = add i64 %i.j, %.sroa.07.0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0) ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1
  %i.p = add i64 %i.k, %i.n
  %i.q = insertvalue { i64, ptr } poison, i64 %i.p, 0
  %i.r = insertvalue { i64, ptr } %i.q, ptr %i.o, 1
  ret { i64, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXsI_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_18EnvironmentOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1i_7tracker15StandardTrackerEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 !guid !1719 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !37, !noundef !38
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2)
  %.pre = load i64, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ 0, %bb.c ], [ %.pre, %bb.b ]
  %i.o = load i64, ptr %1, align 8, !range !41, !noundef !38
  %.not11 = icmp eq i64 %i.o, -1
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RINvXsp_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionENtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB2i_7tracker15StandardTrackerEB12_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
  %.pre16 = load i64, ptr %i.g, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ 0, %bb.f ], [ %.pre16, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !41, !noundef !38
  %.not12 = icmp eq i64 %i.s, -1
  br i1 %.not12, label %bb.i, label %bb.h

end_hunk_0
begin_hunk_1_@_RINvXsp_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB16_7tracker15StandardTrackerEBa_:bb.a
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit: ; preds = %bb.z, %bb.aa
  %.sroa.58.0.i = phi ptr [ %i.bm, %bb.aa ], [ %.sroa.5.0.i37, %bb.z ] ; 2 uses
  %.sroa.07.0.i39 = phi i64 [ %i.bl, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.i) ]
  %i.bn = add i64 %.sroa.07.0.i39, %.sroa.06.0.i38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit
  %.sroa.511.0 = phi ptr [ %.sroa.58.0.i, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit ], [ %.sroa.017.1, %bb.u ] ; 3 uses
  %.sroa.010.0 = phi i64 [ %i.bn, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit ], [ 0, %bb.u ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !range !37, !noundef !38
  %.not33 = icmp eq i64 %i.bp, -1
  br i1 %.not33, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerEB2g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.511.0) ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bq, 0
  %i.bs = extractvalue { i64, ptr } %i.bq, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.026.0 = phi ptr [ %i.bs, %bb.ac ], [ %.sroa.511.0, %bb.ab ] ; 2 uses
  %.sroa.024.0 = phi i64 [ %i.br, %bb.ac ], [ 0, %bb.ab ]
  %i.bt = add i64 %.sroa.08.0, %.sroa.07.0
  %i.bu = add i64 %i.bt, %.sroa.012.0
  %i.bv = add i64 %i.bu, %.sroa.014.0
  %i.bw = add i64 %i.bv, %.sroa.010.0
  %i.bx = add i64 %i.bw, %.sroa.024.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0) ]
  %i.by = insertvalue { i64, ptr } poison, i64 %i.bx, 0
  %i.bz = insertvalue { i64, ptr } %i.by, ptr %.sroa.026.0, 1
  ret { i64, ptr } %i.bz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1761 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !37, !alias.scope !1762, !noundef !38
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.b, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1763
  call void @_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2)
  %i.g = load i64, ptr %i.c, align 8, !noalias !1763, !noundef !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1763
  %i.i = add i64 %i.g, 112
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %.sroa.03.0.i = phi i64 [ %i.i, %.noexc ], [ 112, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !45, !alias.scope !1762, !noundef !38 ; 2 uses
  %.not5.i = icmp eq i64 %i.k, -2
  br i1 %.not5.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1763
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.d, label %.noexc2

.noexc2:                                          ; preds = %bb.c
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  %.pre.i.i = load i64, ptr %i.b, align 8, !noalias !1766
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !noalias !1766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !1767
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc2
  %i.m = phi i64 [ 0, %bb.d ], [ %.pre.i.i, %.noexc2 ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !37, !alias.scope !1768, !noundef !38
  %.not6.i.i = icmp eq i64 %i.o, -1
  br i1 %.not6.i.i, label %bb.f, label %.noexc3

.noexc3:                                          ; preds = %bb.e
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.l)
  %.pre7.i.i = load i64, ptr %i.a, align 8
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit.i

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit.i: ; preds = %bb.f, %.noexc3
  %i.p = phi i64 [ 0, %bb.f ], [ %.pre7.i.i, %.noexc3 ]
  %i.q = add i64 %i.p, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1763
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit.i
  %.sroa.0.0.i = phi i64 [ 0, %bb.g ], [ %i.q, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker15StandardTrackerEBb_.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = add i64 %.sroa.03.0.i, %.sroa.0.0.i
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB1e_7tracker9NoTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1773 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !37, !alias.scope !1774, !noundef !38
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i1 } @_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i1 noundef zeroext %1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 0
  %i.d = extractvalue { i64, i1 } %i.b, 1
  %i.e = add i64 %i.c, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.0.i = phi i64 [ %i.e, %bb.b ], [ 112, %bb.a ]
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !45, !alias.scope !1774, !noundef !38
  switch i64 %i.g, label %bb.d [
    i64 -2, label %_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1l_7tracker9NoTrackerEBb_.exit
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i64, i1 } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, i1 noundef zeroext %.sroa.0.0.in.i) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0
  %i.j = extractvalue { i64, i1 } %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.in.i.i = phi i1 [ %i.j, %bb.d ], [ %.sroa.0.0.in.i, %bb.c ] ; 2 uses
  %.sroa.06.0.i.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !37, !alias.scope !1775, !noundef !38
  %.not10.i.i = icmp eq i64 %i.l, -1
  br i1 %.not10.i.i, label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call { i64, i1 } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i1 noundef zeroext %.sroa.5.0.in.i.i) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = extractvalue { i64, i1 } %i.m, 1
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.07.0.i.i = phi i64 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.sroa.58.0.in.i.i = phi i1 [ %i.o, %bb.f ], [ %.sroa.5.0.in.i.i, %bb.e ]
  %i.p = add i64 %.sroa.07.0.i.i, %.sroa.06.0.i.i
  br label %_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1l_7tracker9NoTrackerEBb_.exit

_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1l_7tracker9NoTrackerEBb_.exit: ; preds = %bb.c, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i
  %.sroa.5.0.in.i = phi i1 [ %.sroa.58.0.in.i.i, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i ], [ %.sroa.0.0.in.i, %bb.c ]
  %.sroa.06.0.i = phi i64 [ %i.p, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1g_7tracker9NoTrackerEBb_.exit.i ], [ 0, %bb.c ]
  %i.q = add i64 %.sroa.07.0.i, %.sroa.06.0.i
  %i.r = insertvalue { i64, i1 } poison, i64 %i.q, 0
  %i.s = insertvalue { i64, i1 } %i.r, i1 %.sroa.5.0.in.i, 1
  ret { i64, i1 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtB1e_7tracker15StandardTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1780 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !37, !alias.scope !1781, !noundef !38
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8ordermapINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB9_7GetSize26get_heap_size_with_trackerQNtNtB9_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  %i.e = add i64 %i.c, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.0.i = phi i64 [ %i.e, %bb.b ], [ 112, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !45, !alias.scope !1781, !noundef !38
  switch i64 %i.g, label %bb.d [
    i64 -2, label %2
    i64 -1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.h = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.0.0.i, %bb.c ] ; 3 uses
  %.sroa.06.0.i.i = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !37, !alias.scope !1782, !noundef !38
  %.not9.i.i = icmp eq i64 %i.l, -1
  br i1 %.not9.i.i, label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBW_6string6StringEENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.i.i) ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1
  br label %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i

_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.58.0.i.i = phi ptr [ %i.o, %bb.f ], [ %.sroa.5.0.i.i, %bb.e ] ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ %i.n, %bb.f ], [ 0, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.i.i) ]
  %i.p = add i64 %.sroa.07.0.i.i, %.sroa.06.0.i.i
  br label %_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1l_7tracker15StandardTrackerEBb_.exit

2:                                                ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  br label %_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1l_7tracker15StandardTrackerEBb_.exit

_RINvXs1Z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_20InnerOverrideOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1l_7tracker15StandardTrackerEBb_.exit: ; preds = %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i, %2
  %.sroa.5.0.i = phi ptr [ %.sroa.58.0.i.i, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i ], [ %.sroa.0.0.i, %2 ]
  %.sroa.06.0.i = phi i64 [ %i.p, %_RINvXs1z_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB7_15AnalysisOptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB1g_7tracker15StandardTrackerEBb_.exit.i ], [ 0, %2 ]
  %i.q = add i64 %.sroa.07.0.i, %.sroa.06.0.i
  %i.r = insertvalue { i64, ptr } poison, i64 %i.q, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB10_7tracker15StandardTrackerEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1783 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvXsp_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB16_7tracker15StandardTrackerEBa_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(544) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %2)
  %i.c = load i64, ptr %i.a, align 8, !noundef !38
  %i.d = add i64 %i.c, 544
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB10_7tracker9NoTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1784 {
bb.a:
  %i.a = tail call { i64, i1 } @_RINvXsp_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB16_7tracker9NoTrackerEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(544) %0, i1 noundef zeroext %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = add i64 %i.b, 544
  %i.e = insertvalue { i64, i1 } poison, i64 %i.d, 0
  %i.f = insertvalue { i64, i1 } %i.e, i1 %i.c, 1
  ret { i64, i1 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerQNtNtB10_7tracker15StandardTrackerEB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1785 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsp_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6_7OptionsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB16_7tracker15StandardTrackerEBa_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1
  %i.d = add i64 %i.b, 544
  %i.e = insertvalue { i64, ptr } poison, i64 %i.d, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.c, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor10visit_boolNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1786 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr %i.c, align 1
  store i8 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor10visit_i128NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, i128 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1787 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [58 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.e, i8 0, i64 58, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 58, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @76, ptr noundef nonnull @75, ptr noundef nonnull %i.c)
  br i1 %i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs4o81Y09oZk1_10ty_project.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #29
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = call { ptr, i64 } @_RNvMNtCs6nZeqdiIoCH_10serde_core6formatNtB2_3Buf6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store i8 17, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor10visit_u128NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, i128 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1788 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [57 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.f, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.e, i8 0, i64 57, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 57, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtNtCs4NRVxsYgnAr_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @76, ptr noundef nonnull @79, ptr noundef nonnull %i.c)
  br i1 %i.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs4o81Y09oZk1_10ty_project.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs4o81Y09oZk1_10ty_project.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = call { ptr, i64 } @_RNvMNtCs6nZeqdiIoCH_10serde_core6formatNtB2_3Buf6as_str(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.n, align 8
  store i8 17, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_f64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, double noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1789 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %1, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_i64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1790 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  store i8 2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error12invalid_typeCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionss2_1__NtBa_18EnvironmentOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize9___VisitorNtB1s_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1791 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_1
