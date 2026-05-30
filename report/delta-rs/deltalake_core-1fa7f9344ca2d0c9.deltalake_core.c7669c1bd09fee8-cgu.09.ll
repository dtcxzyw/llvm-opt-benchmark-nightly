inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core:bb.a
bb.f:                                             ; preds = %bb.c
  %i.ab = tail call noundef i16 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanessINtB2_14MinAccumulatorsEKj10_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i16 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.ab, %bb.f ], [ 32767, %bb.e ], [ %i.x, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i16 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %vec.epilog.middle.block ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.ac = insertvalue { i16, i16 } poison, i16 %.sroa.0.2, 0
  %i.ad = insertvalue { i16, i16 } %i.ac, i16 %.sroa.5.2, 1
  ret { i16, i16 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatexNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 7 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !2332, !noundef !4
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesxINtB2_14MaxAccumulatorxEKj2_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.g, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 -9223372036854775808), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ splat (i64 -9223372036854775808), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !alias.scope !3570
  %wide.load8 = load <2 x i64>, ptr %i.o, align 8, !alias.scope !3570
  %i.p = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %i.q = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load8, <2 x i64> %vec.phi7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3573

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.p, <2 x i64> %i.q)
  %i.s = tail call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ -9223372036854775808, %.preheader.i.preheader ], [ %i.s, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.u, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader9 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !3570, !noundef !4
  %spec.select.i.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %.val.i.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3574

bb.f:                                             ; preds = %bb.c
  %i.w = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesxINtB2_14MaxAccumulatorxEKj4_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ -9223372036854775808, %bb.e ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.2, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.5.2, 1
  ret { i64, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatexNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 7 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 4 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !2332, !noundef !4
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesxINtB2_14MinAccumulatorxEKj2_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.g, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !alias.scope !3575
  %wide.load8 = load <2 x i64>, ptr %i.o, align 8, !alias.scope !3575
  %i.p = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %i.q = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load8, <2 x i64> %vec.phi7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3578

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.p, <2 x i64> %i.q)
  %i.s = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 9223372036854775807, %.preheader.i.preheader ], [ %i.s, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.u, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader9 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !3575, !noundef !4
  %spec.select.i.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %.val.i.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3579

bb.f:                                             ; preds = %bb.c
  %i.w = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesxINtB2_14MinAccumulatorxEKj4_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ 9223372036854775807, %bb.e ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.2, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.5.2, 1
  ret { i64, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1d_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B2_NtNtNtB6_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EEB6_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 9 uses
  %i.g = alloca [40 x i8], align 16               ; 9 uses
  %.sroa.12.i = alloca [48 x i8], align 16        ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 9 uses
  %i.l = alloca [40 x i8], align 8                ; 2 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.13 = alloca [48 x i8], align 16          ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 19 uses
  %i.r = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store i64 0, ptr %i.t, align 8
  %.sroa.064.0.copyload = load ptr, ptr %1, align 8, !alias.scope !3580, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx65, align 8, !alias.scope !3580, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.666.0.copyload = load ptr, ptr %.sroa.666.0..sroa_idx, align 8, !alias.scope !3580 ; 3 uses
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.767.0.copyload = load ptr, ptr %.sroa.767.0..sroa_idx, align 8, !alias.scope !3580 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %.not = icmp eq ptr %.sroa.064.0.copyload, %.sroa.5.0.copyload
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.p

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.666.0.copyload) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.666.0.copyload, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.i.sroa.7.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.i.sroa.7.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.67.i.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx11.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.67.i.sroa.7.sroa.7.sroa.7.0..sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx11.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ay
  %.sroa.0.0212 = phi ptr [ %.sroa.064.0.copyload, %.lr.ph ], [ %i.z, %bb.ay ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0212, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3587
  %i.aa = load ptr, ptr %.sroa.666.0.copyload, align 8, !noalias !3587, !nonnull !4, !noundef !4
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !3587, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !64, !invariant.load !4, !noalias !3587
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, -16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3587
  call void @llvm.experimental.noalias.scope.decl(metadata !3592)
  call void @llvm.experimental.noalias.scope.decl(metadata !3595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3597
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0212, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3598, !noalias !3599, !nonnull !4, !noundef !4 ; 4 uses
  %i.ak = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !3597
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.aj, ptr %i.c, align 8, !noalias !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3597
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0212)
          to label %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.e, !noalias !3599

bb.d:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3600
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #45
          to label %.thread unwind label %bb.g, !noalias !3599

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3599
  unreachable

_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0212, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3598, !noalias !3599, !noundef !4
  store ptr %i.aj, ptr %i.v, align 8, !alias.scope !3592, !noalias !3605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3605
  store i64 %i.ar, ptr %i.w, align 8, !alias.scope !3592, !noalias !3605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3597
  invoke void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.f, ptr noundef nonnull %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3587
  %i.as = load i64, ptr %i.f, align 16, !range !242, !noalias !3587, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.as, -9223372036854775743
  %2 = load <2 x i64>, ptr %i.x, align 8, !noalias !3587 ; 5 uses
  %3 = load <2 x i64>, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !3587 ; 5 uses
  %.sroa.6.i.sroa.7.sroa.9.0.copyload34.i = load i64, ptr %.sroa.6.i.sroa.7.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx7.sroa_idx.i, align 8, !noalias !3587 ; 3 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %.sroa.614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.12.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.614.0..sroa_idx.i.i, i64 48, i1 false), !noalias !3606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3587
  %4 = extractelement <2 x i64> %2, i64 0
  %5 = extractelement <2 x i64> %2, i64 1
  %6 = extractelement <2 x i64> %3, i64 0
  %7 = extractelement <2 x i64> %3, i64 1
  br label %select.unfold

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3587
  store <2 x i64> %2, ptr %i.g, align 16, !noalias !3587
  store <2 x i64> %3, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx8.sroa_idx.i, align 16, !noalias !3587
  store i64 %.sroa.6.i.sroa.7.sroa.9.0.copyload34.i, ptr %.sroa.6.i.sroa.7.sroa.9.0..sroa.6.i.sroa.7.0..sroa_idx8.sroa_idx.i, align 16, !noalias !3587
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.767.0.copyload) ]
  %i.at = load i8, ptr %.sroa.767.0.copyload, align 1, !range !3, !noalias !3587, !noundef !4
  %i.au = trunc nuw i8 %i.at to i1
  %8 = extractelement <2 x i64> %2, i64 0
  %9 = extractelement <2 x i64> %2, i64 1
  %10 = extractelement <2 x i64> %3, i64 0
  %11 = extractelement <2 x i64> %3, i64 1
  br i1 %i.au, label %bb.j, label %bb.am

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3587
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch9normalize(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 1, i64 noundef 0, i64 undef)
          to label %bb.l unwind label %bb.k, !noalias !3607

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g) #43
          to label %.thread unwind label %bb.m, !noalias !3607

bb.l:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.d, align 8, !range !62, !noalias !3587, !noundef !4 ; 2 uses
  %.sroa.67.i.sroa.0.0.copyload9.i = load i64, ptr %i.y, align 8, !noalias !3587 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.0.0.copyload15.i = load i64, ptr %.sroa.67.i.sroa.7.0..sroa_idx11.i, align 8, !noalias !3587 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.7.sroa.0.0.copyload20.i = load i64, ptr %.sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx11.sroa_idx.i, align 8, !noalias !3587 ; 2 uses
  %.sroa.67.i.sroa.7.sroa.7.sroa.7.0.copyload22.i = load i64, ptr %.sroa.67.i.sroa.7.sroa.7.sroa.7.0..sroa.67.i.sroa.7.sroa.7.0..sroa.67.i.sroa.7.0..sroa_idx11.sroa_idx.sroa_idx.i, align 8, !noalias !3587 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3587
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.g)
          to label %.noexc46 unwind label %bb.n

.noexc46:                                         ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.ax, label %select.unfold, label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !3607
  unreachable

bb.n:                                             ; preds = %bb.l, %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge:                                      ; preds = %bb.ay
  %.pre = load i64, ptr %i.r, align 8, !range !59
  %i.ba = icmp eq i64 %.pre, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer21finish_buffered_batch(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.k)
          to label %bb.q unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bb, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.ai

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.x
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.k) #43
          to label %.thread unwind label %bb.ah

bb.q:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.j, align 8, !range !3181, !noundef !4
  %.not37 = icmp eq i64 %i.bc, -9223372036854775788
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -9223372036854775741, ptr %0, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.k)
          to label %bb.ac unwind label %.thread99

.thread99:                                        ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.t:                                             ; preds = %bb.aa, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer20next_completed_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.k)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.be = load i64, ptr %i.i, align 8, !range !62, !noundef !4
  %.not38 = icmp eq i64 %i.be, -9223372036854775808
  br i1 %.not38, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.bf = load i64, ptr %i.t, align 8, !alias.scope !3608, !noalias !3611, !noundef !4 ; 3 uses
  %i.bg = load i64, ptr %i.q, align 8, !range !63, !alias.scope !3608, !noalias !3611, !noundef !4
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE8grow_oneCsa7Blp2W9WhU_12arrow_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.aa unwind label %bb.x, !noalias !3611

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #43
          to label %.body47 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w, %bb.v
  %i.bl = load ptr, ptr %i.s, align 8, !alias.scope !3608, !noalias !3611, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  %i.bn = add i64 %i.bf, 1
  store i64 %i.bn, ptr %i.t, align 8, !alias.scope !3608, !noalias !3611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57, %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.ac:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body50.thread unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

.body50:                                          ; preds = %bb.aj, %bb.ag, %.thread
  %.sroa.015.2 = phi i1 [ %i.ck, %.thread ], [ true, %bb.aj ], [ %.sroa.015.3, %bb.ag ]
  %.pn43 = phi { ptr, i32 } [ %.pn98, %.thread ], [ %i.bu, %bb.aj ], [ %i.bs, %bb.ag ] ; 2 uses
  %i.bq = load i64, ptr %i.r, align 8, !range !59, !noundef !4
  %i.br = icmp ne i64 %i.bq, 2
  %or.cond3 = and i1 %.sroa.015.2, %i.br
  br i1 %or.cond3, label %bb.bd, label %.body50.thread

bb.ag:                                            ; preds = %bb.ak, %bb.ae
  %.sroa.015.3 = phi i1 [ true, %bb.ak ], [ false, %bb.ae ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body50

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ab

bb.ah:                                            ; preds = %bb.bd, %.thread, %bb.bb, %.body47
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ai:                                            ; preds = %bb.ba, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body50 unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57 unwind label %bb.ag

bb.al:                                            ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

select.unfold:                                    ; preds = %.noexc46, %bb.h
  %.sroa.11.sroa.7.sroa.7.sroa.7.0.i = phi i64 [ %.sroa.6.i.sroa.7.sroa.9.0.copyload34.i, %bb.h ], [ undef, %.noexc46 ]
  %.sroa.11.sroa.7.sroa.7.sroa.0.0.i = phi i64 [ %7, %bb.h ], [ %.sroa.67.i.sroa.7.sroa.7.sroa.7.0.copyload22.i, %.noexc46 ]
  %.sroa.11.sroa.7.sroa.0.0.i = phi i64 [ %6, %bb.h ], [ %.sroa.67.i.sroa.7.sroa.7.sroa.0.0.copyload20.i, %.noexc46 ]
  %.sroa.11.sroa.0.0.i = phi i64 [ %5, %bb.h ], [ %.sroa.67.i.sroa.7.sroa.0.0.copyload15.i, %.noexc46 ]
  %.sroa.7.0.i = phi i64 [ %4, %bb.h ], [ %.sroa.67.i.sroa.0.0.copyload9.i, %.noexc46 ]
  %.sroa.0.0.i = phi i64 [ %i.as, %bb.h ], [ -9223372036854775741, %.noexc46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.13, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.12.i, i64 48, i1 false), !noalias !3613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.328.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.13, i64 48, i1 false)
  store i64 %.sroa.0.0.i, ptr %0, align 16
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.227.0..sroa_idx, align 8
  %.sroa.227.sroa.2.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.sroa.0.0.i, ptr %.sroa.227.sroa.2.0..sroa.227.0..sroa_idx.sroa_idx, align 16
  %.sroa.227.sroa.3.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.11.sroa.7.sroa.0.0.i, ptr %.sroa.227.sroa.3.0..sroa.227.0..sroa_idx.sroa_idx, align 8
  %.sroa.227.sroa.4.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.0.0.i, ptr %.sroa.227.sroa.4.0..sroa.227.0..sroa_idx.sroa_idx, align 16
  %.sroa.227.sroa.5.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.7.0.i, ptr %.sroa.227.sroa.5.0..sroa.227.0..sroa_idx.sroa_idx, align 8
  br label %bb.ba

bb.am:                                            ; preds = %.noexc46, %bb.i
  %.sroa.11.sroa.7.sroa.7.sroa.7.0.i.ph = phi i64 [ %.sroa.6.i.sroa.7.sroa.9.0.copyload34.i, %bb.i ], [ %.sroa.67.i.sroa.7.sroa.7.sroa.7.0.copyload22.i, %.noexc46 ]
  %.sroa.11.sroa.7.sroa.7.sroa.0.0.i.ph = phi i64 [ %11, %bb.i ], [ %.sroa.67.i.sroa.7.sroa.7.sroa.0.0.copyload20.i, %.noexc46 ] ; 2 uses
  %.sroa.11.sroa.7.sroa.0.0.i.ph = phi i64 [ %10, %bb.i ], [ %.sroa.67.i.sroa.7.sroa.0.0.copyload15.i, %.noexc46 ]
  %.sroa.11.sroa.0.0.i.ph = phi i64 [ %9, %bb.i ], [ %.sroa.67.i.sroa.0.0.copyload9.i, %.noexc46 ]
  %.sroa.7.0.i.ph = phi i64 [ %8, %bb.i ], [ %i.aw, %.noexc46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3587
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.7.0.i.ph, ptr %i.p, align 8
  store i64 %.sroa.11.sroa.0.0.i.ph, ptr %.sroa.491.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.0.0.i.ph, ptr %.sroa.592.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.0.0.i.ph, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.11.sroa.7.sroa.7.sroa.7.0.i.ph, ptr %.sroa.793.0..sroa_idx, align 8
  %.val.cast = inttoptr i64 %.sroa.11.sroa.7.sroa.7.sroa.0.0.i.ph to ptr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.bw = load i64, ptr %i.r, align 8, !range !59, !alias.scope !3614, !noundef !4
  %.not.i = icmp eq i64 %i.bw, 2
  br i1 %.not.i, label %bb.an, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3614
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.cast) ]
  %i.bx = atomicrmw add ptr %.val.cast, i64 1 monotonic, align 8, !noalias !3617
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.ao, label %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i: ; preds = %bb.an
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noundef nonnull %.val.cast, i64 noundef 8192)
          to label %.noexc58 unwind label %bb.bb

.noexc58:                                         ; preds = %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3614
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit

.body59.thread130.loopexit:                       ; preds = %bb.as
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.body59.thread130.loopexit.split-lp:              ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit: ; preds = %.noexc58, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer10push_batch(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.ap unwind label %.body59.thread130.loopexit.split-lp

bb.ap:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerE18get_or_insert_withNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B23_NtNtNtB27_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0EB27_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bz = load i64, ptr %i.o, align 8, !range !3181, !noundef !4
  %.not40 = icmp eq i64 %i.bz, -9223372036854775788
  br i1 %.not40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.430.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.as

bb.as:                                            ; preds = %bb.az, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtCsa7Blp2W9WhU_12arrow_select8coalesceNtB2_14BatchCoalescer20next_completed_batch(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r)
          to label %bb.at unwind label %.body59.thread130.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ca = load i64, ptr %i.m, align 8, !range !62, !noundef !4
  %.not41 = icmp eq i64 %i.ca, -9223372036854775808
  br i1 %.not41, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.cb = load i64, ptr %i.t, align 8, !alias.scope !3620, !noalias !3623, !noundef !4 ; 3 uses
  %i.cc = load i64, ptr %i.q, align 8, !range !63, !alias.scope !3620, !noalias !3623, !noundef !4
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE8grow_oneCsa7Blp2W9WhU_12arrow_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.az unwind label %bb.aw, !noalias !3623

bb.aw:                                            ; preds = %bb.av
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l) #43
          to label %.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.ay:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %.not213 = icmp eq ptr %i.z, %.sroa.5.0.copyload
  br i1 %.not213, label %._crit_edge, label %bb.b

bb.az:                                            ; preds = %bb.av, %bb.au
  %i.cg = load ptr, ptr %i.s, align 8, !alias.scope !3620, !noalias !3623, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.ci = add i64 %i.cb, 1
  store i64 %i.ci, ptr %i.t, align 8, !alias.scope !3620, !noalias !3623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.as

bb.ba:                                            ; preds = %bb.aq, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.ai

bb.bb:                                            ; preds = %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table5state16coalesce_batchesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1f_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMs_B4_NtNtNtB8_6kernel8snapshot13EagerSnapshot31add_actions_batches_with_schema0EE0B8_.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.p) #43
          to label %.thread unwind label %bb.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cj = load i64, ptr %i.r, align 8, !range !59, !noundef !4
  %.not45 = icmp eq i64 %i.cj, 2
  br i1 %.not45, label %bb.ab, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit57
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r)
  br label %bb.ab

.thread:                                          ; preds = %.body59.thread130.loopexit, %.body59.thread130.loopexit.split-lp, %bb.aw, %bb.n, %bb.k, %bb.f, %bb.e, %.body47, %bb.bb, %.thread99
  %i.ck = phi i1 [ false, %.thread99 ], [ true, %bb.bb ], [ false, %.body47 ], [ true, %bb.aw ], [ true, %bb.n ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.k ], [ true, %.body59.thread130.loopexit ], [ true, %.body59.thread130.loopexit.split-lp ]
  %.pn98 = phi { ptr, i32 } [ %i.bd, %.thread99 ], [ %lpad.thr_comm.split-lp, %bb.bb ], [ %eh.lpad-body48, %.body47 ], [ %i.ce, %bb.aw ], [ %i.az, %bb.n ], [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %i.av, %bb.k ], [ %lpad.loopexit136, %.body59.thread130.loopexit ], [ %lpad.loopexit.split-lp137, %.body59.thread130.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %.body50 unwind label %bb.ah

.body50.thread:                                   ; preds = %bb.ad, %bb.bd, %.body50
  %.pn43127 = phi { ptr, i32 } [ %i.bo, %bb.ad ], [ %.pn43, %bb.bd ], [ %.pn43, %.body50 ]
  resume { ptr, i32 } %.pn43127

bb.bd:                                            ; preds = %.body50
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsa7Blp2W9WhU_12arrow_select8coalesce14BatchCoalescerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.r) #43
          to label %.body50.thread unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBW_7sort_byNCNCNvNtNtB14_10operations8optimize21build_compaction_plan0s0_0E0EB14_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i82 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i87 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB13_7sort_byNCNCNvNtNtB1b_10operations8optimize21build_compaction_plan0s0_0E0EB1b_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
end_hunk_0
