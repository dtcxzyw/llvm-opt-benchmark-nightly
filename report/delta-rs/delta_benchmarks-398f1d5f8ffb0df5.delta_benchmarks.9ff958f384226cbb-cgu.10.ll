Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-398f1d5f8ffb0df5.delta_benchmarks.9ff958f384226cbb-cgu.10?download=true
inline.NumInlined: 3170
inline.NumDeleted: 887
begin_hunk_0_@_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !11658, !noalias !11655, !nonnull !3, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !11655, !noalias !11658, !nonnull !3, !noundef !3
  %i.am = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, i64 noundef %i.z), !noalias !11660
  br i1 %i.am, label %bb.j, label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !11655, !noalias !11658, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !11658, !noalias !11655, !noundef !3
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !11658, !noalias !11655, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !11655, !noalias !11658, !nonnull !3, !noundef !3
  %i.aw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.av, ptr noundef nonnull %i.at, i64 noundef %i.ae), !noalias !11660
  br label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.x, %bb.f ], [ %i.ar, %bb.j ], [ false, %bb.c ], [ %i.aw, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !9417, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !9417, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g) #42
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #42
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #42
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1L_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !4082, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11661)
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11661, !inline_history !11664 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !11661, !nonnull !3, !noundef !3
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noundef %i.f)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.e, !noalias !11661, !inline_history !11664

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.e
  %.sink = phi ptr [ %i.s, %bb.i ], [ %i.k, %bb.g ], [ %i.f, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.m, %bb.g ], [ %i.h, %bb.e ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 56, i64 noundef 8) #35, !noalias !3
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  store i64 3, ptr %0, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11665)
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11665, !inline_history !11664 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !11665, !nonnull !3, !noundef !3
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noundef %i.k)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit2 unwind label %bb.g, !noalias !11665, !inline_history !11664

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit2: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.p, align 8
  store i64 %i.a, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.q, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11668)
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11668, !inline_history !11664 ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8, !alias.scope !11668, !nonnull !3, !noundef !3
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noundef %i.s)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit4 unwind label %bb.i, !noalias !11668, !inline_history !11664

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit4: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.v, align 8
  store i64 5, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit4, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit2, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.0.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.b = alloca [2696 x i8], align 8              ; 4 uses
  %i.c = alloca [1400 x i8], align 8              ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %1, align 8, !range !8603, !noundef !3
  switch i8 %i.f, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11671)
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11671, !inline_history !11674 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !11671, !nonnull !3, !noundef !3
  invoke fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectNtB2_8CopySpec9clone_oneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.i, ptr noundef %i.h)
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.c, !noalias !11671, !inline_history !11674

common.resume:                                    ; preds = %bb.w, %bb.u, %bb.g, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.o, %bb.e ], [ %i.v, %bb.g ], [ %eh.lpad-body.i, %bb.u ], [ %i.au, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 2432, i64 noundef 8) #35, !noalias !11671
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8
  store i8 0, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11675)
  %i.m = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11675, !inline_history !11678 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !11675, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11679
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.n) #42
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.e, !noalias !11675, !inline_history !11682

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 1400, i64 noundef 8) #35, !noalias !11675, !inline_history !11678
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.m, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false), !noalias !11679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11679
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.q, align 2, !range !10001, !noundef !3
  %.val1 = load i8, ptr %i.r, align 1, !range !11683, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11684)
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks(), !noalias !11684, !inline_history !11687 ; 4 uses
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !11684, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11688
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.u) #42
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.g, !noalias !11684, !inline_history !11691

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 2696, i64 noundef 8) #35, !noalias !11684, !inline_history !11687
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.t, ptr noundef nonnull align 8 dereferenceable(2696) %i.b, i64 2696, i1 false), !noalias !11688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11688
  store ptr %i.t, ptr %i.e, align 8
  %i.x = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11695)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !range !9417, !alias.scope !11695, !noalias !11692, !noundef !3
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.aa, ptr %i.ab, align 8, !alias.scope !11692, !noalias !11695
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ad) #42
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.af) #42
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ah) #42
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aj) #42
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.al, align 8           ; 4 uses
  %i.am = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11700)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !noalias !11703
  %i.an = load i64, ptr %.val2, align 8, !range !161, !alias.scope !11705, !noalias !11706, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.an, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %.sroa.0.i.i, align 8, !noalias !11703
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !161, !alias.scope !11705, !noalias !11706, !noundef !3
  %.not4.i.i.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11703
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.r unwind label %bb.q, !noalias !11706

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %.sroa.0.i.i) #39
          to label %bb.u unwind label %bb.s, !noalias !11706

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !11703
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !11697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11703
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !11706
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.aq, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 48, i64 noundef 8) #35
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !11697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !noalias !11703
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !11697
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !11697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.at, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.e) #39
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.ay, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11710)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !11707, !noalias !11710, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !11710, !noalias !11707, !noundef !3
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !11710, !noalias !11707, !nonnull !3, !noundef !3
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !11707, !noalias !11710, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !11712, !nonnull !3, !noundef !3 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !11712, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !11712
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11716)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !11713, !noalias !11716, !nonnull !3, !noundef !3 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !11716, !noalias !11713, !nonnull !3, !noundef !3 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11721)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !11718, !noalias !11723, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !11721, !noalias !11724, !noundef !3
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !11721, !noalias !11724, !nonnull !3, !noundef !3
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !11718, !noalias !11723, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !11725, !nonnull !3, !noundef !3 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !11725, !nonnull !3, !noundef !3 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !11725
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !11726
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11713, !noalias !11716, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11716, !noalias !11713, !noundef !3
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !11716, !noalias !11713, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11713, !noalias !11716, !nonnull !3, !noundef !3
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !11726
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !11713, !noalias !11716, !noundef !3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !11716, !noalias !11713, !noundef !3
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !11716, !noalias !11713, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !11713, !noalias !11716, !nonnull !3, !noundef !3
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !11726
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 68)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %.sroa.01 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.0 = alloca [56 x i8], align 8            ; 5 uses
  %i.a = load i64, ptr %1, align 8, !range !3683, !noundef !3
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
          to label %bb.aap unwind label %bb.aao

bb.aal:                                           ; preds = %_RNvXs3X_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit427
  store i64 -9223372036854775808, ptr %i.cr, align 8
  br label %bb.aam

bb.aam:                                           ; preds = %bb.aap, %bb.aal
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5134)
  %i.bli = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.blj = load i64, ptr %i.bli, align 8, !range !25, !noundef !3
  %.not140 = icmp eq i64 %i.blj, 69
  br i1 %.not140, label %bb.aar, label %bb.aaq

bb.aan:                                           ; preds = %bb.aas, %bb.aao
  %.pn141 = phi { ptr, i32 } [ %i.blr, %bb.aas ], [ %i.blk, %bb.aao ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.cs) #39
          to label %bb.aai unwind label %bb.ee

bb.aao:                                           ; preds = %bb.aak
  %i.blk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aan

bb.aap:                                           ; preds = %bb.aak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aam

bb.aaq:                                           ; preds = %bb.aam
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvXslb_NtCs4lawaffTVVK_9sqlparser3astNtB6_18HiveLoadDataFormatNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(656) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.bli)
          to label %bb.aat unwind label %bb.aas

bb.aar:                                           ; preds = %bb.aam, %bb.aat
  %.sroa.0132.0 = phi i64 [ %.sroa.0132.0.copyload133, %bb.aat ], [ 69, %bb.aam ]
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 %i.ahd, ptr %i.bll, align 8
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blm, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 737
  store i8 %i.ahf, ptr %i.bln, align 1
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blo, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blp, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0132.0, ptr %i.blq, align 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134, i64 648, i1 false)
  store i64 110, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.ed

bb.aas:                                           ; preds = %bb.aaq
  %i.blr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.cr) #39
          to label %bb.aan unwind label %bb.ee

bb.aat:                                           ; preds = %bb.aaq
  %.sroa.0132.0.copyload133 = load i64, ptr %i.e, align 8
  %.sroa.5134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134.0..sroa_idx135, i64 648, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aar

bb.aau:                                           ; preds = %bb.aax, %bb.aav
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aax ], [ %i.bls, %bb.aav ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.cn) #39
          to label %bb.ef unwind label %bb.ee

bb.aav:                                           ; preds = %bb.do
  %i.bls = landingpad { ptr, i32 }
          cleanup
  br label %bb.aau

bb.aaw:                                           ; preds = %bb.do
  %i.blt = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ahr, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.blu = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.blt)
          to label %bb.aaz unwind label %bb.aay   ; 2 uses

bb.aax:                                           ; preds = %bb.aba, %bb.aay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aba ], [ %i.blv, %bb.aay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.cm) #39
          to label %bb.aau unwind label %bb.ee

bb.aay:                                           ; preds = %bb.aaw
  %i.blv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aax

bb.aaz:                                           ; preds = %bb.aaw
  store ptr %i.blu, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aho)
          to label %bb.abc unwind label %bb.abb

bb.aba:                                           ; preds = %bb.abd, %bb.abb
  %.pn = phi { ptr, i32 } [ %i.blx, %bb.abd ], [ %i.blw, %bb.abb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(8) %i.cl) #39
          to label %bb.aax unwind label %bb.ee

bb.abb:                                           ; preds = %bb.aaz
  %i.blw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aba

bb.abc:                                           ; preds = %bb.aaz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahp)
          to label %bb.abe unwind label %bb.abd

bb.abd:                                           ; preds = %bb.abc
  %i.blx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.ck) #39
          to label %bb.aba unwind label %bb.ee

bb.abe:                                           ; preds = %bb.abc
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ahq, ptr %i.bly, align 8
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ahr, ptr %i.blz, align 8
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.blu, ptr %i.bma, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmb, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmc, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store i64 114, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.ed
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13465
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c) #42
          to label %bb.b unwind label %bb.c, !inline_history !13468

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !13465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13465
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 328, i64 noundef 8) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2688 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13469
  invoke fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.c) #42
          to label %bb.b unwind label %bb.c, !inline_history !13472

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.b, ptr noundef nonnull align 8 dereferenceable(2688) %i.a, i64 2688, i1 false), !noalias !13469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13469
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 2688, i64 noundef 8) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [328 x i8], align 8               ; 4 uses
  %i.e = alloca [328 x i8], align 8               ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.g = alloca [424 x i8], align 8               ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.01 = alloca [336 x i8], align 8          ; 9 uses
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13473)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  %.val.i = load i8, ptr %i.k, align 1, !range !9417, !alias.scope !13473, !noalias !13476, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1145
  %i.m = load i8, ptr %i.l, align 1, !range !12071, !alias.scope !13473, !noalias !13476, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01), !noalias !13478
  %i.n = load i64, ptr %i.j, align 8, !range !25, !alias.scope !13473, !noalias !13476, !noundef !3
  %.not5.i = icmp eq i64 %i.n, 69
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13479)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.p = load i8, ptr %i.o, align 8, !range !9417, !alias.scope !13482, !noalias !13483, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13485
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.j) #42
          to label %.noexc unwind label %bb.z, !inline_history !13486

.noexc:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 329
  %i.r = load i8, ptr %i.q, align 1, !range !9537, !alias.scope !13482, !noalias !13483, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(328) %i.d, i64 328, i1 false), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13485
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 328
  store i8 %i.p, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !13478
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 329
  store i8 %i.r, ptr %.sroa.54.0..sroa_idx, align 1, !noalias !13478
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 69, ptr %.sroa.01, align 8, !noalias !13478
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13478
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1088 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !3337, !alias.scope !13473, !noalias !13476, !noundef !3
  %.not6.i = icmp eq i64 %i.t, -9223372036854775787
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13490)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1136
  %i.v = load i8, ptr %i.u, align 8, !range !9417, !alias.scope !13492, !noalias !13493, !noundef !3
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s) #42
          to label %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.i, !noalias !13476, !inline_history !13486

_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.v, ptr %i.w, align 8, !alias.scope !13487, !noalias !13494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13478
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775787, ptr %i.h, align 8, !noalias !13478
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13478
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 664 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !range !145, !alias.scope !13473, !noalias !13476, !noundef !3
  %.not7.i = icmp eq i64 %i.y, 70
  br i1 %.not7.i, label %bb.r, label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %.body.i, %bb.t, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.i ] ; 2 uses
  %i.z = load i64, ptr %.sroa.01, align 8, !range !25, !alias.scope !13495, !noalias !13478, !noundef !3
  %i.aa = icmp eq i64 %i.z, 69
  br i1 %i.aa, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(336) %.sroa.01)
          to label %bb.ab unwind label %bb.y, !noalias !13476, !inline_history !13498

bb.i:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13502
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 992
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac) #42
          to label %.noexc14.i unwind label %bb.u, !noalias !13476, !inline_history !13504

.noexc14.i:                                       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13502
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1040
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.m unwind label %bb.l, !noalias !13505, !inline_history !13504

bb.k:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %i.ae, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.c) #39
          to label %.body.i unwind label %bb.q, !noalias !13505, !inline_history !13504

bb.l:                                             ; preds = %.noexc14.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %.noexc14.i
  %i.af = load i64, ptr %i.x, align 8, !range !25, !alias.scope !13506, !noalias !13505, !noundef !3
  %.not.i12.i = icmp eq i64 %i.af, 69
  br i1 %.not.i12.i, label %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13502
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(424) %i.x)
          to label %bb.p unwind label %bb.o, !noalias !13505, !inline_history !13504

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.b) #39
          to label %bb.k unwind label %bb.q, !noalias !13505, !inline_history !13504

bb.p:                                             ; preds = %bb.n
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !13502
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx2.i.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13502
  br label %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.q:                                             ; preds = %bb.o, %bb.k
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !13505, !inline_history !13504
  unreachable

_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.p, %bb.m
  %.sroa.0.0.i13.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.p ], [ 69, %bb.m ]
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !13478
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13502
  store i64 %.sroa.0.0.i13.i, ptr %i.g, align 8, !noalias !13478
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i.i, i64 320, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  store i64 70, ptr %i.g, align 8, !noalias !13478
  br label %bb.s

bb.s:                                             ; preds = %_RNvXs8t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableSampleBucketNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 336 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !25, !alias.scope !13473, !noalias !13476, !noundef !3
  %.not8.i = icmp eq i64 %i.aj, 69
  br i1 %.not8.i, label %bb.aa, label %bb.v

.body.i:                                          ; preds = %bb.u, %bb.k, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.am, %bb.u ], [ %.pn.i.i, %bb.k ] ; 2 uses
  %i.ak = load i64, ptr %i.h, align 8, !range !3337, !alias.scope !13507, !noalias !13478, !noundef !3
  %i.al = icmp eq i64 %i.ak, -9223372036854775787
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %bb.t

bb.t:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5value5ValueECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.y, !noalias !13476, !inline_history !13486

bb.u:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13478
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ai)
          to label %bb.x unwind label %bb.w, !noalias !13476, !inline_history !13486

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query17TableSampleBucketEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(424) %i.g) #39
          to label %.body.i unwind label %bb.y, !noalias !13476, !inline_history !13486

bb.x:                                             ; preds = %bb.v
  %.sroa.01.0.copyload2.i = load i64, ptr %i.e, align 8, !noalias !13478
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx3.i, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13478
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.h
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #37, !noalias !13476, !inline_history !13486
  unreachable

bb.z:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.s, %bb.x
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.x ], [ 69, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.i, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.01, i64 336, i1 false), !noalias !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(424) %i.g, i64 424, i1 false), !noalias !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01), !noalias !13478
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  store i64 %.sroa.01.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13510
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.5.i, i64 320, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1144
  store i8 %.val.i, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13510
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1145
  store i8 %i.m, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !13510
  ret ptr %i.i

bb.ab:                                            ; preds = %bb.z, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %.pn.pn.i, %bb.h ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 1152, i64 noundef 8) #35
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13513
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.c) #42
          to label %bb.b unwind label %bb.c, !inline_history !13516

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.b, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false), !noalias !13513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13513
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1400, i64 noundef 8) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2696 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13517
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.c) #42
          to label %bb.b unwind label %bb.c, !inline_history !13520

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.b, ptr noundef nonnull align 8 dereferenceable(2696) %i.a, i64 2696, i1 false), !noalias !13517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13517
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 2696, i64 noundef 8) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE13new_uninit_inCsdJxlLsGgtXr_16delta_benchmarks() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13521
  invoke fastcc void @_RNvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c) #42
          to label %bb.b unwind label %bb.c, !inline_history !13524

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !13521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13521
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef 8) #35
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsd_NtNtCs4lawaffTVVK_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !3956, !noundef !3 ; 68 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.d
    i64 4, label %bb.d
    i64 5, label %bb.d
    i64 6, label %bb.d
    i64 7, label %bb.d
    i64 8, label %bb.d
    i64 9, label %bb.d
    i64 10, label %bb.d
    i64 11, label %bb.d
    i64 12, label %bb.d
    i64 13, label %bb.d
    i64 14, label %bb.d
    i64 15, label %bb.d
    i64 16, label %bb.d
    i64 17, label %bb.d
    i64 18, label %bb.d
    i64 19, label %bb.d
    i64 20, label %bb.d
    i64 21, label %bb.d
    i64 22, label %bb.d
    i64 23, label %bb.b
    i64 24, label %bb.d
    i64 25, label %bb.d
    i64 26, label %bb.d
    i64 27, label %bb.d
    i64 28, label %bb.d
    i64 29, label %bb.d
    i64 30, label %bb.d
    i64 31, label %bb.d
    i64 32, label %bb.d
    i64 33, label %bb.d
    i64 34, label %bb.d
    i64 35, label %bb.d
    i64 36, label %bb.d
    i64 37, label %bb.d
    i64 38, label %bb.d
    i64 39, label %bb.d
    i64 40, label %bb.d
    i64 41, label %bb.d
    i64 42, label %bb.d
    i64 43, label %bb.d
    i64 44, label %bb.d
    i64 45, label %bb.d
    i64 46, label %bb.d
    i64 47, label %bb.d
    i64 48, label %bb.d
    i64 49, label %bb.d
    i64 50, label %bb.c
    i64 51, label %bb.d
    i64 52, label %bb.d
    i64 53, label %bb.d
    i64 54, label %bb.d
    i64 55, label %bb.d
    i64 56, label %bb.d
    i64 57, label %bb.d
    i64 58, label %bb.d
    i64 59, label %bb.d
    i64 60, label %bb.d
    i64 61, label %bb.d
    i64 62, label %bb.d
    i64 63, label %bb.d
    i64 64, label %bb.d
    i64 65, label %bb.d
    i64 66, label %bb.d
    i64 67, label %bb.d
    i64 68, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.sink = phi i64 [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ 50, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ 23, %bb.b ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs8CRAYtH5WmW_12futures_util6future6futureINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB14_6future6future6Futurep6OutputIB1w_DNtNtB14_3any3AnyNtNtB14_6marker4SendEL_EB34_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB14_6result6ResultINtNtB1A_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EB25_4pollCsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future3mapINtB5_3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1a_6future6future6Futurep6OutputIB1C_DNtNtB1a_3any3AnyNtNtB1a_6marker4SendEL_EB3a_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB1a_6result6ResultINtNtB1G_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EB2b_4pollCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXseP_NtCs4lawaffTVVK_9sqlparser3astNtB6_14FetchDirectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %1, align 8, !range !3336, !noundef !3 ; 8 uses
  switch i64 %i.e, label %default.unreachable8 [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 3, label %bb.g
    i64 4, label %bb.g
    i64 5, label %bb.c
    i64 6, label %bb.d
    i64 7, label %bb.g
    i64 8, label %bb.e
    i64 9, label %bb.g
    i64 10, label %bb.f
    i64 11, label %bb.g
  ]
end_hunk_1
