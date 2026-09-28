Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h0b47a797bcf49468E":bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !28 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36361)
  %i.d = icmp slt i64 %.val1, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36362
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #41, !noalias !36362 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !36363)
  call void @llvm.experimental.noalias.scope.decl(metadata !36364)
  %.val.i.i = load i64, ptr %0, align 8, !range !29, !alias.scope !36365, !noundef !28 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36365
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !36366
  store i64 %.val1, ptr %i.a, align 8, !alias.scope !36367
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !36367
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !36367
  %i.j = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !36368)
  call void @llvm.experimental.noalias.scope.decl(metadata !36369)
  %.val.i.i2 = load i64, ptr %0, align 8, !range !29, !alias.scope !36370, !noundef !28 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i2, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36370
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit4": ; preds = %bb.g, %bb.h
  ret ptr %i.j

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h84bd4f43ac49638fE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef range(i64 16, 85) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36383)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36384
  %i.b = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, 9) 1) #41, !noalias !36384 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hce3aabc48b276c0fE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42, !noalias !36385
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hce3aabc48b276c0fE.exit": ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 %1, i1 false), !noalias !36386
  store i64 %1, ptr %i.a, align 8, !alias.scope !36387
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !36387
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !36387
  %i.d = call noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hde88e20b7826de6bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36420)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !36421, !noalias !36422, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load <2 x i64>, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !36421, !noalias !36422
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !36421, !noalias !36422
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.66.0.copyload.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i, align 8, !alias.scope !36421, !noalias !36422 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36423)
  switch i64 %.sroa.5.0.copyload.i.i, label %bb.f [
    i64 0, label %bb.b
    i64 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.sroa.66.0.copyload.i.i, 0
  br i1 %i.d, label %_ZN4core3ops8function6FnOnce9call_once17h421f9ccd6fe891a9E.exit.i.i.i.i, label %bb.f

bb.c:                                             ; preds = %bb.g
  %i.e = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !36424, !nonnull !28, !align !37, !noundef !28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !36424, !noundef !28 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36426)
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !54

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4core3ops8function6FnOnce9call_once17h421f9ccd6fe891a9E.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36427
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 9) 1) #41, !noalias !36427 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %_ZN4core3ops8function6FnOnce9call_once17h421f9ccd6fe891a9E.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42, !noalias !36428
  unreachable

_ZN4core3ops8function6FnOnce9call_once17h421f9ccd6fe891a9E.exit.i.i.i.i: ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.sroa.6.0.ph814.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.sroa.0.0.ph1013.i.i.i = phi ptr [ %i.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ %i.e, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.sroa.0.0.ph1013.i.i.i, i64 %.sroa.6.0.ph814.i.i.i, i1 false), !noalias !36429
  store i64 %.sroa.6.0.ph814.i.i.i, ptr %i.b, align 8, !alias.scope !36430, !noalias !36431
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !36430, !noalias !36431
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.ph814.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !36430, !noalias !36431
  br label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbfb997cbcdcfceafE.exit"

bb.f:                                             ; preds = %bb.g, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36433
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.a, align 8, !noalias !36434
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x i64> %i.c, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !36434
  %.sroa.66.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.66.0.copyload.i.i, ptr %.sroa.66.0..sroa_idx7.i.i, align 8, !noalias !36434
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !36422
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !36435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36433
  br label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbfb997cbcdcfceafE.exit"

bb.g:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %.sroa.66.0.copyload.i.i, 0
  br i1 %i.l, label %bb.c, label %bb.f

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hbfb997cbcdcfceafE.exit": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h421f9ccd6fe891a9E.exit.i.i.i.i, %bb.f
  %i.m = call noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [31 x i8], align 1            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !28 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36457
  %i.j = shl i64 %i.i, 5                          ; 4 uses
  %i.k = icmp ugt i64 %i.i, 576460752303423487
  %i.l = icmp ugt i64 %i.j, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.n = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.n), !noalias !36457
  store i64 0, ptr %i.e, align 8, !noalias !36457
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !36457
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36458
  %i.q = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 8) #41, !noalias !36458 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36457
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit": ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !36457
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !36457
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 7 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit", %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
  %.sroa.01.028 = phi ptr [ %i.h, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit" ], [ %i.x, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 10 uses
  %.sroa.7.026 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit" ], [ %i.y, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 3 uses
  %.sroa.10.025 = phi i64 [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit" ], [ %i.v, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  %i.v = add nsw i64 %.sroa.10.025, -1            ; 2 uses
  %i.w = icmp eq ptr %.sroa.01.028, %i.u
  br i1 %i.w, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 32
  %i.y = add nuw nsw i64 %.sroa.7.026, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !36459)
  call void @llvm.experimental.noalias.scope.decl(metadata !36460)
  %i.z = load i8, ptr %.sroa.01.028, align 8, !range !59, !alias.scope !36460, !noalias !36461, !noundef !28 ; 2 uses
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx6, i64 31, i1 false), !alias.scope !36462, !noalias !36463
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.g:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx5, i64 31, i1 false), !alias.scope !36462, !noalias !36463
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36464
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @931)
          to label %.noexc unwind label %.loopexit, !inline_history !36446

.noexc:                                           ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !36465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36464
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.i:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36464
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h115a6a79783cb764E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc1 unwind label %.loopexit

.noexc1:                                          ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !36465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36464
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36466
  call void @llvm.experimental.noalias.scope.decl(metadata !36467)
  call void @llvm.experimental.noalias.scope.decl(metadata !36468)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !36468, !noalias !36467, !noundef !28
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.a, align 8, !alias.scope !36467, !noalias !36468
  store i64 0, ptr %2, align 8, !alias.scope !36467, !noalias !36468
  br label %.noexc2

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !36468, !noalias !36467, !noundef !28 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ag, null
  br i1 %.not.i3, label %bb.n, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.028, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !36468, !noalias !36467, !noundef !28
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17hcb1a9ae3da21c450E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.ag, i64 noundef %i.ai)
          to label %.noexc2 unwind label %.loopexit, !inline_history !36453

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1068) #42
          to label %.noexc5 unwind label %.loopexit.split-lp, !inline_history !36453

.noexc5:                                          ; preds = %bb.n
  unreachable

.noexc2:                                          ; preds = %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !36465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit": ; preds = %.noexc2, %.noexc1, %.noexc, %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.7.026 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false), !noalias !36463
  store i8 %i.z, ptr %i.aj, align 8, !noalias !36463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit", label %bb.d

bb.o:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36463, !inline_history !36454
  unreachable

.loopexit:                                        ; preds = %bb.i, %bb.m, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.026, ptr %i.t, align 8, !alias.scope !36470, !noalias !36463
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17hb1370c816d5955a9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %bb.q unwind label %bb.o, !noalias !36463, !inline_history !36454

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h439875e67d69a33cE.exit": ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit", %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread"
  %3 = phi ptr [ %i.p, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread" ], [ %i.t, %bb.d ], [ %i.t, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  store i64 %i.i, ptr %3, align 8, !noalias !36457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !36471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36457
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h181067632ab1ef1dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5112.i.sroa.6.i = alloca [24 x i8], align 8 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.10118.i = alloca [24 x i8], align 8      ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.065.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.2486.sroa.6.i = alloca [24 x i8], align 8 ; 4 uses
  %.sroa.3193.i = alloca [32 x i8], align 8       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36634)
  %i.t = mul i64 %.16.val, 464                    ; 5 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 19877956975980120
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.v = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.v)
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36635
  %i.w = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 8) #41, !noalias !36635 ; 8 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #42, !noalias !36636
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [464 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.8108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.685.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.788.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.693.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5112.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5112.i.sroa.5.0..sroa.5112.0..sroa_idx113.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6114.0..sroa_idx115.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5112.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5112.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx2.i57.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i53.i.sroa.4.0..sroa.5.0..sroa_idx2.i57.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0117.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.0117.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0117.i.sroa.8.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0117.i.sroa.9.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.sroa.027.0705.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.aj, %.loopexit.i ] ; 43 uses
  %.sroa.7.0704.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.ak, %.loopexit.i ] ; 6 uses
  %.sroa.10.0703.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i" ], [ %i.ah, %.loopexit.i ]
  %i.ah = add nsw i64 %.sroa.10.0703.i, -1        ; 2 uses
  %i.ai = icmp eq ptr %.sroa.027.0705.i, %i.y
  br i1 %i.ai, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hd5130cc855bc4c46E.exit", label %bb.e

.loopexit160.i:                                   ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 464
  %i.ak = add nuw nsw i64 %.sroa.7.0704.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !36637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36638
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %.sroa.027.0705.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1024)
          to label %.noexc.i unwind label %.loopexit160.i, !noalias !36636

.noexc.i:                                         ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 264 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !40, !alias.scope !36639, !noalias !36640, !noundef !28 ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, -9223372036854775807
  br i1 %.not.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36641)
  %.not.i.i.i = icmp eq i64 %i.am, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36642
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @862)
          to label %.noexc.i.i unwind label %bb.o, !noalias !36640

.noexc.i.i:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.j, align 8, !noalias !36642
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !36642
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !36642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36642
  br label %bb.h

bb.h:                                             ; preds = %.noexc.i.i, %bb.f
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %.noexc.i.i ], [ undef, %bb.f ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.noexc.i.i ], [ undef, %bb.f ] ; 4 uses
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc.i.i ], [ -9223372036854775808, %bb.f ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 288 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !34, !alias.scope !36643, !noalias !36644, !noundef !28
  %.not4.i.i.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not4.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36642
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @862)
          to label %bb.l unwind label %bb.j, !noalias !36644

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.0.010.i.i.i, label %bb.k [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.010.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36645
  br label %.body.i.i

bb.l:                                             ; preds = %bb.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.i, align 8, !noalias !36642
  %.sroa.5.i.i.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !36642
  %.sroa.5.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i, align 8, !noalias !36642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36642
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %.noexc.i
  %.sroa.13102.0.i = phi i64 [ undef, %.noexc.i ], [ undef, %bb.h ], [ %.sroa.5.i.i.sroa.4.0.copyload.i, %bb.l ]
  %.sroa.11101.0.i = phi ptr [ undef, %.noexc.i ], [ undef, %bb.h ], [ %.sroa.5.i.i.sroa.0.0.copyload.i, %bb.l ] ; 3 uses
  %.sroa.9100.0.i = phi i64 [ undef, %.noexc.i ], [ -9223372036854775808, %bb.h ], [ %.sroa.0.0.copyload1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.899.0.i = phi i64 [ undef, %.noexc.i ], [ %.sroa.7.0.i.i.i, %bb.h ], [ %.sroa.7.0.i.i.i, %bb.l ]
  %.sroa.698.0.i = phi ptr [ undef, %.noexc.i ], [ %.sroa.6.0.i.i.i, %bb.h ], [ %.sroa.6.0.i.i.i, %bb.l ] ; 3 uses
  %.sroa.097.0.i = phi i64 [ -9223372036854775807, %.noexc.i ], [ %.sroa.0.010.i.i.i, %bb.h ], [ %.sroa.0.010.i.i.i, %bb.l ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 400
  %i.ar = load i32, ptr %i.aq, align 8, !range !51, !alias.scope !36639, !noalias !36640, !noundef !28 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 404
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !36639, !noalias !36640
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.027.0705.i, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !34, !alias.scope !36639, !noalias !36640, !noundef !28
  %.not12.i.i = icmp eq i64 %i.av, -9223372036854775808
  br i1 %.not12.i.i, label %bb.q, label %bb.p

.body.i.i:                                        ; preds = %bb.s, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i", %bb.o, %bb.k, %bb.j, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.ay, %bb.o ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h04d9f720c1044bd5E.exit.i.i.i" ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36646)
  call void @llvm.experimental.noalias.scope.decl(metadata !36647)
  %.val.i.i.i.i = load i64, ptr %i.s, align 8, !range !29, !alias.scope !36648, !noalias !36638, !noundef !28 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.aw, label %bb.dg, label %bb.n

bb.n:                                             ; preds = %.body.i.i
end_hunk_0
