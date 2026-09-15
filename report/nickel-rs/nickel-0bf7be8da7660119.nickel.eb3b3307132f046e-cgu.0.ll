Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17h80cc05266aae4bf3E":bb.a
  br i1 %or.cond.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15348
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 4) #53, !noalias !15348 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc.i unwind label %bb.d, !noalias !15347

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw i64 %.sroa.0.0.copyload.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !15347
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #61
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val8.i, %bb.b ] ; 2 uses
  %i.o = icmp samesign ule i64 %.val8.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val7.i, i64 %i.h, i1 false), !noalias !15349
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val8.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15350
  %i.q = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15350 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8294f023cf6d9b13E.exit", !prof !45

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #59
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17hbbcb64a4742976e8E"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #61
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8294f023cf6d9b13E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.q

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17enter_cache_index17h9c93a78f8ae72470E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [392 x i8], align 8               ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [392 x i8], align 8               ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 16               ; 9 uses
  %i.l = alloca [20 x i8], align 4                ; 2 uses
  %i.m = alloca [392 x i8], align 8               ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %5, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %6, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15400)
  %i.q = load i64, ptr %5, align 8, !noalias !15401, !noundef !34
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %5, align 8, !noalias !15401
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge" unwind label %bb.c

"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge": ; preds = %bb.b
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !15402
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15403)
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !15404, !noundef !34 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !noalias !15405, !noundef !34
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !15405
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread59 unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge", %bb.a
  %i.z = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i_crit_edge" ], [ %6, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15406)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"
  %i.ab = load i64, ptr %i.z, align 8, !noalias !15407, !noundef !34
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !15407
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit" unwind label %.thread63

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

.thread63:                                        ; preds = %bb.g, %bb.l, %bb.t, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit": ; preds = %bb.f, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !34, !align !41, !noundef !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  %i.ai = invoke { i64, ptr } @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$16get_update_index17hee50298af5f62febE"(ptr noalias noundef nonnull align 1 %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.i unwind label %.thread63  ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 3 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val28 = load ptr, ptr %i.am, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val29 = load i64, ptr %i.an, align 8, !noundef !34 ; 7 uses
  %i.ao = shl i64 %.val29, 5                      ; 4 uses
  %i.ap = icmp ugt i64 %.val29, 576460752303423487
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.ap, %i.aq
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.j
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i", label %bb.k

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.as = icmp eq i64 %.val29, 0
  call void @llvm.assume(i1 %i.as)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit"

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15408
  %i.at = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 4) #53, !noalias !15408 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59
          to label %.noexc33 unwind label %.thread63

.noexc33:                                         ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i": ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.val28, i64 %.val29
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"
  %.sroa.014.023.i.i = phi ptr [ %i.az, %bb.m ], [ %.val28, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.ay, %bb.m ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.ax, %bb.m ], [ %.val29, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ]
  %i.aw = icmp eq ptr %.sroa.014.023.i.i, %i.av
  br i1 %i.aw, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit", label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ax = add nsw i64 %.sroa.10.021.i.i, -1       ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 32
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ba, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.014.023.i.i, i64 32, i1 false), !noalias !15409
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit", label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !15410)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !15410, !noundef !34 ; 5 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %1, align 8, !range !42, !alias.scope !15411, !noundef !34
  %i.bg = sub nsw i64 %i.bf, %i.bd
  %i.bh = icmp ult i64 %i.bg, 9
  br i1 %i.bh, label %bb.q, label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h44c8cdcf8d49e1b4E.exit", !prof !37

bb.p:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$nickel_lang_core..eval..stack..UpdateIndexItem$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h8f4e8860701c06c8E"(ptr nonnull %i.ak) #61
          to label %.thread59 unwind label %bb.r, !noalias !15410

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bd, i64 noundef 9, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f477fac72bfdb16E.exit_crit_edge.i" unwind label %bb.p

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f477fac72bfdb16E.exit_crit_edge.i": ; preds = %bb.q
  %.pre.i = load i64, ptr %i.bc, align 8, !alias.scope !15410
  br label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h44c8cdcf8d49e1b4E.exit"

bb.r:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !15410
  unreachable

"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h44c8cdcf8d49e1b4E.exit": ; preds = %bb.o, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f477fac72bfdb16E.exit_crit_edge.i"
  %i.bk = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f477fac72bfdb16E.exit_crit_edge.i" ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bl = ptrtoint ptr %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !15410, !nonnull !34, !noundef !34
  %i.bo = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bl, ptr %i.bp, align 1, !noalias !15410
  store i8 3, ptr %i.bq, align 1, !noalias !15410
  %i.br = add nuw i64 %i.bd, 9
  store i64 %i.br, ptr %i.bc, align 8, !alias.scope !15410
  br label %bb.s

bb.s:                                             ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h44c8cdcf8d49e1b4E.exit", %bb.n
  %i.bs = load i32, ptr %2, align 4, !range !95, !noundef !34
  %.not20 = icmp eq i32 %i.bs, 3
  br i1 %.not20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN16nickel_lang_core4eval9callstack9CallStack9enter_var17h21df5ae35afa0befE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.l, i32 noundef %4)
          to label %bb.u unwind label %.thread63

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bu = load ptr, ptr %i.o, align 8, !nonnull !34, !noundef !34
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.w unwind label %bb.v

.body24:                                          ; preds = %bb.af, %bb.ai, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.cz, %bb.af ], [ %i.de, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hf5d66bac970e23d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #61
          to label %.thread unwind label %bb.aq

bb.v:                                             ; preds = %bb.at, %bb.as, %bb.ar, %bb.aa, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.w:                                             ; preds = %bb.u
  %i.bw = load i8, ptr %i.j, align 8, !range !59, !noundef !34
  %i.bx = icmp eq i8 %i.bw, 7
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !range !60, !noundef !34 ; 2 uses
  %i.cb = icmp ne i64 %i.ca, -9223372036854775756
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, -9223372036854775749
  br i1 %i.cc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16, !noundef !34
  %i.cf = load <2 x ptr>, ptr %i.k, align 16
  store <2 x ptr> %i.cf, ptr %0, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ce, ptr %.sroa.10.0..sroa_idx, align 8
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"

bb.z:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !104, !noundef !34 ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 20
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ult i64 %i.ci, 19
  br i1 %i.ck, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E"(ptr noalias noundef align 8 captures(address) dereferenceable(392) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.ch)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i64, ptr %i.i, align 8, !range !104, !noundef !34 ; 2 uses
  %i.cm = icmp ne i64 %i.cl, 20
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ult i64 %i.cl, 19         ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp eq i32 %i.cp, -1
  %or.cond = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cn, label %bb.ar, label %bb.as

bb.ad:                                            ; preds = %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cs, ptr noundef nonnull align 8 dereferenceable(20) %i.cr, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr noundef nonnull align 8 dereferenceable(360) %i.i, i64 360, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 380
  %i.cu = load i32, ptr %i.ct, align 4, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 %4, ptr %i.cw, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15412
  %i.cx = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15412 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ae, label %bb.ah, !prof !45

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc37 unwind label %bb.af

.noexc37:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.g) #61
          to label %.body24 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.cx, ptr noundef nonnull align 8 dereferenceable(392) %i.g, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cx, ptr %i.db, align 8
  store i64 -9223372036854775749, ptr %i.h, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15413
  %i.dc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #53, !noalias !15413 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.aj, label %bb.am, !prof !37

bb.ai:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h4b601a58ee78df78E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #61
          to label %.body24 unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15413
  store ptr @320, ptr %i.f, align 8, !noalias !15413
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.df, align 8, !noalias !15413
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.dg, align 8, !noalias !15413
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !noalias !15413
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.di, align 8, !noalias !15413
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.ak unwind label %bb.ai, !noalias !15413

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.am:                                            ; preds = %bb.ah
  store i64 360287970189639681, ptr %i.dc, align 8, !noalias !15413
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %4, ptr %i.dk, align 8, !noalias !15413
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dc, ptr %0, align 8
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load <2 x ptr>, ptr %i.dm, align 8
  store <2 x ptr> %i.dn, ptr %.sroa.8.0..sroa_idx10, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15414)
  %.val.i = load ptr, ptr %i.k, align 16, !alias.scope !15414, !nonnull !34, !noundef !34 ; 4 uses
  %i.do = ptrtoint ptr %.val.i to i64
  %i.dp = and i64 %i.do, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.dp, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" [
    i64 2, label %.noexc41
    i64 0, label %bb.an
  ], !prof !47

.noexc41:                                         ; preds = %bb.am
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15414
  store ptr %.val.i, ptr %i.e, align 8, !noalias !15414
  %i.dq = load i64, ptr %.val.i, align 8, !noalias !15415, !noundef !34 ; 3 uses
  %i.dr = and i64 %i.dq, 72057594037927935
  %i.ds = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.dt = and i64 %i.dq, 1080863910568919040
  %i.du = icmp ult i64 %i.dq, 864691128455135232
  call void @llvm.assume(i1 %i.du)
  %i.dv = or i64 %i.ds, %i.dt
  store i64 %i.dv, ptr %.val.i, align 8, !noalias !15415
  %i.dw = icmp ugt i64 %i.ds, 72057594037927935
  br i1 %i.dw, label %.noexc42, label %bb.ao, !prof !37

bb.ao:                                            ; preds = %bb.an
  %i.dx = icmp eq i64 %i.ds, 0
  br i1 %i.dx, label %bb.ap, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i"

.noexc42:                                         ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15415
  store ptr @1344, ptr %i.d, align 8, !noalias !15415
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.dy, align 8, !noalias !15415
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.dz, align 8, !noalias !15415
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !noalias !15415
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.eb, align 8, !noalias !15415
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
  unreachable

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i": ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15414
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i", %bb.am, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E.exit"

bb.aq:                                            ; preds = %.thread59, %.body24
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ar:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17hd9e56ba5b292b097E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.i)
          to label %bb.at unwind label %bb.v

bb.as:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef align 8 dereferenceable(392) %i.i)
          to label %bb.at unwind label %bb.v

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #59
          to label %bb.au unwind label %bb.v

bb.au:                                            ; preds = %bb.at
  unreachable

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i", %bb.ay, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"
  ret void

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit": ; preds = %bb.m, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i"
  %.sroa.10.0.i32.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i" ], [ %i.at, %.lr.ph.i.i ], [ %i.at, %bb.m ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.val29, ptr %i.ed, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.10.0.i32.i.i, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.val29, ptr %.sroa.548.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %4, ptr %i.ee, align 8
  store i64 30, ptr %i.m, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !15416
  %i.ef = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15416 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.av, label %bb.ay, !prof !45

bb.av:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #59
          to label %.noexc44 unwind label %bb.aw

.noexc44:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17hc29a4f0dd0a08e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.m) #61
          to label %.thread59 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.ay:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ef, ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.ej, align 8
  store ptr null, ptr %0, align 8
  %.val27 = load ptr, ptr %i.o, align 8, !alias.scope !105, !nonnull !34, !noundef !34 ; 4 uses
  %i.ek = ptrtoint ptr %.val27 to i64
  %i.el = and i64 %i.ek, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.el, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E.exit" [
    i64 2, label %bb.az
    i64 0, label %bb.ba
  ], !prof !47

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59, !noalias !15417
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15417
  store ptr %.val27, ptr %i.c, align 8, !noalias !15417
  %i.em = load i64, ptr %.val27, align 8, !noalias !15418, !noundef !34 ; 3 uses
  %i.en = and i64 %i.em, 72057594037927935
  %i.eo = add nsw i64 %i.en, -1                   ; 3 uses
  %i.ep = and i64 %i.em, 1080863910568919040
  %i.eq = icmp ult i64 %i.em, 864691128455135232
  call void @llvm.assume(i1 %i.eq)
  %i.er = or i64 %i.eo, %i.ep
  store i64 %i.er, ptr %.val27, align 8, !noalias !15418
  %i.es = icmp ugt i64 %i.eo, 72057594037927935
  br i1 %i.es, label %bb.bc, label %bb.bb, !prof !37

bb.bb:                                            ; preds = %bb.ba
  %i.et = icmp eq i64 %i.eo, 0
  br i1 %i.et, label %bb.bd, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i"

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15418
  store ptr @1344, ptr %i.b, align 8, !noalias !15418
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.eu, align 8, !noalias !15418
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ev, align 8, !noalias !15418
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ew, align 8, !noalias !15418
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ex, align 8, !noalias !15418
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59, !noalias !15418
  unreachable

bb.bd:                                            ; preds = %bb.bb
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !15417
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i": ; preds = %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15417
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E.exit"

.thread:                                          ; preds = %.body24, %.thread59
  %.pn2251 = phi { ptr, i32 } [ %.pn, %.body24 ], [ %eh.lpad-body55, %.thread59 ]
  resume { ptr, i32 } %.pn2251

.thread59:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.aw, %bb.p, %.thread63
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %lpad.thr_comm, %.thread63 ], [ %i.eh, %bb.aw ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %.val = load ptr, ptr %i.o, align 8, !alias.scope !105, !nonnull !34, !noundef !34
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h9029409cbcc766c1E"(ptr nonnull %.val) #61
          to label %.thread unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h22b165abd374600dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 15 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [168 x i8], align 8               ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [48 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [40 x i8], align 8               ; 5 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %i.ac = alloca [64 x i8], align 8               ; 5 uses
  %.sroa.05.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [72 x i8], align 8               ; 13 uses
  %i.af = alloca [56 x i8], align 8               ; 12 uses
  %i.ag = alloca [16 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 16              ; 9 uses
  %i.ai = alloca [72 x i8], align 8               ; 4 uses
  %i.aj = alloca [160 x i8], align 8              ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 7 uses
  %i.al = alloca [152 x i8], align 8              ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.03.i.i.i.i.i.i.i.i.i.i.i = alloca [152 x i8], align 8 ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [296 x i8], align 8              ; 7 uses
  %i.ap = alloca [80 x i8], align 8               ; 17 uses
  %i.aq = alloca [24 x i8], align 8               ; 12 uses
  %i.ar = alloca [48 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 7 uses
  %i.au = alloca [56 x i8], align 8               ; 9 uses
  %i.av = alloca [56 x i8], align 8               ; 7 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [40 x i8], align 8               ; 8 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 9 uses
  %i.bc = alloca [32 x i8], align 8               ; 9 uses
  %i.bd = alloca [4 x i8], align 4                ; 4 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [40 x i8], align 8               ; 5 uses
  %i.bg = alloca [40 x i8], align 8               ; 4 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [16 x i8], align 8               ; 7 uses
  %i.bj = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.43.i.i.i.i.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 4 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [64 x i8], align 16              ; 13 uses
  %i.bm = alloca [48 x i8], align 8               ; 4 uses
  %i.bn = alloca [40 x i8], align 8               ; 5 uses
  %i.bo = alloca [4 x i8], align 4                ; 4 uses
  %i.bp = alloca [72 x i8], align 16              ; 11 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [40 x i8], align 8               ; 6 uses
  %i.bs = alloca [40 x i8], align 8               ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 6 uses
  %i.bu = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca [44 x i8], align 4 ; 4 uses
  %i.bv = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.07.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.811.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [72 x i8], align 8               ; 13 uses
  %i.by = alloca [56 x i8], align 8               ; 12 uses
  %i.bz = alloca [72 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 16              ; 12 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 7 uses
  %i.cf = alloca [56 x i8], align 8               ; 13 uses
  %i.cg = alloca [72 x i8], align 8               ; 8 uses
  %i.ch = alloca [48 x i8], align 8               ; 4 uses
  %i.ci = alloca [40 x i8], align 8               ; 5 uses
end_hunk_0
begin_hunk_1_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h22b165abd374600dE":bb.a

.lr.ph13.i.i.i.i.i.i.i:                           ; preds = %bb.mj, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i"
  %.sroa.0.111.i.i.i.i.i.i.i = phi i64 [ %i.ana, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i" ], [ %i.amq, %bb.mj ] ; 2 uses
  %i.amz = getelementptr inbounds nuw [24 x i8], ptr %i.amn, i64 %.sroa.0.111.i.i.i.i.i.i.i
  %i.ana = add i64 %.sroa.0.111.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16572)
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16573)
  %i.anc = load ptr, ptr %i.anb, align 8, !alias.scope !16574, !noalias !16570, !noundef !34 ; 3 uses
  %.not.i.i7.i.i.i.i.i.i.i = icmp eq ptr %i.anc, null
  br i1 %.not.i.i7.i.i.i.i.i.i.i, label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i", label %bb.mk

bb.mk:                                            ; preds = %.lr.ph13.i.i.i.i.i.i.i
  %i.and = load i64, ptr %i.anc, align 8, !noalias !16575, !noundef !34
  %i.ane = add i64 %i.and, -1                     ; 2 uses
  store i64 %i.ane, ptr %i.anc, align 8, !noalias !16575
  %i.anf = icmp eq i64 %i.ane, 0
  br i1 %i.anf, label %bb.ml, label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i"

bb.ml:                                            ; preds = %bb.mk
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.anb)
          to label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i" unwind label %bb.mm, !noalias !16570

"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i": ; preds = %bb.ml, %bb.mk, %.lr.ph13.i.i.i.i.i.i.i
  %i.ang = icmp eq i64 %i.ana, %i.aml
  br i1 %i.ang, label %.body.i.i.i536, label %.lr.ph13.i.i.i.i.i.i.i

bb.mm:                                            ; preds = %bb.ml
  %i.anh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16570
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit.i.i.i.i.i.i.i", %bb.mg, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17h6cd70814ca338cd2E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i"
  %.sink44.i.sink.i.i.i.i.i = phi i64 [ %i.ald, %bb.mg ], [ %i.alg, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17h6cd70814ca338cd2E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i" ], [ %i.ald, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit.i.i.i.i.i.i.i" ] ; 8 uses
  %i.ani = phi ptr [ %i.amm, %bb.mg ], [ %.pre.i.pre.i.i.i.i.i, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17h6cd70814ca338cd2E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i" ], [ %i.amm, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.idx5.i.i.i.i.i.i = mul nuw nsw i64 %.sink44.i.sink.i.i.i.i.i, 24
  %i.anj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx5.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16576)
  call void @llvm.experimental.noalias.scope.decl(metadata !16577)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sink44.i.sink.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i.i, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i"
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.ank, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i" ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ank = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.anl = getelementptr inbounds nuw [24 x i8], ptr %i.ani, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 3 uses
  %i.anm = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16578)
  call void @llvm.experimental.noalias.scope.decl(metadata !16579)
  %i.ann = load i64, ptr %i.anm, align 8, !alias.scope !16580, !noalias !16581, !noundef !34
  store i64 %i.ann, ptr %i.anl, align 8, !alias.scope !16582, !noalias !16583
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.anp, align 8, !alias.scope !16580, !noalias !16581, !noundef !34
  store i32 %.val.i.i.i.i.i.i.i.i, ptr %i.ano, align 8, !alias.scope !16584, !noalias !16583
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anl, i64 8 ; 4 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.anr, align 8, !alias.scope !16580, !noalias !16581, !noundef !34 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16585)
  %i.ans = icmp eq ptr %.val1.i.i.i.i.i.i.i.i, null
  br i1 %i.ans, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i", label %bb.mn

bb.mn:                                            ; preds = %.lr.ph.i3.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !16586, !noundef !34 ; 2 uses
  %i.ant = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ant)
  %i.anu = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.anu, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !16586
  %i.anv = icmp eq i64 %i.anu, 0
  br i1 %i.anv, label %bb.mo, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i", !prof !37

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.trap()
  unreachable

"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.mn, %.lr.ph.i3.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16587)
  %i.anw = load ptr, ptr %i.anq, align 8, !alias.scope !16588, !noalias !16583, !noundef !34 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i539 = icmp eq ptr %i.anw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i539, label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i", label %bb.mp

bb.mp:                                            ; preds = %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i"
  %i.anx = load i64, ptr %i.anw, align 8, !noalias !16589, !noundef !34
  %i.any = add i64 %i.anx, -1                     ; 2 uses
  store i64 %i.any, ptr %i.anw, align 8, !noalias !16589
  %i.anz = icmp eq i64 %i.any, 0
  br i1 %i.anz, label %bb.mq, label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i"

bb.mq:                                            ; preds = %bb.mp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.anq)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i" unwind label %bb.mr, !noalias !16583

bb.mr:                                            ; preds = %bb.mq
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  store ptr %.val1.i.i.i.i.i.i.i.i, ptr %i.anq, align 8, !alias.scope !16590, !noalias !16583
  br label %.body.i.i.i536

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i": ; preds = %bb.mq, %bb.mp, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %.val1.i.i.i.i.i.i.i.i, ptr %i.anq, align 8, !alias.scope !16590, !noalias !16583
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ank, %.sink44.i.sink.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h7d021ff503eef8cdE.exit.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16591)
  call void @llvm.experimental.noalias.scope.decl(metadata !16592)
  call void @llvm.experimental.noalias.scope.decl(metadata !16593)
  %.idx6.i.i.i.i.i.i = sub nsw i64 %i.ald, %.sink44.i.sink.i.i.i.i.i ; 3 uses
  %i.aob = sub nsw i64 %i.ami, %.sink44.i.sink.i.i.i.i.i
  %i.aoc = icmp ugt i64 %.idx6.i.i.i.i.i.i, %i.aob
  br i1 %i.aoc, label %bb.ms, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i", !prof !37

bb.ms:                                            ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cf, i64 noundef %.sink44.i.sink.i.i.i.i.i, i64 noundef %.idx6.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i.i.i unwind label %.loopexit1364, !noalias !16542

.noexc4.i.i.i:                                    ; preds = %bb.ms
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i535, align 8, !alias.scope !16594, !noalias !16566
  %.pre21.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i534, align 8, !alias.scope !16594, !noalias !16566
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc4.i.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i"
  %i.aod = phi ptr [ %i.ani, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i" ], [ %.pre21.i.i.i.i.i.i, %.noexc4.i.i.i ]
  %i.aoe = phi i64 [ %.sink44.i.sink.i.i.i.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hb71009d6211b35fcE.exit.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 2 uses
  %i.aof = icmp eq i64 %.sink44.i.sink.i.i.i.i.i, %i.ald
  br i1 %i.aof, label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i", label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i", %bb.mv
  %i.aog = phi i64 [ %i.aoq, %bb.mv ], [ %i.aoe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aor, %bb.mv ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aoh = getelementptr inbounds nuw [24 x i8], ptr %i.anj, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16595)
  call void @llvm.experimental.noalias.scope.decl(metadata !16596)
  call void @llvm.experimental.noalias.scope.decl(metadata !16597)
  %i.aoi = load i64, ptr %i.aoh, align 8, !alias.scope !16598, !noalias !16599, !noundef !34
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aoj, align 8, !alias.scope !16598, !noalias !16599, !noundef !34
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aok, align 8, !alias.scope !16598, !noalias !16599, !noundef !34 ; 4 uses
  %i.aol = icmp eq ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aol, label %bb.mv, label %bb.mt

bb.mt:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !16600, !noundef !34 ; 2 uses
  %i.aom = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.aom)
  %i.aon = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.aon, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !16600
  %i.aoo = icmp eq i64 %i.aon, 0
  br i1 %i.aoo, label %bb.mu, label %bb.mv, !prof !37

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.trap()
  unreachable

bb.mv:                                            ; preds = %bb.mt, %.preheader.i.i.i.i.i.i.i.i.i
  %i.aop = getelementptr inbounds nuw [24 x i8], ptr %i.aod, i64 %i.aog ; 3 uses
  store i64 %i.aoi, ptr %i.aop, align 8, !noalias !16601
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !16601
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  store i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !16601
  %i.aoq = add i64 %i.aog, 1                      ; 2 uses
  %i.aor = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aos = icmp eq i64 %i.aor, %.idx6.i.i.i.i.i.i
  br i1 %i.aos, label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i", label %.preheader.i.i.i.i.i.i.i.i.i

.loopexit1364:                                    ; preds = %bb.lx, %bb.ms
  %lpad.loopexit1366 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i536

.loopexit.split-lp1365:                           ; preds = %.loopexit1369
  %lpad.loopexit.split-lp1367 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i536

.body.i.i.i536:                                   ; preds = %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i", %.loopexit1364, %.loopexit.split-lp1365, %bb.mr, %bb.mj
  %eh.lpad-body.i.i.i537 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1367, %.loopexit.split-lp1365 ], [ %i.aoa, %bb.mr ], [ %i.amx, %bb.mj ], [ %lpad.loopexit1366, %.loopexit1364 ], [ %i.amx, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hbbbc2419e6f1f910E.exit9.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E"(ptr noalias noundef align 8 dereferenceable(56) %i.cf) #61
          to label %.body551 unwind label %bb.mw, !noalias !16542

bb.mw:                                            ; preds = %.body.i.i.i536
  %i.aot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16542
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i": ; preds = %bb.mv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i"
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aoe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3e7923b41c27caa3E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.aoq, %bb.mv ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i535, align 8, !alias.scope !16594, !noalias !16602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false), !noalias !16603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !16542
  %i.aou = getelementptr inbounds nuw i8, ptr %i.akx, i64 192
  %i.aov = load <2 x i64>, ptr %i.aou, align 8, !alias.scope !16604, !noalias !16605
  store <2 x i64> %i.aov, ptr %i.kq, align 8, !alias.scope !16539, !noalias !16603
  %i.aow = getelementptr inbounds nuw i8, ptr %i.akx, i64 216
  %.val.i542 = load ptr, ptr %i.aow, align 8, !alias.scope !16537, !noalias !16606, !nonnull !34, !noundef !34 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.akx, i64 224
  %.val1.i543 = load i64, ptr %i.aox, align 8, !alias.scope !16537, !noalias !16606, !noundef !34 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16607)
  %i.aoy = shl i64 %.val1.i543, 3                 ; 4 uses
  %i.aoz = icmp ugt i64 %.val1.i543, 2305843009213693951
  %i.apa = icmp ugt i64 %i.aoy, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.aoz, %i.apa
  br i1 %or.cond.i.i.i.i.i.i, label %bb.my, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i"
  %i.apb = icmp eq i64 %i.aoy, 0
  br i1 %i.apb, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i", label %bb.mx

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.apc = icmp eq i64 %.val1.i543, 0
  call void @llvm.assume(i1 %i.apc)
  br label %.loopexit1340

bb.mx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !16608
  %i.apd = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aoy, i64 noundef range(i64 1, 9) 8) #53, !noalias !16608 ; 4 uses
  %i.ape = icmp eq ptr %i.apd, null
  br i1 %i.ape, label %bb.my, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"

bb.my:                                            ; preds = %bb.mx, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.mx ], [ 0, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h37ade18646f22025E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.aoy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59
          to label %.noexc.i549 unwind label %bb.nc, !noalias !16538

.noexc.i549:                                      ; preds = %bb.my
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i": ; preds = %bb.mx
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %.val.i542, i64 %.val1.i543
  br label %.lr.ph.i.i.i544

.lr.ph.i.i.i544:                                  ; preds = %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"
  %.sroa.013.023.i.i.i = phi ptr [ %i.api, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ %.val.i542, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.apj, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.apg, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ %.val1.i543, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ]
  %i.apg = add nsw i64 %.sroa.10.021.i.i.i, -1    ; 2 uses
  %i.aph = icmp eq ptr %.sroa.013.023.i.i.i, %i.apf
  br i1 %i.aph, label %.loopexit1340, label %bb.mz

bb.mz:                                            ; preds = %.lr.ph.i.i.i544
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.apj = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %.val.i.i.i545 = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !16607, !noalias !16609, !noundef !34 ; 4 uses
  %i.apk = icmp eq ptr %.val.i.i.i545, null
  br i1 %i.apk, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", label %bb.na

bb.na:                                            ; preds = %bb.mz
  %.val.i.i.i.i.i546 = load i64, ptr %.val.i.i.i545, align 8, !noalias !16610, !noundef !34 ; 2 uses
  %i.apl = icmp ne i64 %.val.i.i.i.i.i546, 0
  call void @llvm.assume(i1 %i.apl)
  %i.apm = add i64 %.val.i.i.i.i.i546, 1          ; 2 uses
  store i64 %i.apm, ptr %.val.i.i.i545, align 8, !noalias !16610
  %i.apn = icmp eq i64 %i.apm, 0
  br i1 %i.apn, label %bb.nb, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", !prof !37

bb.nb:                                            ; preds = %bb.na
  call void @llvm.trap()
  unreachable

"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i": ; preds = %bb.na, %bb.mz
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apd, i64 %.sroa.7.022.i.i.i
  store ptr %.val.i.i.i545, ptr %i.apo, align 8, !noalias !16610
  %i.app = icmp eq i64 %i.apg, 0
  br i1 %i.app, label %.loopexit1340, label %.lr.ph.i.i.i544

bb.nc:                                            ; preds = %bb.my
  %i.apq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !16611)
  call void @llvm.experimental.noalias.scope.decl(metadata !16612), !noalias !16538
  %i.apr = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.val1.i.i864 = load i64, ptr %i.apr, align 8, !alias.scope !16613, !noalias !16538, !noundef !34 ; 4 uses
  %i.aps = icmp eq i64 %.val1.i.i864, 0
  br i1 %i.aps, label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i865

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i865: ; preds = %bb.nc
  %i.apt = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.val.i.i866 = load ptr, ptr %i.apt, align 8, !alias.scope !16613, !noalias !16538, !nonnull !34, !noundef !34
  %or.cond.i.i.i.i.i.i.i867 = icmp slt i64 %.val1.i.i864, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i867), !noalias !16538
  %i.apu = shl i64 %.val1.i.i864, 3
  %i.apv = and i64 %i.apu, -16                    ; 2 uses
  %i.apw = add i64 %i.apv, 16                     ; 2 uses
  %i.apx = add nsw i64 %.val1.i.i864, 17
  %i.apy = add i64 %i.apx, %i.apw                 ; 3 uses
  %i.apz = icmp uge i64 %i.apy, %i.apw
  call void @llvm.assume(i1 %i.apz), !noalias !16538
  %i.aqa = icmp ult i64 %i.apy, 9223372036854775793
  call void @llvm.assume(i1 %i.aqa), !noalias !16538
  %i.aqb = sub nuw nsw i64 -16, %i.apv
  %i.aqc = getelementptr inbounds i8, ptr %.val.i.i866, i64 %i.aqb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqc, i64 noundef %i.apy, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !16614
  br label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i"

"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i865, %bb.nc
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$$GT$17he5d39ffeabcfef1eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cg)
          to label %.body551 unwind label %bb.nd

bb.nd:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i"
  %i.aqd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16538
  unreachable

bb.ne:                                            ; preds = %bb.lw
  store i64 -9223372036854775808, ptr %i.fb, align 8
  br label %bb.nf

bb.nf:                                            ; preds = %.loopexit1340, %bb.ne
  call void @llvm.experimental.noalias.scope.decl(metadata !16615)
  call void @llvm.experimental.noalias.scope.decl(metadata !16616)
  call void @llvm.experimental.noalias.scope.decl(metadata !16617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.aqe = load <2 x ptr>, ptr %i.gs, align 16
  store <2 x ptr> %i.aqe, ptr %i.ca, align 16, !noalias !16618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !16618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !16618
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.fd, align 8, !alias.scope !16615, !noalias !16619
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16615, !noalias !16619 ; 4 uses
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16615, !noalias !16619 ; 5 uses
  %.sroa.5.0.copyload.i553 = load i64, ptr %.sroa.5.0..sroa_idx37.i, align 8, !alias.scope !16615, !noalias !16619 ; 4 uses
  %i.aqf = icmp eq i64 %.sroa.5.0.copyload.i553, 0
  br i1 %i.aqf, label %bb.ng, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.nf
  %.sroa.4.0.copyload.i554 = load ptr, ptr %.sroa.4.0..sroa_idx36.i, align 8, !alias.scope !16615, !noalias !16619, !nonnull !34, !noundef !34
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload.i553, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.aqg = shl i64 %.sroa.5.0.copyload.i553, 3
  %i.aqh = and i64 %i.aqg, -16                    ; 2 uses
  %i.aqi = add i64 %i.aqh, 16                     ; 2 uses
  %i.aqj = add nsw i64 %.sroa.5.0.copyload.i553, 17
  %i.aqk = add i64 %i.aqj, %i.aqi                 ; 3 uses
  %i.aql = icmp uge i64 %i.aqk, %i.aqi
  call void @llvm.assume(i1 %i.aql)
  %i.aqm = icmp ult i64 %i.aqk, 9223372036854775793
  call void @llvm.assume(i1 %i.aqm)
  %i.aqn = sub nuw nsw i64 -16, %i.aqh
  %i.aqo = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i554, i64 %i.aqn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqo, i64 noundef %i.aqk, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !16620
  br label %bb.ng

.body.i557:                                       ; preds = %.body28.i, %bb.ov, %.body.i.i.i565
  %.sroa.09.0.i = phi i1 [ false, %.body28.i ], [ true, %.body.i.i.i565 ], [ true, %bb.ov ]
  %.pn.i558 = phi { ptr, i32 } [ %eh.lpad-body29.i, %.body28.i ], [ %eh.lpad-body.i.i.i566, %.body.i.i.i565 ], [ %i.axg, %bb.ov ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E"(ptr noalias noundef align 8 dereferenceable(16) %i.ca) #61
          to label %.body30.i unwind label %bb.qy, !noalias !16621

bb.ng:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %bb.nf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.4.0.copyload.i) ]
  %i.aqp = icmp ult i64 %.sroa.0.sroa.5.0.copyload.i, 128102389400760776
  call void @llvm.assume(i1 %i.aqp)
  %i.aqq = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.sroa.4.0.copyload.i, i64 %.sroa.0.sroa.5.0.copyload.i
  store ptr %.sroa.0.sroa.4.0.copyload.i, ptr %i.by, align 8, !noalias !16618
  store ptr %.sroa.0.sroa.4.0.copyload.i, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !16618
  store i64 %.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !16618
  store ptr %i.aqq, ptr %.sroa.661.0..sroa_idx.i, align 8, !noalias !16618
  store ptr %i.fb, ptr %i.ks, align 8, !noalias !16618
  store ptr %i.aks, ptr %.sroa.4.0..sroa_idx.i555, align 8, !noalias !16618
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx.i556, align 8, !noalias !16618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !16622
  %i.aqr = load i8, ptr %i.is, align 8, !range !44, !noalias !16623, !noundef !34
  %i.aqs = trunc nuw i8 %i.aqr to i1
  br i1 %i.aqs, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ng
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ir, align 8, !noalias !16624
  %.pre1.i.i.i.i.i.i = load i64, ptr %i.it, align 8, !noalias !16624
  br label %bb.nh

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i": ; preds = %bb.ng
  %i.aqt = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i559 unwind label %bb.ov, !noalias !16625 ; 2 uses

.noexc.i.i.i559:                                  ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i"
  %i.aqu = extractvalue { i64, i64 } %i.aqt, 0
  %i.aqv = extractvalue { i64, i64 } %i.aqt, 1    ; 2 uses
  store i64 %i.aqv, ptr %i.it, align 8, !noalias !16626
  store i8 1, ptr %i.is, align 8, !noalias !16626
  br label %bb.nh

bb.nh:                                            ; preds = %.noexc.i.i.i559, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi43.i.i.i = phi i64 [ %i.aqv, %.noexc.i.i.i559 ], [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.aqu, %.noexc.i.i.i559 ], [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.aqw = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.aqw, ptr %i.ir, align 8, !noalias !16624
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bx, i64 noundef %.sroa.0.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i.i, i64 noundef %.pre-phi43.i.i.i)
          to label %bb.ni unwind label %bb.ov, !noalias !16625

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.experimental.noalias.scope.decl(metadata !16627)
  %i.aqx = load i64, ptr %i.kt, align 8, !alias.scope !16627, !noalias !16628, !noundef !34
  %i.aqy = icmp eq i64 %i.aqx, 0
  %i.aqz = add nuw nsw i64 %.sroa.0.sroa.5.0.copyload.i, 1
  %i.ara = lshr i64 %i.aqz, 1
  %.sroa.0.0.i.i.i.i = select i1 %i.aqy, i64 %.sroa.0.sroa.5.0.copyload.i, i64 %i.ara ; 4 uses
  %i.arb = load i64, ptr %i.kv, align 8, !alias.scope !16629, !noalias !16630, !noundef !34
  %i.arc = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.arb
  br i1 %i.arc, label %bb.nj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i.i", !prof !37

bb.nj:                                            ; preds = %bb.ni
  %i.ard = load i64, ptr %i.ku, align 8, !alias.scope !16631, !noalias !16628, !noundef !34
  %i.are = load ptr, ptr %i.kx, align 8, !alias.scope !16631, !noalias !16628, !nonnull !34, !noundef !34
  %i.arf = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kw, i64 noundef %.sroa.0.0.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.are, i64 noundef %i.ard, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i.i" unwind label %bb.or, !noalias !16632 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i.i": ; preds = %bb.nj, %bb.ni
  %i.arg = load i64, ptr %i.bx, align 8, !range !42, !alias.scope !16631, !noalias !16628, !noundef !34
  %i.arh = load i64, ptr %i.ku, align 8, !alias.scope !16631, !noalias !16628, !noundef !34 ; 2 uses
  %i.ari = icmp ult i64 %i.arh, 128102389400760776
  call void @llvm.assume(i1 %i.ari)
  %i.arj = sub nsw i64 %i.arg, %i.arh
  %i.ark = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.arj
  br i1 %i.ark, label %bb.nk, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i"

bb.nk:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i.i"
  %i.arl = load i64, ptr %i.kt, align 8, !alias.scope !16631, !noalias !16628, !noundef !34
  %i.arm = load i64, ptr %i.kv, align 8, !alias.scope !16631, !noalias !16628, !noundef !34
  %i.arn = add i64 %i.arm, %i.arl
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bx, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef %i.arn)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i" unwind label %bb.or, !noalias !16632

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i": ; preds = %bb.nk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !16633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.by, i64 32, i1 false), !noalias !16634
  call void @llvm.experimental.noalias.scope.decl(metadata !16635)
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.kz, align 8, !alias.scope !16636, !noalias !16637 ; 2 uses
  %i.aro = load ptr, ptr %i.ky, align 8, !alias.scope !16638, !noalias !16637, !nonnull !34, !noundef !34 ; 2 uses
  %i.arp = icmp eq ptr %.promoted.i.i.i.i.i.i.i, %i.aro
  br i1 %i.arp, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1cfde099f1572510E.exit.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i", %bb.op
end_hunk_1
begin_hunk_2_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h22b165abd374600dE":bb.a
  br i1 %i.azv, label %.body5.i.i.i.i.i.i, label %.lr.ph7409

bb.qi:                                            ; preds = %.lr.ph7397
  %i.azw = landingpad { ptr, i32 }
          cleanup
  %i.azx = icmp eq i64 %i.azt, %i.azp
  br i1 %i.azx, label %.body5.i.i.i.i.i.i, label %.lr.ph7409

.lr.ph7409:                                       ; preds = %bb.qi, %bb.qh
  %.sroa.0.1.i.i.i.i.i.i.i.i7407 = phi i64 [ %i.azu, %bb.qh ], [ %i.azt, %bb.qi ] ; 2 uses
  %i.azy = getelementptr inbounds nuw [48 x i8], ptr %i.azi, i64 %.sroa.0.1.i.i.i.i.i.i.i.i7407
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$17hc2ca5a65a258d450E"(ptr noalias noundef align 8 dereferenceable(48) %i.azy) #61
          to label %bb.qh unwind label %bb.qj, !noalias !16707

bb.qj:                                            ; preds = %.lr.ph7409
  %i.azz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16707
  unreachable

.body5.i.i.i.i.i.i:                               ; preds = %bb.qh, %bb.qi
  invoke fastcc void @"_ZN4core3ptr263drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$C$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h34e0ee40925f903cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #61
          to label %.body.i.i.i.i.i.i unwind label %bb.qk, !noalias !16708

bb.qk:                                            ; preds = %.body5.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.baa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16708
  unreachable

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h6c5f2697d690e52cE.exit.i.i": ; preds = %bb.qg, %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !16703
  invoke fastcc void @"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hfa809c7289aadbe1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.bl)
          to label %bb.ql unwind label %bb.ow, !noalias !16621

bb.ql:                                            ; preds = %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h6c5f2697d690e52cE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !16679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0902, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i64 72, i1 false), !noalias !16709
  %i.bab = load i8, ptr %i.lo, align 8, !range !44, !alias.scope !16615, !noalias !16619, !noundef !34
  %i.bac = load i8, ptr %i.lp, align 1, !range !44, !alias.scope !16615, !noalias !16619, !noundef !34
  %i.bad = load ptr, ptr %i.lq, align 8, !alias.scope !16615, !noalias !16619, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16618
  call void @llvm.experimental.noalias.scope.decl(metadata !16710)
  call void @llvm.experimental.noalias.scope.decl(metadata !16711)
  call void @llvm.experimental.noalias.scope.decl(metadata !16712)
  %i.bae = load ptr, ptr %i.ca, align 16, !alias.scope !16713, !noalias !16618, !nonnull !34, !noundef !34 ; 2 uses
  %i.baf = load i64, ptr %i.bae, align 8, !noalias !16714, !noundef !34
  %i.bag = add i64 %i.baf, -1                     ; 2 uses
  store i64 %i.bag, ptr %i.bae, align 8, !noalias !16714
  %i.bah = icmp eq i64 %i.bag, 0
  br i1 %i.bah, label %bb.qm, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i.i"

bb.qm:                                            ; preds = %bb.ql
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i.i" unwind label %bb.qn, !noalias !16621

bb.qn:                                            ; preds = %bb.qm
  %i.bai = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16715)
  %i.baj = load ptr, ptr %i.kr, align 8, !alias.scope !16716, !noalias !16618, !noundef !34 ; 3 uses
  %i.bak = icmp eq ptr %i.baj, null
  br i1 %i.bak, label %.body30.i, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bal = load i64, ptr %i.baj, align 8, !noalias !16717, !noundef !34
  %i.bam = add i64 %i.bal, -1                     ; 2 uses
  store i64 %i.bam, ptr %i.baj, align 8, !noalias !16717
  %i.ban = icmp eq i64 %i.bam, 0
  br i1 %i.ban, label %bb.qp, label %.body30.i

bb.qp:                                            ; preds = %bb.qo
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kr)
          to label %.body30.i unwind label %bb.qs, !noalias !16621

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i.i": ; preds = %bb.qm, %bb.ql
  call void @llvm.experimental.noalias.scope.decl(metadata !16718)
  %i.bao = load ptr, ptr %i.kr, align 8, !alias.scope !16719, !noalias !16618, !noundef !34 ; 3 uses
  %i.bap = icmp eq ptr %i.bao, null
  br i1 %i.bap, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i", label %bb.qq

bb.qq:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i.i"
  %i.baq = load i64, ptr %i.bao, align 8, !noalias !16720, !noundef !34
  %i.bar = add i64 %i.baq, -1                     ; 2 uses
  store i64 %i.bar, ptr %i.bao, align 8, !noalias !16720
  %i.bas = icmp eq i64 %i.bar, 0
  br i1 %i.bas, label %bb.qr, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i"

bb.qr:                                            ; preds = %bb.qq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kr)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i" unwind label %bb.qt, !noalias !16621

bb.qs:                                            ; preds = %bb.qp
  %i.bat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16621
  unreachable

.body30.i:                                        ; preds = %bb.qt, %bb.qp, %bb.qo, %bb.qn, %.body.i557
  %.sroa.09.1.i = phi i1 [ %.sroa.09.0.i, %.body.i557 ], [ false, %bb.qn ], [ false, %bb.qo ], [ false, %bb.qp ], [ false, %bb.qt ]
  %.sroa.010.0.i = phi i1 [ true, %.body.i557 ], [ false, %bb.qn ], [ false, %bb.qo ], [ false, %bb.qp ], [ false, %bb.qt ]
  %.pn13.i = phi { ptr, i32 } [ %.pn.i558, %.body.i557 ], [ %i.bai, %bb.qn ], [ %i.bai, %bb.qo ], [ %i.bai, %bb.qp ], [ %i.bau, %bb.qt ] ; 4 uses
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..RecordDeps$GT$$GT$17h060ec0cbb78784faE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fb) #61
          to label %bb.qx unwind label %bb.qy, !noalias !16621

bb.qt:                                            ; preds = %bb.qr
  %i.bau = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i": ; preds = %bb.qr, %bb.qq, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !16721)
  %i.bav = load i64, ptr %i.fb, align 8, !range !57, !alias.scope !16722, !noalias !16723, !noundef !34
  %i.baw = icmp eq i64 %i.bav, -9223372036854775808
  br i1 %i.baw, label %bb.re, label %bb.qu

bb.qu:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !16724)
  call void @llvm.experimental.noalias.scope.decl(metadata !16725)
  call void @llvm.experimental.noalias.scope.decl(metadata !16726)
  %.val1.i.i.i.i.i = load i64, ptr %i.lf, align 8, !alias.scope !16727, !noalias !16723, !noundef !34 ; 4 uses
  %i.bax = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bax, label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.qu
  %.val.i.i.i.i.i569 = load ptr, ptr %i.le, align 8, !alias.scope !16727, !noalias !16723, !nonnull !34, !noundef !34
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i.i.i)
  %i.bay = shl i64 %.val1.i.i.i.i.i, 3
  %i.baz = and i64 %i.bay, -16                    ; 2 uses
  %i.bba = add i64 %i.baz, 16                     ; 2 uses
  %i.bbb = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.bbc = add i64 %i.bbb, %i.bba                 ; 3 uses
  %i.bbd = icmp uge i64 %i.bbc, %i.bba
  call void @llvm.assume(i1 %i.bbd)
  %i.bbe = icmp ult i64 %i.bbc, 9223372036854775793
  call void @llvm.assume(i1 %i.bbe)
  %i.bbf = sub nuw nsw i64 -16, %i.baz
  %i.bbg = getelementptr inbounds i8, ptr %.val.i.i.i.i.i569, i64 %i.bbf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bbg, i64 noundef %i.bbc, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !16728
  br label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i.i.i.i"

"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i, %bb.qu
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$$GT$17he5d39ffeabcfef1eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.fb)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17ha9c1ed4a08aee054E.exit.i.i" unwind label %bb.qv, !noalias !16621

bb.qv:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i.i.i.i"
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h11571d4eb00e3aabE"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.4967.0..sroa_idx) #61
          to label %.thread1227 unwind label %bb.qw, !noalias !16621

bb.qw:                                            ; preds = %bb.qv
  %i.bbi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16729
  unreachable

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17ha9c1ed4a08aee054E.exit.i.i": ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9d86d8c1c29a0bc3E.exit.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h11571d4eb00e3aabE"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.4967.0..sroa_idx)
          to label %bb.re unwind label %bb.rd

bb.qx:                                            ; preds = %.body30.i
  br i1 %.sroa.09.1.i, label %bb.qz, label %.thread.i

bb.qy:                                            ; preds = %bb.rc, %bb.qz, %.body30.i, %.body28.i, %.body.i557
  %i.bbj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16730
  unreachable

.thread.i:                                        ; preds = %bb.qz, %bb.qx
  br i1 %.sroa.010.0.i, label %bb.ra, label %.thread1227

bb.qz:                                            ; preds = %bb.qx
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hbec3daac903486eaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.fc) #61
          to label %.thread.i unwind label %bb.qy, !noalias !16731

bb.ra:                                            ; preds = %.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16732)
  %i.bbk = load ptr, ptr %i.lq, align 8, !alias.scope !16733, !noalias !16619, !noundef !34 ; 3 uses
  %i.bbl = icmp eq ptr %i.bbk, null
  br i1 %i.bbl, label %.thread1227, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bbm = load i64, ptr %i.bbk, align 8, !noalias !16734, !noundef !34
  %i.bbn = add i64 %i.bbm, -1                     ; 2 uses
  store i64 %i.bbn, ptr %i.bbk, align 8, !noalias !16734
  %i.bbo = icmp eq i64 %i.bbn, 0
  br i1 %i.bbo, label %bb.rc, label %.thread1227

bb.rc:                                            ; preds = %bb.rb
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %.thread1227 unwind label %bb.qy, !noalias !16730

bb.rd:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17ha9c1ed4a08aee054E.exit.i.i"
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1227

.loopexit1340:                                    ; preds = %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", %.lr.ph.i.i.i544, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i"
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i" ], [ %i.apd, %.lr.ph.i.i.i544 ], [ %i.apd, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fb, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !16538
  store i64 %.val1.i543, ptr %.sroa.4967.0..sroa_idx, align 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5968.0..sroa_idx, align 8
  store i64 %.val1.i543, ptr %.sroa.6969.0..sroa_idx, align 8
  br label %bb.nf

bb.re:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit.i", %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17ha9c1ed4a08aee054E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.ru, %bb.re
  %.sroa.13.0 = phi i64 [ %.sroa.13.88.copyload918, %bb.ru ], [ %i.azm, %bb.re ] ; 4 uses
  %.sroa.12.0970 = phi ptr [ %.sroa.12.88.copyload916, %bb.ru ], [ %.sroa.450.0.copyload.i, %bb.re ] ; 6 uses
  %.sroa.9913.0 = phi i64 [ %.sroa.9913.88.copyload914, %bb.ru ], [ %.sroa.049.0.copyload.i, %bb.re ] ; 2 uses
  %.sroa.8909.0 = phi i8 [ %i.aiw, %bb.ru ], [ %i.bac, %bb.re ]
  %.sroa.7906.0 = phi i8 [ %i.aiu, %bb.ru ], [ %i.bab, %bb.re ]
  %.sroa.6903.0 = phi ptr [ %i.aiy, %bb.ru ], [ %i.bad, %bb.re ]
  %.sroa.6119.0.copyload923 = phi i64 [ %.sroa.6119.0.copyload921, %bb.ru ], [ %.sroa.6119.0.copyload924, %bb.re ]
  %.sroa.0170.12 = phi i8 [ 1, %bb.ru ], [ 0, %bb.re ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0902, i64 72, i1 false)
  store ptr %.sroa.6903.0, ptr %.sroa.6903.0..sroa_idx, align 8
  store i8 %.sroa.7906.0, ptr %.sroa.7906.0..sroa_idx, align 8
  store i8 %.sroa.8909.0, ptr %.sroa.8909.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  store i64 %.sroa.9913.0, ptr %i.fg, align 8
  store ptr %.sroa.12.0970, ptr %.sroa.12.88..sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.13.88..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.bbq = load ptr, ptr %i.gz, align 8, !nonnull !34, !align !41, !noundef !34
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 712
  %i.bbs = load ptr, ptr %i.lu, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.bbt = load i64, ptr %i.lv, align 8, !noundef !34 ; 3 uses
  %i.bbu = getelementptr inbounds nuw [72 x i8], ptr %i.bbs, i64 %i.bbt
  call void @llvm.experimental.noalias.scope.decl(metadata !16735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i32 %i.mz, ptr %i.bd, align 4, !noalias !16736
  call void @llvm.experimental.noalias.scope.decl(metadata !16737)
  call void @llvm.experimental.noalias.scope.decl(metadata !16738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !16739
  store ptr %i.bbs, ptr %i.bc, align 8, !alias.scope !16740, !noalias !16741
  store ptr %i.bbu, ptr %.sroa.4.0..sroa_idx.i573, align 8, !alias.scope !16740, !noalias !16741
  store ptr %i.bbr, ptr %.sroa.5.0..sroa_idx.i574, align 8, !alias.scope !16740, !noalias !16741
  store ptr %i.bd, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !16740, !noalias !16741
  call void @llvm.experimental.noalias.scope.decl(metadata !16742)
  call void @llvm.experimental.noalias.scope.decl(metadata !16743)
  call void @llvm.experimental.noalias.scope.decl(metadata !16744)
  call void @llvm.experimental.noalias.scope.decl(metadata !16745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !16746
  %i.bbv = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e589e38d002c33bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %.noexc579 unwind label %.split.thread ; 2 uses

.split.thread:                                    ; preds = %bb.rf
  %i.bbw = landingpad { ptr, i32 }
          cleanup
  br label %.body580.thread

.noexc579:                                        ; preds = %bb.rf
  %i.bbx = extractvalue { i32, ptr } %i.bbv, 1    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bbx, null
  br i1 %.not.i.i.i.i.i, label %bb.rg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i575

bb.rg:                                            ; preds = %.noexc579
  store i64 0, ptr %i.ey, align 8, !alias.scope !16747, !noalias !16748
  store ptr inttoptr (i64 8 to ptr), ptr %i.lx, align 8, !alias.scope !16747, !noalias !16748
  store i64 0, ptr %i.ly, align 8, !alias.scope !16747, !noalias !16748
  br label %bb.rv

bb.rh:                                            ; preds = %bb.ri
  %i.bby = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$17h6166f77af9e28f99E"(ptr nonnull %i.bbx) #61
          to label %.body580.thread unwind label %bb.rn, !noalias !16749

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i575: ; preds = %.noexc579
  %.val10.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !16750, !noalias !16751, !nonnull !34, !noundef !34
  %.val11.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i573, align 8, !alias.scope !16750, !noalias !16751, !nonnull !34, !noundef !34
  %i.bbz = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.bca = ptrtoint ptr %.val10.i.i.i.i.i to i64
  %i.bcb = sub nuw i64 %i.bbz, %i.bca
  %i.bcc = udiv exact i64 %i.bcb, 72
  %i.bcd = call i64 @llvm.umax.i64(i64 %i.bcc, i64 3)
  %.sroa.0.0.i.i.i.i.i.i576 = add nuw nsw i64 %i.bcd, 1 ; 2 uses
  %i.bce = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i576, 4 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !16752
  %i.bcf = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bce, i64 noundef range(i64 1, 9) 8) #53, !noalias !16752 ; 5 uses
  %i.bcg = icmp eq ptr %i.bcf, null
  br i1 %i.bcg, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i575
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @758) #59
          to label %.noexc.i.i.i.i.i unwind label %bb.rh, !noalias !16749

.noexc.i.i.i.i.i:                                 ; preds = %bb.ri
  unreachable

bb.rj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i575
  %i.bch = extractvalue { i32, ptr } %i.bbv, 0
  store i32 %i.bch, ptr %i.bcf, align 8, !noalias !16749
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  store ptr %i.bbx, ptr %i.bci, align 8, !noalias !16749
  store i64 %.sroa.0.0.i.i.i.i.i.i576, ptr %i.bb, align 8, !noalias !16746
  store ptr %i.bcf, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16746
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !16751
  call void @llvm.experimental.noalias.scope.decl(metadata !16753)
  call void @llvm.experimental.noalias.scope.decl(metadata !16754)
  call void @llvm.experimental.noalias.scope.decl(metadata !16755)
  call void @llvm.experimental.noalias.scope.decl(metadata !16756)
  %i.bcj = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e589e38d002c33bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !16749 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %bb.rj
  %i.bck = extractvalue { i32, ptr } %i.bcj, 1    ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.bck, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h92916adc70f03946E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i577

.lr.ph.i.i.i.i.i.i.i577:                          ; preds = %.noexc12.i.i.i.i.i, %.noexc13.i.i.i.i.i
  %i.bcl = phi ptr [ %i.bct, %.noexc13.i.i.i.i.i ], [ %i.bcf, %.noexc12.i.i.i.i.i ]
  %i.bcm = phi i64 [ %i.bcw, %.noexc13.i.i.i.i.i ], [ 1, %.noexc12.i.i.i.i.i ] ; 5 uses
  %i.bcn = phi ptr [ %i.bcy, %.noexc13.i.i.i.i.i ], [ %i.bck, %.noexc12.i.i.i.i.i ] ; 2 uses
  %i.bco = phi { i32, ptr } [ %i.bcx, %.noexc13.i.i.i.i.i ], [ %i.bcj, %.noexc12.i.i.i.i.i ]
  %i.bcp = extractvalue { i32, ptr } %i.bco, 0
  %i.bcq = icmp samesign ult i64 %i.bcm, 576460752303423488
  call void @llvm.assume(i1 %i.bcq)
  %i.bcr = load i64, ptr %i.bb, align 8, !range !42, !alias.scope !16757, !noalias !16758, !noundef !34
  %i.bcs = icmp eq i64 %i.bcm, %i.bcr
  br i1 %i.bcs, label %bb.rl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i_crit_edge.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i577
  %i.bct = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bcl, %.lr.ph.i.i.i.i.i.i.i577 ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw [16 x i8], ptr %i.bct, i64 %i.bcm ; 2 uses
  store i32 %i.bcp, ptr %i.bcu, align 8, !noalias !16759
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 8
  store ptr %i.bcn, ptr %i.bcv, align 8, !noalias !16759
  %i.bcw = add nuw nsw i64 %i.bcm, 1              ; 2 uses
  store i64 %i.bcw, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !16757, !noalias !16758
  %i.bcx = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2e589e38d002c33bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc13.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !16749 ; 2 uses

.noexc13.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i.i.i.i.i.i"
  %i.bcy = extractvalue { i32, ptr } %i.bcx, 1    ; 2 uses
  %.not.i.i.i.i.i.i.i578 = icmp eq ptr %i.bcy, null
  br i1 %.not.i.i.i.i.i.i.i578, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h92916adc70f03946E.exit.i.i.i.i.i.loopexit", label %.lr.ph.i.i.i.i.i.i.i577

bb.rk:                                            ; preds = %bb.rl
  %i.bcz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$17h6166f77af9e28f99E"(ptr nonnull %i.bcn) #61
          to label %.body.i.i.i.i.i unwind label %bb.rm, !noalias !16759

bb.rl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i577
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %i.lw, align 8, !alias.scope !16760, !noalias !16761, !nonnull !34, !noundef !34
  %i.bda = ptrtoint ptr %.val10.i.i.i.i.i.i.i to i64
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !16760, !noalias !16761, !nonnull !34, !noundef !34
  %i.bdb = ptrtoint ptr %.val9.i.i.i.i.i.i.i to i64
  %i.bdc = sub nuw i64 %i.bda, %i.bdb
  %i.bdd = udiv exact i64 %i.bdc, 72
  %i.bde = add nuw nsw i64 %i.bdd, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bcm, i64 noundef range(i64 1, 0) %i.bde, i64 noundef 8, i64 noundef 16)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.rk, !noalias !16762

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.rl
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !16757, !noalias !16758
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i.i.i.i.i.i"

bb.rm:                                            ; preds = %bb.rk
  %i.bdf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !16759
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb6ed25d6bc3098aeE.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.rj
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.rk
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bcz, %bb.rk ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$$GT$17h059b7d1fb13e92dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #61
          to label %.body580.thread unwind label %bb.rn, !noalias !16749

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h92916adc70f03946E.exit.i.i.i.i.i.loopexit": ; preds = %.noexc13.i.i.i.i.i
  %.pre.pre = load ptr, ptr %i.lu, align 8
  %.pre4801.pre = load i64, ptr %i.lv, align 8
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h92916adc70f03946E.exit.i.i.i.i.i"

end_hunk_2
begin_hunk_3_@"_ZN66_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$9set_color17h8001a12eb6084832E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50439)
  %i.ah = getelementptr inbounds nuw i8, ptr %.val35, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !50440, !noalias !50441, !noundef !34 ; 3 uses
  %i.aj = load i64, ptr %.val35, align 8, !range !42, !alias.scope !50440, !noalias !50441, !noundef !34
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = icmp ult i64 %i.ak, 4
  br i1 %i.al, label %bb.j, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit43", !prof !37

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val35, i64 noundef %i.ai, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !50441
  %.pre.i.i.i.i.i42 = load i64, ptr %i.ah, align 8, !alias.scope !50442, !noalias !50441
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit43"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit43": ; preds = %bb.i, %bb.j
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i.i.i.i.i42, %bb.j ] ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val35, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !50442, !noalias !50441, !nonnull !34, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  store i32 1832016667, ptr %i.aq, align 1, !noalias !50442
  %i.ar = add nuw i64 %i.am, 4
  store i64 %i.ar, ptr %i.ah, align 8, !alias.scope !50442, !noalias !50441
  br label %bb.h

bb.k:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit45", %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.at = load i8, ptr %i.as, align 1, !range !44, !noundef !34
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.h
  %.val34 = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50446)
  %i.av = getelementptr inbounds nuw i8, ptr %.val34, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !50447, !noalias !50448, !noundef !34 ; 3 uses
  %i.ax = load i64, ptr %.val34, align 8, !range !42, !alias.scope !50447, !noalias !50448, !noundef !34
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = icmp ult i64 %i.ay, 4
  br i1 %i.az, label %bb.m, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit45", !prof !37

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val34, i64 noundef %i.aw, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !50448
  %.pre.i.i.i.i.i44 = load i64, ptr %i.av, align 8, !alias.scope !50449, !noalias !50448
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit45"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit45": ; preds = %bb.l, %bb.m
  %i.ba = phi i64 [ %i.aw, %bb.l ], [ %.pre.i.i.i.i.i44, %bb.m ] ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !50449, !noalias !50448, !nonnull !34, !noundef !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  store i32 1832082203, ptr %i.be, align 1, !noalias !50449
  %i.bf = add nuw i64 %i.ba, 4
  store i64 %i.bf, ptr %i.av, align 8, !alias.scope !50449, !noalias !50448
  br label %bb.k

bb.n:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit47", %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !range !44, !noundef !34
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %bb.q

bb.o:                                             ; preds = %bb.k
  %.val33 = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50453)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val33, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !50454, !noalias !50455, !noundef !34 ; 3 uses
  %i.bl = load i64, ptr %.val33, align 8, !range !42, !alias.scope !50454, !noalias !50455, !noundef !34
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ult i64 %i.bm, 4
  br i1 %i.bn, label %bb.p, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit47", !prof !37

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val33, i64 noundef %i.bk, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !50455
  %.pre.i.i.i.i.i46 = load i64, ptr %i.bj, align 8, !alias.scope !50456, !noalias !50455
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit47"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit47": ; preds = %bb.o, %bb.p
  %i.bo = phi i64 [ %i.bk, %bb.o ], [ %.pre.i.i.i.i.i46, %bb.p ] ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !50456, !noalias !50455, !nonnull !34, !noundef !34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i32 1832147739, ptr %i.bs, align 1, !noalias !50456
  %i.bt = add nuw i64 %i.bo, 4
  store i64 %i.bt, ptr %i.bj, align 8, !alias.scope !50456, !noalias !50455
  br label %bb.n

bb.q:                                             ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit49", %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !range !142, !noundef !34
  %.not = icmp eq i8 %i.bv, 11
  br i1 %.not, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.n
  %.val = load ptr, ptr %0, align 8, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50460)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !50461, !noalias !50462, !noundef !34 ; 3 uses
  %i.by = load i64, ptr %.val, align 8, !range !42, !alias.scope !50461, !noalias !50462, !noundef !34
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = icmp ult i64 %i.bz, 4
  br i1 %i.ca, label %bb.s, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit49", !prof !37

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.bx, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !50462
  %.pre.i.i.i.i.i48 = load i64, ptr %i.bw, align 8, !alias.scope !50463, !noalias !50462
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit49"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h9d4d52f603167eabE.exit49": ; preds = %bb.r, %bb.s
  %i.cb = phi i64 [ %i.bx, %bb.r ], [ %.pre.i.i.i.i.i48, %bb.s ] ; 3 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !50463, !noalias !50462, !nonnull !34, !noundef !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb
  store i32 1832475419, ptr %i.cf, align 1, !noalias !50463
  %i.cg = add nuw i64 %i.cb, 4
  store i64 %i.cg, ptr %i.bw, align 8, !alias.scope !50463, !noalias !50462
  br label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !range !44, !noundef !34
  %i.cj = trunc nuw i8 %i.ci to i1
  %.val39 = load ptr, ptr %0, align 8
  tail call fastcc void @"_ZN9termcolor13Ansi$LT$W$GT$11write_color17h63a6373f334d55e0E"(ptr %.val39, i1 noundef zeroext true, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.bu, i1 noundef zeroext %i.cj)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !range !142, !noundef !34
  %.not32 = icmp eq i8 %i.cl, 11
  br i1 %.not32, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !range !44, !noundef !34
  %i.co = trunc nuw i8 %i.cn to i1
  %.val38 = load ptr, ptr %0, align 8
  tail call fastcc void @"_ZN9termcolor13Ansi$LT$W$GT$11write_color17h63a6373f334d55e0E"(ptr %.val38, i1 noundef zeroext false, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.ck, i1 noundef zeroext %i.co)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h31727cb9cf6fc20dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50473
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !50473
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !50473
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h527c7c2eb151982cE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50474
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #53, !noalias !50474 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59, !noalias !50473
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !50473
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !50473
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h527c7c2eb151982cE.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50473
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1403)
          to label %bb.e unwind label %bb.f, !noalias !50475

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !50475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50473
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h527c7c2eb151982cE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !50476, !noalias !50473
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5566d11dfcc7545bE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #61, !noalias !50475
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h527c7c2eb151982cE.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i"
  %1 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %1, align 8, !noalias !50473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !50477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50473
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94fe9eb2c9642701E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50491
  %i.e = mul i64 %.16.val, 48                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.d, align 8, !noalias !50491
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !50491
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4a46ed6c7d54167aE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50492
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #53, !noalias !50492 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59, !noalias !50491
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.d, align 8, !noalias !50491
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !50491
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.16.val
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i"
  %.sroa.013.027.i = phi ptr [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ], [ %i.r, %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i ] ; 4 uses
  %.sroa.7.026.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ], [ %i.s, %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ], [ %i.o, %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i ]
  %i.o = add nsw i64 %.sroa.10.025.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.027.i, %i.n
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4a46ed6c7d54167aE.exit", label %bb.f

bb.e:                                             ; preds = %bb.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 48
  %i.s = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50494)
  %.val.i.i = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !50495, !noalias !50496, !nonnull !34, !noundef !34 ; 4 uses
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = and i64 %i.t, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !47

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i unwind label %bb.e, !noalias !50491

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = load i64, ptr %.val.i.i, align 8, !noalias !50497, !noundef !34 ; 3 uses
  %i.w = and i64 %i.v, 72057594037927935          ; 3 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = and i64 %i.v, 1080863910568919040
  %i.aa = icmp ult i64 %i.v, 864691128455135232
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = or i64 %i.y, %i.z
  store i64 %i.ab, ptr %.val.i.i, align 8, !noalias !50497
  %i.ac = icmp eq i64 %i.w, 72057594037927935
  br i1 %i.ac, label %bb.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !37

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50497
  store ptr @1344, ptr %i.b, align 8, !noalias !50497
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !50497
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ae, align 8, !noalias !50497
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !50497
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !50497
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc12.i unwind label %bb.e, !noalias !50491

.noexc12.i:                                       ; preds = %bb.i
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.h, %bb.f
  store ptr %.val.i.i, ptr %i.c, align 8, !alias.scope !50493, !noalias !50498
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i unwind label %bb.j, !noalias !50499

bb.j:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #61
          to label %bb.m unwind label %bb.k, !noalias !50498

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50497
  unreachable

_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.7.026.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !50491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50491
  %i.al = icmp eq i64 %i.o, 0
  br i1 %i.al, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4a46ed6c7d54167aE.exit", label %bb.d

bb.l:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50491
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.ai, %bb.j ]
  store i64 %.sroa.7.026.i, ptr %i.m, align 8, !alias.scope !50500, !noalias !50491
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hbec3daac903486eaE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #61
          to label %bb.n unwind label %bb.l, !noalias !50491

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4a46ed6c7d54167aE.exit": ; preds = %bb.d, %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i"
  %2 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i" ], [ %i.m, %_ZN4core5clone5Clone5clone17he80a2c009798ed22E.exit.i ], [ %i.m, %bb.d ]
  store i64 %.16.val, ptr %2, align 8, !noalias !50491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !50490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50491
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha41514ac4f48693dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.018.i = alloca [152 x i8], align 8       ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50514
  %i.f = mul i64 %.16.val, 160                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 57646075230342348
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.h = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.h)
  store i64 0, ptr %i.e, align 8, !noalias !50514
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !50514
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50515
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #53, !noalias !50515 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59, !noalias !50514
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.e, align 8, !noalias !50514
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !50514
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i", %bb.k
  %.sroa.013.033.i = phi ptr [ %i.s, %bb.k ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.t, %bb.k ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.p, %bb.k ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i" ]
  %i.p = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.033.i, %i.o
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit", label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 160
  %i.t = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50517
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !50518, !noalias !50519, !nonnull !34, !noundef !34 ; 5 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i unwind label %bb.d, !noalias !50520

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %.val.i.i, align 8, !noalias !50521, !noundef !34 ; 3 uses
  %i.y = and i64 %i.x, 72057594037927935          ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = and i64 %i.x, 1080863910568919040
  %i.ac = icmp ult i64 %i.x, 864691128455135232
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = or i64 %i.aa, %i.ab
  store i64 %i.ad, ptr %.val.i.i, align 8, !noalias !50521
  %i.ae = icmp eq i64 %i.y, 72057594037927935
  br i1 %i.ae, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !37

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50517
  store ptr @1344, ptr %i.b, align 8, !noalias !50517
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !50517
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !50517
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !50517
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !50517
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc12.i unwind label %bb.d, !noalias !50520

.noexc12.i:                                       ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.g, %bb.e
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !50517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50517
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.013.033.i)
          to label %bb.k unwind label %bb.i, !noalias !50519

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #61
          to label %bb.m unwind label %bb.j, !noalias !50519

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50519
  unreachable

bb.k:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !50514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50517
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.7.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, i64 152, i1 false), !noalias !50520
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr %.val.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !50520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit", label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !50520
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aj, %bb.i ]
  store i64 %.sroa.7.032.i, ptr %i.n, align 8, !alias.scope !50522, !noalias !50514
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #61
          to label %bb.n unwind label %bb.l, !noalias !50520

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h1003fad5e0054cf2E.exit": ; preds = %.lr.ph.i, %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i"
  %1 = phi ptr [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i" ], [ %i.n, %bb.k ], [ %i.n, %.lr.ph.i ]
  store i64 %.16.val, ptr %1, align 8, !noalias !50514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !50513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50514
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_json..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17hb79b7bd8e67c587eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !34 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50543)
  %i.d = icmp slt i64 %.val1, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50544
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #53, !noalias !50544 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !50545)
  call void @llvm.experimental.noalias.scope.decl(metadata !50546)
  %.val.i.i = load i64, ptr %0, align 8, !range !42, !alias.scope !50547, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50547
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !50548
  store i64 %.val1, ptr %i.a, align 8, !alias.scope !50549
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !50549
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !50549
  %i.j = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !50550)
  call void @llvm.experimental.noalias.scope.decl(metadata !50551)
  %.val.i.i2 = load i64, ptr %0, align 8, !range !42, !alias.scope !50552, !noundef !34 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i2, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50552
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit4": ; preds = %bb.g, %bb.h
  ret ptr %i.j

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN67_$LT$serde_yaml..error..Error$u20$as$u20$serde_core..ser..Error$GT$6custom17h2da330649a01136eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.c, align 8, !noundef !34 ; 7 uses
  %i.d = icmp slt i64 %.val3, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val3, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50574
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val3, i64 noundef range(i64 1, 9) 1) #53, !noalias !50574 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.n, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !50575)
  call void @llvm.experimental.noalias.scope.decl(metadata !50576)
  %.val.i.i = load i64, ptr %0, align 8, !range !42, !alias.scope !50577, !noundef !34 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit", label %bb.e

bb.e:                                             ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val3, i1 false), !noalias !50578
  store i64 %.val3, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -9223372036854775808, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 8, ptr %i.k, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50579
  %i.l = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !50579 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.j, !prof !45

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #59
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_yaml..error..ErrorImpl$GT$17heb260429b00b558fE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #61
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50581)
  %.val.i.i5 = load i64, ptr %0, align 8, !range !42, !alias.scope !50582, !noundef !34 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i5, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50582
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit7": ; preds = %bb.j, %bb.k
  ret ptr %i.l

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfedeefc8cce81a05E.exit": ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50629)
  %i.a = load i64, ptr %0, align 8, !range !46, !alias.scope !50628, !noalias !50629, !noundef !34 ; 5 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 9          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !46, !alias.scope !50629, !noalias !50628, !noundef !34 ; 4 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
end_hunk_3
begin_hunk_4_@"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E":bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.051.0.copyload52.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.thread.i.i.i", label %bb.q

bb.q:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.i.i.i"
  store i64 %.sroa.051.0.copyload52.i.i.i, ptr %i.g, align 8, !noalias !50733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.753.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.753.i.i.i, i64 16, i1 false), !noalias !50733
  store i64 %.sroa.0.0.i2.i19.i.i.i, ptr %.sroa.755.0..sroa_idx.i.i.i, align 8, !noalias !50733
  store ptr %.sroa.6.0.i.i18.i.i.i, ptr %.sroa.856.0..sroa_idx.i.i.i, align 8, !noalias !50733
  store i64 %.sroa.7.0.i.i17.i.i.i, ptr %.sroa.957.0..sroa_idx.i.i.i, align 8, !noalias !50733
  call void @llvm.experimental.noalias.scope.decl(metadata !50740)
  %i.bd = load i64, ptr %i.ab, align 8, !alias.scope !50741, !noalias !50742, !noundef !34 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1                   ; 2 uses
  %i.bf = load ptr, ptr %i.h, align 8, !alias.scope !50741, !noalias !50742, !nonnull !34
  %.sink10.i.i.i.i.i = select i1 %i.be, ptr %i.bf, ptr %i.h
  %.sink9.i.i.i.i.i = select i1 %i.be, ptr %i.ac, ptr %i.ab ; 2 uses
  %.sink.i.i28.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.bg = load i64, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !50743, !noalias !50744, !noundef !34 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %.sink.i.i28.i.i.i
  br i1 %i.bh, label %bb.s, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hc98c0e9d5107b4c8E.exit.i.i.i", !prof !37

bb.r:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..label..ContractDiagnostic$GT$17h04c2d4abd61a1251E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g) #61, !noalias !50745
  br label %.body

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h18a39c3db9ef976cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %bb.t unwind label %bb.r, !noalias !50744

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.h, align 8, !alias.scope !50743, !noalias !50744, !nonnull !34, !noundef !34
  %.pre.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !50743, !noalias !50744
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hc98c0e9d5107b4c8E.exit.i.i.i"

"_ZN8smallvec17SmallVec$LT$A$GT$4push17hc98c0e9d5107b4c8E.exit.i.i.i": ; preds = %bb.t, %bb.q
  %i.bk = phi i64 [ %.pre.i.i.i.i, %bb.t ], [ %i.bg, %bb.q ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ac, %bb.t ], [ %.sink9.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.0.0.i29.i.i.i = phi ptr [ %i.bj, %bb.t ], [ %.sink10.i.i.i.i.i, %bb.q ]
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i29.i.i.i, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !50725
  %i.bm = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !50743, !noalias !50744, !noundef !34
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !50743, !noalias !50744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.753.i.i.i)
  %i.bo = icmp eq ptr %i.ax, %i.aa
  br i1 %i.bo, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.thread.i.i.i", label %bb.l

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.thread.i.i.i": ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hc98c0e9d5107b4c8E.exit.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.i.i.i", %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753.i.i.i)
  br label %bb.x

bb.u:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.i.i.i": ; preds = %bb.i
  %.sroa.040.0.copyload41.i.i.i = load i64, ptr %i.f, align 8, !noalias !50746 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.0..sroa_idx43.i.i.i, i64 16, i1 false), !noalias !50733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50732
  %.not2.i.i.i = icmp eq i64 %.sroa.040.0.copyload41.i.i.i, -9223372036854775808
  br i1 %.not2.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.thread.i.i.i", label %bb.v

bb.v:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.i.i.i"
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %.sink10.i.i.i.i, i64 %.sroa.7.084.i.i.i ; 5 uses
  store i64 %.sroa.040.0.copyload41.i.i.i, ptr %i.bq, align 8, !noalias !50725
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i.i.i, i64 16, i1 false), !noalias !50725
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.0.0.i2.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !50725
  %.sroa.447.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i, align 8, !noalias !50725
  %.sroa.548.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.548.0..sroa_idx.i.i.i, align 8, !noalias !50725
  %i.br = add nuw i64 %.sroa.7.084.i.i.i, 1       ; 3 uses
  %i.bs = icmp ugt i64 %i.al, %i.br
  br i1 %i.bs, label %bb.f, label %._crit_edge.i.i.i

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.i.i.i", %bb.f
  store i64 %.sroa.7.084.i.i.i, ptr %.sink9.i.i.i.i, align 8, !alias.scope !50726, !noalias !50725
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.k, %bb.j, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bp, %bb.u ], [ %i.aw, %bb.k ], [ %i.aw, %bb.j ], [ %i.aw, %bb.j ]
  store i64 %.sroa.7.084.i.i.i, ptr %.sink9.i.i.i.i, align 8, !alias.scope !50726, !noalias !50725
  br label %.body

.loopexit.i.i:                                    ; preds = %bb.m
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i:                           ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hdd3d7ebd37df7eacE.exit.thread.i.i.i", %bb.e, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hdd3d7ebd37df7eacE.exit.i.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit.thread.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce3db26f61fc449dE.exit27.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !50725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !50725
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !34
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !34 ; 6 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.by, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.z
    i64 0, label %bb.aa
  ], !prof !47

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc13 unwind label %bb.ac

.noexc13:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bz = load i64, ptr %i.bw, align 8, !noundef !34 ; 3 uses
  %i.ca = and i64 %i.bz, 72057594037927935        ; 3 uses
  %i.cb = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  %i.cd = and i64 %i.bz, 1080863910568919040
  %i.ce = icmp ult i64 %i.bz, 864691128455135232
  call void @llvm.assume(i1 %i.ce)
  %i.cf = or i64 %i.cc, %i.cd
  store i64 %i.cf, ptr %i.bw, align 8
  %i.cg = icmp eq i64 %i.ca, 72057594037927935
  br i1 %i.cg, label %bb.ab, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !37

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ck, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc14 unwind label %bb.ac

.noexc14:                                         ; preds = %bb.ab
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.aa, %bb.y, %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cm = load i32, ptr %i.cl, align 8, !noundef !34
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.co = load i8, ptr %i.cn, align 4, !range !44, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !noundef !34 ; 6 uses
  %.not5 = icmp eq ptr %i.cq, null                ; 2 uses
  br i1 %.not5, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %.val.i15 = load i64, ptr %i.cq, align 8, !noundef !34 ; 2 uses
  %i.cs = icmp ne i64 %.val.i15, 0
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i15, 1                    ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.ae, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit, !prof !37

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit: ; preds = %bb.ad, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !34
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cy = load i8, ptr %i.cx, align 8, !noundef !34
  store ptr %i.cq, ptr %i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.cw, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %i.cy, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.db, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.dc, align 8, !noundef !34 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50747)
  %i.dd = shl i64 %.val12, 3                      ; 4 uses
  %i.de = icmp ugt i64 %.val12, 2305843009213693951
  %i.df = icmp ugt i64 %i.dd, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.de, %i.df
  br i1 %or.cond.i.i.i.i.i, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i", label %bb.af

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.dh = icmp eq i64 %.val12, 0
  call void @llvm.assume(i1 %i.dh)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit"

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50748
  %i.di = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dd, i64 noundef range(i64 1, 9) 4) #53, !noalias !50748 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ag, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"

bb.ag:                                            ; preds = %bb.af, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.af ], [ 0, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd67b40b7baf7ed9fE.exit ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59
          to label %.noexc16 unwind label %bb.ai

.noexc16:                                         ; preds = %bb.ag
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i": ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.val11, i64 %.val12
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"
  %.sroa.016.025.i.i = phi ptr [ %i.do, %bb.ah ], [ %.val11, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 4 uses
  %.sroa.7.024.i.i = phi i64 [ %i.dn, %bb.ah ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 2 uses
  %.sroa.10.023.i.i = phi i64 [ %i.dm, %bb.ah ], [ %.val12, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ]
  %i.dl = icmp eq ptr %.sroa.016.025.i.i, %i.dk
  br i1 %i.dl, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit", label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.dm = add nsw i64 %.sroa.10.023.i.i, -1       ; 2 uses
  %i.dn = add nuw nsw i64 %.sroa.7.024.i.i, 1
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i.i, i64 8
  %.val14.i.i = load i32, ptr %.sroa.016.025.i.i, align 4, !alias.scope !50747, !noalias !50749, !noundef !34
  %i.dp = getelementptr i8, ptr %.sroa.016.025.i.i, i64 4
  %.val15.i.i = load i8, ptr %i.dp, align 4, !range !44, !alias.scope !50747, !noalias !50749, !noundef !34
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.sroa.7.024.i.i ; 2 uses
  store i32 %.val14.i.i, ptr %i.dq, align 4, !noalias !50750
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i8 %.val15.i.i, ptr %i.dr, align 4, !noalias !50750
  %i.ds = icmp eq i64 %i.dm, 0
  br i1 %i.ds, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit", label %.lr.ph.i.i

"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h0db19bf54a0ad7e7E.exit": ; preds = %bb.aj, %bb.ai, %bb.ak
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h89a008a6f6645da0E"(ptr %i.bw) #61
          to label %.body unwind label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br i1 %.not5, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h0db19bf54a0ad7e7E.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = load i64, ptr %i.cq, align 8, !noalias !50751, !noundef !34
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.cq, align 8, !noalias !50751
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ak, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h0db19bf54a0ad7e7E.exit"

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6d89f56da8e877cbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h0db19bf54a0ad7e7E.exit" unwind label %bb.an

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit": ; preds = %bb.ah, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i"
  %.sroa.10.0.i34.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i" ], [ %i.di, %.lr.ph.i.i ], [ %i.di, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dy = load i32, ptr %i.dx, align 8, !range !95, !noundef !34 ; 2 uses
  %.not9 = icmp eq i32 %i.dy, 3
  br i1 %.not9, label %bb.am, label %bb.al

bb.al:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7b12982df43b7de5E.exit", %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.bu, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bw, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.cm, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.co, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 %.val12, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i34.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val12, ptr %.sroa.519.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.dy, ptr %i.eg, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.an:                                            ; preds = %bb.ak, %bb.c, %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h0db19bf54a0ad7e7E.exit"
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h265ec031499308fbE.exit": ; preds = %.body, %bb.c
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$13set_hyperlink17h3381afc5e72e077cE"(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$14is_synchronous17h7e3f411edb805e49E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$14supports_color17h372de2f24bfc4a82E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$19supports_hyperlinks17hc8557fe78f6cde20E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$5reset17h89b2ab7640eee704E"(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZN69_$LT$termcolor..NoColor$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$9set_color17h6e2ac48ce576d3f4E"(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias readonly align 1 captures(none) %1) unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN6base646engine6Engine6encode17h27116df3fd15da47E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50776)
  %.val.i = load i8, ptr %1, align 1, !range !44, !alias.scope !50776, !noalias !50777, !noundef !34
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %i.d = urem i64 %3, 3                           ; 2 uses
  %i.e = udiv i64 %3, 3
  %i.f = shl i64 %i.e, 2                          ; 4 uses
  %i.g = icmp ugt i64 %3, -4611686018427387905
  br i1 %i.g, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.d, 1
  %..i.i = select i1 %i.h, i64 2, i64 3
  %i.i = or disjoint i64 %..i.i, %i.f
  br label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %i.f, -4
  %i.j = add nuw i64 %i.f, 4
  br i1 %.not.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, !prof !56

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.d, %bb.b
  %.sroa.7.1.i35.i = phi i64 [ %i.j, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i ], [ %i.i, %bb.d ], [ %i.f, %bb.b ] ; 16 uses
  %i.k = icmp slt i64 %.sroa.7.1.i35.i, 0
  br i1 %i.k, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %i.l = icmp eq i64 %.sroa.7.1.i35.i, 0          ; 3 uses
  br i1 %i.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !50778
  %i.m = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50778 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i"

bb.g:                                             ; preds = %bb.e, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.7.1.i35.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @887) #59, !noalias !50779
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i": ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 2 uses
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 6 uses
  %i.q = invoke noundef i64 @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_encode17hb38d5503517c65f5E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %.noexc.i unwind label %bb.s, !noalias !50775 ; 6 uses

.noexc.i:                                         ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8d01db682bd326ffE.exit.i"
  br i1 %i.c, label %bb.h, label %_ZN6base646encode19encode_with_padding17h9d617e5b3958ce23E.exit.i

bb.h:                                             ; preds = %.noexc.i
  %i.r = icmp ugt i64 %i.q, %.sroa.7.1.i35.i
  br i1 %i.r, label %bb.j, label %bb.i, !prof !37

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw nsw i64 %.sroa.7.1.i35.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.u = invoke noundef i64 @_ZN6base646encode11add_padding17h4b530db523f4f20eE(i64 noundef %i.q, ptr noalias noundef nonnull align 1 %i.t, i64 noundef %i.s)
          to label %.noexc5.i unwind label %bb.s, !noalias !50775

.noexc5.i:                                        ; preds = %bb.i
  %i.v = xor i64 %i.q, -1
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %_ZN6base646encode19encode_with_padding17h9d617e5b3958ce23E.exit.i, !prof !50780

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.q, i64 noundef %.sroa.7.1.i35.i, i64 noundef %.sroa.7.1.i35.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @879) #59
          to label %.noexc6.i unwind label %bb.s, !noalias !50775

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc5.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @876, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @878) #59
          to label %.noexc7.i unwind label %bb.s, !noalias !50775

.noexc7.i:                                        ; preds = %bb.k
  unreachable

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @885, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @886) #59, !noalias !50781
  unreachable

_ZN6base646encode19encode_with_padding17h9d617e5b3958ce23E.exit.i: ; preds = %.noexc5.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50782
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %bb.n unwind label %bb.l, !noalias !50783

bb.l:                                             ; preds = %_ZN6base646encode19encode_with_padding17h9d617e5b3958ce23E.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.l, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h200f009e49ec7f3bE.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !50784
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h200f009e49ec7f3bE.exit.i"

end_hunk_4
begin_hunk_5_@"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E":bb.a
  %..i38 = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 2)
  switch i64 %..i38, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit40" [
    i64 2, label %bb.m
    i64 0, label %bb.n
  ], !prof !47

bb.m:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc unwind label %bb.ds

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.ch = load i64, ptr %.val30, align 8, !noundef !34 ; 3 uses
  %i.ci = and i64 %i.ch, 72057594037927935        ; 3 uses
  %i.cj = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  %i.cl = and i64 %i.ch, 1080863910568919040
  %i.cm = icmp ult i64 %i.ch, 864691128455135232
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = or i64 %i.ck, %i.cl
  store i64 %i.cn, ptr %.val30, align 8
  %i.co = icmp eq i64 %i.ci, 72057594037927935
  br i1 %i.co, label %bb.o, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit40", !prof !37

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @1344, ptr %i.x, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.cs, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc39 unwind label %bb.ds

.noexc39:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val34 = load ptr, ptr %i.cv, align 8, !nonnull !34, !noundef !34
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val35 = load i64, ptr %i.cw, align 8, !noundef !34 ; 5 uses
  %i.cx = mul i64 %.val35, 20                     ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val35, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.p
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h65560f9781f9876cE.exit", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63408
  %i.cz = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cx, i64 noundef range(i64 1, 9) 4) #53, !noalias !63408 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.r, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h65560f9781f9876cE.exit"

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.q ], [ 0, %bb.p ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59, !noalias !63409
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h65560f9781f9876cE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.q
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.cz, %bb.q ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val35, %bb.q ] ; 4 uses
  %i.db = icmp samesign ule i64 %.val35, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.db)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val34, i64 %i.cx, i1 false), !noalias !63410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1306)
          to label %bb.dv unwind label %bb.dt

bb.s:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1306)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load i32, ptr %i.df, align 8, !noundef !34
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.de, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.dg, ptr %i.dj, align 8
  store i64 27, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.cs

bb.t:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val29 = load ptr, ptr %i.dk, align 8, !nonnull !34, !noundef !34 ; 5 uses
  %i.dm = ptrtoint ptr %.val29 to i64
  %i.dn = and i64 %i.dm, 3
  %..i41 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 2)
  switch i64 %..i41, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit42" [
    i64 2, label %bb.u
    i64 0, label %bb.v
  ], !prof !47

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.do = load i64, ptr %.val29, align 8, !noundef !34 ; 3 uses
  %i.dp = and i64 %i.do, 72057594037927935        ; 3 uses
  %i.dq = icmp ne i64 %i.dp, 0
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  %i.ds = and i64 %i.do, 1080863910568919040
  %i.dt = icmp ult i64 %i.do, 864691128455135232
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = or i64 %i.dr, %i.ds
  store i64 %i.du, ptr %.val29, align 8
  %i.dv = icmp eq i64 %i.dp, 72057594037927935
  br i1 %i.dv, label %bb.w, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit42", !prof !37

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @1344, ptr %i.w, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %i.dz, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit42": ; preds = %bb.t, %bb.v
  store ptr %.val29, ptr %i.ah, align 8
  %.val28 = load ptr, ptr %i.dl, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.ea = ptrtoint ptr %.val28 to i64
  %i.eb = and i64 %i.ea, 3
  %..i43 = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 2)
  switch i64 %..i43, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit46" [
    i64 2, label %bb.x
    i64 0, label %bb.y
  ], !prof !47

bb.x:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit42"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc44 unwind label %bb.dw

.noexc44:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit42"
  %i.ec = load i64, ptr %.val28, align 8, !noundef !34 ; 3 uses
  %i.ed = and i64 %i.ec, 72057594037927935        ; 3 uses
  %i.ee = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  %i.eg = and i64 %i.ec, 1080863910568919040
  %i.eh = icmp ult i64 %i.ec, 864691128455135232
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = or i64 %i.ef, %i.eg
  store i64 %i.ei, ptr %.val28, align 8
  %i.ej = icmp eq i64 %i.ed, 72057594037927935
  br i1 %i.ej, label %bb.z, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit46", !prof !37

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @1344, ptr %i.v, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.en, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc45 unwind label %bb.dw

.noexc45:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  br label %bb.cs

bb.ab:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val36 = load ptr, ptr %i.eo, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val37 = load i64, ptr %i.ep, align 8, !noundef !34 ; 7 uses
  %i.eq = shl i64 %.val37, 5                      ; 4 uses
  %i.er = icmp ugt i64 %.val37, 576460752303423487
  %i.es = icmp ugt i64 %i.eq, 9223372036854775804
  %or.cond.i.i.i.i.i47 = or i1 %i.er, %i.es
  br i1 %or.cond.i.i.i.i.i47, label %bb.ad, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i48, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i48: ; preds = %bb.ab
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i", label %bb.ac

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i48
  %i.eu = icmp eq i64 %.val37, 0
  tail call void @llvm.assume(i1 %i.eu)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit"

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63411
  %i.ev = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.eq, i64 noundef range(i64 1, 9) 4) #53, !noalias !63411 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ad, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.4.0.ph.i.i.i50 = phi i64 [ 4, %bb.ac ], [ 0, %bb.ab ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i50, i64 %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59, !noalias !63412
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i": ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %.val36, i64 %.val37
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"
  %.sroa.014.023.i.i = phi ptr [ %i.fb, %bb.ae ], [ %.val36, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.fa, %bb.ae ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.ez, %bb.ae ], [ %.val37, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ]
  %i.ey = icmp eq ptr %.sroa.014.023.i.i, %i.ex
  br i1 %i.ey, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit", label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.ez = add nsw i64 %.sroa.10.021.i.i, -1       ; 2 uses
  %i.fa = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 32
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %.sroa.7.022.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fc, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.014.023.i.i, i64 32, i1 false), !noalias !63413
  %i.fd = icmp eq i64 %i.ez, 0
  br i1 %i.fd, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit", label %.lr.ph.i.i

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hffba02b8d8fb1564E.exit": ; preds = %.lr.ph.i.i, %bb.ae, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i"
  %.sroa.10.0.i32.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i" ], [ %i.ev, %bb.ae ], [ %i.ev, %.lr.ph.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !noundef !34
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val37, ptr %i.fg, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i32.i.i, ptr %.sroa.4125.0..sroa_idx, align 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val37, ptr %.sroa.5126.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ff, ptr %i.fh, align 8
  store i64 30, ptr %0, align 8
  br label %bb.cs

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63414)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load ptr, ptr %i.fi, align 8, !alias.scope !63414, !noalias !63415, !nonnull !34, !noundef !34 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.fj, align 8, !alias.scope !63414, !noalias !63415, !noundef !34 ; 8 uses
  %i.fk = shl i64 %.val3.i, 4                     ; 5 uses
  %i.fl = icmp ugt i64 %.val3.i, 1152921504606846975
  %i.fm = icmp ugt i64 %i.fk, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.fl, %i.fm
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ah, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.af
  %i.fn = icmp eq i64 %i.fk, 0
  br i1 %i.fn, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i", label %bb.ag

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.fo = icmp eq i64 %.val3.i, 0
  tail call void @llvm.assume(i1 %i.fo)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"

bb.ag:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63416
  %i.fp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fk, i64 noundef range(i64 1, 9) 8) #53, !noalias !63416 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ah, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ag ], [ 0, %bb.af ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59, !noalias !63417
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i": ; preds = %bb.ag
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val2.i, i64 %.val3.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i"
  %.sroa.014.023.i.i.i = phi ptr [ %i.fv, %bb.ai ], [ %.val2.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.fu, %bb.ai ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.ft, %bb.ai ], [ %.val3.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i.i" ]
  %i.fs = icmp eq ptr %.sroa.014.023.i.i.i, %i.fr
  br i1 %i.fs, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i", label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.ft = add nsw i64 %.sroa.10.021.i.i.i, -1     ; 2 uses
  %i.fu = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i, i64 16
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %.sroa.7.022.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.023.i.i.i, i64 16, i1 false), !noalias !63418
  %i.fx = icmp eq i64 %i.ft, 0
  br i1 %i.fx, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i", label %.lr.ph.i.i.i

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i": ; preds = %bb.ai, %.lr.ph.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i"
  %.sroa.10.0.i32.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i.i" ], [ %i.fp, %.lr.ph.i.i.i ], [ %i.fp, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !63419
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63421)
  %i.fz = load i64, ptr %i.fy, align 8, !range !94, !alias.scope !63422, !noalias !63423, !noundef !34 ; 3 uses
  %i.ga = icmp ne i64 %i.fz, -9223372036854775803
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = add nsw i64 %i.fz, 9223372036854775807
  %i.gc = icmp ugt i64 %i.fz, -9223372036854775808
  %i.gd = select i1 %i.gc, i64 %i.gb, i64 4
  switch i64 %i.gd, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.an
    i64 2, label %bb.aq
    i64 3, label %bb.at
    i64 4, label %bb.aw
    i64 5, label %bb.az
    i64 6, label %bb.bc
  ]

bb.aj:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  unreachable

bb.ak:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gg = load i8, ptr %i.gf, align 8, !range !84, !alias.scope !63422, !noalias !63423, !noundef !34
  %.val5.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !63422, !noalias !63423, !nonnull !34, !noundef !34 ; 4 uses
  %i.gh = ptrtoint ptr %.val5.i.i to i64
  %i.gi = and i64 %i.gh, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.al
  ], !prof !47

bb.al:                                            ; preds = %bb.ak
  %i.gj = load i64, ptr %.val5.i.i, align 8, !noalias !63424, !noundef !34 ; 3 uses
  %i.gk = and i64 %i.gj, 72057594037927935        ; 3 uses
  %i.gl = icmp ne i64 %i.gk, 0
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  %i.gn = and i64 %i.gj, 1080863910568919040
  %i.go = icmp ult i64 %i.gj, 864691128455135232
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = or i64 %i.gm, %i.gn
  store i64 %i.gp, ptr %.val5.i.i, align 8, !noalias !63424
  %i.gq = icmp eq i64 %i.gk, 72057594037927935
  br i1 %i.gq, label %bb.am, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !37

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !63424
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.al, %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.gg, ptr %i.gr, align 8, !alias.scope !63420, !noalias !63425
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val5.i.i, ptr %i.gs, align 8, !alias.scope !63420, !noalias !63425
  store i64 -9223372036854775807, ptr %i.u, align 8, !alias.scope !63420, !noalias !63425
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.an:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !63422, !noalias !63423, !nonnull !34, !noundef !34 ; 4 uses
  %i.gu = ptrtoint ptr %.val4.i.i to i64
  %i.gv = and i64 %i.gu, 3
  %..i6.i.i = tail call i64 @llvm.umin.i64(i64 %i.gv, i64 2)
  switch i64 %..i6.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ao
  ], !prof !47

bb.ao:                                            ; preds = %bb.an
  %i.gw = load i64, ptr %.val4.i.i, align 8, !noalias !63424, !noundef !34 ; 3 uses
  %i.gx = and i64 %i.gw, 72057594037927935        ; 3 uses
  %i.gy = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  %i.ha = and i64 %i.gw, 1080863910568919040
  %i.hb = icmp ult i64 %i.gw, 864691128455135232
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = or i64 %i.gz, %i.ha
  store i64 %i.hc, ptr %.val4.i.i, align 8, !noalias !63424
  %i.hd = icmp eq i64 %i.gx, 72057594037927935
  br i1 %i.hd, label %bb.ap, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i", !prof !37

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !63424
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i": ; preds = %bb.ao, %bb.an
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val4.i.i, ptr %i.he, align 8, !alias.scope !63420, !noalias !63425
  store i64 -9223372036854775806, ptr %i.u, align 8, !alias.scope !63420, !noalias !63425
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.aq:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i.i = load ptr, ptr %i.hf, align 8, !alias.scope !63422, !noalias !63423, !nonnull !34, !noundef !34 ; 4 uses
  %i.hg = ptrtoint ptr %.val3.i.i to i64
  %i.hh = and i64 %i.hg, 3
  %..i8.i.i = tail call i64 @llvm.umin.i64(i64 %i.hh, i64 2)
  switch i64 %..i8.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ar
  ], !prof !47

bb.ar:                                            ; preds = %bb.aq
  %i.hi = load i64, ptr %.val3.i.i, align 8, !noalias !63424, !noundef !34 ; 3 uses
  %i.hj = and i64 %i.hi, 72057594037927935        ; 3 uses
  %i.hk = icmp ne i64 %i.hj, 0
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = add nuw nsw i64 %i.hj, 1
  %i.hm = and i64 %i.hi, 1080863910568919040
  %i.hn = icmp ult i64 %i.hi, 864691128455135232
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = or i64 %i.hl, %i.hm
  store i64 %i.ho, ptr %.val3.i.i, align 8, !noalias !63424
  %i.hp = icmp eq i64 %i.hj, 72057594037927935
  br i1 %i.hp, label %bb.as, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i", !prof !37

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !63424
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i": ; preds = %bb.ar, %bb.aq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val3.i.i, ptr %i.hq, align 8, !alias.scope !63420, !noalias !63425
  store i64 -9223372036854775805, ptr %i.u, align 8, !alias.scope !63420, !noalias !63425
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.at:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i = load ptr, ptr %i.hr, align 8, !alias.scope !63422, !noalias !63423, !nonnull !34, !noundef !34 ; 4 uses
  %i.hs = ptrtoint ptr %.val2.i.i to i64
  %i.ht = and i64 %i.hs, 3
  %..i10.i.i = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 2)
  switch i64 %..i10.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.au
  ], !prof !47

bb.au:                                            ; preds = %bb.at
  %i.hu = load i64, ptr %.val2.i.i, align 8, !noalias !63424, !noundef !34 ; 3 uses
  %i.hv = and i64 %i.hu, 72057594037927935        ; 3 uses
  %i.hw = icmp ne i64 %i.hv, 0
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = add nuw nsw i64 %i.hv, 1
  %i.hy = and i64 %i.hu, 1080863910568919040
  %i.hz = icmp ult i64 %i.hu, 864691128455135232
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = or i64 %i.hx, %i.hy
  store i64 %i.ia, ptr %.val2.i.i, align 8, !noalias !63424
  %i.ib = icmp eq i64 %i.hv, 72057594037927935
  br i1 %i.ib, label %bb.av, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i", !prof !37

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !63424
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i": ; preds = %bb.au, %bb.at
  %i.ic = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val2.i.i, ptr %i.ic, align 8, !alias.scope !63420, !noalias !63425
  store i64 -9223372036854775804, ptr %i.u, align 8, !alias.scope !63420, !noalias !63425
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.aw:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hae8af58c459d21cdE.exit.i"
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !63424
  %.val1.i.i = load ptr, ptr %i.id, align 8, !alias.scope !63422, !noalias !63423, !nonnull !34, !noundef !34 ; 5 uses
  %i.ie = ptrtoint ptr %.val1.i.i to i64
  %i.if = and i64 %i.ie, 3
  %..i12.i.i = tail call i64 @llvm.umin.i64(i64 %i.if, i64 2)
  switch i64 %..i12.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ax
  ], !prof !47

bb.ax:                                            ; preds = %bb.aw
  %i.ig = load i64, ptr %.val1.i.i, align 8, !noalias !63424, !noundef !34 ; 3 uses
  %i.ih = and i64 %i.ig, 72057594037927935        ; 3 uses
  %i.ii = icmp ne i64 %i.ih, 0
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = add nuw nsw i64 %i.ih, 1
  %i.ik = and i64 %i.ig, 1080863910568919040
  %i.il = icmp ult i64 %i.ig, 864691128455135232
  tail call void @llvm.assume(i1 %i.il)
  %i.im = or i64 %i.ij, %i.ik
  store i64 %i.im, ptr %.val1.i.i, align 8, !noalias !63424
  %i.in = icmp eq i64 %i.ih, 72057594037927935
  br i1 %i.in, label %bb.ay, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i", !prof !37

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !63424
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i": ; preds = %bb.ax, %bb.aw
  store ptr %.val1.i.i, ptr %i.t, align 8, !noalias !63424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !63424
end_hunk_5
begin_hunk_6_@"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E":bb.a
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.tv = load i32, ptr %i.tu, align 8, !noundef !34
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tw, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.tv, ptr %i.ty, align 8
  store i64 32, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cs

bb.ea:                                            ; preds = %"_ZN92_$LT$nickel_lang_core..error..IllegalPolymorphicTailAction$u20$as$u20$core..clone..Clone$GT$5clone17hbb82026bb94c754cE.exit"
  %i.tz = ptrtoint ptr %i.jy to i64
  %i.ua = and i64 %i.tz, 3
  %..i109 = call i64 @llvm.umin.i64(i64 %i.ua, i64 2)
  switch i64 %..i109, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit112" [
    i64 2, label %bb.eb
    i64 0, label %bb.ec
  ], !prof !47

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc110 unwind label %bb.ef

.noexc110:                                        ; preds = %bb.eb
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.ub = load i64, ptr %i.jy, align 8, !noundef !34 ; 3 uses
  %i.uc = and i64 %i.ub, 72057594037927935        ; 3 uses
  %i.ud = icmp ne i64 %i.uc, 0
  call void @llvm.assume(i1 %i.ud)
  %i.ue = add nuw nsw i64 %i.uc, 1
  %i.uf = and i64 %i.ub, 1080863910568919040
  %i.ug = icmp ult i64 %i.ub, 864691128455135232
  call void @llvm.assume(i1 %i.ug)
  %i.uh = or i64 %i.ue, %i.uf
  store i64 %i.uh, ptr %i.jy, align 8
  %i.ui = icmp eq i64 %i.uc, 72057594037927935
  br i1 %i.ui, label %bb.ed, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit112", !prof !37

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1344, ptr %i.b, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.uj, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.uk, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.um, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc111 unwind label %bb.ef

.noexc111:                                        ; preds = %bb.ed
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit112": ; preds = %bb.ec, %bb.ea, %"_ZN92_$LT$nickel_lang_core..error..IllegalPolymorphicTailAction$u20$as$u20$core..clone..Clone$GT$5clone17hbb82026bb94c754cE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.jt)
          to label %bb.eh unwind label %bb.eg

bb.ee:                                            ; preds = %bb.eg, %bb.ef
  %.pn = phi { ptr, i32 } [ %i.uo, %bb.eg ], [ %i.un, %bb.ef ]
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$nickel_lang_core..error..IllegalPolymorphicTailAction$GT$17h85f1d6cd32cccd8aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad) #61
  br label %common.resume

bb.ef:                                            ; preds = %bb.ed, %bb.eb
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit112"
  %i.uo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E"(ptr %i.jy) #61
          to label %bb.ee unwind label %bb.ct

bb.eh:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit112"
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.up, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.jy, ptr %i.uq, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ur, ptr noundef nonnull align 8 dereferenceable(152) %i.ac, i64 152, i1 false)
  store i64 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.cs

bb.ei:                                            ; preds = %bb.br, %bb.bp
  %i.us = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #61
          to label %common.resume unwind label %bb.ct

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit56": ; preds = %bb.bq, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit52"
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.kc, ptr %i.ut, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val27, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val26, ptr %i.uv, align 8
  store i64 35, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cs

bb.ej:                                            ; preds = %bb.bx, %bb.bv
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = icmp eq i64 %.sroa.4.0.i.i.i60, 0
  br i1 %i.ux, label %common.resume, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uy = mul nuw nsw i64 %.sroa.4.0.i.i.i60, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i59, i64 noundef %i.uy, i64 noundef range(i64 1, -9223372036854775807) 4) #53
  br label %common.resume

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit68": ; preds = %bb.bw, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h65560f9781f9876cE.exit64"
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.va = load i32, ptr %i.uz, align 8, !noundef !34
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i60, ptr %i.vb, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i59, ptr %.sroa.5119.0..sroa_idx, align 8
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val33, ptr %.sroa.7120.0..sroa_idx, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val25, ptr %i.vc, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.va, ptr %i.vd, align 8
  store i64 36, ptr %0, align 8
  br label %bb.cs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$nickel_lang_core..term..TypeAnnotation$u20$as$u20$core..clone..Clone$GT$5clone17h96dd221ec2afded8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [256 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [152 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 6 uses
  %i.g = alloca [256 x i8], align 8               ; 5 uses
  %i.h = alloca [256 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load i64, ptr %1, align 8, !range !85, !noundef !34
  %.not = icmp eq i64 %i.i, 18
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63469
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd97743b66ceb4312E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1), !noalias !63470
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !63470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63469
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.l)
          to label %"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit" unwind label %bb.c, !noalias !63470

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hbdcea2f241fad709E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.f)
          to label %common.resume unwind label %bb.d, !noalias !63470, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !63470
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !63471
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(152) %i.e, i64 152, i1 false), !noalias !63471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.h, ptr noundef nonnull align 8 dereferenceable(256) %i.g, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 18, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.p, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val1 = load i64, ptr %i.q, align 8, !noundef !34 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63472
  %i.r = shl i64 %.val1, 8                        ; 4 uses
  %i.s = icmp ugt i64 %.val1, 72057594037927935
  %i.t = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.f
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i", label %bb.g

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.v = icmp eq i64 %.val1, 0
  tail call void @llvm.assume(i1 %i.v)
  store i64 0, ptr %i.d, align 8, !noalias !63472
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !63472
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.loopexit

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !63473
  %i.y = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #53, !noalias !63473 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1402) #59
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i": ; preds = %bb.g
  store i64 %.val1, ptr %i.d, align 8, !noalias !63472
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !noalias !63472
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %.val, i64 %.val1
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i"
  %.sroa.012.025.i.i = phi ptr [ %.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ], [ %i.af, %bb.m ] ; 5 uses
  %.sroa.7.024.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ], [ %i.ag, %bb.m ] ; 3 uses
  %.sroa.10.023.i.i = phi i64 [ %.val1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.i.i" ], [ %i.ad, %bb.m ]
  %i.ad = add nsw i64 %.sroa.10.023.i.i, -1       ; 2 uses
  %i.ae = icmp eq ptr %.sroa.012.025.i.i, %i.ac
  br i1 %i.ae, label %.loopexit, label %bb.j

.loopexit.i.i:                                    ; preds = %bb.j
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i, i64 256
  %i.ag = add nuw nsw i64 %.sroa.7.024.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63474
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd97743b66ceb4312E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.012.025.i.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !63475

.noexc.i.i:                                       ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !noalias !63476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63474
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i, i64 104
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ai)
          to label %bb.m unwind label %bb.k, !noalias !63476

bb.k:                                             ; preds = %.noexc.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hbdcea2f241fad709E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %bb.o unwind label %bb.l, !noalias !63476, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !63476
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !63477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !63477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63474
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.y, i64 %.sroa.7.024.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.al, ptr noundef nonnull align 8 dereferenceable(256) %i.c, i64 256, i1 false), !noalias !63475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.am = icmp eq i64 %i.ad, 0
  br i1 %i.am, label %.loopexit, label %bb.i

bb.n:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !63475
  unreachable

bb.o:                                             ; preds = %bb.k, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %lpad.loopexit.i.i, %.loopexit.i.i ]
  store i64 %.sroa.7.024.i.i, ptr %i.ab, align 8, !alias.scope !63478, !noalias !63472
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..LabeledType$GT$$GT$17ha668539b81f02bfcE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #61
          to label %.body unwind label %bb.n, !noalias !63475

bb.p:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %eh.lpad-body.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..LabeledType$GT$$GT$17h728712c21f8066fcE"(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.h) #61
          to label %common.resume unwind label %bb.q

.loopexit:                                        ; preds = %bb.m, %bb.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i"
  %4 = phi ptr [ %i.x, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9c9bc01d41e00317E.exit.thread.i.i" ], [ %i.ab, %bb.i ], [ %i.ab, %bb.m ]
  store i64 %.val1, ptr %4, align 8, !noalias !63472
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN78_$LT$Iter$u20$as$u20$nickel_lang_core..eval..operation..MapValuesClosurize$GT$20map_values_closurize17h8cdd4a66bc5cfbaaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %i.j = alloca [384 x i8], align 8               ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [360 x i8], align 8               ; 4 uses
  %i.n = alloca [384 x i8], align 8               ; 10 uses
  %i.o = alloca [40 x i8], align 8                ; 14 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 7 uses
  %i.q = alloca [72 x i8], align 8                ; 22 uses
  %.sroa.12.i.i.i = alloca [32 x i8], align 8     ; 5 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !alias.scope !63608, !nonnull !34, !noundef !34 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !63608, !nonnull !34, !noundef !34 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !63608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !63612
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !44, !noalias !63613, !noundef !34
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !63614
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre1.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !noalias !63614
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.a
  %i.v = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !63615 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !63616
  store i8 1, ptr %i.s, align 8, !noalias !63616
  br label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i.i.i.i"

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i.i.i.i
  %.pre-phi114.i.i.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.x, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i.i.i.i" ]
  %i.z = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.w, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.r, align 8, !noalias !63614
  store i64 0, ptr %i.q, align 8, !alias.scope !63617, !noalias !63612
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !63617, !noalias !63612
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !63617, !noalias !63612
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !63612
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !63617, !noalias !63612
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 %.pre-phi114.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !63617, !noalias !63612
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.01.0.copyload, %.sroa.42.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %.sroa.515.0..sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.24..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.2.0..sroa_idx.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.0..sroa_idx.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i8, ptr %4, align 1, !range !44
  %.val34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %3, align 8, !nonnull !34 ; 3 uses
  %.val35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = phi ptr [ %.sroa.01.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !63618)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !63618, !noalias !63619, !noundef !34
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !63618, !noalias !63619, !noundef !34 ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %i.aw = load i8, ptr %.sroa.53.0.copyload, align 1, !range !44, !noalias !63620, !noundef !34
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 368
  %i.az = load i8, ptr %i.ay, align 8, !range !44, !noalias !63620, !noundef !34
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !63618, !noalias !63619, !noundef !34 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 369
  %i.be = load i8, ptr %i.bd, align 1, !range !44, !noalias !63620, !noundef !34
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !63621
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !63612

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h98fd7bc8391b637cE.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.ar, i64 20, i1 false), !noalias !63622
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !63623 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !63624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !63625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !63623
  %i.bh = invoke noundef ptr @_ZN16nickel_lang_core4term6record5Field28value_with_pending_contracts17he2fe0b498dcf1434E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.h unwind label %bb.g, !noalias !63626 ; 2 uses

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.as, %bb.v, %bb.q, %bb.l, %bb.g
  %.sroa.018.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.q ], [ false, %bb.v ], [ true, %bb.as ], [ true, %bb.l ], [ true, %bb.g ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %i.bw, %bb.v ], [ %i.dr, %bb.as ], [ %i.bk, %bb.l ], [ %i.bi, %bb.g ]
  %.val33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !63625, !noundef !34
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h67802a781c38fa23E"(ptr %.val33.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #61
          to label %bb.at unwind label %bb.ar, !noalias !63626

bb.g:                                             ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !63627
  store i8 39, ptr %i.ae, align 8, !noalias !63625
  store i8 %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !63625
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !63627
  store i64 -9223372036854775757, ptr %i.i, align 8, !noalias !63627
  %i.bj = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.k unwind label %bb.g, !noalias !63626

bb.j:                                             ; preds = %bb.k, %bb.h
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.k ], [ null, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !63625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !63625
  invoke void @_ZN16nickel_lang_core4term6record14SharedMetadata11clone_inner17hdad829067215fecbE(ptr noalias noundef nonnull sret([360 x i8]) align 8 captures(address) dereferenceable(360) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %bb.m unwind label %bb.as, !noalias !63626
end_hunk_6
begin_hunk_7_@"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11swap_remove17h1e73a1b12c49a9faE":bb.a
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h09acbb0b95009d15E.exit.i.i.i" unwind label %bb.u, !noalias !66649

bb.u:                                             ; preds = %bb.t
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !66649
  unreachable

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h09acbb0b95009d15E.exit.i.i.i": ; preds = %bb.t
  resume { ptr, i32 } %i.dz

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17hc390d64eb975529bE.exit.i.i.i", %_ZN8indexmap3map4core12update_index17h67e42a5b488c481bE.exit.i.i.i
  %.sroa.411.24.copyload = load i64, ptr %i.a, align 8, !noalias !66657 ; 2 uses
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false), !noalias !66658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  %.not = icmp eq i64 %.sroa.411.24.copyload, -9223372036854775808
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit.thread14", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit"
  %.sroa.8.117 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit.thread14" ], [ %.sroa.411.24.copyload, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit" ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.w

.sink.split:                                      ; preds = %._crit_edge.i.i.i, %bb.a, %bb.b, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$3pop17hbb3ae0b815dfc2b0E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  br label %bb.w

bb.w:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit", %.sink.split, %bb.v
  %storemerge = phi i64 [ %.sroa.8.117, %bb.v ], [ -9223372036854775808, %.sink.split ], [ -9223372036854775808, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17ha8f48e0d8a4dd0f2E.exit" ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17h7ef7fdcd23de8414E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.a, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.a
  %or.cond.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i)
  %i.b = shl i64 %.sroa.5.0.copyload, 3
  %i.c = and i64 %i.b, -16                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add nsw i64 %.sroa.5.0.copyload, 17
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp uge i64 %i.f, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.i = sub nuw nsw i64 -16, %i.c
  %i.j = getelementptr inbounds i8, ptr %.sroa.4.0.copyload, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.a, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.a
  %or.cond.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i)
  %i.b = shl i64 %.sroa.5.0.copyload, 3
  %i.c = and i64 %i.b, -16                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add nsw i64 %.sroa.5.0.copyload, 17
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp uge i64 %i.f, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.i = sub nuw nsw i64 -16, %i.c
  %i.j = getelementptr inbounds i8, ptr %.sroa.4.0.copyload, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 15
  br i1 %i.d, label %.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.i, label %bb.e, !prof !37

.thread.i.i.i:                                    ; preds = %bb.c
  %i.f = icmp samesign ult i64 %1, 4
  %i.g = and i64 %1, 8
  %..i.i.i.i = add nuw nsw i64 %i.g, 8
  %.sroa.03.0.i.i.i.i = select i1 %i.f, i64 4, i64 %..i.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw i64 %1, 3
  %i.i = udiv i64 %i.h, 7
  %i.j = add nsw i64 %i.i, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k                        ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.l, 2305843009213693949
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %bb.f, !prof !66671

bb.f:                                             ; preds = %bb.e, %.thread.i.i.i
  %.sroa.4.0.i.ph8.i.i.i = phi i64 [ %.sroa.03.0.i.i.i.i, %.thread.i.i.i ], [ %i.m, %bb.e ] ; 6 uses
  %i.n = shl nuw i64 %.sroa.4.0.i.ph8.i.i.i, 3
  %i.o = add nuw i64 %i.n, 8
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.4.0.i.ph8.i.i.i, 16 ; 3 uses
  %i.r = add i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i, !prof !49

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !66672
  %i.u = tail call noalias noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !66672 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17h9c22c84306d8f4d1E.exit.i"

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66672
  store ptr @1484, ptr %i.a, align 8, !noalias !66672
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !66672
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !66672
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !66672
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !66672
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1486) #59, !noalias !66672
  unreachable

bb.h:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef %i.r) #59, !noalias !66672
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66673
  store ptr @1484, ptr %i.b, align 8, !noalias !66673
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !66673
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ab, align 8, !noalias !66673
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !66673
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ad, align 8, !noalias !66673
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1486) #59, !noalias !66673
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17h9c22c84306d8f4d1E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %i.af = add nsw i64 %.sroa.4.0.i.ph8.i.i.i, -1  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.q, i1 false), !noalias !66673
  %i.ag = mul i64 %1, 72                          ; 2 uses
  %or.cond.i.i.i4.i = icmp samesign ugt i64 %1, 128102389400760775
  br i1 %or.cond.i.i.i4.i, label %bb.k, label %bb.j, !prof !49

bb.j:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17h9c22c84306d8f4d1E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !66674
  %i.ah = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 8) #53, !noalias !66674 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17he963e562a9abdf39E.exit"

bb.k:                                             ; preds = %bb.j, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17h9c22c84306d8f4d1E.exit.i"
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17h9c22c84306d8f4d1E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1452) #59
          to label %.noexc.i unwind label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit", !noalias !66675

.noexc.i:                                         ; preds = %bb.k
  unreachable

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfe4def46b5963eb6E.exit": ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %or.cond.i.i.i.i.i8 = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i8), !noalias !66675
  %i.ak = shl nuw i64 %i.af, 3
  %i.al = and i64 %i.ak, -16                      ; 2 uses
  %i.am = add nuw i64 %i.al, 16                   ; 2 uses
  %i.an = add i64 %i.q, %i.am                     ; 3 uses
  %i.ao = icmp uge i64 %i.an, %i.am
  tail call void @llvm.assume(i1 %i.ao), !noalias !66675
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap), !noalias !66675
  %i.aq = sub nuw nsw i64 -16, %i.al
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %i.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !66675
  resume { ptr, i32 } %i.aj

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17he963e562a9abdf39E.exit": ; preds = %bb.j
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph8.i.i.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i22.i.i.i = select i1 %i.as, i64 %i.af, i64 %i.au
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.af, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.03.0.i22.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17he963e562a9abdf39E.exit", %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %i.aw, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(40) ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17h245880f1a97bc361E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66693)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !66693, !noundef !34 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread"
    i64 1, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !66693, !noundef !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !66693, !noundef !34
  %i.e = tail call fastcc noundef i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h62dec2bc47009c32E"(i64 %.val.i, i64 %.val2.i, i32 %.16.val) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66694)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !66695, !noalias !66696, !nonnull !34, !noundef !34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66698)
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !66699, !noalias !66700, !noundef !34 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !66699, !noalias !66700, !nonnull !34, !noundef !34 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.08.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ah, %bb.f ]
  %.sroa.04.0.i.i.i.i = and i64 %.pn.i.i.i, %i.l  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !66701 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not38.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not38.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.sroa.010.0.i39.i.i.i = phi i16 [ %i.af, %bb.e ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i39.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.04.0.i.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.l
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !66702, !noundef !34 ; 4 uses
  %i.x = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.x, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1446) #59, !noalias !66703
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.val.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 64
  %.val2.i.i.i.i.i = load i32, ptr %i.z, align 4, !noalias !66703, !noundef !34
  %i.aa = icmp eq i32 %.16.val, %.val2.i.i.i.i.i
  br i1 %i.aa, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread3", label %bb.e, !prof !40

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread", !prof !37

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i"
  %i.ae = add i16 %.sroa.010.0.i39.i.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.010.0.i39.i.i.i   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = add i64 %.sroa.08.0.i.i.i.i, 16         ; 2 uses
  %i.ah = add i64 %.sroa.04.0.i.i.i.i, %i.ag
  br label %bb.c

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit": ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !66693, !nonnull !34, !noundef !34 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %.val5.i = load i32, ptr %i.ak, align 4, !noalias !66693, !noundef !34
  %i.al = icmp eq i32 %.16.val, %.val5.i
  br i1 %i.al, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread3", label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread3": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit"
  %i.am = phi ptr [ %i.aj, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit" ], [ %i.g, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i" ]
  %.sroa.5.0.i6 = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit" ], [ %.val.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h7b66d7ec3a8dbb7eE.exit.i.i.i" ] ; 3 uses
  %i.an = icmp ult i64 %.sroa.5.0.i6, %i.b
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread3"
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.5.0.i6
  br label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread"

bb.h:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread3"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.5.0.i6, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1445) #59
  unreachable

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit.thread": ; preds = %._crit_edge.i.i.i, %bb.a, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit", %bb.g
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.g ], [ null, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17hf096d544fdf9c7cfE.exit" ], [ null, %bb.a ], [ null, %._crit_edge.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h62dec2bc47009c32E"(i64 %.56.val, i64 %.64.val, i32 %.16.val) unnamed_addr #36 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.56.val, 8317987319222330741
  %i.d = xor i64 %.64.val, 7237128888997146477
  %i.e = xor i64 %.56.val, 7816392313619706465
  %i.f = xor i64 %.64.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !66714
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !66714
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !66714
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !66714
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.56.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !66714
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.64.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !66714
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !66714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66715
  store i32 %.16.val, ptr %i.a, align 4, !noalias !66715
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h6846a1ced2d81e4eE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66715
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !66716
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !66716
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !66716 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !66716
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !66716, !noundef !34
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !66716, !noundef !34
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
end_hunk_7
