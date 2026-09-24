Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11lsp_harness6output8LspDebug9debug_str17h43c04ff35db25d4dE:bb.a
          cleanup
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit", label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20813
  store ptr %i.g, ptr %i.b, align 8, !noalias !20813
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @847, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #42
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #43
          to label %bb.q unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit": ; preds = %bb.c
  %.sroa.015.0.copyload = load i64, ptr %i.d, align 8 ; 5 uses
  %.sroa.618.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20814
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.618.0.copyload, i64 noundef %.sroa.7.0.copyload)
          to label %bb.j unwind label %bb.h, !noalias !20814

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit"
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.l, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.0.copyload, i64 noundef %.sroa.015.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20815
  br label %.body

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit"
  %i.m = load i64, ptr %i.a, align 8, !range !43, !noalias !20814, !noundef !28
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20814
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.o, align 8, !noalias !20814
  %.sroa.832.24.copyload = load i64, ptr %i.o, align 8, !noalias !20814
  %i.q = ptrtoint ptr %.sroa.618.0.copyload to i64 ; 2 uses
  %i.r = inttoptr i64 %.sroa.7.0.copyload to ptr  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20814
  call void @llvm.experimental.noalias.scope.decl(metadata !20816)
  call void @llvm.experimental.noalias.scope.decl(metadata !20817)
  %.not.i = icmp eq i64 %.sroa.015.0.copyload, -9223372036854775808
  br i1 %.not.i, label %bb.p, label %bb.l, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20818
  store i64 %.sroa.015.0.copyload, ptr %i.c, align 8, !noalias !20816
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20816
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !20816
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i64> %i.p, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !20816
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @846, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #42
          to label %bb.o unwind label %bb.m, !noalias !20818

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20819)
  call void @llvm.experimental.noalias.scope.decl(metadata !20820), !noalias !20818
  %.val.i.i9 = load i64, ptr %i.c, align 8, !range !29, !alias.scope !20821, !noalias !20818, !noundef !28 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i9, 0
  br i1 %i.t, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !20821, !noalias !20818, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20822
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.k, %.thread
  %.sroa.6.sroa.0.045 = phi i64 [ %.sroa.015.0.copyload, %.thread ], [ %i.q, %bb.k ]
  %.sroa.6.sroa.6.044 = phi ptr [ %.sroa.618.0.copyload, %.thread ], [ %i.r, %bb.k ]
  %.sroa.6.sroa.7.043 = phi i64 [ %.sroa.7.0.copyload, %.thread ], [ %.sroa.832.24.copyload, %bb.k ]
  store i64 %.sroa.6.sroa.0.045, ptr %0, align 8, !alias.scope !20818
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.sroa.6.044, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8, !alias.scope !20818
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.7.043, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8, !alias.scope !20818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body:                                            ; preds = %bb.r, %bb.q, %bb.m, %bb.n, %bb.h, %bb.i
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.s, %bb.n ], [ %eh.lpad-body.ph, %bb.q ], [ %eh.lpad-body.ph, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body35

bb.q:                                             ; preds = %bb.b, %bb.e
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.i, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20823)
  %.val.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !20823, !noundef !28 ; 2 uses
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !20823, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20823
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN11lsp_harness7jsonrpc6Server10send_pause17h0993c8b3c236fb9dE(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !28
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !20841, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !range !29, !alias.scope !20841, !noundef !28
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb044350e8e5602bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit": ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !20841, !nonnull !28, !noundef !28
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g
  store i32 %i.d, ptr %i.l, align 4
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !20841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load i32, ptr %i.b, align 4, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !20842
  %i.o = tail call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #41, !noalias !20842 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42, !noalias !20843
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE"(ptr noalias noundef align 8 dereferenceable(112) %i.a) #43
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @354, i64 5, i1 false), !noalias !20844
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @355, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @356, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 24, ptr %i.u, align 8
  store i64 5, ptr %i.a, align 8
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %.sroa.015.sroa.5.0..sroa_idx, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775807, ptr %.sroa.718.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.n, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val13 = load ptr, ptr %i.x, align 8
  %i.y = invoke fastcc noundef ptr @_ZN11lsp_harness7jsonrpc6Server4send17h0f2670fecb7a5d35E(ptr %.val, ptr %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.a)
          to label %"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE.exit" unwind label %bb.d

"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE.exit": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.y

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN11lsp_harness7jsonrpc6Server12replace_file17hf488ee301c2a4e91E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 26 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [152 x i8], align 8               ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.o = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41 ; 15 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d, !prof !30

bb.b:                                             ; preds = %bb.as, %bb.at, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", %bb.ax, %bb.bq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kj, %bb.bq ], [ %lpad.phi.i.i.i, %bb.as ], [ %lpad.phi.i.i.i, %bb.at ], [ %.pn.i.i, %bb.ax ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i" ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$lsp_harness..jsonrpc..SendNotification$LT$lsp_types..notification..DidChangeTextDocument$GT$$GT$17ha2f150cb4ce72dacE"(ptr noalias noundef align 8 dereferenceable(152) %i.n) #43, !noalias !21382
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit"

.thread34:                                        ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #42
          to label %bb.bu unwind label %.thread34

bb.d:                                             ; preds = %bb.a
  %i.r = icmp slt i64 %4, 0
  br i1 %i.r, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %4, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21383
  %i.t = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, 9) 1) #41, !noalias !21383 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.f
  unreachable

.thread:                                          ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 56, i64 noundef 8) #41
  br label %bb.bv

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.e
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !21384
  store i64 %4, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa.022.0..sroa_idx = getelementptr i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.0.sroa.4.0..sroa.022.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa.022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %4, ptr %.sroa.0.sroa.5.0..sroa.022.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13 = load ptr, ptr %i.w, align 8           ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14 = load ptr, ptr %i.x, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21382
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store ptr @355, ptr %i.y, align 8, !noalias !21382
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store i64 3, ptr %i.z, align 8, !noalias !21382
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr @362, ptr %i.aa, align 8, !noalias !21382
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store i64 22, ptr %i.ab, align 8, !noalias !21382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 %2, ptr %.sroa.4.0..sroa_idx18, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 1, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store ptr %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21388
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21389
  %i.ac = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #41, !noalias !21389 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #42
          to label %.noexc.i unwind label %bb.bq, !noalias !21382

.noexc.i:                                         ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i": ; preds = %bb.g
  store i64 128, ptr %i.h, align 8, !noalias !21388
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !21388
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21392
  store ptr %i.h, ptr %i.g, align 8, !noalias !21392
  call void @llvm.experimental.noalias.scope.decl(metadata !21393)
  call void @llvm.experimental.noalias.scope.decl(metadata !21394)
  call void @llvm.experimental.noalias.scope.decl(metadata !21395)
  call void @llvm.experimental.noalias.scope.decl(metadata !21396)
  call void @llvm.experimental.noalias.scope.decl(metadata !21397)
  call void @llvm.experimental.noalias.scope.decl(metadata !21398)
  store i8 123, ptr %i.ac, align 1, !noalias !21399
  store i64 1, ptr %i.af, align 8, !alias.scope !21400, !noalias !21401
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef range(i64 6, 8) 7)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc3.i.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !21402)
  call void @llvm.experimental.noalias.scope.decl(metadata !21403)
  call void @llvm.experimental.noalias.scope.decl(metadata !21404)
  call void @llvm.experimental.noalias.scope.decl(metadata !21405)
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !21406, !noalias !21407, !noundef !28 ; 3 uses
  %i.ah = load i64, ptr %i.h, align 8, !range !29, !alias.scope !21406, !noalias !21407, !noundef !28
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !30

bb.i:                                             ; preds = %.noexc3.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !21388

.noexc4.i.i.i:                                    ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !21408, !noalias !21407
  br label %bb.j

bb.j:                                             ; preds = %.noexc4.i.i.i, %.noexc3.i.i.i
  %i.aj = phi i64 [ %i.ag, %.noexc3.i.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.ae, align 8, !alias.scope !21408, !noalias !21407, !nonnull !28, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 58, ptr %i.am, align 1, !noalias !21409
  %i.an = add nuw i64 %i.aj, 1
  store i64 %i.an, ptr %i.af, align 8, !alias.scope !21408, !noalias !21407
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21394, !noalias !21410, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 3)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc5.i.i.i:                                    ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !21411)
  call void @llvm.experimental.noalias.scope.decl(metadata !21412)
  call void @llvm.experimental.noalias.scope.decl(metadata !21413)
  call void @llvm.experimental.noalias.scope.decl(metadata !21414)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !21415, !noalias !21416, !noundef !28 ; 3 uses
  %i.aq = load i64, ptr %.val11.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !21415, !noalias !21416, !noundef !28
  %i.ar = icmp eq i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.k, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i", !prof !30

bb.k:                                             ; preds = %.noexc5.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !21388

.noexc6.i.i.i:                                    ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !21417, !noalias !21416
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i": ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i
  %i.as = phi i64 [ %i.ap, %.noexc5.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i, %.noexc6.i.i.i ] ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !21417, !noalias !21416, !nonnull !28, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  store i8 44, ptr %i.aw, align 1, !noalias !21418
  %i.ax = add nuw i64 %i.as, 1
end_hunk_0
