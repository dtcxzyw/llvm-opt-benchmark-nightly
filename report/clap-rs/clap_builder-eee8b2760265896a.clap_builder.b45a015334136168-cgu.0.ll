Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts:bb.a
  %.val.i39.i.i = load i64, ptr %i.p, align 8, !range !12, !alias.scope !2291, !noalias !2240, !noundef !11 ; 2 uses
  %i.mq = icmp eq i64 %.val.i39.i.i, 0
  br i1 %i.mq, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator24build_conflict_err_usage.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i
  %.val1.i40.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !2291, !noalias !2240, !nonnull !11, !noundef !11
  %i.mr = shl nuw i64 %.val.i39.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i40.i.i, i64 noundef %i.mr, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2292
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator24build_conflict_err_usage.exit.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator24build_conflict_err_usage.exit.i: ; preds = %bb.ax, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2293
  store i64 0, ptr %i.c, align 8, !noalias !2293
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2293
  %.sroa.5.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i29.i, align 8, !noalias !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2293
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ms, align 8, !noalias !2293
  store ptr %i.c, ptr %i.b, align 8, !noalias !2293
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @204, ptr %i.mt, align 8, !noalias !2293
  %i.mu = call noundef zeroext i1 @_RNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3ArgNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.ia, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #43, !noalias !2294
  br i1 %i.mu, label %bb.ay, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, !prof !19

bb.ay:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator24build_conflict_err_usage.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @358) #44, !noalias !2295
  unreachable

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator24build_conflict_err_usage.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2293
  %i.mv = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.fh, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.w) #43, !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2225
  %i.mw = icmp eq i64 %.sroa.04.0.copyload.i, 0
  br i1 %i.mw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i
  %i.mx = shl nuw i64 %.sroa.04.0.copyload.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.45.0.copyload.i, i64 noundef %i.mx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2298
  br label %bb.ba

.loopexit.i:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENCNvMNtNtB3e_6parser9validatorNtB3X_9Validator18build_conflict_errs_0EE9from_iterB3e_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #44, !noalias !2238
  unreachable

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i, %bb.a, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit
  %.sroa.0.0 = phi ptr [ %i.dz, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_exclusive.exit ], [ %i.mv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit ], [ null, %bb.a ], [ null, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMNtB1X_9validatorNtB3y_9Validator18validate_conflicts0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCB3v_s_0E0E0B1d_.exit.i ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56 ]
  ret ptr %.sroa.0.0

bb.ba:                                            ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBE_.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  %.val.i53 = load i64, ptr %i.aj, align 8, !range !12, !alias.scope !2299, !noundef !11 ; 2 uses
  %i.my = icmp eq i64 %.val.i53, 0
  br i1 %i.my, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val1.i = load ptr, ptr %i.ed, align 8, !alias.scope !2299, !nonnull !11, !noundef !11
  %i.mz = shl nuw i64 %.val.i53, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.mz, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2299
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %.loopexit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit: ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %.val.i54 = load i64, ptr %i.aj, align 8, !range !12, !alias.scope !2300, !noundef !11 ; 2 uses
  %i.na = icmp eq i64 %.val.i54, 0
  br i1 %i.na, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56, label %bb.bc

bb.bc:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit
  %i.nb = shl nuw i64 %.val.i54, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef %i.nb, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !2300
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit56: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18build_conflict_err.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.nc = icmp eq ptr %i.eh, %i.ao
  br i1 %i.nc, label %.loopexit, label %.lr.ph.i.backedge
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr13display_width(ptr %.8.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.8.val, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.16.val, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i8 12, ptr %.sroa.3.0..sroa_idx, align 8
  %i.b = call fastcc { ptr, i64 } @_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef dereferenceable(1) %.sroa.3.0..sroa_idx) #45 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.a ]
  %i.e = phi { ptr, i64 } [ %i.i, %.lr.ph ], [ %i.b, %bb.a ]
  %.sroa.0.02 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %i.f = extractvalue { ptr, i64 } %i.e, 1
  %i.g = tail call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #42
  %i.h = add i64 %i.g, %.sroa.0.02                ; 2 uses
  %i.i = call fastcc { ptr, i64 } @_RNvNtNtCs9ma7mAhtjN1_8anstream7adapter5strip8next_str(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef dereferenceable(1) %.sroa.3.0..sroa_idx) #45 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.sroa.0.0.lcssa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr6indent(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2362, !noundef !11 ; 26 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2363
  %i.f = tail call noundef dereferenceable_or_null(1) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #43, !noalias !2363 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.f, align 1
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1, i64 noundef %2, i64 noundef 1, i64 noundef 1) #43
  %i.h = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2364, !noundef !11 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2364, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !2364
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.c, %bb.d
  %.val1.i2 = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.l = phi i64 [ %i.h, %bb.d ], [ 1, %bb.c ]
  %i.m = add i64 %i.l, %2                         ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit
  %i.q = load i8, ptr %.val1.i2, align 1, !alias.scope !2366, !noalias !2367, !noundef !11 ; 3 uses
  %i.r = icmp samesign eq i64 %i.d, 0
  br i1 %i.r, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2368
  %i.s = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, 9) 1) #43, !noalias !2368 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %min.iters.check = icmp samesign ult i64 %i.d, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp samesign ult i64 %i.d, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.d, 24
  %n.vec = and i64 %i.d, 9223372036854775776      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !alias.scope !2365, !noalias !2369 ; 2 uses
  %wide.load16 = load <16 x i8>, ptr %i.w, align 1, !alias.scope !2365, !noalias !2369 ; 2 uses
  %i.x = icmp eq <16 x i8> %wide.load, splat (i8 10)
  %i.y = icmp eq <16 x i8> %wide.load16, splat (i8 10)
  %i.z = select <16 x i1> %i.x, <16 x i8> %broadcast.splat, <16 x i8> %wide.load
  %i.aa = select <16 x i1> %i.y, <16 x i8> %broadcast.splat, <16 x i8> %wide.load16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %i.z, ptr %i.ab, align 1, !noalias !2370
  store <16 x i8> %i.aa, ptr %i.ac, align 1, !noalias !2370
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.d, 9223372036854775800    ; 3 uses
  %broadcast.splatinsert18 = insertelement <8 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat19 = shufflevector <8 x i8> %broadcast.splatinsert18, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %index20
  %wide.load21 = load <8 x i8>, ptr %i.ae, align 1, !alias.scope !2365, !noalias !2369 ; 2 uses
  %i.af = icmp eq <8 x i8> %wide.load21, splat (i8 10)
  %i.ag = select <8 x i1> %i.af, <8 x i8> %broadcast.splat19, <8 x i8> %wide.load21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %index20
  store <8 x i8> %i.ag, ptr %i.ah, align 1, !noalias !2370
  %index.next22 = add nuw i64 %index20, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2337

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %i.d, %n.vec17
  br i1 %cmp.n23, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i

bb.f:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.d) #46, !noalias !2371
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %i.aj = phi i64 [ %i.an, %.preheader.i.i.i.i ], [ %.ph, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %.val11.i.i.i.i.i.i.i = load i8, ptr %i.ak, align 1, !alias.scope !2365, !noalias !2369, !noundef !11 ; 2 uses
  %i.al = icmp eq i8 %.val11.i.i.i.i.i.i.i, 10
  %spec.select.i = select i1 %i.al, i8 %i.q, i8 %.val11.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj
  store i8 %spec.select.i, ptr %i.am, align 1, !noalias !2370
  %i.an = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.d
  br i1 %i.ao, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i.i, !llvm.loop !2338

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit
  %.not14.i = icmp eq i64 %i.m, 0                 ; 2 uses
  %.15.i = select i1 %.not14.i, i64 0, i64 %i.d   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2372
  %i.ap = icmp eq i64 %.15.i, 0
  br i1 %i.ap, label %.lr.ph.split.preheader.i.lr.ph.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !2373
  %i.aq = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.15.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !2373 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %.lr.ph.split.preheader.i.lr.ph.i

bb.h:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.15.i) #46, !noalias !2372
  unreachable

.lr.ph.split.preheader.i.lr.ph.i:                 ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.g
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.aq, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.g ], [ %i.d, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %i.as = icmp samesign ule i64 %.15.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.as)
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8, !noalias !2372
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2372
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !2372
  br label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit26.i, %.lr.ph.split.preheader.i.lr.ph.i
  %i.at = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.split.preheader.i.lr.ph.i ], [ %i.cm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit26.i ] ; 6 uses
  %i.au = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.split.preheader.i.lr.ph.i ], [ %i.cn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit26.i ] ; 2 uses
  %i.av = phi i64 [ 0, %.lr.ph.split.preheader.i.lr.ph.i ], [ %i.cp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit26.i ] ; 9 uses
  %.sroa.04.099.i = phi i64 [ 0, %.lr.ph.split.preheader.i.lr.ph.i ], [ %i.bk, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit26.i ] ; 8 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.k, %.lr.ph.split.preheader.i.i
  %i.aw = phi i64 [ %i.bk, %bb.k ], [ %.sroa.04.099.i, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.ax = sub nuw nsw i64 %i.d, %i.aw             ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw ; 2 uses
  %i.az = icmp samesign ult i64 %i.ax, 16
  br i1 %i.az, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i21.i = icmp eq i64 %i.d, %i.aw
  br i1 %.not.i.i21.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.ba = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax) #43, !noalias !2374 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  %i.bc = extractvalue { i64, i64 } %i.ba, 1
  %i.bd = trunc nuw i64 %i.bb to i1
  br i1 %i.bd, label %.loopexit.i.i, label %.loopexit15.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.j
  %.sroa.04.011.i.i.i = phi i64 [ %i.bh, %bb.j ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.011.i.i.i
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !2375, !noalias !2374, !noundef !11
  %i.bg = icmp eq i8 %i.bf, 10
  br i1 %i.bg, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.ax
  br i1 %exitcond.not.i.i.i, label %.loopexit15.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.5.0.i.i.i = phi i64 [ %i.bc, %bb.i ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bi = icmp ult i64 %.sroa.5.0.i.i.i, %i.ax
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw i64 %i.aw, 1
  %i.bk = add nuw i64 %i.bj, %.sroa.5.0.i.i.i     ; 4 uses
  %.not12.i.i = icmp ugt i64 %i.bk, %i.d          ; 2 uses
  %i.bl = add nuw i64 %.sroa.5.0.i.i.i, %i.aw     ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.bl, %i.d
  br i1 %or.cond.i.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.l, %.loopexit.i.i
  br i1 %.not12.i.i, label %.loopexit15.i.i, label %.lr.ph.split.i.i

bb.l:                                             ; preds = %.loopexit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bl
  %lhsc.i = load i8, ptr %i.bm, align 1, !alias.scope !2365, !noalias !2376
  %i.bn = icmp eq i8 %lhsc.i, 10
  br i1 %i.bn, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %bb.k

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.099.i
  %gepdiff.i = sub nuw nsw i64 %i.bl, %.sroa.04.099.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2377)
  %i.bp = load i64, ptr %i.a, align 8, !range !12, !alias.scope !2378, !noalias !2372, !noundef !11 ; 3 uses
  %i.bq = sub i64 %i.bp, %i.av
  %i.br = icmp ugt i64 %gepdiff.i, %i.bq
  br i1 %i.br, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.av, i64 noundef %gepdiff.i, i64 noundef 1, i64 noundef 1) #43, !noalias !2376
  %i.bs = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !2377, !noalias !2372, !noundef !11 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2377, !noalias !2372 ; 2 uses
  %.pre111.pre.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !2379, !noalias !2372
  br label %bb.m

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bu = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.bu)
  %.not.i22.i = icmp eq i64 %i.bl, %.sroa.04.099.i
  br i1 %.not.i22.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %.pre111.i = phi i64 [ %.pre111.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.bp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.bv = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.at, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.bw = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.au, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.bx = phi i64 [ %i.bs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.av, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %i.bo, i64 %gepdiff.i, i1 false), !noalias !2380
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %i.bz = phi ptr [ %i.bv, %bb.m ], [ %i.at, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 2 uses
  %i.ca = phi i64 [ %.pre111.i, %bb.m ], [ %i.bp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.cb = phi ptr [ %i.bw, %bb.m ], [ %i.au, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.cc = phi i64 [ %i.bx, %bb.m ], [ %i.av, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %i.cd = add nuw i64 %i.cc, %gepdiff.i           ; 6 uses
  store i64 %i.cd, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !2377, !noalias !2372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %i.ce = sub i64 %i.ca, %i.cd
  %i.cf = icmp ugt i64 %i.m, %i.ce
  br i1 %i.cf, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i25.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i23.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i25.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help:.lr.ph.split.preheader.i.i
  store i64 %i.gs, ptr %i.bb, align 8, !alias.scope !6936, !noalias !6935
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6938
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

bb.x:                                             ; preds = %bb.p
  %i.gt = load i16, ptr %.sroa.0.1.i103, align 1
  %i.gu = xor i16 %i.gt, 26978
  %i.gv = getelementptr i8, ptr %.sroa.0.1.i103, i64 2
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i16
  %i.gy = xor i16 %i.gx, 110
  %i.gz = or i16 %i.gu, %i.gy
  %i.ha = icmp ne i16 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.y, label %bb.ec

bb.y:                                             ; preds = %bb.x
  %i.hd = load i64, ptr %i.dk, align 8, !range !13, !noalias !6939, !noundef !11
  %.not.i130 = icmp eq i64 %i.hd, -1
  br i1 %.not.i130, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.he = load ptr, ptr %i.dl, align 8, !noalias !6939, !nonnull !11, !noundef !11 ; 5 uses
  %i.hf = load i64, ptr %i.dm, align 8, !noalias !6939, !noundef !11 ; 19 uses
  %i.hg = icmp samesign ult i64 %i.hf, 16
  br i1 %i.hg, label %.preheader.i.i.i.i, label %bb.aa

.preheader.i.i.i.i:                               ; preds = %bb.z
  %.not.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i.i.i, label %.loopexit11.i, label %.lr.ph.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.hh = call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef range(i64 0, -9223372036854775808) %i.hf) #43, !noalias !6939 ; 2 uses
  %i.hi = extractvalue { i64, i64 } %i.hh, 0
  %i.hj = extractvalue { i64, i64 } %i.hh, 1
  %i.hk = trunc nuw i64 %i.hi to i1
  br i1 %i.hk, label %.loopexit.i, label %.loopexit11.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.ab
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ho, %bb.ab ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.04.011.i.i.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !6940, !noalias !6939, !noundef !11
  %i.hn = icmp eq i8 %i.hm, 32
  br i1 %i.hn, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ho = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ho, %i.hf
  br i1 %exitcond.not.i.i.i.i, label %.loopexit11.i, label %.lr.ph.i.i.i.i

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6939
  %i.hp = load ptr, ptr %i.dn, align 8, !noalias !6939, !nonnull !11, !noundef !11
  %i.hq = load i64, ptr %i.do, align 8, !noalias !6939, !noundef !11
  call fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hp, i64 noundef %i.hq) #45
  %i.hr = load ptr, ptr %i.dr, align 8, !noalias !6939, !nonnull !11, !noundef !11 ; 2 uses
  %i.hs = load i64, ptr %i.ds, align 8, !noalias !6939, !noundef !11 ; 6 uses
  %.not.i.i.i133 = icmp slt i64 %i.hs, 0
  br i1 %.not.i.i.i133, label %bb.ae, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.i135, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i134

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i134: ; preds = %bb.ad
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6941
  %i.hu = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hs, i64 noundef range(i64 1, 9) 1) #43, !noalias !6941 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i134, %bb.ac
  %.sroa.4.0.ph.i.i138 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i134 ], [ 0, %bb.ac ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i138, i64 %i.hs) #46, !noalias !6942
  unreachable

bb.af:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr nonnull readonly align 1 %i.hr, i64 %i.hs, i1 false), !noalias !6943
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.i135

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.i135: ; preds = %bb.af, %bb.ad
  %i.hw = phi ptr [ %i.hu, %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6944)
  %.val.i.i136 = load i64, ptr %i.x, align 8, !range !12, !alias.scope !6944, !noalias !6939, !noundef !11 ; 2 uses
  %i.hx = icmp eq i64 %.val.i.i136, 0
  br i1 %i.hx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137, label %bb.ag

bb.ag:                                            ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.i135
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hr, i64 noundef %.val.i.i136, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6945
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137: ; preds = %bb.ag, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6939
  br label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %.preheader.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137
  %.sroa.8.0.i = phi i64 [ %i.hs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137 ], [ %i.im, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i ], [ %i.hf, %middle.block ], [ %i.hf, %vec.epilog.middle.block ], [ %i.hf, %.preheader.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i = phi ptr [ %i.hw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i137 ], [ %i.iq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i ], [ %i.it, %middle.block ], [ %i.it, %vec.epilog.middle.block ], [ %i.it, %.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6946)
  call void @llvm.experimental.noalias.scope.decl(metadata !6947)
  %i.hy = load i64, ptr %i.bb, align 8, !alias.scope !6948, !noalias !6949, !noundef !11 ; 4 uses
  %i.hz = load i64, ptr %i.ba, align 8, !range !12, !alias.scope !6948, !noalias !6949, !noundef !11
  %i.ia = sub i64 %i.hz, %i.hy
  %i.ib = icmp ugt i64 %.sroa.8.0.i, %i.ia
  br i1 %i.ib, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i132, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i131, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i132: ; preds = %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.hy, i64 noundef %.sroa.8.0.i, i64 noundef 1, i64 noundef 1) #43, !noalias !6949
  %i.ic = load i64, ptr %i.bb, align 8, !alias.scope !6950, !noalias !6949, !noundef !11 ; 2 uses
  %i.id = icmp sgt i64 %i.ic, -1
  call void @llvm.assume(i1 %i.id)
  br label %bb.ah

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i131: ; preds = %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.ie = icmp sgt i64 %i.hy, -1
  call void @llvm.assume(i1 %i.ie)
  %.not.i.i1.i = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %.not.i.i1.i, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i131, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i132
  %i.if = phi i64 [ %i.ic, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i132 ], [ %i.hy, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.i131 ] ; 2 uses
  %i.ig = load ptr, ptr %i.cg, align 8, !alias.scope !6950, !noalias !6949, !nonnull !11, !noundef !11
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.4.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !6951
  %i.ii = add nuw i64 %i.if, %.sroa.8.0.i
  store i64 %i.ii, ptr %i.bb, align 8, !alias.scope !6950, !noalias !6949
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.i, i64 noundef %.sroa.8.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6952
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

.loopexit11.i:                                    ; preds = %bb.ab, %bb.aa, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6939
  %i.ij = load ptr, ptr %i.dn, align 8, !noalias !6939, !nonnull !11, !noundef !11
  %i.ik = load i64, ptr %i.do, align 8, !noalias !6939, !noundef !11
  call fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ij, i64 noundef %i.ik) #45
  %i.il = load ptr, ptr %i.dp, align 8, !noalias !6939, !nonnull !11, !noundef !11 ; 2 uses
  %i.im = load i64, ptr %i.dq, align 8, !noalias !6939, !noundef !11 ; 6 uses
  %.not.i.i2.i = icmp slt i64 %i.im, 0
  br i1 %.not.i.i2.i, label %bb.aj, label %bb.ai, !prof !21

bb.ai:                                            ; preds = %.loopexit11.i
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit7.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i3.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i3.i: ; preds = %bb.ai
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6953
  %i.io = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.im, i64 noundef range(i64 1, 9) 1) #43, !noalias !6953 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i3.i, %.loopexit11.i
  %.sroa.4.0.ph.i6.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i3.i ], [ 0, %.loopexit11.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i6.i, i64 %i.im) #46, !noalias !6954
  unreachable

bb.ak:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.io, ptr nonnull readonly align 1 %i.il, i64 %i.im, i1 false), !noalias !6955
  br label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit7.i

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit7.i: ; preds = %bb.ak, %bb.ai
  %i.iq = phi ptr [ %i.io, %bb.ak ], [ inttoptr (i64 1 to ptr), %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6956)
  %.val.i8.i = load i64, ptr %i.y, align 8, !range !12, !alias.scope !6956, !noalias !6939, !noundef !11 ; 2 uses
  %i.ir = icmp eq i64 %.val.i8.i, 0
  br i1 %i.ir, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i, label %bb.al

bb.al:                                            ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit7.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.il, i64 noundef %.val.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6957
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit10.i: ; preds = %bb.al, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6939
  br label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %bb.aa
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.hj, %bb.aa ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.is = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.hf
  call void @llvm.assume(i1 %i.is)
  call void @llvm.experimental.noalias.scope.decl(metadata !6958)
  %.not.i.i.i.i.i = icmp slt i64 %i.hf, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %.loopexit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6959
  %i.it = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hf, i64 noundef range(i64 1, 9) 1) #43, !noalias !6959 ; 7 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.am, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.hf, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check824 = icmp ult i64 %i.hf, 32
  br i1 %min.iters.check824, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.hf, 24
  %n.vec = and i64 %i.hf, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.he, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <16 x i8>, ptr %i.iw, align 1, !alias.scope !6958, !noalias !6960 ; 2 uses
  %wide.load825 = load <16 x i8>, ptr %i.ix, align 1, !alias.scope !6958, !noalias !6960 ; 2 uses
  %i.iy = icmp eq <16 x i8> %wide.load, splat (i8 32)
  %i.iz = icmp eq <16 x i8> %wide.load825, splat (i8 32)
  %i.ja = select <16 x i1> %i.iy, <16 x i8> splat (i8 45), <16 x i8> %wide.load
  %i.jb = select <16 x i1> %i.iz, <16 x i8> splat (i8 45), <16 x i8> %wide.load825
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 %index ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <16 x i8> %i.ja, ptr %i.jc, align 1, !noalias !6961
  store <16 x i8> %i.jb, ptr %i.jd, align 1, !noalias !6961
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %middle.block, label %vector.body, !llvm.loop !6593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec826 = and i64 %i.hf, 9223372036854775800  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index827 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next829, %vec.epilog.vector.body ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.he, i64 %index827
  %wide.load828 = load <8 x i8>, ptr %i.jf, align 1, !alias.scope !6958, !noalias !6960 ; 2 uses
  %i.jg = icmp eq <8 x i8> %wide.load828, splat (i8 32)
  %i.jh = select <8 x i1> %i.jg, <8 x i8> splat (i8 45), <8 x i8> %wide.load828
  %i.ji = getelementptr inbounds nuw i8, ptr %i.it, i64 %index827
  store <8 x i8> %i.jh, ptr %i.ji, align 1, !noalias !6961
  %index.next829 = add nuw i64 %index827, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next829, %n.vec826
  br i1 %i.jj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6594

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n830 = icmp eq i64 %i.hf, %n.vec826
  br i1 %cmp.n830, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec826, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i.i

bb.am:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %.loopexit.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %.loopexit.i ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.hf) #46, !noalias !6962
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %i.jk = phi i64 [ %i.jo, %.preheader.i.i.i.i.i ], [ %.ph, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.jk
  %.val11.i.i.i.i.i.i.i.i = load i8, ptr %i.jl, align 1, !alias.scope !6958, !noalias !6960, !noundef !11 ; 2 uses
  %i.jm = icmp eq i8 %.val11.i.i.i.i.i.i.i.i, 32
  %spec.select.i.i = select i1 %i.jm, i8 45, i8 %.val11.i.i.i.i.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jk
  store i8 %spec.select.i.i, ptr %i.jn, align 1, !noalias !6961
  %i.jo = add nuw nsw i64 %i.jk, 1                ; 2 uses
  %i.jp = icmp eq i64 %i.jo, %i.hf
  br i1 %i.jp, label %_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replacecECsfu0rQaTkGUu_12clap_builder.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !6595

bb.an:                                            ; preds = %bb.p
  %i.jq = load i32, ptr %.sroa.0.1.i103, align 1
  %i.jr = xor i32 %i.jq, 1936876918
  %i.js = getelementptr i8, ptr %.sroa.0.1.i103, i64 3
  %i.jt = load i32, ptr %i.js, align 1
  %i.ju = xor i32 %i.jt, 1852795251
  %i.jv = or i32 %i.jr, %i.ju
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.ao, label %bb.dl

bb.ao:                                            ; preds = %bb.an
  %i.jz = load ptr, ptr %i.dg, align 8, !noalias !6963, !noundef !11 ; 2 uses
  %.not.i139 = icmp eq ptr %i.jz, null            ; 3 uses
  br i1 %.not.i139, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ka = load i64, ptr %i.dh, align 8, !noalias !6963, !noundef !11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.54.0.i = phi i64 [ %i.ka, %bb.ap ], [ undef, %bb.ao ]
  %.val.i140 = load ptr, ptr %i.di, align 8, !noalias !6963 ; 2 uses
  %.val6.i = load i64, ptr %i.dj, align 8, !noalias !6963
  %.not.i.i.i141 = icmp eq ptr %.val.i140, null
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i141, i64 undef, i64 %.val6.i
  %.pn3.i.i = select i1 %.not.i139, ptr %.val.i140, ptr %i.jz ; 2 uses
  %.pn1.i.i = select i1 %.not.i139, i64 %.sroa.3.0.i.i.i, i64 %.sroa.54.0.i ; 10 uses
  %.not5.i = icmp eq ptr %.pn3.i.i, null
  br i1 %.not5.i, label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i7.i = icmp slt i64 %.pn1.i.i, 0
  br i1 %.not.i.i7.i, label %bb.at, label %bb.as, !prof !21

bb.as:                                            ; preds = %bb.ar
  %i.kb = icmp eq i64 %.pn1.i.i, 0
  br i1 %i.kb, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i.thread.i145, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i142

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i142: ; preds = %bb.as
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !6964
  %i.kc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.pn1.i.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !6964 ; 4 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %bb.at, label %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.thread.i

bb.at:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i142, %bb.ar
  %.sroa.4.0.ph.i.i144 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i142 ], [ 0, %bb.ar ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i144, i64 %.pn1.i.i) #46, !noalias !6965
  unreachable

_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.thread.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr nonnull readonly align 1 %.pn3.i.i, i64 %.pn1.i.i, i1 false), !noalias !6966
  %i.ke = load i64, ptr %i.bb, align 8, !alias.scope !6967, !noalias !6968, !noundef !11 ; 3 uses
  %i.kf = load i64, ptr %i.ba, align 8, !range !12, !alias.scope !6967, !noalias !6968, !noundef !11
  %i.kg = sub i64 %i.kf, %i.ke
  %i.kh = icmp ugt i64 %.pn1.i.i, %i.kg
  br i1 %i.kh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i143, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.thread.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i143: ; preds = %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.thread.i
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.ke, i64 noundef %.pn1.i.i, i64 noundef 1, i64 noundef 1) #43, !noalias !6969
  %i.ki = load i64, ptr %i.bb, align 8, !alias.scope !6970, !noalias !6969, !noundef !11
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.thread.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i.thread.i145: ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !6971)
  call void @llvm.experimental.noalias.scope.decl(metadata !6972)
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i.thread.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i143, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.thread.i
  %.sink9.i = phi i64 [ %i.ki, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i.i143 ], [ %i.ke, %_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4wrap.exit.thread.i ] ; 3 uses
  %i.kj = icmp sgt i64 %.sink9.i, -1
  call void @llvm.assume(i1 %i.kj)
  %i.kk = load ptr, ptr %i.cg, align 8, !alias.scope !6970, !noalias !6969, !nonnull !11, !noundef !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.sink9.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kl, ptr nonnull readonly align 1 %i.kc, i64 %.pn1.i.i, i1 false), !noalias !6973
  %i.km = add nuw i64 %.sink9.i, %.pn1.i.i
  store i64 %i.km, ptr %i.bb, align 8, !alias.scope !6970, !noalias !6969
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kc, i64 noundef %.pn1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !6974
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

bb.au:                                            ; preds = %bb.p
  %i.kn = load i32, ptr %.sroa.0.1.i103, align 1
  %i.ko = xor i32 %i.kn, 1752462689
  %i.kp = getelementptr i8, ptr %.sroa.0.1.i103, i64 4
  %i.kq = load i16, ptr %i.kp, align 1
  %i.kr = zext i16 %i.kq to i32
  %i.ks = xor i32 %i.kr, 29295
  %i.kt = or i32 %i.ko, %i.ks
  %i.ku = icmp ne i32 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.av, label %bb.en

bb.av:                                            ; preds = %bb.au
  call fastcc void @_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12write_author(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i1 noundef zeroext false, i1 noundef zeroext false) #43
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

bb.aw:                                            ; preds = %bb.p
  %i.kx = load i128, ptr %.sroa.0.1.i103, align 1
  %i.ky = xor i128 %i.kx, 144176564123457507616404481568085931361
  %i.kz = getelementptr i8, ptr %.sroa.0.1.i103, i64 3
  %i.la = load i128, ptr %i.kz, align 1
  %i.lb = xor i128 %i.la, 134825318475316607142830338789285719912
  %i.lc = or i128 %i.ky, %i.lb
  %i.ld = icmp ne i128 %i.lc, 0
  %i.le = zext i1 %i.ld to i32
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.ax, label %bb.en

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12write_author(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i1 noundef zeroext false, i1 noundef zeroext true) #43
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

bb.ay:                                            ; preds = %bb.p
  %i.lg = load i64, ptr %.sroa.0.1.i103, align 1
  %i.lh = xor i64 %i.lg, 8299415511133091169
  %i.li = getelementptr i8, ptr %.sroa.0.1.i103, i64 6
  %i.lj = load i64, ptr %i.li, align 1
  %i.lk = xor i64 %i.lj, 7957695015191671597
  %i.ll = or i64 %i.lh, %i.lk
  %i.lm = icmp ne i64 %i.ll, 0
  %i.ln = zext i1 %i.lm to i32
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.az, label %bb.en

bb.az:                                            ; preds = %bb.ay
  call fastcc void @_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate12write_author(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i1 noundef zeroext true, i1 noundef zeroext true) #43
  br label %_RNvMs0_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18write_display_name.exit

bb.ba:                                            ; preds = %bb.p
  %i.lp = load i32, ptr %.sroa.0.1.i103, align 1
  %i.lq = xor i32 %i.lp, 1970233953
end_hunk_1
begin_hunk_2_@_RNvXNtNtCsfu0rQaTkGUu_12clap_builder5error6formatNtB2_13KindFormatterNtB2_14ErrorFormatter12format_error:bb.a
  store ptr %i.h, ptr %i.b, align 8, !noalias !12439
  store ptr %i.b, ptr %i.c, align 8, !noalias !12439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12439
  store ptr %i.c, ptr %i.a, align 8, !noalias !12439
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12439
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @266, ptr noundef nonnull %i.a) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12439
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 249
  %i.k = load i8, ptr %i.j, align 1, !range !36, !noundef !11
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %bb.n
    i8 16, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.18.0.i.ph = phi i64 [ 51, %bb.l ], [ 49, %bb.k ], [ 48, %bb.j ], [ 76, %bb.i ], [ 42, %bb.h ], [ 36, %bb.g ], [ 38, %bb.f ], [ 38, %bb.e ], [ 61, %bb.d ], [ 23, %bb.c ], [ 25, %bb.b ], [ 45, %bb.a ] ; 4 uses
  %.sroa.0.0.i.ph = phi ptr [ @121, %bb.l ], [ @120, %bb.k ], [ @119, %bb.j ], [ @118, %bb.i ], [ @117, %bb.h ], [ @116, %bb.g ], [ @115, %bb.f ], [ @114, %bb.e ], [ @113, %bb.d ], [ @112, %bb.c ], [ @111, %bb.b ], [ @110, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12440)
  call void @llvm.experimental.noalias.scope.decl(metadata !12441)
  %i.l = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12442, !noalias !12443, !noundef !11 ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !range !12, !alias.scope !12442, !noalias !12443, !noundef !11
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp ugt i64 %.sroa.18.0.i.ph, %i.n
  br i1 %i.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.m
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.l, i64 noundef %.sroa.18.0.i.ph, i64 noundef 1, i64 noundef 1) #43, !noalias !12443
  %i.p = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12444, !noalias !12443, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit: ; preds = %bb.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %.sink35 = phi i64 [ %i.p, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.l, %bb.m ] ; 3 uses
  %i.q = icmp sgt i64 %.sink35, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !12444, !noalias !12443, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i.ph, i64 %.sroa.18.0.i.ph, i1 false), !noalias !12444
  %i.t = add nuw i64 %.sink35, %.sroa.18.0.i.ph   ; 2 uses
  store i64 %i.t, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12444, !noalias !12443
  br label %bb.o

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !11
  %.not23 = icmp eq ptr %i.v, null
  br i1 %.not23, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit
  %i.w = phi i64 [ %.pre, %bb.p ], [ %i.an, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29 ], [ %i.t, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12445)
  call void @llvm.experimental.noalias.scope.decl(metadata !12446)
  %i.x = load i64, ptr %i.f, align 8, !range !12, !alias.scope !12447, !noalias !12448, !noundef !11
  %i.y = icmp eq i64 %i.x, %i.w
  br i1 %i.y, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25: ; preds = %bb.o
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.w, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !12448
  %i.z = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12449, !noalias !12448, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit26: ; preds = %bb.o, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25
  %.sink36 = phi i64 [ %i.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i25 ], [ %i.w, %bb.o ] ; 3 uses
  %i.aa = icmp sgt i64 %.sink36, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !12449, !noalias !12448, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink36
  store i8 10, ptr %i.ac, align 1, !noalias !12449
  %i.ad = add nuw i64 %.sink36, 1
  store i64 %i.ad, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12449, !noalias !12448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.u, ptr %i.e, align 8, !captures !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ae = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @108, ptr noundef nonnull %i.d) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12447, !noalias !12448
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !12450)
  call void @llvm.experimental.noalias.scope.decl(metadata !12451)
  %i.af = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12452, !noalias !12453, !noundef !11 ; 3 uses
  %i.ag = load i64, ptr %i.f, align 8, !range !12, !alias.scope !12452, !noalias !12453, !noundef !11
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ult i64 %i.ah, 13
  br i1 %i.ai, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i28, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i28: ; preds = %bb.q
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.af, i64 noundef 13, i64 noundef 1, i64 noundef 1) #43, !noalias !12453
  %i.aj = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12454, !noalias !12453, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit29: ; preds = %bb.q, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i28
  %.sink37 = phi i64 [ %i.aj, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i28 ], [ %i.af, %bb.q ] ; 3 uses
  %i.ak = icmp sgt i64 %.sink37, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !12454, !noalias !12453, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(13) @310, i64 13, i1 false), !noalias !12454
  %i.an = add nuw i64 %.sink37, 13                ; 2 uses
  store i64 %i.an, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !12454, !noalias !12453
  br label %bb.o
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtNtCsfu0rQaTkGUu_12clap_builder7builder10value_hintNtB2_9ValueHintNtNtNtCsj6eKBz9Db1c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %.not.i.i.i = icmp slt i64 %2, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.critedge, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !12482
  %i.e = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #43, !noalias !12482 ; 29 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %2, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !noalias !12483 ; 2 uses
  %wide.load30 = load <16 x i8>, ptr %i.i, align 1, !noalias !12483 ; 2 uses
  %i.j = add <16 x i8> %wide.load, splat (i8 -65)
  %i.k = add <16 x i8> %wide.load30, splat (i8 -65)
  %i.l = icmp ult <16 x i8> %i.j, splat (i8 26)
  %i.m = icmp ult <16 x i8> %i.k, splat (i8 26)
  %i.n = select <16 x i1> %i.l, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.o = select <16 x i1> %i.m, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.p = or <16 x i8> %i.n, %wide.load
  %i.q = or <16 x i8> %i.o, %wide.load30
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1, !noalias !12484
  store <16 x i8> %i.q, ptr %i.s, align 1, !noalias !12484
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !12475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %2, 9223372036854775800      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index32
  %wide.load33 = load <8 x i8>, ptr %i.u, align 1, !noalias !12483 ; 2 uses
  %i.v = add <8 x i8> %wide.load33, splat (i8 -65)
  %i.w = icmp ult <8 x i8> %i.v, splat (i8 26)
  %i.x = select <8 x i1> %i.w, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.y = or <8 x i8> %i.x, %wide.load33
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %index32
  store <8 x i8> %i.y, ptr %i.z, align 1, !noalias !12484
  %index.next34 = add nuw i64 %index32, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12476

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %2, %n.vec31
  br i1 %cmp.n35, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #46, !noalias !12485
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.ab = phi i64 [ %i.ah, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %.val11.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !noalias !12483, !noundef !11 ; 2 uses
  %i.ad = add i8 %.val11.i.i.i.i.i.i, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %i.af = select i1 %i.ae, i8 32, i8 0
  %.sroa.0.0.i.i.i.i.i.i.i.i = or i8 %i.af, %.val11.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.ag, align 1, !noalias !12484
  %i.ah = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %2
  br i1 %i.ai, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit, label %.preheader.i.i.i, !llvm.loop !12477

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit: ; preds = %.preheader.i.i.i, %vec.epilog.middle.block, %middle.block
  switch i64 %2, label %.split [
    i64 7, label %bb.d
    i64 5, label %bb.e
    i64 8, label %bb.g
    i64 14, label %bb.i
    i64 11, label %bb.j
    i64 13, label %bb.k
    i64 20, label %bb.l
    i64 3, label %bb.o
    i64 12, label %bb.p
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.aj = load i32, ptr %i.e, align 1
  %i.ak = xor i32 %i.aj, 1852534389
  %i.al = getelementptr i8, ptr %i.e, i64 3
  %i.am = load i32, ptr %i.al, align 1
  %i.an = xor i32 %i.am, 1853321070
  %i.ao = or i32 %i.ak, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.as = load i32, ptr %i.e, align 1
  %i.at = xor i32 %i.as, 1701344367
  %i.au = getelementptr i8, ptr %i.e, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.aw, 114
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.f:                                             ; preds = %bb.d
  %i.bc = load i32, ptr %i.e, align 1
  %i.bd = xor i32 %i.bc, 1887006305
  %i.be = getelementptr i8, ptr %i.e, i64 3
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1752457584
  %i.bh = or i32 %i.bd, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %bb.h

bb.g:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.bl = load i64, ptr %i.e, align 1
  %i.bm = icmp ne i64 %i.bl, 7526748012608776550
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bp = load i32, ptr %i.e, align 1
  %i.bq = xor i32 %i.bp, 1886546276
  %i.br = getelementptr i8, ptr %i.e, i64 3
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = xor i32 %i.bs, 1752457584
  %i.bu = or i32 %i.bq, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.i:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.by = load i64, ptr %i.e, align 1
  %i.bz = xor i64 %i.by, 7089075335985461349
  %i.ca = getelementptr i8, ptr %i.e, i64 6
  %i.cb = load i64, ptr %i.ca, align 1
  %i.cc = xor i64 %i.cb, 7526748012608774753
  %i.cd = or i64 %i.bz, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.j:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.ch = load i64, ptr %i.e, align 1
  %i.ci = xor i64 %i.ch, 7954604206569910115
  %i.cj = getelementptr i8, ptr %i.e, i64 3
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = xor i64 %i.ck, 7308604897051435373
  %i.cm = or i64 %i.ci, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.k:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.cq = load i64, ptr %i.e, align 1
  %i.cr = xor i64 %i.cq, 8314892176759549795
  %i.cs = getelementptr i8, ptr %i.e, i64 5
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = xor i64 %i.ct, 7453010373645657198
  %i.cv = or i64 %i.cr, %i.cu
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.l:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvMs_NtB8_5sliceSh18to_ascii_lowercase0EE9from_iterCsfu0rQaTkGUu_12clap_builder.exit
  %i.cz = load i128, ptr %i.e, align 1
  %i.da = xor i128 %i.cz, 145495448423350431705174846143701282659
  %i.db = getelementptr i8, ptr %i.e, i64 16
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = zext i32 %i.dc to i128
  %i.de = xor i128 %i.dd, 1937010277
  %i.df = or i128 %i.da, %i.de
  %i.dg = icmp ne i128 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %.split

bb.m:                                             ; preds = %bb.g
  %i.dj = load i64, ptr %i.e, align 1
  %i.dk = icmp ne i64 %i.dj, 7308604897285731189
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit22, label %bb.n

end_hunk_2
