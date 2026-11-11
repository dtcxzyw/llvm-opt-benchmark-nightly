Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB3p_11collections5btree3mapINtB4b_8BTreeMaplBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5a_8adapters3map3MapINtNtB66_6filter6FilterINtNtNtB5a_7sources7from_fn6FromFnNCNvB1T_12visit_fields0ENCNvMB1T_NtB1T_19StatisticsCollector7try_new0ENCB7O_s_0EE0E0EB21_:bb.a

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 25620477880152156) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !17324
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4447, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17355), !noalias !17356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17357), !noalias !17356
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3v_11collections5btree3mapINtB4i_8BTreeMaplB14_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5i_8adapters3map3MapINtNtB6f_6filter6FilterINtNtNtB5i_7sources7from_fn6FromFnNCNvB1Z_12visit_fields0ENCNvMB1Z_NtB1Z_19StatisticsCollector7try_new0ENCB7X_s_0EE0E0EB27_.exit.i.thread96 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [360 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i37
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i37 ], [ %i.aq, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.ak = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17358), !noalias !17356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17359), !noalias !17356
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !17360, !noalias !17356
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !17361, !noalias !17356
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.al, align 8, !alias.scope !17360, !noalias !17356
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.am, align 8, !alias.scope !17361, !noalias !17356
  %i.an = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17362), !noalias !17356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17363), !noalias !17356
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ao, align 8, !alias.scope !17364, !noalias !17356
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ap, align 8, !alias.scope !17365, !noalias !17356
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ao, align 8, !alias.scope !17364, !noalias !17356
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ap, align 8, !alias.scope !17365, !noalias !17356
  %i.aq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17366), !noalias !17356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17367), !noalias !17356
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.ar, align 8, !alias.scope !17368, !noalias !17356
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.2 = load i64, ptr %i.as, align 8, !alias.scope !17369, !noalias !17356
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.2, ptr %i.ar, align 8, !alias.scope !17368, !noalias !17356
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.2, ptr %i.as, align 8, !alias.scope !17369, !noalias !17356
  %exitcond.not.i.i.i.i.i.i.2 = icmp eq i64 %i.aq, 45
  br i1 %exitcond.not.i.i.i.i.i.i.2, label %_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i, label %.preheader.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core10intrinsics25typed_swap_nonoverlappingTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB25_.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3w_11collections5btree3mapINtB4j_8BTreeMaplB15_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5j_8adapters3map3MapINtNtB6g_6filter6FilterINtNtNtB5j_7sources7from_fn6FromFnNCNvB20_12visit_fields0ENCNvMB20_NtB20_19StatisticsCollector7try_new0ENCB7Y_s_0EE0E0EB28_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE7reverseB1z_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !76
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !76 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [360 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.162 to i1
  %i.br = or i64 %i.bj, %.sroa.023.162
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 25620477880152156) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !17341
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17371)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = mul nuw nsw i64 %.sroa.0.0.i.i35, 360   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !17372
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.co, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -360 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -360 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -360 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !17371, !noalias !17373, !noundef !76
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !17370, !noalias !17373, !noundef !76
  %i.cl = icmp slt i32 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cl, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ck, ptr noundef nonnull align 8 dereferenceable(360) %..i.i, i64 360, i1 false), !alias.scope !17372, !noalias !17373
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [360 x i8], ptr %i.ci, i64 %i.cn ; 3 uses
  %i.cp = zext i1 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [360 x i8], ptr %i.cj, i64 %i.cp ; 3 uses
  %i.cr = icmp eq ptr %i.co, %i.bo
  %i.cs = icmp eq ptr %i.cq, %2
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.ct = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !17370, !noalias !17374, !noundef !76
  %.val.i19.i = load i32, ptr %i.cu, align 4, !alias.scope !17371, !noalias !17374, !noundef !76
  %i.cv = icmp slt i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cw = xor i1 %i.cv, true
  %spec.select.i.i = select i1 %i.cv, ptr %.sroa.0.02.i.i, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(360) %spec.select.i.i, i64 360, i1 false), !alias.scope !17372, !noalias !17374
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [360 x i8], ptr %i.cu, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cv to i64
  %i.da = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 360 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.cf
  %i.dd = icmp ne ptr %i.da, %i.m
  %or.cond.i20.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.co, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.0.i to i64
  %i.df = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dg, i1 false), !alias.scope !17372, !noalias !17375
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB3Q_11collections5btree3mapINtB4D_8BTreeMaplB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB5D_8adapters3map3MapINtNtB6A_6filter6FilterINtNtNtB5D_7sources7from_fn6FromFnNCNvB27_12visit_fields0ENCNvMB27_NtB27_19StatisticsCollector7try_new0ENCB8i_s_0EE0E0EB2f_.exit.i
  %i.dh = shl nuw nsw i64 %i.bm, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit

bb.z:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw [360 x i8], ptr %i.bo, i64 %i.bk
  %i.dk = or i64 %i.bl, 1
  %i.dl = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = xor i32 %i.dn, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef range(i64 0, 25620477880152156) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !17341
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3z_11collections5btree3mapINtB4m_8BTreeMaplB18_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtNtNtB5m_7sources7from_fn6FromFnNCNvB23_12visit_fields0ENCNvMB23_NtB23_19StatisticsCollector7try_new0ENCB81_s_0EE0E0EB2b_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB3q_11collections5btree3mapINtB4c_8BTreeMaplBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5b_8adapters3map3MapINtNtB67_6filter6FilterINtNtNtB5b_7sources7from_fn6FromFnNCNvB1U_12visit_fields0ENCNvMB1U_NtB1U_19StatisticsCollector7try_new0ENCB7P_s_0EE0E0EB22_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dp = icmp ugt i64 %i.bd, 1
  br i1 %i.dp, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dt, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !17341
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_3zip3ZipINtNtNtB18_3vec9into_iter8IntoIterlEB4F_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5s_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !17400 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit
  %.sroa.021.0 = phi i8 [ %i.bu, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !17401, !noundef !76 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !17401, !noundef !76
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !17401, !noundef !76 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !17401, !noundef !76 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE12split_at_mutCsaSXGKSfiU2E_10lance_file.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapmmEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_3zip3ZipINtNtNtB1e_3vec9into_iter8IntoIterlEB4N_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5A_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTmmE7reverseCsaSXGKSfiU2E_10lance_file.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTmmENCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapmmEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_3zip3ZipINtNtNtB1f_3vec9into_iter8IntoIterlEB4O_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EE0E0EB5B_.exit

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB2D_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB2F_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB1J_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB2F_:bb.a

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTjmINtNtNtBa_3ops5range5RangeyEENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB37_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB39_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB2d_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0E0EB39_.exit: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTjmINtNtNtBa_3ops5range5RangeyEENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB37_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB39_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB2d_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0E0EB39_.exit.unr-lcssa, %.epil.preheader337
  %i.hx = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.097248
  br i1 %i.hx, label %bb.ai, label %.outer, !prof !75

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjmINtNtNtBa_3ops5range5RangeyEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB30_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB32_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB26_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0EB32_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTjmINtNtNtBa_3ops5range5RangeyEENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB37_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB39_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB2d_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0E0EB39_.exit
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hz = icmp ult i64 %i.hj, 33
  br i1 %i.hz, label %.outer._crit_edge, label %.lr.ph

bb.ai:                                            ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionTjmINtNtNtBa_3ops5range5RangeyEENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyyNCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB37_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB39_6format6pbfile14ColumnMetadataEINtNtBa_6result6ResultINtNtB2d_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE00E0E0EB39_.exit
  call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.097248, i64 noundef %.sroa.16.097248, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #49
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 25620477880152156) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 25620477880152156) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(360) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #8 personality ptr @rust_eh_personality !guid !17584 {
bb.a:
  %.sroa.5.i.i = alloca [356 x i8], align 4       ; 8 uses
  %i.a = alloca [360 x i8], align 8               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.gx, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.gi, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.dw, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.d = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit
  %i.e = icmp eq i32 %i.dw, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %.sroa.0.0.ph104, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit ], [ %0, %bb.a ], [ %i.gx, %.outer ] ; 16 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit ], [ %1, %bb.a ], [ %i.gi, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17585)
  call void @llvm.experimental.noalias.scope.decl(metadata !17586)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3V_11collections5btree3mapINtB4I_8BTreeMaplB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5I_8adapters3map3MapINtNtB6F_6filter6FilterINtNtNtB5I_7sources7from_fn6FromFnNCNvB2p_12visit_fields0ENCNvMB2p_NtB2p_19StatisticsCollector7try_new0ENCB8n_s_0EE0E0EB2x_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 10 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 360
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !17585, !noundef !76
  %.val9.i.i = load i32, ptr %.sroa.0.0.ph.lcssa95, align 4, !alias.scope !17585, !noundef !76
  %i.l = icmp slt i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 1080
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa95, i64 720
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !17585, !noundef !76
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !17585, !noundef !76
  %i.o = icmp slt i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !17585, !noundef !76
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !17585, !noundef !76
  %i.y = icmp slt i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !17585, !noundef !76
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !17585, !noundef !76
  %i.z = icmp slt i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !76
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !76
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !76
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !76 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !76
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !76 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !alias.scope !17585, !noundef !76
  %.val1.i.i = load i32, ptr %i.ad, align 4, !alias.scope !17585, !noundef !76
  %i.ag = icmp slt i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !76
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(360) %i.aa, i64 360, i1 false), !alias.scope !17587
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.aj, ptr noundef nonnull align 8 dereferenceable(360) %i.ah, i64 360, i1 false), !alias.scope !17587
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr noundef nonnull align 8 dereferenceable(360) %i.ai, i64 360, i1 false), !alias.scope !17587
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.al, ptr noundef nonnull align 8 dereferenceable(360) %i.ab, i64 360, i1 false), !alias.scope !17587
  %i.am = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i ; 8 uses
  %i.an = getelementptr inbounds nuw [360 x i8], ptr %2, i64 %i.i ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %.val8.i30.i = load i32, ptr %i.ao, align 4, !alias.scope !17585, !noundef !76
  %.val9.i31.i = load i32, ptr %i.am, align 4, !alias.scope !17585, !noundef !76
  %i.ap = icmp slt i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1080
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 720
  %.val6.i32.i = load i32, ptr %i.aq, align 4, !alias.scope !17585, !noundef !76
  %.val7.i33.i = load i32, ptr %i.ar, align 4, !alias.scope !17585, !noundef !76
  %i.as = icmp slt i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [360 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [360 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [360 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [360 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34.i = load i32, ptr %i.az, align 4, !alias.scope !17585, !noundef !76
  %.val5.i35.i = load i32, ptr %i.au, align 4, !alias.scope !17585, !noundef !76
  %i.bc = icmp slt i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bb, align 4, !alias.scope !17585, !noundef !76
  %.val3.i37.i = load i32, ptr %i.ax, align 4, !alias.scope !17585, !noundef !76
  %i.bd = icmp slt i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !76
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !76
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !76
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !76 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !76
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !76 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bj, align 4, !alias.scope !17585, !noundef !76
  %.val1.i39.i = load i32, ptr %i.bh, align 4, !alias.scope !17585, !noundef !76
  %i.bk = icmp slt i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !76
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.an, ptr noundef nonnull align 8 dereferenceable(360) %i.be, i64 360, i1 false), !alias.scope !17587
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bn, ptr noundef nonnull align 8 dereferenceable(360) %i.bl, i64 360, i1 false), !alias.scope !17587
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bo, ptr noundef nonnull align 8 dereferenceable(360) %i.bm, i64 360, i1 false), !alias.scope !17587
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.bp, ptr noundef nonnull align 8 dereferenceable(360) %i.bf, i64 360, i1 false), !alias.scope !17587
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0.0.ph.lcssa95, i64 360, i1 false), !alias.scope !17587
  %i.bq = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i
  %i.br = getelementptr inbounds nuw [360 x i8], ptr %2, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.br, ptr noundef nonnull align 8 dereferenceable(360) %i.bq, i64 360, i1 false), !alias.scope !17587
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.bs = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i, %bb.h
  %i.bu = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.i
  %i.bv = getelementptr [360 x i8], ptr %2, i64 %i.i ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cg, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [360 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx268 = mul nuw nsw i64 %.sroa.05.08.1.i, 360
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx268 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.by, ptr noundef nonnull align 8 dereferenceable(360) %i.bx, i64 360, i1 false), !alias.scope !17587
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -360 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.by, align 8, !alias.scope !17586, !noundef !76 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.bz, align 8, !alias.scope !17586, !noundef !76
  %i.ca = icmp slt i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.ca, label %bb.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(356) %i.cb, i64 356, i1 false), !noalias !17586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.by, ptr noundef nonnull align 8 dereferenceable(360) %i.bz, i64 360, i1 false), !alias.scope !17586
  %i.cc = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cc, label %._crit_edge264, label %.lr.ph263

bb.j:                                             ; preds = %.lr.ph263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0.0.i41.1.i261, ptr noundef nonnull align 8 dereferenceable(360) %i.ce, i64 360, i1 false), !alias.scope !17586
  %i.cd = icmp eq ptr %i.ce, %i.bv
  br i1 %i.cd, label %._crit_edge264, label %.lr.ph263

.lr.ph263:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i41.1.i261 = phi ptr [ %i.ce, %bb.j ], [ %i.bz, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i261, i64 -360 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.ce, align 4, !alias.scope !17586, !noundef !76
  %i.cf = icmp slt i32 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.cf, label %bb.j, label %._crit_edge264

._crit_edge264:                                   ; preds = %bb.j, %.lr.ph263, %bb.i
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.bv, %bb.i ], [ %i.bv, %bb.j ], [ %.sroa.0.0.i41.1.i261, %.lr.ph263 ] ; 2 uses
  store i32 %.val9.i40.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !17586, !noalias !17588
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.i.i, i64 356, i1 false), !noalias !17589
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i: ; preds = %._crit_edge264, %.lr.ph.1.i
  %i.cg = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cg, %i.bs
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.1.i, %.loopexit.i
  %i.ch = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.ci = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [360 x i8], ptr %2, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.bv, i64 -360
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cl = getelementptr i8, ptr %i.da, i64 360    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cz, i64 360
  %i.cn = and i64 %.sroa.16.0.lcssa, 1
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa95, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cp, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.bv, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.ck, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.cj, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.ci, %.loopexit.1.i ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !17590, !noundef !76
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !17590, !noundef !76
  %i.cq = icmp slt i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.cq, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.cr = xor i1 %i.cq, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(360) %..i23.i.i, i64 360, i1 false), !alias.scope !17587, !noalias !17591
  %i.cs = zext i1 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [360 x i8], ptr %.sroa.011.07.i.i, i64 %i.cs ; 4 uses
  %i.cu = zext i1 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [360 x i8], ptr %.sroa.06.08.i.i, i64 %i.cu ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 360 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !alias.scope !17590, !noundef !76
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !alias.scope !17590, !noundef !76
  %i.cx = icmp slt i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.cx, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.cy = xor i1 %i.cx, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(360) %..i.i.i, i64 360, i1 false), !alias.scope !17587, !noalias !17592
  %.neg.i.i.i = sext i1 %i.cy to i64
  %i.cz = getelementptr [360 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.cx to i64
  %i.da = getelementptr [360 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -360
  %exitcond.not.i.i = icmp eq i64 %i.cp, %i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dc = icmp ult ptr %i.cv, %i.cl               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dc, ptr %i.cv, ptr %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.cw, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.06.0..sroa.011.0.i.i, i64 360, i1 false), !alias.scope !17587
  %i.dd = zext i1 %i.dc to i64
  %i.de = getelementptr inbounds nuw [360 x i8], ptr %i.cv, i64 %i.dd
  %i.df = xor i1 %i.dc, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [360 x i8], ptr %i.ct, i64 %i.dg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.ct, %._crit_edge.i.i ], [ %i.dh, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.cv, %._crit_edge.i.i ], [ %i.de, %bb.k ]
  %i.di = icmp ne ptr %.sroa.06.1.i.i, %i.cl
  %i.dj = icmp ne ptr %.sroa.011.1.i.i, %i.cm
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dj, !prof !147
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3V_11collections5btree3mapINtB4I_8BTreeMaplB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5I_8adapters3map3MapINtNtB6F_6filter6FilterINtNtNtB5I_7sources7from_fn6FromFnNCNvB2p_12visit_fields0ENCNvMB2p_NtB2p_19StatisticsCollector7try_new0ENCB8n_s_0EE0E0EB2x_.exit, !prof !147

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #49
          to label %.noexc.i unwind label %bb.n, !noalias !17587

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = mul nuw nsw i64 %.sroa.16.0.lcssa, 360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa95, ptr nonnull align 8 %2, i64 %i.dl, i1 false), !alias.scope !17587, !noalias !17593
  resume { ptr, i32 } %i.dk

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.dv, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph.lcssa95, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 360
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.dn, ptr noundef nonnull align 8 dereferenceable(360) %i.dm, i64 360, i1 false), !alias.scope !17587
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -360 ; 3 uses
  %.val9.i40.i = load i32, ptr %i.dn, align 8, !alias.scope !17586, !noundef !76 ; 3 uses
  %.val10.i.i = load i32, ptr %i.do, align 8, !alias.scope !17586, !noundef !76
  %i.dp = icmp slt i32 %.val9.i40.i, %.val10.i.i
  br i1 %i.dp, label %bb.o, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(356) %i.dq, i64 356, i1 false), !noalias !17586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.dn, ptr noundef nonnull align 8 dereferenceable(360) %i.do, i64 360, i1 false), !alias.scope !17586
  %i.dr = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dr, label %._crit_edge257, label %.lr.ph256

bb.p:                                             ; preds = %.lr.ph256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0.0.i41.i254, ptr noundef nonnull align 8 dereferenceable(360) %i.dt, i64 360, i1 false), !alias.scope !17586
  %i.ds = icmp eq ptr %i.dt, %2
  br i1 %i.ds, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i41.i254 = phi ptr [ %i.dt, %bb.p ], [ %i.do, %bb.o ] ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i254, i64 -360 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.dt, align 4, !alias.scope !17586, !noundef !76
  %i.du = icmp slt i32 %.val9.i40.i, %.val8.i42.i
  br i1 %i.du, label %bb.p, label %._crit_edge257

._crit_edge257:                                   ; preds = %bb.p, %.lr.ph256, %bb.o
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i41.i254, %.lr.ph256 ] ; 2 uses
  store i32 %.val9.i40.i, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !17586, !noalias !17588
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(356) %.sroa.5.i.i, i64 356, i1 false), !noalias !17589
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB3B_11collections5btree3mapINtB4o_8BTreeMaplB1a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtNtNtB5o_7sources7from_fn6FromFnNCNvB25_12visit_fields0ENCNvMB25_NtB25_19StatisticsCollector7try_new0ENCB83_s_0EE0E0EB2d_.exit.i: ; preds = %._crit_edge257, %.lr.ph.i
  %i.dv = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dv, %i.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB3p_11collections5btree3mapINtB4b_8BTreeMaplBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5a_8adapters3map3MapINtNtB66_6filter6FilterINtNtNtB5a_7sources7from_fn6FromFnNCNvB1T_12visit_fields0ENCNvMB1T_NtB1T_19StatisticsCollector7try_new0ENCB7O_s_0EE0E0EB21_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3V_11collections5btree3mapINtB4I_8BTreeMaplB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5I_8adapters3map3MapINtNtB6F_6filter6FilterINtNtNtB5I_7sources7from_fn6FromFnNCNvB2p_12visit_fields0ENCNvMB2p_NtB2p_19StatisticsCollector7try_new0ENCB8n_s_0EE0E0EB2x_.exit

.lr.ph250:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096249 = phi i32 [ %i.dw, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097248 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.dw = add i32 %.sroa.025.096249, -1           ; 4 uses
  %i.dx = lshr i64 %.sroa.16.097248, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dx, 1440
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.dx, 2520
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 3 uses
  %i.ea = icmp samesign ult i64 %.sroa.16.097248, 64
  br i1 %i.ea, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3TlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB3s_11collections5btree3mapINtB4e_8BTreeMaplB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtNtNtB5e_7sources7from_fn6FromFnNCNvB1W_12visit_fields0ENCNvMB1W_NtB1W_19StatisticsCollector7try_new0ENCB7S_s_0EE0E0EB24_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph250
  %i.eb = call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB3x_11collections5btree3mapINtB4k_8BTreeMaplB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB5k_8adapters3map3MapINtNtB6h_6filter6FilterINtNtNtB5k_7sources7from_fn6FromFnNCNvB21_12visit_fields0ENCNvMB21_NtB21_19StatisticsCollector7try_new0ENCB7Z_s_0EE0E0EB29_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef readonly %i.dy, ptr noundef readonly %i.dz, i64 noundef %i.dx)
  br label %bb.r

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3TlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB3s_11collections5btree3mapINtB4e_8BTreeMaplB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtNtNtB5e_7sources7from_fn6FromFnNCNvB1W_12visit_fields0ENCNvMB1W_NtB1W_19StatisticsCollector7try_new0ENCB7S_s_0EE0E0EB24_.exit.i: ; preds = %.lr.ph250
  %.val6.i = load i32, ptr %.sroa.0.0.ph104, align 4, !alias.scope !17594, !noundef !76 ; 2 uses
  %.val7.i = load i32, ptr %i.dy, align 4, !alias.scope !17594, !noundef !76 ; 2 uses
  %i.ec = icmp slt i32 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i32, ptr %i.dz, align 4, !alias.scope !17594, !noundef !76 ; 2 uses
  %i.ed = icmp slt i32 %.val6.i, %.val5.i
  %i.ee = xor i1 %i.ec, %i.ed
  %i.ef = icmp slt i32 %.val7.i, %.val5.i
  %i.eg = xor i1 %i.ec, %i.ef
  %..i.i = select i1 %i.eg, ptr %i.dz, ptr %i.dy
  %.sroa.0.0.i.i = select i1 %i.ee, ptr %.sroa.0.0.ph104, ptr %..i.i
  br label %bb.r

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3V_11collections5btree3mapINtB4I_8BTreeMaplB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5I_8adapters3map3MapINtNtB6F_6filter6FilterINtNtNtB5I_7sources7from_fn6FromFnNCNvB2p_12visit_fields0ENCNvMB2p_NtB2p_19StatisticsCollector7try_new0ENCB8n_s_0EE0E0EB2x_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3TlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB3s_11collections5btree3mapINtB4e_8BTreeMaplB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtNtNtB5e_7sources7from_fn6FromFnNCNvB1W_12visit_fields0ENCNvMB1W_NtB1W_19StatisticsCollector7try_new0ENCB7S_s_0EE0E0EB24_.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3TlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB3s_11collections5btree3mapINtB4e_8BTreeMaplB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtNtNtB5e_7sources7from_fn6FromFnNCNvB1W_12visit_fields0ENCNvMB1W_NtB1W_19StatisticsCollector7try_new0ENCB7S_s_0EE0E0EB24_.exit.i ], [ %i.eb, %bb.q ]
  %i.eh = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ei = sub nuw i64 %i.eh, %i.c                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.ei, 360      ; 3 uses
  %i.ej = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.097248
  call void @llvm.assume(i1 %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ei ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.a, ptr noundef nonnull align 8 dereferenceable(360) %i.ek, i64 360, i1 false)
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph101, align 8, !noundef !76
  %.val = load i32, ptr %i.ek, align 8, !noundef !76
  %i.el = icmp slt i32 %.sroa.028.0.val, %.val
  br i1 %i.el, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !17595)
  %.not66 = icmp samesign ult i64 %3, %.sroa.16.097248
  br i1 %.not66, label %bb.v, label %bb.u, !prof !147

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr [360 x i8], ptr %2, i64 %.sroa.16.097248 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.y, %bb.u
  %.sroa.19.0.i = phi ptr [ %i.em, %bb.u ], [ %i.ex, %bb.y ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.11.1.lcssa.i, %bb.y ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.u ], [ %i.ez, %bb.y ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.u ], [ %.sroa.16.097248, %bb.y ] ; 2 uses
  %i.en = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i38 ; 2 uses
  %i.eo = icmp ult ptr %.sroa.5.0.i, %i.en
  br i1 %i.eo, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.w
  %.val12.i = load i32, ptr %i.ek, align 8, !alias.scope !17596, !noundef !76
  br label %bb.x

._crit_edge.i:                                    ; preds = %bb.x, %bb.w
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.w ], [ %i.er, %bb.x ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.w ], [ %i.eu, %bb.x ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.w ], [ %i.ev, %bb.x ] ; 2 uses
  %i.ep = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.097248
  br i1 %i.ep, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph.i40
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i40 ], [ %i.ev, %bb.x ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i40 ], [ %i.eu, %bb.x ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i40 ], [ %i.er, %bb.x ]
  %.val.i = load i32, ptr %.sroa.5.111.i, align 4, !alias.scope !17596, !noundef !76
  %i.eq = icmp slt i32 %.val.i, %.val12.i         ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -360 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.eq, ptr %2, ptr %i.er
  %i.es = getelementptr inbounds nuw [360 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.es, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.5.111.i, i64 360, i1 false), !alias.scope !17597, !noalias !17598
  %i.et = zext i1 %i.eq to i64
  %i.eu = add i64 %.sroa.11.110.i, %i.et          ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 360 ; 3 uses
  %i.ew = icmp ult ptr %i.ev, %i.en
  br i1 %i.ew, label %bb.x, label %._crit_edge.i

bb.y:                                             ; preds = %._crit_edge.i
  %i.ex = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -360 ; 2 uses
  %i.ey = getelementptr inbounds nuw [360 x i8], ptr %i.ex, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ey, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.5.1.lcssa.i, i64 360, i1 false), !alias.scope !17597, !noalias !17599
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 360
  br label %bb.w

bb.z:                                             ; preds = %._crit_edge.i
  %i.fa = mul i64 %.sroa.11.1.lcssa.i, 360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.fa, i1 false), !alias.scope !17597
  %i.fb = sub i64 %.sroa.16.097248, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097248, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fc = getelementptr [360 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fb, 1
  %i.fd = icmp eq i64 %.sroa.16.097248, %.neg
  br i1 %i.fd, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fb, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fh, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fe = xor i64 %.sroa.06.014.i, -1
  %i.ff = getelementptr [360 x i8], ptr %i.em, i64 %i.fe
  %i.fg = getelementptr [360 x i8], ptr %i.fc, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fg, ptr noundef nonnull align 8 dereferenceable(360) %i.ff, i64 360, i1 false), !alias.scope !17597
  %i.fh = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.fi = xor i64 %.sroa.06.014.i, -2
  %i.fj = getelementptr [360 x i8], ptr %i.em, i64 %i.fi
  %i.fk = getelementptr [360 x i8], ptr %i.fc, i64 %.sroa.06.014.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fl, ptr noundef nonnull align 8 dereferenceable(360) %i.fj, i64 360, i1 false), !alias.scope !17597
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aa

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod328 = trunc i64 %i.fb to i1
  call void @llvm.assume(i1 %lcmp.mod328)
  %i.fm = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.fn = getelementptr [360 x i8], ptr %i.em, i64 %i.fm
  %i.fo = getelementptr [360 x i8], ptr %i.fc, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fo, ptr noundef nonnull align 8 dereferenceable(360) %i.fn, i64 360, i1 false), !alias.scope !17597
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.z
  %i.fp = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fp, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097248
  br i1 %.not.i41, label %bb.ac, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit, !prof !75

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #49, !noalias !17600
  unreachable

_RNvMNtCscI6d9CVNmLh_4core5sliceSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEE12split_at_mutB1z_.exit: ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3y_11collections5btree3mapINtB4l_8BTreeMaplB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5l_8adapters3map3MapINtNtB6i_6filter6FilterINtNtNtB5l_7sources7from_fn6FromFnNCNvB22_12visit_fields0ENCNvMB22_NtB22_19StatisticsCollector7try_new0ENCB80_s_0EE0E0EB2a_(ptr noalias noundef nonnull align 8 %i.fq, i64 noundef %i.fb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(360) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fr = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.fr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.s, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !17601)
  %.not67 = icmp samesign ult i64 %3, %.sroa.16.097248
  br i1 %.not67, label %bb.ae, label %bb.ad, !prof !147

bb.ad:                                            ; preds = %.thread
  %i.fs = getelementptr [360 x i8], ptr %2, i64 %.sroa.16.097248 ; 4 uses
  br label %bb.af

bb.ae:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.19.0.i44 = phi ptr [ %i.fs, %bb.ad ], [ %i.gd, %bb.ah ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.ad ], [ %i.gf, %bb.ah ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph104, %bb.ad ], [ %i.gg, %bb.ah ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.ad ], [ %.sroa.16.097248, %bb.ah ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [360 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i47 ; 2 uses
  %i.fu = icmp ult ptr %.sroa.5.0.i46, %i.ft
  br i1 %i.fu, label %.lr.ph.i56, label %._crit_edge.i48

.lr.ph.i56:                                       ; preds = %bb.af
  %.val12.i57 = load i32, ptr %i.ek, align 4, !alias.scope !17602, !noundef !76
  br label %bb.ag

._crit_edge.i48:                                  ; preds = %bb.ag, %bb.af
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.af ], [ %i.fx, %bb.ag ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.af ], [ %i.ga, %bb.ag ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.af ], [ %i.gb, %bb.ag ] ; 2 uses
  %i.fv = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.097248
  br i1 %i.fv, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i56
  %.sroa.5.111.i58 = phi ptr [ %.sroa.5.0.i46, %.lr.ph.i56 ], [ %i.gb, %bb.ag ] ; 3 uses
  %.sroa.11.110.i59 = phi i64 [ %.sroa.11.0.i45, %.lr.ph.i56 ], [ %i.ga, %bb.ag ] ; 2 uses
  %.sroa.19.19.i60 = phi ptr [ %.sroa.19.0.i44, %.lr.ph.i56 ], [ %i.fx, %bb.ag ]
  %.val.i61 = load i32, ptr %.sroa.5.111.i58, align 4, !alias.scope !17602, !noundef !76
  %i.fw = icmp sge i32 %.val12.i57, %.val.i61     ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.sroa.19.19.i60, i64 -360 ; 3 uses
  %.sroa.01.0.i.i62 = select i1 %i.fw, ptr %2, ptr %i.fx
  %i.fy = getelementptr inbounds nuw [360 x i8], ptr %.sroa.01.0.i.i62, i64 %.sroa.11.110.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fy, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.5.111.i58, i64 360, i1 false), !alias.scope !17603, !noalias !17604
  %i.fz = zext i1 %i.fw to i64
  %i.ga = add i64 %.sroa.11.110.i59, %i.fz        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i58, i64 360 ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_6FieldsE8try_from:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48196
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48196 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.10297.0.ph = phi i64 [ %i.af, %bb.c ], [ undef, %bb.a ]
  %.sroa.4295.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4295.0.ph, i64 %.sroa.10297.0.ph) #49
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %i.ad, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.an = shl nuw nsw i64 %i.ad, 3                ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48197
  %i.ao = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48197 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i64 %i.an, 7
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 true)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275: ; preds = %bb.ef, %bb.h
  %.pn165.pn674 = phi { ptr, i32 } [ %.pn165, %bb.h ], [ %.pn165.pn675, %bb.ef ] ; 2 uses
  %.sroa.090.2672 = phi i1 [ %.sroa.090.4, %bb.h ], [ %.sroa.090.2673, %bb.ef ]
  br i1 %.sroa.090.2672, label %bb.eg, label %common.resume

.thread:                                          ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #49
          to label %bb.ar unwind label %.thread

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread, %bb.f
  %i.au = phi i64 [ %i.as, %bb.f ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  %i.av = phi ptr [ %i.am, %bb.f ], [ %i.ai, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.aw = phi ptr [ %i.al, %bb.f ], [ %i.ah, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 3 uses
  %i.ax = phi ptr [ %i.aj, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ] ; 2 uses
  %.sroa.10301.0 = phi ptr [ %i.ao, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.thread ]
  store i64 %i.ad, ptr %i.aa, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %.sroa.10301.0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ba = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !95, !noalias !48198, !noundef !76
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !85

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %.pre.i.i = load i64, ptr %i.ba, align 8, !noalias !48199
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !48199
  br label %bb.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit192
  %i.be = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %.thread668 ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !48200
  store i8 1, ptr %i.bb, align 8, !noalias !48200
  br label %bb.i

.thread676:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.ad, %.loopexit406
  %.pn165.ph = phi { ptr, i32 } [ %lpad.loopexit407, %.loopexit406 ], [ %lpad.loopexit.split-lp904, %bb.ad ], [ %i.iz, %bb.au ], [ %lpad.loopexit.split-lp904, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val175680 = load ptr, ptr %i.z, align 8
  %.val176681 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !76
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175680, i64 %.val176681) #50
  br label %bb.ef

bb.h:                                             ; preds = %.body233, %.loopexit.split-lp
  %.sroa.088.2 = phi i8 [ %.sroa.088.5, %.body233 ], [ %.sroa.088.3.ph, %.loopexit.split-lp ]
  %.sroa.090.4 = phi i1 [ false, %.body233 ], [ %.sroa.090.5.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn165 = phi { ptr, i32 } [ %.pn161.pn.pn, %.body233 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val175 = load ptr, ptr %i.z, align 8
  %.val176 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !76
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val175, i64 %.val176) #50
  %i.bi = trunc nuw i8 %.sroa.088.2 to i1
  br i1 %i.bi, label %bb.ef, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit275

.thread668:                                       ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.i:                                             ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i
  %.pre-phi618 = phi i64 [ %i.bg, %.noexc ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.bf, %.noexc ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ] ; 2 uses
  %i.bk = add i64 %.pre-phi, 1
  store i64 %i.bk, ptr %i.ba, align 8, !noalias !48199
  br i1 %i.ag, label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp samesign ult i64 %i.ad, 15
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = lshr i64 -1, %i.au
  %i.bn = add nuw nsw i64 %i.bm, 1
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i64 %i.ad, 4
  %i.bp = and i64 %i.ad, 8
  %..i.i.i.i = add nuw nsw i64 %i.bp, 8
  %.sroa.03.0.i.i.i.i = select i1 %i.bo, i64 4, i64 %..i.i.i.i
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bn, %bb.k ], [ %.sroa.03.0.i.i.i.i, %bb.l ] ; 5 uses
  %i.bq = mul nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 24
  %i.br = add nuw nsw i64 %i.bq, 8
  %i.bs = and i64 %i.br, 9223372036854775792      ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 16 ; 2 uses
  %i.bu = add nuw nsw i64 %i.bs, %i.bt            ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48201
  %i.bv = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !48201 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bx = invoke { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bu)
          to label %.noexc193 unwind label %.thread668 ; 2 uses

.noexc193:                                        ; preds = %bb.m
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 0
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %i.bx, 1
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

bb.n:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs ; 2 uses
  %i.bz = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -1   ; 2 uses
  %i.ca = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 9
  %i.cb = lshr i64 %.sroa.4.0.i.ph.i.i.i, 3
  %i.cc = mul nuw nsw i64 %i.cb, 7
  %.sroa.07.0.i.i.i.i = select i1 %i.ca, i64 %i.bz, i64 %i.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.by, i8 -1, i64 %i.bt, i1 false), !noalias !48202
  br label %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit

_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.n, %.noexc193, %bb.i
  %.sroa.8.0.i.i = phi i64 [ %.sroa.07.0.i.i.i.i, %bb.n ], [ %.sroa.12.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ]
  %.sroa.6.0.i.i = phi i64 [ %i.bz, %bb.n ], [ %.sroa.7.0.ph.i.i.i, %.noexc193 ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.n ], [ null, %.noexc193 ], [ @83, %bb.i ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.z, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 7 uses
  store i64 %.sroa.6.0.i.i, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  store i64 %.sroa.8.0.i.i, ptr %.sroa.5304.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6305.0..sroa_idx, align 8
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 4 uses
  store i64 %.pre-phi, ptr %.sroa.7306.0..sroa_idx, align 8
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 3 uses
  store i64 %.pre-phi618, ptr %.sroa.8307.0..sroa_idx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ad, 176
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx
  br i1 %i.ag, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread, label %.lr.ph

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit197.thread: ; preds = %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i64 0, ptr %i.ch, align 8
  br label %_RINvMs_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE11resize_withNCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtB1l_6schema6SchemaINtNtBK_7convert7TryFromRNtB2w_6FieldsE8try_froms0_0EB2y_.exit

.lr.ph:                                           ; preds = %_RNvMs_NtCsfKiFC1ztrmh_9hashbrown3mapINtB4_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE24with_capacity_and_hasherCsaSXGKSfiU2E_10lance_file.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit
  %i.cl = phi ptr [ %i.ax, %.lr.ph ], [ %i.jb, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.cm = phi i64 [ 0, %.lr.ph ], [ %i.jd, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 10 uses
  %i.cn = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %i.lr, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.co = phi i64 [ %.sroa.6.0.i.i, %.lr.ph ], [ %i.ls, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.0.0515 = phi ptr [ %i.ce, %.lr.ph ], [ %i.cp, %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 176 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 152 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 8, !noundef !76 ; 3 uses
  %i.cs = icmp eq i32 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.s

bb.p:                                             ; preds = %_RNvMs18_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_5EntrylINtNtCscI6d9CVNmLh_4core6option6OptionjEE9or_insertCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ct = mul nuw nsw i64 %i.jd, 192              ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48203
  %i.cu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48203 ; 7 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.invoke, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cw = icmp ult i64 %i.cm, 42700796466920259
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.az, align 8, !alias.scope !48204, !noundef !76 ; 3 uses
  %i.cy = load i64, ptr %i.aa, align 8, !range !79, !alias.scope !48204, !noundef !76
  %i.cz = icmp eq i64 %i.cx, %i.cy
  br i1 %i.cz, label %bb.r, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit unwind label %.loopexit406

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.r, %bb.q
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !48204, !nonnull !76, !noundef !76
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cx
  store i64 %i.cm, ptr %i.db, align 8
  %i.dc = add i64 %i.cx, 1
  store i64 %i.dc, ptr %i.az, align 8, !alias.scope !48204
  br label %bb.x

bb.s:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !48205)
  %i.dd = load i64, ptr %.sroa.6305.0..sroa_idx, align 8, !alias.scope !48205, !noundef !76
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i = load i64, ptr %.sroa.7306.0..sroa_idx, align 8, !alias.scope !48205, !noundef !76
  %.val5.i = load i64, ptr %.sroa.8307.0..sroa_idx, align 8, !alias.scope !48205, !noundef !76
  %i.df = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECsaSXGKSfiU2E_10lance_file(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cq), !noalias !48205 ; 2 uses
  %i.dg = lshr i64 %i.df, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.t ], [ %i.ea, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.df, %bb.t ], [ %i.eb, %bb.w ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.co   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.dk, align 1, !noalias !48206 ; 2 uses
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.dj
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.sroa.06.0.i33.i.i = phi i16 [ %i.dz, %bb.v ], [ %i.dm, %bb.u ] ; 3 uses
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = add i64 %.sroa.01.0.i.i.i, %i.do
  %i.dq = and i64 %i.dp, %i.co
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.cn, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -24
  %.val2.i.i.i = load i32, ptr %i.dt, align 4, !noalias !48207, !noundef !76
  %i.du = icmp eq i32 %i.cr, %.val2.i.i.i
  br i1 %i.du, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit, label %bb.v, !prof !85

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.u
  %i.dv = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = icmp eq i16 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %select.unfold, !prof !75

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dy = add i16 %.sroa.06.0.i33.i.i, -1
  %i.dz = and i16 %i.dy, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dz, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ea = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.eb = add i64 %.sroa.01.0.i.i.i, %i.ea
  br label %bb.u

.loopexit406:                                     ; preds = %bb.x, %bb.r, %bb.ap, %bb.bb
  %lpad.loopexit407 = landingpad { ptr, i32 }
          cleanup
  br label %.thread676

.loopexit.split-lp:                               ; preds = %.invoke, %bb.aq, %bb.cu, %bb.cx, %select.unfold, %.loopexit405
  %.sroa.088.3.ph = phi i8 [ 1, %.invoke ], [ 1, %bb.aq ], [ 1, %.loopexit405 ], [ 1, %select.unfold ], [ 0, %bb.cu ], [ %.sroa.088.7, %bb.cx ]
  %.sroa.090.5.ph = phi i1 [ true, %.invoke ], [ true, %bb.aq ], [ true, %.loopexit405 ], [ true, %select.unfold ], [ false, %bb.cu ], [ false, %bb.cx ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.x:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit
  %i.ec = phi ptr [ %i.cl, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.im, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 ]
  %i.ed = phi i64 [ %i.cm, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit ], [ %i.ij, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXNtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCscI6d9CVNmLh_4core7convert4FromRNtNtNtB4_6format2pb5FieldE4from(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.0515)
          to label %bb.as unwind label %.loopexit406

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.lr.ph.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ds, i64 -16
  %i.ef = load i64, ptr %i.ee, align 8, !range !86, !noundef !76
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.z

select.unfold:                                    ; preds = %bb.s, %._crit_edge.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.eh, ptr %i.x, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.498.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ei, ptr %i.ej, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.cq, ptr %i.ek, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4118.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @1020, ptr noundef nonnull %i.x)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit unwind label %.loopexit.split-lp

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.el, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1021, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.y:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit
  %i.em = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !noundef !76
  br label %bb.an

bb.z:                                             ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMaplINtNtCscI6d9CVNmLh_4core6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getlECsaSXGKSfiU2E_10lance_file.exit
  %i.eo = load ptr, ptr %i.ay, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.ep = load i64, ptr %i.az, align 8, !noundef !76 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48208)
  call void @llvm.experimental.noalias.scope.decl(metadata !48209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !48210
  %i.eq = icmp eq i64 %i.cm, 0
  br i1 %i.eq, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = shl nuw nsw i64 %i.cm, 3                ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48211
  %i.es = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48211 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = ptrtoint ptr %i.es to i64
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ab, %bb.z
  %.sroa.10.0.i = phi i64 [ %i.eu, %bb.ab ], [ 8, %bb.z ]
  %i.ev = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  store i64 %i.cm, ptr %i.l, align 8, !noalias !48210
  store ptr %i.ev, ptr %i.ci, align 8, !noalias !48210
  store i64 0, ptr %i.cj, align 8, !noalias !48210
  %.idx.i = shl i64 %i.ep, 3                      ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48212)
  %i.ex = icmp samesign ugt i64 %i.ep, %i.cm
  br i1 %i.ex, label %bb.ac, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !75

bb.ac:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846976) %i.ep, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !48210

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i: ; preds = %bb.ac
  %.pre.i.i202 = load i64, ptr %i.cj, align 8, !alias.scope !48212, !noalias !48210
  %.pre.i = load ptr, ptr %i.ci, align 8, !alias.scope !48212, !noalias !48210
  br label %.lr.ph.i.i.i.i.i.preheader.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ey = icmp eq i64 %i.ep, 0
  br i1 %i.ey, label %._crit_edge.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i
  %i.ez = phi i64 [ %.pre.i.i202, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 2 uses
  %i.fa = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.thread.i ], [ %i.ev, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 6 uses
  %i.fb = add i64 %.idx.i, -8                     ; 2 uses
  %i.fc = lshr exact i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1
  %xtraiter = and i64 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %i.fe = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ez, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.012.i.i.i.i.i.i.prol = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ew, %.lr.ph.i.i.i.i.i.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.ff = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.prol = load i64, ptr %i.ff, align 8, !alias.scope !48209, !noalias !48213, !noundef !76
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  store i64 %.val8.i.i.i.i.i.i.prol, ptr %i.fg, align 8, !noalias !48214
  %i.fh = add i64 %i.fe, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !48049

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.lcssa908.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.2.012.i.i.i.i.i.i.unr = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.fi = icmp ult i64 %i.fb, 24
  br i1 %i.fi, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.fj = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.2.012.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -8
  %.val8.i.i.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !48209, !noalias !48213, !noundef !76
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fj
  store i64 %.val8.i.i.i.i.i.i, ptr %i.fl, align 8, !noalias !48214
  %i.fm = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -16
  %.val8.i.i.i.i.i.i.1 = load i64, ptr %i.fm, align 8, !alias.scope !48209, !noalias !48213, !noundef !76
  %i.fn = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  store i64 %.val8.i.i.i.i.i.i.1, ptr %i.fo, align 8, !noalias !48214
  %i.fp = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -24
  %.val8.i.i.i.i.i.i.2 = load i64, ptr %i.fp, align 8, !alias.scope !48209, !noalias !48213, !noundef !76
  %i.fq = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store i64 %.val8.i.i.i.i.i.i.2, ptr %i.fr, align 8, !noalias !48214
  %i.fs = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i.i, i64 -32 ; 3 uses
  %.val8.i.i.i.i.i.i.3 = load i64, ptr %i.fs, align 8, !alias.scope !48209, !noalias !48213, !noundef !76
  %i.ft = getelementptr [8 x i8], ptr %i.fa, i64 %i.fj
  %i.fu = getelementptr i8, ptr %i.ft, i64 24
  store i64 %.val8.i.i.i.i.i.i.3, ptr %i.fu, align 8, !noalias !48214
  %i.fv = add i64 %i.fj, 4                        ; 2 uses
  %i.fw = icmp eq ptr %i.eo, %i.fs
  br i1 %i.fw, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa908 = phi i64 [ %.lcssa908.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.fv, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.fx = icmp eq i64 %.lcssa908, 0
  br i1 %i.fx, label %._crit_edge.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.ac, %bb.af
  %lpad.loopexit.split-lp904 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val8.i = load i64, ptr %i.l, align 8, !noalias !48210 ; 2 uses
  %i.fy = icmp eq i64 %.val8.i, 0
  br i1 %i.fy, label %.thread676, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i = load ptr, ptr %i.ci, align 8, !noalias !48210, !nonnull !76, !noundef !76
  %i.fz = shl nuw i64 %.val8.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48210
  br label %.thread676

._crit_edge.i:                                    ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i
  %.val6.i = load i64, ptr %i.l, align 8, !noalias !48210 ; 2 uses
  %i.ga = icmp eq i64 %.val6.i, 0
  br i1 %i.ga, label %.loopexit405, label %.loopexit405.loopexit

.lr.ph.i:                                         ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i
  %i.gb = phi ptr [ %3, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i ], [ %i.fa, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 4 uses
  %storemerge38.i = phi i64 [ %.val5.i.i.i.i.i15.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i ], [ %.lcssa908, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit.i ] ; 2 uses
  %i.gc = add nsw i64 %storemerge38.i, -1         ; 7 uses
  store i64 %i.gc, ptr %i.cj, align 8, !noalias !48210
  %2 = load i64, ptr %i.l, align 8, !range !79, !noalias !48210, !noundef !76 ; 3 uses
  %i.gd = icmp samesign ult i64 %i.gc, %2
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ult i64 %storemerge38.i, 1152921504606846977
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gc
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !48210, !noundef !76 ; 4 uses
  %i.gh = icmp ult i64 %i.gg, %i.cm
  br i1 %i.gh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.gi = getelementptr inbounds nuw [216 x i8], ptr %i.cl, i64 %i.gg ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 176
  %i.gk = load i32, ptr %i.gj, align 8, !alias.scope !48208, !noundef !76
  %i.gl = icmp eq i32 %i.gk, %i.cr
  br i1 %i.gl, label %bb.aj, label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gg, i64 noundef range(i64 0, 42700796466920259) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #49
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !48210

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !48208, !nonnull !76, !noundef !76 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 208
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !48208, !noundef !76 ; 4 uses
  %.idx27.i = shl i64 %i.gp, 3                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx27.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48215)
  %i.gr = sub nuw nsw i64 %2, %i.gc
  %i.gs = icmp ugt i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.ai, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i, !prof !75

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.gc, i64 noundef %i.gp, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !48210

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i: ; preds = %bb.ai
  %.pre.i16.i = load i64, ptr %i.cj, align 8, !alias.scope !48215, !noalias !48210
  %.pre53.i = load ptr, ptr %i.ci, align 8, !alias.scope !48215, !noalias !48210
  br label %.lr.ph.i.i.i.i.i12.preheader.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i: ; preds = %bb.ah
  %i.gt = icmp eq i64 %i.gp, 0
  br i1 %i.gt, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.preheader.i

.lr.ph.i.i.i.i.i12.preheader.i:                   ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i
  %i.gu = phi i64 [ %.pre.i16.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i ], [ %i.gc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ] ; 2 uses
  %i.gv = phi ptr [ %.pre53.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.thread.i ], [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ] ; 7 uses
  %i.gw = add i64 %.idx27.i, -8                   ; 2 uses
  %i.gx = lshr exact i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1
  %xtraiter965 = and i64 %i.gy, 3                 ; 2 uses
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %.lr.ph.i.i.i.i.i12.i.prol.loopexit, label %.lr.ph.i.i.i.i.i12.i.prol

.lr.ph.i.i.i.i.i12.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i12.preheader.i, %.lr.ph.i.i.i.i.i12.i.prol
  %i.gz = phi i64 [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ], [ %i.gu, %.lr.ph.i.i.i.i.i12.preheader.i ] ; 2 uses
  %.sroa.2.012.i.i.i.i.i13.i.prol = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i12.i.prol ], [ %i.gq, %.lr.ph.i.i.i.i.i12.preheader.i ]
  %prol.iter967 = phi i64 [ %prol.iter967.next, %.lr.ph.i.i.i.i.i12.i.prol ], [ 0, %.lr.ph.i.i.i.i.i12.preheader.i ]
  %i.ha = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i.prol, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i14.i.prol = load i64, ptr %i.ha, align 8, !noalias !48216, !noundef !76
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gz
  store i64 %.val8.i.i.i.i.i14.i.prol, ptr %i.hb, align 8, !noalias !48217
  %i.hc = add i64 %i.gz, 1                        ; 3 uses
  %prol.iter967.next = add i64 %prol.iter967, 1   ; 2 uses
  %prol.iter967.cmp.not = icmp eq i64 %prol.iter967.next, %xtraiter965
  br i1 %prol.iter967.cmp.not, label %.lr.ph.i.i.i.i.i12.i.prol.loopexit, label %.lr.ph.i.i.i.i.i12.i.prol, !llvm.loop !48066

.lr.ph.i.i.i.i.i12.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i12.i.prol, %.lr.ph.i.i.i.i.i12.preheader.i
  %.lcssa909.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ]
  %.unr968 = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.hc, %.lr.ph.i.i.i.i.i12.i.prol ]
  %.sroa.2.012.i.i.i.i.i13.i.unr = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i12.preheader.i ], [ %i.ha, %.lr.ph.i.i.i.i.i12.i.prol ]
  %i.hd = icmp ult i64 %i.gw, 24
  br i1 %i.hd, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.i

.lr.ph.i.i.i.i.i12.i:                             ; preds = %.lr.ph.i.i.i.i.i12.i.prol.loopexit, %.lr.ph.i.i.i.i.i12.i
  %i.he = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i12.i ], [ %.unr968, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ] ; 5 uses
  %.sroa.2.012.i.i.i.i.i13.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i12.i ], [ %.sroa.2.012.i.i.i.i.i13.i.unr, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ] ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -8
  %.val8.i.i.i.i.i14.i = load i64, ptr %i.hf, align 8, !noalias !48216, !noundef !76
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.he
  store i64 %.val8.i.i.i.i.i14.i, ptr %i.hg, align 8, !noalias !48217
  %i.hh = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -16
  %.val8.i.i.i.i.i14.i.1 = load i64, ptr %i.hh, align 8, !noalias !48216, !noundef !76
  %i.hi = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  store i64 %.val8.i.i.i.i.i14.i.1, ptr %i.hj, align 8, !noalias !48217
  %i.hk = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -24
  %.val8.i.i.i.i.i14.i.2 = load i64, ptr %i.hk, align 8, !noalias !48216, !noundef !76
  %i.hl = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store i64 %.val8.i.i.i.i.i14.i.2, ptr %i.hm, align 8, !noalias !48217
  %i.hn = getelementptr inbounds i8, ptr %.sroa.2.012.i.i.i.i.i13.i, i64 -32 ; 3 uses
  %.val8.i.i.i.i.i14.i.3 = load i64, ptr %i.hn, align 8, !noalias !48216, !noundef !76
  %i.ho = getelementptr [8 x i8], ptr %i.gv, i64 %i.he
  %i.hp = getelementptr i8, ptr %i.ho, i64 24
  store i64 %.val8.i.i.i.i.i14.i.3, ptr %i.hp, align 8, !noalias !48217
  %i.hq = add i64 %i.he, 4                        ; 2 uses
  %i.hr = icmp eq ptr %i.gn, %i.hn
  br i1 %i.hr, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i, label %.lr.ph.i.i.i.i.i12.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB13_3rev3RevINtNtNtB17_5slice4iter4IterjEEEECsaSXGKSfiU2E_10lance_file.exit18.i: ; preds = %.lr.ph.i.i.i.i.i12.i.prol.loopexit, %.lr.ph.i.i.i.i.i12.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i
  %3 = phi ptr [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ], [ %i.gv, %.lr.ph.i.i.i.i.i12.i ], [ %i.gv, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ]
  %.val5.i.i.i.i.i15.i = phi i64 [ %i.gc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecjE7reserveCsaSXGKSfiU2E_10lance_file.exit.i11.i ], [ %.lcssa909.unr, %.lr.ph.i.i.i.i.i12.i.prol.loopexit ], [ %i.hq, %.lr.ph.i.i.i.i.i12.i ] ; 3 uses
  store i64 %.val5.i.i.i.i.i15.i, ptr %i.cj, align 8, !noalias !48210
  %i.hs = icmp eq i64 %.val5.i.i.i.i.i15.i, 0
  br i1 %i.hs, label %._crit_edge.i, label %.lr.ph.i

bb.aj:                                            ; preds = %bb.ae
  %i.ht = shl nuw i64 %2, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gb, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48210
  %.pre.a = load i64, ptr %i.av, align 8
  br label %bb.an

.loopexit405.loopexit:                            ; preds = %._crit_edge.i
  %.val7.i = load ptr, ptr %i.ci, align 8, !noalias !48210, !nonnull !76, !noundef !76
  %i.hu = shl nuw i64 %.val6.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48210
  br label %.loopexit405

.loopexit405:                                     ; preds = %._crit_edge.i, %.loopexit405.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !48218
  store ptr %i.cq, ptr %i.k, align 8, !noalias !48218
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !48218
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hv, ptr noundef nonnull @608, ptr noundef nonnull %i.k)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %.loopexit405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !48218
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4108.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.614.0..sroa_idx, i64 7, i1 false)
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.hv, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 11, ptr %i.hw, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @609 to i64), ptr %.sroa.5109.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit, %bb.ak, %bb.du
  %.not400488 = phi i1 [ true, %bb.du ], [ false, %bb.ak ], [ false, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit ]
  %.sroa.088.4 = phi i1 [ %i.rj, %bb.du ], [ true, %bb.ak ], [ true, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit ]
  %.val173 = load ptr, ptr %i.z, align 8          ; 2 uses
  %.val174 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !76 ; 4 uses
  %i.hx = icmp eq i64 %.val174, 0
  br i1 %i.hx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.al
  %i.hy = mul i64 %.val174, 24
  %i.hz = icmp slt i64 %.val174, 768614336404564650
  call void @llvm.assume(i1 %i.hz)
  %i.ia = and i64 %i.hy, -16                      ; 2 uses
  %i.ib = add i64 %i.ia, 32                       ; 2 uses
  %i.ic = add nsw i64 %.val174, 17
  %i.id = add i64 %i.ic, %i.ib                    ; 4 uses
  %i.ie = icmp uge i64 %i.id, %i.ib
  %i.if = icmp ult i64 %i.id, 9223372036854775793
  call void @llvm.assume(i1 %i.ie)
  call void @llvm.assume(i1 %i.if)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val173) ]
  %i.ig = icmp eq i64 %i.id, 0
  br i1 %i.ig, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.ih = sub i64 -32, %i.ia
  %i.ii = getelementptr inbounds i8, ptr %.val173, i64 %i.ih
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ii, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 16) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file.exit

bb.an:                                            ; preds = %bb.aj, %bb.y
  %i.ij = phi i64 [ %i.cm, %bb.y ], [ %.pre.a, %bb.aj ] ; 5 uses
  %.sroa.027.0 = phi i64 [ %i.en, %bb.y ], [ %i.gg, %bb.aj ] ; 3 uses
  %i.ik = icmp ult i64 %i.ij, 42700796466920259
  call void @llvm.assume(i1 %i.ik)
  %i.il = icmp ult i64 %.sroa.027.0, %i.ij
  br i1 %i.il, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.im = load ptr, ptr %i.aw, align 8, !nonnull !76, !noundef !76 ; 2 uses
  %i.in = getelementptr inbounds nuw [216 x i8], ptr %i.im, i64 %.sroa.027.0 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 192 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 208 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !48219, !noundef !76 ; 3 uses
  %i.ir = load i64, ptr %i.io, align 8, !range !79, !alias.scope !48219, !noundef !76
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %bb.ap, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsmwebYWU4SQ_15crossbeam_utils(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.io)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206 unwind label %.loopexit406

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecjE8push_mutCsaSXGKSfiU2E_10lance_file.exit206: ; preds = %bb.ap, %bb.ao
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !48219, !nonnull !76, !noundef !76
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iq
  store i64 %i.ij, ptr %i.iv, align 8
  %i.iw = add i64 %i.iq, 1
  store i64 %i.iw, ptr %i.ip, align 8, !alias.scope !48219
  br label %bb.x

bb.aq:                                            ; preds = %bb.an
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0, i64 noundef %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1022) #49
          to label %bb.ar unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.de, %bb.aq, %bb.g
  unreachable

bb.as:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.w, ptr noundef nonnull align 8 dereferenceable(192) %i.v, i64 192, i1 false)
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !48220)
  %i.ix = load i64, ptr %i.ab, align 8, !range !79, !alias.scope !48220, !noundef !76
  %i.iy = icmp eq i64 %i.ed, %i.ix
  br i1 %i.iy, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %._crit_edge611 unwind label %bb.au, !noalias !48221

._crit_edge611:                                   ; preds = %bb.at
  %.pre612 = load ptr, ptr %i.aw, align 8, !alias.scope !48220
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.w) #50
          to label %.thread676 unwind label %bb.av, !noalias !48220

bb.av:                                            ; preds = %bb.au
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !48220
  unreachable

bb.aw:                                            ; preds = %._crit_edge611, %bb.as
  %i.jb = phi ptr [ %.pre612, %._crit_edge611 ], [ %i.ec, %bb.as ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [216 x i8], ptr %i.jb, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.jc, ptr noundef nonnull align 8 dereferenceable(216) %i.w, i64 216, i1 false), !noalias !48220
  %i.jd = add nuw nsw i64 %i.ed, 1                ; 8 uses
  store i64 %i.jd, ptr %i.av, align 8, !alias.scope !48220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0515, i64 148
  %i.jf = load i32, ptr %i.je, align 4, !noundef !76 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.jf, ptr %i.j, align 4, !noalias !48223
  %.val.i211 = load i64, ptr %.sroa.7306.0..sroa_idx, align 8, !alias.scope !48222, !noundef !76
  %.val6.i212 = load i64, ptr %.sroa.8307.0..sroa_idx, align 8, !alias.scope !48222, !noundef !76
  %i.jg = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRlECsaSXGKSfiU2E_10lance_file(i64 %.val.i211, i64 %.val6.i212, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j), !noalias !48223 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48224)
  call void @llvm.experimental.noalias.scope.decl(metadata !48225)
  %i.jh = lshr i64 %i.jg, 57
  %i.ji = trunc nuw nsw i64 %i.jh to i8           ; 3 uses
  %i.jj = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !alias.scope !48226, !noundef !76 ; 4 uses
  %i.jk = load ptr, ptr %i.z, align 8, !alias.scope !48226, !nonnull !76, !noundef !76 ; 4 uses
  %i.jl = insertelement <16 x i8> poison, i8 %i.ji, i64 0
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.sroa.9.0.i.i.i213 = phi i64 [ 0, %bb.aw ], [ %i.kd, %bb.az ]
  %.pn.i.i.i214 = phi i64 [ %i.jg, %bb.aw ], [ %i.ke, %bb.az ]
  %.sroa.01.0.i.i.i215 = and i64 %.pn.i.i.i214, %i.jj ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.sroa.01.0.i.i.i215
  %.sroa.0.0.copyload.i26.i.i216 = load <16 x i8>, ptr %i.jn, align 1, !noalias !48227 ; 2 uses
  %i.jo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, %i.jm
  %i.jp = bitcast <16 x i1> %i.jo to i16          ; 2 uses
  %.not.i.not32.i.i217 = icmp eq i16 %i.jp, 0
  br i1 %.not.i.not32.i.i217, label %._crit_edge.i.i222, label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.i33.i.i219 = phi i16 [ %i.kc, %bb.ay ], [ %i.jp, %bb.ax ] ; 3 uses
  %i.jq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i219, i1 true)
  %i.jr = zext nneg i16 %i.jq to i64
  %i.js = add i64 %.sroa.01.0.i.i.i215, %i.jr
  %i.jt = and i64 %i.js, %i.jj
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds [24 x i8], ptr %i.jk, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -24
  %.val2.i.i.i220 = load i32, ptr %i.jw, align 4, !noalias !48228, !noundef !76
  %i.jx = icmp eq i32 %.val2.i.i.i220, %i.jf
  br i1 %i.jx, label %bb.be, label %bb.ay, !prof !85

._crit_edge.i.i222:                               ; preds = %bb.ay, %bb.ax
  %i.jy = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i216, splat (i8 -1)
  %i.jz = bitcast <16 x i1> %i.jy to i16
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.az, label %bb.ba, !prof !75

bb.ay:                                            ; preds = %.lr.ph.i.i218
  %i.kb = add i16 %.sroa.06.0.i33.i.i219, -1
  %i.kc = and i16 %i.kb, %.sroa.06.0.i33.i.i219   ; 2 uses
end_hunk_2
