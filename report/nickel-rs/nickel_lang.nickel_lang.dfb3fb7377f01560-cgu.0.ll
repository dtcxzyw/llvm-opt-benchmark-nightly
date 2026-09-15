Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$12eval_closure17h0503b4d9f67b0363E":bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !4891

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.s, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  %i.t = shl nuw i64 %.sroa.0.0.copyload.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !4893
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #43
          to label %bb.l unwind label %bb.k, !noalias !4887

bb.g:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.val6.i.i.i, %bb.c ] ; 2 uses
  %i.u = icmp samesign ule i64 %.val6.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.u)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i.i, ptr nonnull readonly align 4 %.val.i.i.i, i64 %i.n, i1 false), !noalias !4894
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !4887
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4887
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val6.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !4887
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !4887
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4887
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !4887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(392) %i.c, i64 392, i1 false), !noalias !4895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4887
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4896
  %i.w = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4896 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$12eval_closure28_$u7b$$u7b$closure$u7d$$u7d$17h492ebeb239380a8bE.exit", !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #41
          to label %.noexc.i.i unwind label %bb.i, !noalias !4887

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17h893f21c3bb71540fE"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #43
          to label %bb.l unwind label %bb.j, !noalias !4887

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !4887
  unreachable

bb.k:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !4887
  unreachable

bb.l:                                             ; preds = %bb.i, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %.body.i.i ], [ %i.y, %bb.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.h, i64 noundef 392, i64 noundef 8) #40, !noalias !4885
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$12eval_closure28_$u7b$$u7b$closure$u7d$$u7d$17h492ebeb239380a8bE.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.w, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false), !noalias !4887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.h, i64 noundef 392, i64 noundef 8) #40, !noalias !4885
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$12eval_closure28_$u7b$$u7b$closure$u7d$$u7d$17h492ebeb239380a8bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17enter_cache_index17h520f380a34d8de4dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4946)
  %i.q = load i64, ptr %5, align 8, !noalias !4947, !noundef !11
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %5, align 8, !noalias !4947
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i_crit_edge" unwind label %bb.c

"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i_crit_edge": ; preds = %bb.b
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !4948
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4949)
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !4950, !noundef !11 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !noalias !4951, !noundef !11
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !4951
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread59 unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i_crit_edge", %bb.a
  %i.z = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i_crit_edge" ], [ %6, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4952)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"
  %i.ab = load i64, ptr %i.z, align 8, !noalias !4953, !noundef !11
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !4953
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit" unwind label %.thread63

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

.thread63:                                        ; preds = %bb.g, %bb.l, %bb.t, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread59

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit": ; preds = %bb.f, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !11, !align !18, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  %i.ai = invoke { i64, ptr } @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$16get_update_index17hee50298af5f62febE"(ptr noalias noundef nonnull align 1 %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.i unwind label %.thread63  ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 3 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val28 = load ptr, ptr %i.am, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val29 = load i64, ptr %i.an, align 8, !noundef !11 ; 8 uses
  %i.ao = shl i64 %.val29, 5                      ; 4 uses
  %i.ap = icmp ugt i64 %.val29, 576460752303423487
  %i.aq = icmp ugt i64 %i.ao, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.ap, %i.aq
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.j
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i", label %bb.k

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.as = icmp eq i64 %.val29, 0
  call void @llvm.assume(i1 %i.as)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit"

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4954
  %i.at = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 4) #40, !noalias !4954 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i"

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.k ], [ 0, %bb.j ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41
          to label %.noexc33 unwind label %.thread63

.noexc33:                                         ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i": ; preds = %bb.k
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.val28, i64 %.val29
  %7 = icmp eq i64 %.val29, 0
  br i1 %7, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i", %bb.m
  %.sroa.014.023.i.i = phi ptr [ %i.az, %bb.m ], [ %.val28, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.ay, %bb.m ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.ax, %bb.m ], [ %.val29, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ]
  %i.aw = icmp eq ptr %.sroa.014.023.i.i, %i.av
  br i1 %i.aw, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.ax = add nsw i64 %.sroa.10.021.i.i, -1       ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 32
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ba, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.014.023.i.i, i64 32, i1 false), !noalias !4955
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4956)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !4956, !noundef !11 ; 5 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %1, align 8, !range !34, !alias.scope !4957, !noundef !11
  %i.bg = sub nsw i64 %i.bf, %i.bd
  %i.bh = icmp ult i64 %i.bg, 9
  br i1 %i.bh, label %bb.q, label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h65baa4b201bc6986E.exit", !prof !17

bb.p:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$nickel_lang_core..eval..stack..UpdateIndexItem$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h7a659010d4952945E"(ptr nonnull %i.ak) #43
          to label %.thread59 unwind label %bb.r, !noalias !4956

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bd, i64 noundef 9, i64 noundef 1, i64 noundef 1)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit_crit_edge.i" unwind label %bb.p

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit_crit_edge.i": ; preds = %bb.q
  %.pre.i = load i64, ptr %i.bc, align 8, !alias.scope !4956
  br label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h65baa4b201bc6986E.exit"

bb.r:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !4956
  unreachable

"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h65baa4b201bc6986E.exit": ; preds = %bb.o, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit_crit_edge.i"
  %i.bk = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit_crit_edge.i" ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bl = ptrtoint ptr %i.ak to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !4956, !nonnull !11, !noundef !11
  %i.bo = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bl, ptr %i.bp, align 1, !noalias !4956
  store i8 3, ptr %i.bq, align 1, !noalias !4956
  %i.br = add nuw i64 %i.bd, 9
  store i64 %i.br, ptr %i.bc, align 8, !alias.scope !4956
  br label %bb.s

bb.s:                                             ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$4push17h65baa4b201bc6986E.exit", %bb.n
  %i.bs = load i32, ptr %2, align 4, !range !41, !noundef !11
  %.not20 = icmp eq i32 %i.bs, 3
  br i1 %.not20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN16nickel_lang_core4eval9callstack9CallStack9enter_var17h21df5ae35afa0befE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.l, i32 noundef %4)
          to label %bb.u unwind label %.thread63

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bu = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_ZN16nickel_lang_core4eval5value11NickelValue11content_ref17h965d5e35cf2e1421E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.w unwind label %bb.v

.body24:                                          ; preds = %bb.af, %bb.ai, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.cz, %bb.af ], [ %i.de, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h251928513b1d27e8E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #43
          to label %.thread unwind label %bb.aq

bb.v:                                             ; preds = %bb.at, %bb.as, %bb.ar, %bb.aa, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body24

bb.w:                                             ; preds = %bb.u
  %i.bw = load i8, ptr %i.j, align 8, !range !27, !noundef !11
  %i.bx = icmp eq i8 %i.bw, 7
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !11, !align !18, !noundef !11 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !range !28, !noundef !11 ; 2 uses
  %i.cb = icmp ne i64 %i.ca, -9223372036854775756
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, -9223372036854775749
  br i1 %i.cc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16, !noundef !11
  %i.cf = load <2 x ptr>, ptr %i.k, align 16
  store <2 x ptr> %i.cf, ptr %0, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ce, ptr %.sroa.10.0..sroa_idx, align 8
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit"

bb.z:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !11, !align !18, !noundef !11 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !45, !noundef !11 ; 2 uses
  %i.cj = icmp ne i64 %i.ci, 20
  call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ult i64 %i.ci, 19
  br i1 %i.ck, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E"(ptr noalias noundef align 8 captures(address) dereferenceable(392) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.ch)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load i64, ptr %i.i, align 8, !range !45, !noundef !11 ; 2 uses
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
  %i.cu = load i32, ptr %i.ct, align 4, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 %4, ptr %i.cw, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4958
  %i.cx = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4958 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ae, label %bb.ah, !prof !14

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc37 unwind label %bb.af

.noexc37:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.g) #43
          to label %.body24 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.cx, ptr noundef nonnull align 8 dereferenceable(392) %i.g, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cx, ptr %i.db, align 8
  store i64 -9223372036854775749, ptr %i.h, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4959
  %i.dc = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !4959 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.aj, label %bb.am, !prof !17

bb.ai:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h850cadad7311f538E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #43
          to label %.body24 unwind label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4959
  store ptr @130, ptr %i.f, align 8, !noalias !4959
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.df, align 8, !noalias !4959
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.dg, align 8, !noalias !4959
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dh, align 8, !noalias !4959
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.di, align 8, !noalias !4959
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.ak unwind label %bb.ai, !noalias !4959

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.am:                                            ; preds = %bb.ah
  store i64 360287970189639681, ptr %i.dc, align 8, !noalias !4959
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %4, ptr %i.dk, align 8, !noalias !4959
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dc, ptr %0, align 8
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load <2 x ptr>, ptr %i.dm, align 8
  store <2 x ptr> %i.dn, ptr %.sroa.8.0..sroa_idx10, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %.val.i = load ptr, ptr %i.k, align 16, !alias.scope !4960, !nonnull !11, !noundef !11 ; 4 uses
  %i.do = ptrtoint ptr %.val.i to i64
  %i.dp = and i64 %i.do, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.dp, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit" [
    i64 2, label %.noexc41
    i64 0, label %bb.an
  ], !prof !16

.noexc41:                                         ; preds = %bb.am
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4960
  store ptr %.val.i, ptr %i.e, align 8, !noalias !4960
  %i.dq = load i64, ptr %.val.i, align 8, !noalias !4961, !noundef !11 ; 3 uses
  %i.dr = and i64 %i.dq, 72057594037927935
  %i.ds = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.dt = and i64 %i.dq, 1080863910568919040
  %i.du = icmp ult i64 %i.dq, 864691128455135232
  call void @llvm.assume(i1 %i.du)
  %i.dv = or i64 %i.ds, %i.dt
  store i64 %i.dv, ptr %.val.i, align 8, !noalias !4961
  %i.dw = icmp ugt i64 %i.ds, 72057594037927935
  br i1 %i.dw, label %.noexc42, label %bb.ao, !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.dx = icmp eq i64 %i.ds, 0
  br i1 %i.dx, label %bb.ap, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i"

.noexc42:                                         ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4961
  store ptr @746, ptr %i.d, align 8, !noalias !4961
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.dy, align 8, !noalias !4961
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.dz, align 8, !noalias !4961
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !noalias !4961
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.eb, align 8, !noalias !4961
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
  unreachable

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i": ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4960
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i", %bb.am, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h710158fba6fe8531E.exit"

bb.aq:                                            ; preds = %.thread59, %.body24
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.ar:                                            ; preds = %bb.ac
  invoke void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h86781ed49489a946E"(ptr noalias noundef nonnull align 8 dereferenceable(360) %i.i)
          to label %bb.at unwind label %bb.v

bb.as:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef align 8 dereferenceable(392) %i.i)
          to label %bb.at unwind label %bb.v

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #41
          to label %bb.au unwind label %bb.v

bb.au:                                            ; preds = %bb.at
  unreachable

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h710158fba6fe8531E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i", %bb.ay, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit"
  ret void

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit": ; preds = %bb.m, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i"
  %.sroa.10.0.i32.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i" ], [ %i.at, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ], [ %i.at, %.lr.ph.i.i ], [ %i.at, %bb.m ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.val29, ptr %i.ed, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.10.0.i32.i.i, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.val29, ptr %.sroa.548.0..sroa_idx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %4, ptr %i.ee, align 8
  store i64 30, ptr %i.m, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4962
  %i.ef = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4962 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.av, label %bb.ay, !prof !14

bb.av:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc44 unwind label %bb.aw

.noexc44:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.m) #43
          to label %.thread59 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.ay:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ef, ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.ej, align 8
  store ptr null, ptr %0, align 8
  %.val27 = load ptr, ptr %i.o, align 8, !alias.scope !46, !nonnull !11, !noundef !11 ; 4 uses
  %i.ek = ptrtoint ptr %.val27 to i64
  %i.el = and i64 %i.ek, 3
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.el, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h710158fba6fe8531E.exit" [
    i64 2, label %bb.az
    i64 0, label %bb.ba
  ], !prof !16

bb.az:                                            ; preds = %bb.ay
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !4963
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4963
  store ptr %.val27, ptr %i.c, align 8, !noalias !4963
  %i.em = load i64, ptr %.val27, align 8, !noalias !4964, !noundef !11 ; 3 uses
  %i.en = and i64 %i.em, 72057594037927935
  %i.eo = add nsw i64 %i.en, -1                   ; 3 uses
  %i.ep = and i64 %i.em, 1080863910568919040
  %i.eq = icmp ult i64 %i.em, 864691128455135232
  call void @llvm.assume(i1 %i.eq)
  %i.er = or i64 %i.eo, %i.ep
  store i64 %i.er, ptr %.val27, align 8, !noalias !4964
  %i.es = icmp ugt i64 %i.eo, 72057594037927935
  br i1 %i.es, label %bb.bc, label %bb.bb, !prof !17

bb.bb:                                            ; preds = %bb.ba
  %i.et = icmp eq i64 %i.eo, 0
  br i1 %i.et, label %bb.bd, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i"

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4964
  store ptr @746, ptr %i.b, align 8, !noalias !4964
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.eu, align 8, !noalias !4964
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ev, align 8, !noalias !4964
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ew, align 8, !noalias !4964
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ex, align 8, !noalias !4964
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41, !noalias !4964
  unreachable

bb.bd:                                            ; preds = %bb.bb
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !4963
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i": ; preds = %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4963
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h710158fba6fe8531E.exit"

.thread:                                          ; preds = %.body24, %.thread59
  %.pn2251 = phi { ptr, i32 } [ %.pn, %.body24 ], [ %eh.lpad-body55, %.thread59 ]
  resume { ptr, i32 } %.pn2251

.thread59:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.aw, %bb.p, %.thread63
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %lpad.thr_comm, %.thread63 ], [ %i.eh, %bb.aw ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %.val = load ptr, ptr %i.o, align 8, !alias.scope !46, !nonnull !11, !noundef !11
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17h710158fba6fe8531E"(ptr nonnull %.val) #43
          to label %.thread unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h72da01f2e26ce638E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
begin_hunk_1_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h72da01f2e26ce638E":bb.a

.lr.ph13.i.i.i.i.i.i.i:                           ; preds = %bb.mj, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i"
  %.sroa.0.111.i.i.i.i.i.i.i = phi i64 [ %i.anb, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i" ], [ %i.amr, %bb.mj ] ; 2 uses
  %i.ana = getelementptr inbounds nuw [24 x i8], ptr %i.amo, i64 %.sroa.0.111.i.i.i.i.i.i.i
  %i.anb = add i64 %.sroa.0.111.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6118)
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6119)
  %i.and = load ptr, ptr %i.anc, align 8, !alias.scope !6120, !noalias !6116, !noundef !11 ; 3 uses
  %.not.i.i7.i.i.i.i.i.i.i = icmp eq ptr %i.and, null
  br i1 %.not.i.i7.i.i.i.i.i.i.i, label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i", label %bb.mk

bb.mk:                                            ; preds = %.lr.ph13.i.i.i.i.i.i.i
  %i.ane = load i64, ptr %i.and, align 8, !noalias !6121, !noundef !11
  %i.anf = add i64 %i.ane, -1                     ; 2 uses
  store i64 %i.anf, ptr %i.and, align 8, !noalias !6121
  %i.ang = icmp eq i64 %i.anf, 0
  br i1 %i.ang, label %bb.ml, label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i"

bb.ml:                                            ; preds = %bb.mk
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.anc)
          to label %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i" unwind label %bb.mm, !noalias !6116

"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i": ; preds = %bb.ml, %bb.mk, %.lr.ph13.i.i.i.i.i.i.i
  %i.anh = icmp eq i64 %i.anb, %i.amm
  br i1 %i.anh, label %.body.i.i.i535, label %.lr.ph13.i.i.i.i.i.i.i

bb.mm:                                            ; preds = %bb.ml
  %i.ani = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6116
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit.i.i.i.i.i.i.i", %bb.mg, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17hefb03b2af50f26b1E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i"
  %.sink44.i.sink.i.i.i.i.i = phi i64 [ %i.ale, %bb.mg ], [ %i.alh, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17hefb03b2af50f26b1E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i" ], [ %i.ale, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit.i.i.i.i.i.i.i" ] ; 8 uses
  %i.anj = phi ptr [ %i.amn, %bb.mg ], [ %.pre.i.pre.i.i.i.i.i, %"._ZN4core3ptr136drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$u5d$$GT$17hefb03b2af50f26b1E.exit..preheader.i_crit_edge.i_crit_edge.i.i.i.i.i" ], [ %i.amn, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.idx5.i.i.i.i.i.i = mul nuw nsw i64 %.sink44.i.sink.i.i.i.i.i, 24
  %i.ank = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx5.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6122)
  call void @llvm.experimental.noalias.scope.decl(metadata !6123)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sink44.i.sink.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i.i, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i"
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.anl, %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i" ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.anl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.anm = getelementptr inbounds nuw [24 x i8], ptr %i.anj, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 3 uses
  %i.ann = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6124)
  call void @llvm.experimental.noalias.scope.decl(metadata !6125)
  %i.ano = load i64, ptr %i.ann, align 8, !alias.scope !6126, !noalias !6127, !noundef !11
  store i64 %i.ano, ptr %i.anm, align 8, !alias.scope !6128, !noalias !6129
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.anq, align 8, !alias.scope !6126, !noalias !6127, !noundef !11
  store i32 %.val.i.i.i.i.i.i.i.i, ptr %i.anp, align 8, !alias.scope !6130, !noalias !6129
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anm, i64 8 ; 4 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ans, align 8, !alias.scope !6126, !noalias !6127, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6131)
  %i.ant = icmp eq ptr %.val1.i.i.i.i.i.i.i.i, null
  br i1 %i.ant, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i", label %bb.mn

bb.mn:                                            ; preds = %.lr.ph.i3.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !6132, !noundef !11 ; 2 uses
  %i.anu = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.anu)
  %i.anv = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.anv, ptr %.val1.i.i.i.i.i.i.i.i, align 8, !noalias !6132
  %i.anw = icmp eq i64 %i.anv, 0
  br i1 %i.anw, label %bb.mo, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i", !prof !17

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.trap()
  unreachable

"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.mn, %.lr.ph.i3.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6133)
  %i.anx = load ptr, ptr %i.anr, align 8, !alias.scope !6134, !noalias !6129, !noundef !11 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i538 = icmp eq ptr %i.anx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i538, label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i", label %bb.mp

bb.mp:                                            ; preds = %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i"
  %i.any = load i64, ptr %i.anx, align 8, !noalias !6135, !noundef !11
  %i.anz = add i64 %i.any, -1                     ; 2 uses
  store i64 %i.anz, ptr %i.anx, align 8, !noalias !6135
  %i.aoa = icmp eq i64 %i.anz, 0
  br i1 %i.aoa, label %bb.mq, label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i"

bb.mq:                                            ; preds = %bb.mp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.anr)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i" unwind label %bb.mr, !noalias !6129

bb.mr:                                            ; preds = %bb.mq
  %i.aob = landingpad { ptr, i32 }
          cleanup
  store ptr %.val1.i.i.i.i.i.i.i.i, ptr %i.anr, align 8, !alias.scope !6136, !noalias !6129
  br label %.body.i.i.i535

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i": ; preds = %bb.mq, %bb.mp, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i.i.i.i.i.i.i"
  store ptr %.val1.i.i.i.i.i.i.i.i, ptr %i.anr, align 8, !alias.scope !6136, !noalias !6129
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.anl, %.sink44.i.sink.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i", label %.lr.ph.i3.i.i.i.i.i.i

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he5a12990b9517630E.exit.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6137)
  call void @llvm.experimental.noalias.scope.decl(metadata !6138)
  call void @llvm.experimental.noalias.scope.decl(metadata !6139)
  %.idx6.i.i.i.i.i.i = sub nsw i64 %i.ale, %.sink44.i.sink.i.i.i.i.i ; 3 uses
  %i.aoc = sub nsw i64 %i.amj, %.sink44.i.sink.i.i.i.i.i
  %i.aod = icmp ugt i64 %.idx6.i.i.i.i.i.i, %i.aoc
  br i1 %i.aod, label %bb.ms, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i", !prof !17

bb.ms:                                            ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cf, i64 noundef %.sink44.i.sink.i.i.i.i.i, i64 noundef %.idx6.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i.i.i unwind label %.loopexit1361, !noalias !6088

.noexc4.i.i.i:                                    ; preds = %bb.ms
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i534, align 8, !alias.scope !6140, !noalias !6112
  %.pre21.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i533, align 8, !alias.scope !6140, !noalias !6112
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc4.i.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i"
  %i.aoe = phi ptr [ %i.anj, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i" ], [ %.pre21.i.i.i.i.i.i, %.noexc4.i.i.i ]
  %i.aof = phi i64 [ %.sink44.i.sink.i.i.i.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h341190b1718f0ed4E.exit.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 2 uses
  %i.aog = icmp eq i64 %.sink44.i.sink.i.i.i.i.i, %i.ale
  br i1 %i.aog, label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i", label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i", %bb.mv
  %i.aoh = phi i64 [ %i.aor, %bb.mv ], [ %i.aof, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aos, %bb.mv ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.aoi = getelementptr inbounds nuw [24 x i8], ptr %i.ank, i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6141)
  call void @llvm.experimental.noalias.scope.decl(metadata !6142)
  call void @llvm.experimental.noalias.scope.decl(metadata !6143)
  %i.aoj = load i64, ptr %i.aoi, align 8, !alias.scope !6144, !noalias !6145, !noundef !11
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aok, align 8, !alias.scope !6144, !noalias !6145, !noundef !11
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aol, align 8, !alias.scope !6144, !noalias !6145, !noundef !11 ; 4 uses
  %i.aom = icmp eq ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.aom, label %bb.mv, label %bb.mt

bb.mt:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6146, !noundef !11 ; 2 uses
  %i.aon = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.aon)
  %i.aoo = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.aoo, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6146
  %i.aop = icmp eq i64 %i.aoo, 0
  br i1 %i.aop, label %bb.mu, label %bb.mv, !prof !17

bb.mu:                                            ; preds = %bb.mt
  call void @llvm.trap()
  unreachable

bb.mv:                                            ; preds = %bb.mt, %.preheader.i.i.i.i.i.i.i.i.i
  %i.aoq = getelementptr inbounds nuw [24 x i8], ptr %i.aoe, i64 %i.aoh ; 3 uses
  store i64 %i.aoj, ptr %i.aoq, align 8, !noalias !6147
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8
  store ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6147
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  store i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6147
  %i.aor = add i64 %i.aoh, 1                      ; 2 uses
  %i.aos = add nuw i64 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aot = icmp eq i64 %i.aos, %.idx6.i.i.i.i.i.i
  br i1 %i.aot, label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i", label %.preheader.i.i.i.i.i.i.i.i.i

.loopexit1361:                                    ; preds = %bb.lx, %bb.ms
  %lpad.loopexit1363 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i535

.loopexit.split-lp1362:                           ; preds = %.loopexit1366
  %lpad.loopexit.split-lp1364 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i535

.body.i.i.i535:                                   ; preds = %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i", %.loopexit1361, %.loopexit.split-lp1362, %bb.mr, %bb.mj
  %eh.lpad-body.i.i.i536 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1364, %.loopexit.split-lp1362 ], [ %i.aob, %bb.mr ], [ %i.amy, %bb.mj ], [ %lpad.loopexit1363, %.loopexit1361 ], [ %i.amy, %"_ZN4core3ptr126drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h8ad93a1acc79e1b4E.exit9.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E"(ptr noalias noundef align 8 dereferenceable(56) %i.cf) #43
          to label %.body550 unwind label %bb.mw, !noalias !6088

bb.mw:                                            ; preds = %.body.i.i.i535
  %i.aou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6088
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i": ; preds = %bb.mv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i"
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aof, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h390c9762572b2895E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.aor, %bb.mv ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i534, align 8, !alias.scope !6140, !noalias !6148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false), !noalias !6149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !6088
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aky, i64 192
  %i.aow = load <2 x i64>, ptr %i.aov, align 8, !alias.scope !6150, !noalias !6151
  store <2 x i64> %i.aow, ptr %i.kr, align 8, !alias.scope !6085, !noalias !6149
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aky, i64 216
  %.val.i541 = load ptr, ptr %i.aox, align 8, !alias.scope !6083, !noalias !6152, !nonnull !11, !noundef !11 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aky, i64 224
  %.val1.i542 = load i64, ptr %i.aoy, align 8, !alias.scope !6083, !noalias !6152, !noundef !11 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6153)
  %i.aoz = shl i64 %.val1.i542, 3                 ; 4 uses
  %i.apa = icmp ugt i64 %.val1.i542, 2305843009213693951
  %i.apb = icmp ugt i64 %i.aoz, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.apa, %i.apb
  br i1 %or.cond.i.i.i.i.i.i, label %bb.my, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i"
  %i.apc = icmp eq i64 %i.aoz, 0
  br i1 %i.apc, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i", label %bb.mx

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.apd = icmp eq i64 %.val1.i542, 0
  call void @llvm.assume(i1 %i.apd)
  br label %.loopexit1337

bb.mx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6154
  %i.ape = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aoz, i64 noundef range(i64 1, 9) 8) #40, !noalias !6154 ; 5 uses
  %i.apf = icmp eq ptr %i.ape, null
  br i1 %i.apf, label %bb.my, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i"

bb.my:                                            ; preds = %bb.mx, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i"
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.mx ], [ 0, %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h09ffe8cf6b9ff4e2E.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.aoz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41
          to label %.noexc.i548 unwind label %bb.nc, !noalias !6084

.noexc.i548:                                      ; preds = %bb.my
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i": ; preds = %bb.mx
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %.val.i541, i64 %.val1.i542
  %3 = icmp eq i64 %.val1.i542, 0
  br i1 %3, label %.loopexit1337, label %.lr.ph.i.i.i543

.lr.ph.i.i.i543:                                  ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i", %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i"
  %.sroa.013.023.i.i.i = phi ptr [ %i.apj, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ %.val.i541, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.apk, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.aph, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ], [ %.val1.i542, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ]
  %i.aph = add nsw i64 %.sroa.10.021.i.i.i, -1    ; 2 uses
  %i.api = icmp eq ptr %.sroa.013.023.i.i.i, %i.apg
  br i1 %i.api, label %.loopexit1337, label %bb.mz

bb.mz:                                            ; preds = %.lr.ph.i.i.i543
  %i.apj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.apk = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %.val.i.i.i544 = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !6153, !noalias !6155, !noundef !11 ; 4 uses
  %i.apl = icmp eq ptr %.val.i.i.i544, null
  br i1 %i.apl, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", label %bb.na

bb.na:                                            ; preds = %bb.mz
  %.val.i.i.i.i.i545 = load i64, ptr %.val.i.i.i544, align 8, !noalias !6156, !noundef !11 ; 2 uses
  %i.apm = icmp ne i64 %.val.i.i.i.i.i545, 0
  call void @llvm.assume(i1 %i.apm)
  %i.apn = add i64 %.val.i.i.i.i.i545, 1          ; 2 uses
  store i64 %i.apn, ptr %.val.i.i.i544, align 8, !noalias !6156
  %i.apo = icmp eq i64 %i.apn, 0
  br i1 %i.apo, label %bb.nb, label %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", !prof !17

bb.nb:                                            ; preds = %bb.na
  call void @llvm.trap()
  unreachable

"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i": ; preds = %bb.na, %bb.mz
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.ape, i64 %.sroa.7.022.i.i.i
  store ptr %.val.i.i.i544, ptr %i.app, align 8, !noalias !6156
  %i.apq = icmp eq i64 %i.aph, 0
  br i1 %i.apq, label %.loopexit1337, label %.lr.ph.i.i.i543

bb.nc:                                            ; preds = %bb.my
  %i.apr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6157)
  call void @llvm.experimental.noalias.scope.decl(metadata !6158), !noalias !6084
  %i.aps = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %.val1.i.i862 = load i64, ptr %i.aps, align 8, !alias.scope !6159, !noalias !6084, !noundef !11 ; 4 uses
  %i.apt = icmp eq i64 %.val1.i.i862, 0
  br i1 %i.apt, label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i863

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i863: ; preds = %bb.nc
  %i.apu = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.val.i.i864 = load ptr, ptr %i.apu, align 8, !alias.scope !6159, !noalias !6084, !nonnull !11, !noundef !11
  %or.cond.i.i.i.i.i.i.i865 = icmp slt i64 %.val1.i.i862, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i865), !noalias !6084
  %i.apv = shl i64 %.val1.i.i862, 3
  %i.apw = and i64 %i.apv, -16                    ; 2 uses
  %i.apx = add i64 %i.apw, 16                     ; 2 uses
  %i.apy = add nsw i64 %.val1.i.i862, 17
  %i.apz = add i64 %i.apy, %i.apx                 ; 3 uses
  %i.aqa = icmp uge i64 %i.apz, %i.apx
  call void @llvm.assume(i1 %i.aqa), !noalias !6084
  %i.aqb = icmp ult i64 %i.apz, 9223372036854775793
  call void @llvm.assume(i1 %i.aqb), !noalias !6084
  %i.aqc = sub nuw nsw i64 -16, %i.apw
  %i.aqd = getelementptr inbounds i8, ptr %.val.i.i864, i64 %i.aqc
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqd, i64 noundef %i.apz, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6160
  br label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i"

"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i863, %bb.nc
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$$GT$17h5bd761a47a6b6019E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.cg)
          to label %.body550 unwind label %bb.nd

bb.nd:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i"
  %i.aqe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6084
  unreachable

bb.ne:                                            ; preds = %bb.lw
  store i64 -9223372036854775808, ptr %i.fb, align 8
  br label %bb.nf

bb.nf:                                            ; preds = %.loopexit1337, %bb.ne
  call void @llvm.experimental.noalias.scope.decl(metadata !6161)
  call void @llvm.experimental.noalias.scope.decl(metadata !6162)
  call void @llvm.experimental.noalias.scope.decl(metadata !6163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.aqf = load <2 x ptr>, ptr %i.gt, align 16
  store <2 x ptr> %i.aqf, ptr %i.ca, align 16, !noalias !6164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !6164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !6164
  %.sroa.0.sroa.0.0.copyload.i = load i64, ptr %i.fd, align 8, !alias.scope !6161, !noalias !6165
  %.sroa.0.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6161, !noalias !6165 ; 4 uses
  %.sroa.0.sroa.5.0.copyload.i = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6161, !noalias !6165 ; 5 uses
  %.sroa.5.0.copyload.i552 = load i64, ptr %.sroa.5.0..sroa_idx37.i, align 8, !alias.scope !6161, !noalias !6165 ; 4 uses
  %i.aqg = icmp eq i64 %.sroa.5.0.copyload.i552, 0
  br i1 %i.aqg, label %bb.ng, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.nf
  %.sroa.4.0.copyload.i553 = load ptr, ptr %.sroa.4.0..sroa_idx36.i, align 8, !alias.scope !6161, !noalias !6165, !nonnull !11, !noundef !11
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload.i552, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.aqh = shl i64 %.sroa.5.0.copyload.i552, 3
  %i.aqi = and i64 %i.aqh, -16                    ; 2 uses
  %i.aqj = add i64 %i.aqi, 16                     ; 2 uses
  %i.aqk = add nsw i64 %.sroa.5.0.copyload.i552, 17
  %i.aql = add i64 %i.aqk, %i.aqj                 ; 3 uses
  %i.aqm = icmp uge i64 %i.aql, %i.aqj
  call void @llvm.assume(i1 %i.aqm)
  %i.aqn = icmp ult i64 %i.aql, 9223372036854775793
  call void @llvm.assume(i1 %i.aqn)
  %i.aqo = sub nuw nsw i64 -16, %i.aqi
  %i.aqp = getelementptr inbounds i8, ptr %.sroa.4.0.copyload.i553, i64 %i.aqo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqp, i64 noundef %i.aql, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6166
  br label %bb.ng

.body.i556:                                       ; preds = %.body28.i, %bb.ov, %.body.i.i.i564
  %.sroa.09.0.i = phi i1 [ false, %.body28.i ], [ true, %.body.i.i.i564 ], [ true, %bb.ov ]
  %.pn.i557 = phi { ptr, i32 } [ %eh.lpad-body29.i, %.body28.i ], [ %eh.lpad-body.i.i.i565, %.body.i.i.i564 ], [ %i.axh, %bb.ov ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E"(ptr noalias noundef align 8 dereferenceable(16) %i.ca) #43
          to label %.body30.i unwind label %bb.qy, !noalias !6167

bb.ng:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %bb.nf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.4.0.copyload.i) ]
  %i.aqq = icmp ult i64 %.sroa.0.sroa.5.0.copyload.i, 128102389400760776
  call void @llvm.assume(i1 %i.aqq)
  %i.aqr = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.sroa.4.0.copyload.i, i64 %.sroa.0.sroa.5.0.copyload.i
  store ptr %.sroa.0.sroa.4.0.copyload.i, ptr %i.by, align 8, !noalias !6164
  store ptr %.sroa.0.sroa.4.0.copyload.i, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !6164
  store i64 %.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !6164
  store ptr %i.aqr, ptr %.sroa.661.0..sroa_idx.i, align 8, !noalias !6164
  store ptr %i.fb, ptr %i.kt, align 8, !noalias !6164
  store ptr %i.akt, ptr %.sroa.4.0..sroa_idx.i554, align 8, !noalias !6164
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx.i555, align 8, !noalias !6164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !6168
  %i.aqs = load i8, ptr %i.it, align 8, !range !12, !noalias !6169, !noundef !11
  %i.aqt = trunc nuw i8 %i.aqs to i1
  br i1 %i.aqt, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ng
  %.pre.i.i.i.i.i.i = load i64, ptr %i.is, align 8, !noalias !6170
  %.pre1.i.i.i.i.i.i = load i64, ptr %i.iu, align 8, !noalias !6170
  br label %bb.nh

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i.i": ; preds = %bb.ng
  %i.aqu = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i558 unwind label %bb.ov, !noalias !6171 ; 2 uses

.noexc.i.i.i558:                                  ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i.i"
  %i.aqv = extractvalue { i64, i64 } %i.aqu, 0
  %i.aqw = extractvalue { i64, i64 } %i.aqu, 1    ; 2 uses
  store i64 %i.aqw, ptr %i.iu, align 8, !noalias !6172
  store i8 1, ptr %i.it, align 8, !noalias !6172
  br label %bb.nh

bb.nh:                                            ; preds = %.noexc.i.i.i558, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi43.i.i.i = phi i64 [ %i.aqw, %.noexc.i.i.i558 ], [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.aqv, %.noexc.i.i.i558 ], [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.aqx = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.aqx, ptr %i.is, align 8, !noalias !6170
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h6eba9f1fd1487ff2E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bx, i64 noundef %.sroa.0.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i.i, i64 noundef %.pre-phi43.i.i.i)
          to label %bb.ni unwind label %bb.ov, !noalias !6171

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.experimental.noalias.scope.decl(metadata !6173)
  %i.aqy = load i64, ptr %i.ku, align 8, !alias.scope !6173, !noalias !6174, !noundef !11
  %i.aqz = icmp eq i64 %i.aqy, 0
  %i.ara = add nuw nsw i64 %.sroa.0.sroa.5.0.copyload.i, 1
  %i.arb = lshr i64 %i.ara, 1
  %.sroa.0.0.i.i.i.i = select i1 %i.aqz, i64 %.sroa.0.sroa.5.0.copyload.i, i64 %i.arb ; 4 uses
  %i.arc = load i64, ptr %i.kw, align 8, !alias.scope !6175, !noalias !6176, !noundef !11
  %i.ard = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.arc
  br i1 %i.ard, label %bb.nj, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i.i", !prof !17

bb.nj:                                            ; preds = %bb.ni
  %i.are = load i64, ptr %i.kv, align 8, !alias.scope !6177, !noalias !6174, !noundef !11
  %i.arf = load ptr, ptr %i.ky, align 8, !alias.scope !6177, !noalias !6174, !nonnull !11, !noundef !11
  %i.arg = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kx, i64 noundef %.sroa.0.0.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.arf, i64 noundef %i.are, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i.i" unwind label %bb.or, !noalias !6178 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i.i": ; preds = %bb.nj, %bb.ni
  %i.arh = load i64, ptr %i.bx, align 8, !range !34, !alias.scope !6177, !noalias !6174, !noundef !11
  %i.ari = load i64, ptr %i.kv, align 8, !alias.scope !6177, !noalias !6174, !noundef !11 ; 2 uses
  %i.arj = icmp ult i64 %i.ari, 128102389400760776
  call void @llvm.assume(i1 %i.arj)
  %i.ark = sub nsw i64 %i.arh, %i.ari
  %i.arl = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.ark
  br i1 %i.arl, label %bb.nk, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i.i"

bb.nk:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i.i"
  %i.arm = load i64, ptr %i.ku, align 8, !alias.scope !6177, !noalias !6174, !noundef !11
  %i.arn = load i64, ptr %i.kw, align 8, !alias.scope !6177, !noalias !6174, !noundef !11
  %i.aro = add i64 %i.arn, %i.arm
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h34b18e10e19f224fE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bx, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef %i.aro)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i.i" unwind label %bb.or, !noalias !6178

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i.i": ; preds = %bb.nk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !6179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.by, i64 32, i1 false), !noalias !6180
  call void @llvm.experimental.noalias.scope.decl(metadata !6181)
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.la, align 8, !alias.scope !6182, !noalias !6183 ; 2 uses
  %i.arp = load ptr, ptr %i.kz, align 8, !alias.scope !6184, !noalias !6183, !nonnull !11, !noundef !11 ; 2 uses
  %i.arq = icmp eq ptr %.promoted.i.i.i.i.i.i.i, %i.arp
  br i1 %i.arq, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc810c00850dfd427E.exit.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf48af624ad42c76E.exit.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haf48af624ad42c76E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i.i", %bb.op
end_hunk_1
begin_hunk_2_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17h72da01f2e26ce638E":bb.a
  br i1 %i.azw, label %.body5.i.i.i.i.i.i, label %.lr.ph7406

bb.qi:                                            ; preds = %.lr.ph7394
  %i.azx = landingpad { ptr, i32 }
          cleanup
  %i.azy = icmp eq i64 %i.azu, %i.azq
  br i1 %i.azy, label %.body5.i.i.i.i.i.i, label %.lr.ph7406

.lr.ph7406:                                       ; preds = %bb.qi, %bb.qh
  %.sroa.0.1.i.i.i.i.i.i.i.i7404 = phi i64 [ %i.azv, %bb.qh ], [ %i.azu, %bb.qi ] ; 2 uses
  %i.azz = getelementptr inbounds nuw [48 x i8], ptr %i.azj, i64 %.sroa.0.1.i.i.i.i.i.i.i.i7404
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$17h6a85df3e393e813aE"(ptr noalias noundef align 8 dereferenceable(48) %i.azz) #43
          to label %bb.qh unwind label %bb.qj, !noalias !6253

bb.qj:                                            ; preds = %.lr.ph7406
  %i.baa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6253
  unreachable

.body5.i.i.i.i.i.i:                               ; preds = %bb.qh, %bb.qi
  invoke fastcc void @"_ZN4core3ptr263drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$C$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h677f2ca7ed24d7edE"(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #43
          to label %.body.i.i.i.i.i.i unwind label %bb.qk, !noalias !6254

bb.qk:                                            ; preds = %.body5.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.bab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6254
  unreachable

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb2c30e14f4e98557E.exit.i.i": ; preds = %bb.qg, %.loopexit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !6249
  invoke fastcc void @"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h802a99f312894498E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.bl)
          to label %bb.ql unwind label %bb.ow, !noalias !6167

bb.ql:                                            ; preds = %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hb2c30e14f4e98557E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !6225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0899, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i64 72, i1 false), !noalias !6255
  %i.bac = load i8, ptr %i.lp, align 8, !range !12, !alias.scope !6161, !noalias !6165, !noundef !11
  %i.bad = load i8, ptr %i.lq, align 1, !range !12, !alias.scope !6161, !noalias !6165, !noundef !11
  %i.bae = load ptr, ptr %i.lr, align 8, !alias.scope !6161, !noalias !6165, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !6164
  call void @llvm.experimental.noalias.scope.decl(metadata !6256)
  call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  %i.baf = load ptr, ptr %i.ca, align 16, !alias.scope !6259, !noalias !6164, !nonnull !11, !noundef !11 ; 2 uses
  %i.bag = load i64, ptr %i.baf, align 8, !noalias !6260, !noundef !11
  %i.bah = add i64 %i.bag, -1                     ; 2 uses
  store i64 %i.bah, ptr %i.baf, align 8, !noalias !6260
  %i.bai = icmp eq i64 %i.bah, 0
  br i1 %i.bai, label %bb.qm, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"

bb.qm:                                            ; preds = %bb.ql
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i" unwind label %bb.qn, !noalias !6167

bb.qn:                                            ; preds = %bb.qm
  %i.baj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  %i.bak = load ptr, ptr %i.ks, align 8, !alias.scope !6262, !noalias !6164, !noundef !11 ; 3 uses
  %i.bal = icmp eq ptr %i.bak, null
  br i1 %i.bal, label %.body30.i, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bam = load i64, ptr %i.bak, align 8, !noalias !6263, !noundef !11
  %i.ban = add i64 %i.bam, -1                     ; 2 uses
  store i64 %i.ban, ptr %i.bak, align 8, !noalias !6263
  %i.bao = icmp eq i64 %i.ban, 0
  br i1 %i.bao, label %bb.qp, label %.body30.i

bb.qp:                                            ; preds = %bb.qo
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ks)
          to label %.body30.i unwind label %bb.qs, !noalias !6167

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i": ; preds = %bb.qm, %bb.ql
  call void @llvm.experimental.noalias.scope.decl(metadata !6264)
  %i.bap = load ptr, ptr %i.ks, align 8, !alias.scope !6265, !noalias !6164, !noundef !11 ; 3 uses
  %i.baq = icmp eq ptr %i.bap, null
  br i1 %i.baq, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i", label %bb.qq

bb.qq:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"
  %i.bar = load i64, ptr %i.bap, align 8, !noalias !6266, !noundef !11
  %i.bas = add i64 %i.bar, -1                     ; 2 uses
  store i64 %i.bas, ptr %i.bap, align 8, !noalias !6266
  %i.bat = icmp eq i64 %i.bas, 0
  br i1 %i.bat, label %bb.qr, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i"

bb.qr:                                            ; preds = %bb.qq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ks)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i" unwind label %bb.qt, !noalias !6167

bb.qs:                                            ; preds = %bb.qp
  %i.bau = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6167
  unreachable

.body30.i:                                        ; preds = %bb.qt, %bb.qp, %bb.qo, %bb.qn, %.body.i556
  %.sroa.09.1.i = phi i1 [ %.sroa.09.0.i, %.body.i556 ], [ false, %bb.qn ], [ false, %bb.qo ], [ false, %bb.qp ], [ false, %bb.qt ]
  %.sroa.010.0.i = phi i1 [ true, %.body.i556 ], [ false, %bb.qn ], [ false, %bb.qo ], [ false, %bb.qp ], [ false, %bb.qt ]
  %.pn13.i = phi { ptr, i32 } [ %.pn.i557, %.body.i556 ], [ %i.baj, %bb.qn ], [ %i.baj, %bb.qo ], [ %i.baj, %bb.qp ], [ %i.bav, %bb.qt ] ; 4 uses
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..RecordDeps$GT$$GT$17h9f256e630357eb56E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fb) #43
          to label %bb.qx unwind label %bb.qy, !noalias !6167

bb.qt:                                            ; preds = %bb.qr
  %i.bav = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i": ; preds = %bb.qr, %bb.qq, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6267)
  %i.baw = load i64, ptr %i.fb, align 8, !range !35, !alias.scope !6268, !noalias !6269, !noundef !11
  %i.bax = icmp eq i64 %i.baw, -9223372036854775808
  br i1 %i.bax, label %bb.re, label %bb.qu

bb.qu:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6270)
  call void @llvm.experimental.noalias.scope.decl(metadata !6271)
  call void @llvm.experimental.noalias.scope.decl(metadata !6272)
  %.val1.i.i.i.i.i = load i64, ptr %i.lg, align 8, !alias.scope !6273, !noalias !6269, !noundef !11 ; 4 uses
  %i.bay = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.bay, label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i.i.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.qu
  %.val.i.i.i.i.i568 = load ptr, ptr %i.lf, align 8, !alias.scope !6273, !noalias !6269, !nonnull !11, !noundef !11
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i.i.i)
  %i.baz = shl i64 %.val1.i.i.i.i.i, 3
  %i.bba = and i64 %i.baz, -16                    ; 2 uses
  %i.bbb = add i64 %i.bba, 16                     ; 2 uses
  %i.bbc = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.bbd = add i64 %i.bbc, %i.bbb                 ; 3 uses
  %i.bbe = icmp uge i64 %i.bbd, %i.bbb
  call void @llvm.assume(i1 %i.bbe)
  %i.bbf = icmp ult i64 %i.bbd, 9223372036854775793
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = sub nuw nsw i64 -16, %i.bba
  %i.bbh = getelementptr inbounds i8, ptr %.val.i.i.i.i.i568, i64 %i.bbg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bbh, i64 noundef %i.bbd, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !6274
  br label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i.i.i.i"

"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i.i.i, %bb.qu
  invoke fastcc void @"_ZN4core3ptr149drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$$GT$17h5bd761a47a6b6019E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.fb)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17hddea4f29f9da2d96E.exit.i.i" unwind label %bb.qv, !noalias !6167

bb.qv:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i.i.i.i"
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h1cc3651514e3c81fE"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.4964.0..sroa_idx) #43
          to label %.thread1224 unwind label %bb.qw, !noalias !6167

bb.qw:                                            ; preds = %bb.qv
  %i.bbj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6275
  unreachable

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17hddea4f29f9da2d96E.exit.i.i": ; preds = %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17hc592c57a94b30f56E.exit.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h1cc3651514e3c81fE"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.4964.0..sroa_idx)
          to label %bb.re unwind label %bb.rd

bb.qx:                                            ; preds = %.body30.i
  br i1 %.sroa.09.1.i, label %bb.qz, label %.thread.i

bb.qy:                                            ; preds = %bb.rc, %bb.qz, %.body30.i, %.body28.i, %.body.i556
  %i.bbk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6276
  unreachable

.thread.i:                                        ; preds = %bb.qz, %bb.qx
  br i1 %.sroa.010.0.i, label %bb.ra, label %.thread1224

bb.qz:                                            ; preds = %bb.qx
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h8b9bb3b81b2a645bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.fc) #43
          to label %.thread.i unwind label %bb.qy, !noalias !6277

bb.ra:                                            ; preds = %.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6278)
  %i.bbl = load ptr, ptr %i.lr, align 8, !alias.scope !6279, !noalias !6165, !noundef !11 ; 3 uses
  %i.bbm = icmp eq ptr %i.bbl, null
  br i1 %i.bbm, label %.thread1224, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bbn = load i64, ptr %i.bbl, align 8, !noalias !6280, !noundef !11
  %i.bbo = add i64 %i.bbn, -1                     ; 2 uses
  store i64 %i.bbo, ptr %i.bbl, align 8, !noalias !6280
  %i.bbp = icmp eq i64 %i.bbo, 0
  br i1 %i.bbp, label %bb.rc, label %.thread1224

bb.rc:                                            ; preds = %bb.rb
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lr)
          to label %.thread1224 unwind label %bb.qy, !noalias !6276

bb.rd:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17hddea4f29f9da2d96E.exit.i.i"
  %i.bbq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1224

.loopexit1337:                                    ; preds = %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i", %.lr.ph.i.i.i543, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i"
  %.sroa.5.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i" ], [ %i.ape, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ], [ %i.ape, %.lr.ph.i.i.i543 ], [ %i.ape, %"_ZN80_$LT$nickel_lang_core..term..record..FieldDeps$u20$as$u20$core..clone..Clone$GT$5clone17hd85b4dd12e7f4514E.exit.i.i.i" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fb, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !6084
  store i64 %.val1.i542, ptr %.sroa.4964.0..sroa_idx, align 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5965.0..sroa_idx, align 8
  store i64 %.val1.i542, ptr %.sroa.6966.0..sroa_idx, align 8
  br label %bb.nf

bb.re:                                            ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit.i", %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17hddea4f29f9da2d96E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.ru, %bb.re
  %.sroa.13.0 = phi i64 [ %.sroa.13.88.copyload915, %bb.ru ], [ %i.azn, %bb.re ] ; 4 uses
  %.sroa.12.0967 = phi ptr [ %.sroa.12.88.copyload913, %bb.ru ], [ %.sroa.450.0.copyload.i, %bb.re ] ; 6 uses
  %.sroa.9910.0 = phi i64 [ %.sroa.9910.88.copyload911, %bb.ru ], [ %.sroa.049.0.copyload.i, %bb.re ] ; 2 uses
  %.sroa.8906.0 = phi i8 [ %i.aix, %bb.ru ], [ %i.bad, %bb.re ]
  %.sroa.7903.0 = phi i8 [ %i.aiv, %bb.ru ], [ %i.bac, %bb.re ]
  %.sroa.6900.0 = phi ptr [ %i.aiz, %bb.ru ], [ %i.bae, %bb.re ]
  %.sroa.6119.0.copyload920 = phi i64 [ %.sroa.6119.0.copyload918, %bb.ru ], [ %.sroa.6119.0.copyload921, %bb.re ]
  %.sroa.0170.12 = phi i8 [ 1, %bb.ru ], [ 0, %bb.re ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0899, i64 72, i1 false)
  store ptr %.sroa.6900.0, ptr %.sroa.6900.0..sroa_idx, align 8
  store i8 %.sroa.7903.0, ptr %.sroa.7903.0..sroa_idx, align 8
  store i8 %.sroa.8906.0, ptr %.sroa.8906.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  store i64 %.sroa.9910.0, ptr %i.fg, align 8
  store ptr %.sroa.12.0967, ptr %.sroa.12.88..sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.13.88..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.bbr = load ptr, ptr %i.ha, align 8, !nonnull !11, !align !18, !noundef !11
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 712
  %i.bbt = load ptr, ptr %i.lv, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.bbu = load i64, ptr %i.lw, align 8, !noundef !11 ; 3 uses
  %i.bbv = getelementptr inbounds nuw [72 x i8], ptr %i.bbt, i64 %i.bbu
  call void @llvm.experimental.noalias.scope.decl(metadata !6281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i32 %i.na, ptr %i.bd, align 4, !noalias !6282
  call void @llvm.experimental.noalias.scope.decl(metadata !6283)
  call void @llvm.experimental.noalias.scope.decl(metadata !6284)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !6285
  store ptr %i.bbt, ptr %i.bc, align 8, !alias.scope !6286, !noalias !6287
  store ptr %i.bbv, ptr %.sroa.4.0..sroa_idx.i572, align 8, !alias.scope !6286, !noalias !6287
  store ptr %i.bbs, ptr %.sroa.5.0..sroa_idx.i573, align 8, !alias.scope !6286, !noalias !6287
  store ptr %i.bd, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6286, !noalias !6287
  call void @llvm.experimental.noalias.scope.decl(metadata !6288)
  call void @llvm.experimental.noalias.scope.decl(metadata !6289)
  call void @llvm.experimental.noalias.scope.decl(metadata !6290)
  call void @llvm.experimental.noalias.scope.decl(metadata !6291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !6292
  %i.bbw = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfbd4f86cdc676a1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %.noexc578 unwind label %.split.thread ; 2 uses

.split.thread:                                    ; preds = %bb.rf
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %.body579.thread

.noexc578:                                        ; preds = %bb.rf
  %i.bby = extractvalue { i32, ptr } %i.bbw, 1    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bby, null
  br i1 %.not.i.i.i.i.i, label %bb.rg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i574

bb.rg:                                            ; preds = %.noexc578
  store i64 0, ptr %i.ey, align 8, !alias.scope !6293, !noalias !6294
  store ptr inttoptr (i64 8 to ptr), ptr %i.ly, align 8, !alias.scope !6293, !noalias !6294
  store i64 0, ptr %i.lz, align 8, !alias.scope !6293, !noalias !6294
  br label %bb.rv

bb.rh:                                            ; preds = %bb.ri
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$17h02c1bed0b7966947E"(ptr nonnull %i.bby) #43
          to label %.body579.thread unwind label %bb.rn, !noalias !6295

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i574: ; preds = %.noexc578
  %.val10.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !6296, !noalias !6297, !nonnull !11, !noundef !11
  %.val11.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i572, align 8, !alias.scope !6296, !noalias !6297, !nonnull !11, !noundef !11
  %i.bca = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.bcb = ptrtoint ptr %.val10.i.i.i.i.i to i64
  %i.bcc = sub nuw i64 %i.bca, %i.bcb
  %i.bcd = udiv exact i64 %i.bcc, 72
  %i.bce = call i64 @llvm.umax.i64(i64 %i.bcd, i64 3)
  %.sroa.0.0.i.i.i.i.i.i575 = add nuw nsw i64 %i.bce, 1 ; 2 uses
  %i.bcf = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i575, 4 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6298
  %i.bcg = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bcf, i64 noundef range(i64 1, 9) 8) #40, !noalias !6298 ; 5 uses
  %i.bch = icmp eq ptr %i.bcg, null
  br i1 %i.bch, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i574
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bcf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @411) #41
          to label %.noexc.i.i.i.i.i unwind label %bb.rh, !noalias !6295

.noexc.i.i.i.i.i:                                 ; preds = %bb.ri
  unreachable

bb.rj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i574
  %i.bci = extractvalue { i32, ptr } %i.bbw, 0
  store i32 %i.bci, ptr %i.bcg, align 8, !noalias !6295
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8
  store ptr %i.bby, ptr %i.bcj, align 8, !noalias !6295
  store i64 %.sroa.0.0.i.i.i.i.i.i575, ptr %i.bb, align 8, !noalias !6292
  store ptr %i.bcg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6292
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !6292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !6297
  call void @llvm.experimental.noalias.scope.decl(metadata !6299)
  call void @llvm.experimental.noalias.scope.decl(metadata !6300)
  call void @llvm.experimental.noalias.scope.decl(metadata !6301)
  call void @llvm.experimental.noalias.scope.decl(metadata !6302)
  %i.bck = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfbd4f86cdc676a1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !6295 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %bb.rj
  %i.bcl = extractvalue { i32, ptr } %i.bck, 1    ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.bcl, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hde903861fd959ad0E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i576

.lr.ph.i.i.i.i.i.i.i576:                          ; preds = %.noexc12.i.i.i.i.i, %.noexc13.i.i.i.i.i
  %i.bcm = phi ptr [ %i.bcu, %.noexc13.i.i.i.i.i ], [ %i.bcg, %.noexc12.i.i.i.i.i ]
  %i.bcn = phi i64 [ %i.bcx, %.noexc13.i.i.i.i.i ], [ 1, %.noexc12.i.i.i.i.i ] ; 5 uses
  %i.bco = phi ptr [ %i.bcz, %.noexc13.i.i.i.i.i ], [ %i.bcl, %.noexc12.i.i.i.i.i ] ; 2 uses
  %i.bcp = phi { i32, ptr } [ %i.bcy, %.noexc13.i.i.i.i.i ], [ %i.bck, %.noexc12.i.i.i.i.i ]
  %i.bcq = extractvalue { i32, ptr } %i.bcp, 0
  %i.bcr = icmp samesign ult i64 %i.bcn, 576460752303423488
  call void @llvm.assume(i1 %i.bcr)
  %i.bcs = load i64, ptr %i.bb, align 8, !range !34, !alias.scope !6303, !noalias !6304, !noundef !11
  %i.bct = icmp eq i64 %i.bcn, %i.bcs
  br i1 %i.bct, label %bb.rl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i_crit_edge.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i576
  %i.bcu = phi ptr [ %.pre.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i_crit_edge.i.i.i.i.i" ], [ %i.bcm, %.lr.ph.i.i.i.i.i.i.i576 ] ; 2 uses
  %i.bcv = getelementptr inbounds nuw [16 x i8], ptr %i.bcu, i64 %i.bcn ; 2 uses
  store i32 %i.bcq, ptr %i.bcv, align 8, !noalias !6305
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 8
  store ptr %i.bco, ptr %i.bcw, align 8, !noalias !6305
  %i.bcx = add nuw nsw i64 %i.bcn, 1              ; 2 uses
  store i64 %i.bcx, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6303, !noalias !6304
  %i.bcy = invoke fastcc { i32, ptr } @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdfbd4f86cdc676a1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %.noexc13.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !6295 ; 2 uses

.noexc13.i.i.i.i.i:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i.i.i.i.i.i"
  %i.bcz = extractvalue { i32, ptr } %i.bcy, 1    ; 2 uses
  %.not.i.i.i.i.i.i.i577 = icmp eq ptr %i.bcz, null
  br i1 %.not.i.i.i.i.i.i.i577, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hde903861fd959ad0E.exit.i.i.i.i.i.loopexit", label %.lr.ph.i.i.i.i.i.i.i576

bb.rk:                                            ; preds = %bb.rl
  %i.bda = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$17h02c1bed0b7966947E"(ptr nonnull %i.bco) #43
          to label %.body.i.i.i.i.i unwind label %bb.rm, !noalias !6305

bb.rl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i576
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %i.lx, align 8, !alias.scope !6306, !noalias !6307, !nonnull !11, !noundef !11
  %i.bdb = ptrtoint ptr %.val10.i.i.i.i.i.i.i to i64
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !6306, !noalias !6307, !nonnull !11, !noundef !11
  %i.bdc = ptrtoint ptr %.val9.i.i.i.i.i.i.i to i64
  %i.bdd = sub nuw i64 %i.bdb, %i.bdc
  %i.bde = udiv exact i64 %i.bdd, 72
  %i.bdf = add nuw nsw i64 %i.bde, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bcn, i64 noundef range(i64 1, 0) %i.bdf, i64 noundef 8, i64 noundef 16)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i_crit_edge.i.i.i.i.i" unwind label %bb.rk, !noalias !6308

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i_crit_edge.i.i.i.i.i": ; preds = %bb.rl
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !6303, !noalias !6304
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i.i.i.i.i.i"

bb.rm:                                            ; preds = %bb.rk
  %i.bdg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !6305
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfc0183d1ccba59c2E.exit.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.rj
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.rk
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bda, %bb.rk ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$RP$$GT$$GT$17he11dfda7d755485eE"(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #43
          to label %.body579.thread unwind label %bb.rn, !noalias !6295

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hde903861fd959ad0E.exit.i.i.i.i.i.loopexit": ; preds = %.noexc13.i.i.i.i.i
  %.pre.pre = load ptr, ptr %i.lv, align 8
  %.pre4798.pre = load i64, ptr %i.lw, align 8
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hde903861fd959ad0E.exit.i.i.i.i.i"

end_hunk_2
begin_hunk_3_@"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h902a56d723b58352E":bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9f1733cf7dc3d9daE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @467, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @398)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @465, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hd92a7b182d123e7eE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !32, !noundef !11
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @467, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @407)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @465, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hf4acc279b7e6f7deE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !72, !noundef !11
  %.not = icmp eq i64 %i.b, 18
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @467, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @406)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @465, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h66ec1f5d64ffe788E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !11 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24118)
  %i.d = icmp slt i64 %.val1, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24119
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1, i64 noundef range(i64 1, 9) 1) #40, !noalias !24119 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !24120)
  call void @llvm.experimental.noalias.scope.decl(metadata !24121)
  %.val.i.i = load i64, ptr %0, align 8, !range !34, !alias.scope !24122, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !24122
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val1, i1 false), !noalias !24123
  store i64 %.val1, ptr %i.a, align 8, !alias.scope !24124
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !24124
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24124
  %i.j = invoke noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17hb8996a9e87ccd651E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !24125)
  call void @llvm.experimental.noalias.scope.decl(metadata !24126)
  %.val.i.i2 = load i64, ptr %0, align 8, !range !34, !alias.scope !24127, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i2, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit4", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i.i2, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !24127
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit4": ; preds = %bb.g, %bb.h
  ret ptr %i.j

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17ha4522ab5e6b45a6eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !18, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24131
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %i.a, align 8, !noalias !24131
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @453, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @454, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @452), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24131
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h524fcf8a90b444b6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24141
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !24141
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !24141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h86391b55670e5b6eE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24142
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #40, !noalias !24142 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41, !noalias !24141
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !24141
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !24141
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h86391b55670e5b6eE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h86391b55670e5b6eE.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24141
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797)
          to label %bb.e unwind label %bb.f, !noalias !24143

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !24143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24141
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h86391b55670e5b6eE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !24144, !noalias !24141
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hf74f41023ad05a39E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43, !noalias !24143
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h86391b55670e5b6eE.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"
  %2 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i" ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %2, align 8, !noalias !24141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !24145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24141
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h585f44d6fbcf04ffE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.018.i = alloca [152 x i8], align 8       ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24159
  %i.f = mul i64 %.16.val, 160                    ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 57646075230342348
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.h = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.h)
  store i64 0, ptr %i.e, align 8, !noalias !24159
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !24159
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf6f234b7fa7c3adaE.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24160
  %i.k = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #40, !noalias !24160 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41, !noalias !24159
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.e, align 8, !noalias !24159
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !24159
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf6f234b7fa7c3adaE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i", %bb.k
  %.sroa.013.033.i = phi ptr [ %i.s, %bb.k ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ] ; 4 uses
  %.sroa.7.032.i = phi i64 [ %i.t, %bb.k ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.p, %bb.k ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ]
  %i.p = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.q = icmp eq ptr %.sroa.013.033.i, %i.o
  br i1 %i.q, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf6f234b7fa7c3adaE.exit", label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 160
  %i.t = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24162
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.033.i, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !24163, !noalias !24164, !nonnull !11, !noundef !11 ; 5 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !16

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc.i unwind label %bb.d, !noalias !24165

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %.val.i.i, align 8, !noalias !24166, !noundef !11 ; 3 uses
  %i.y = and i64 %i.x, 72057594037927935          ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = and i64 %i.x, 1080863910568919040
  %i.ac = icmp ult i64 %i.x, 864691128455135232
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = or i64 %i.aa, %i.ab
  store i64 %i.ad, ptr %.val.i.i, align 8, !noalias !24166
  %i.ae = icmp eq i64 %i.y, 72057594037927935
  br i1 %i.ae, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !17

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24162
  store ptr @746, ptr %i.b, align 8, !noalias !24162
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !24162
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !24162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !24162
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !24162
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc12.i unwind label %bb.d, !noalias !24165

.noexc12.i:                                       ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.g, %bb.e
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !24162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24162
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.013.033.i)
          to label %bb.k unwind label %bb.i, !noalias !24164

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #43
          to label %bb.m unwind label %bb.j, !noalias !24164

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24164
  unreachable

bb.k:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !24159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24162
  %i.al = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %.sroa.7.032.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.018.i, i64 152, i1 false), !noalias !24165
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr %.val.i.i, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !24165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  %i.am = icmp eq i64 %i.p, 0
  br i1 %i.am, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf6f234b7fa7c3adaE.exit", label %.lr.ph.i

bb.l:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24165
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.aj, %bb.i ]
  store i64 %.sroa.7.032.i, ptr %i.n, align 8, !alias.scope !24167, !noalias !24159
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hd4c8d61ef97f7f62E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %bb.n unwind label %bb.l, !noalias !24165

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf6f234b7fa7c3adaE.exit": ; preds = %.lr.ph.i, %bb.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"
  %2 = phi ptr [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i" ], [ %i.n, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ], [ %i.n, %bb.k ], [ %i.n, %.lr.ph.i ]
  store i64 %.16.val, ptr %2, align 8, !noalias !24159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !24158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24159
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd6f0c7aa8b583974E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24181
  %i.e = mul i64 %.16.val, 48                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.g = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.d, align 8, !noalias !24181
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !24181
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h680def70168a5539E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24182
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #40, !noalias !24182 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41, !noalias !24181
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.d, align 8, !noalias !24181
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !24181
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h680def70168a5539E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i, %.lr.ph.i
  %.sroa.013.027.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.r, %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i ] ; 4 uses
  %.sroa.7.026.i = phi i64 [ 0, %.lr.ph.i ], [ %i.s, %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %.16.val, %.lr.ph.i ], [ %i.o, %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i ]
  %i.o = add nsw i64 %.sroa.10.025.i, -1          ; 2 uses
  %i.p = icmp eq ptr %.sroa.013.027.i, %i.n
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h680def70168a5539E.exit", label %bb.f

bb.e:                                             ; preds = %bb.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 48
  %i.s = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24184)
  %.val.i.i = load ptr, ptr %.sroa.013.027.i, align 8, !alias.scope !24185, !noalias !24186, !nonnull !11, !noundef !11 ; 4 uses
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = and i64 %i.t, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !16

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc.i unwind label %bb.e, !noalias !24181

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = load i64, ptr %.val.i.i, align 8, !noalias !24187, !noundef !11 ; 3 uses
  %i.w = and i64 %i.v, 72057594037927935          ; 3 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = and i64 %i.v, 1080863910568919040
  %i.aa = icmp ult i64 %i.v, 864691128455135232
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = or i64 %i.y, %i.z
  store i64 %i.ab, ptr %.val.i.i, align 8, !noalias !24187
  %i.ac = icmp eq i64 %i.w, 72057594037927935
  br i1 %i.ac, label %bb.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !17

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24187
  store ptr @746, ptr %i.b, align 8, !noalias !24187
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !24187
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ae, align 8, !noalias !24187
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !24187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ag, align 8, !noalias !24187
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc12.i unwind label %bb.e, !noalias !24181

.noexc12.i:                                       ; preds = %bb.i
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.h, %bb.f
  store ptr %.val.i.i, ptr %i.c, align 8, !alias.scope !24183, !noalias !24188
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 8
  invoke fastcc void @"_ZN76_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..clone..Clone$GT$5clone17hdd3551ea46b2b5fbE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah)
          to label %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i unwind label %bb.j, !noalias !24189

bb.j:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #43
          to label %bb.m unwind label %bb.k, !noalias !24188

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24187
  unreachable

_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i"
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.7.026.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !24181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24181
  %i.al = icmp eq i64 %i.o, 0
  br i1 %i.al, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h680def70168a5539E.exit", label %bb.d

bb.l:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24181
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.ai, %bb.j ]
  store i64 %.sroa.7.026.i, ptr %i.m, align 8, !alias.scope !24190, !noalias !24181
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h8b9bb3b81b2a645bE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43
          to label %bb.n unwind label %bb.l, !noalias !24181

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h680def70168a5539E.exit": ; preds = %bb.d, %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i"
  %3 = phi ptr [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i" ], [ %i.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i" ], [ %i.m, %_ZN4core5clone5Clone5clone17ha6c66c7e142f2baeE.exit.i ], [ %i.m, %bb.d ]
  store i64 %.16.val, ptr %3, align 8, !noalias !24181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !24180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24181
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24237)
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !24236, !noalias !24237, !noundef !11 ; 5 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 9          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !15, !alias.scope !24237, !noalias !24236, !noundef !11 ; 4 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread" [
    i64 6, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit"
    i64 7, label %bb.c
    i64 8, label %.split18
    i64 9, label %bb.d
    i64 10, label %bb.f
    i64 11, label %bb.m
    i64 12, label %bb.q
    i64 13, label %.split11
    i64 14, label %.split19
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24239)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !24238, !noalias !24239, !nonnull !11, !align !18, !noundef !11
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !24239, !noalias !24238, !nonnull !11, !align !18, !noundef !11
  %i.p = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o), !noalias !24240, !inline_history !24197
  br i1 %i.p, label %.split20, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split20:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24242)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !24241, !noalias !24242, !nonnull !11, !align !18, !noundef !11
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !24242, !noalias !24241, !nonnull !11, !align !18, !noundef !11
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t), !noalias !24243, !inline_history !24197
  br i1 %i.u, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split18:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !24236, !noalias !24237, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !24237, !noalias !24236, !noundef !11
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !24236, !noalias !24237, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !24237, !noalias !24236, !noundef !11
  %i.ag = icmp eq i32 %i.ad, %i.af
  %i.ah = icmp eq i64 %i.a, %i.f
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %bb.e, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq i64 %i.a, 0
  br i1 %i.ai, label %.split17, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit"

"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit": ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN90_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hacec02b410012bc2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak)
  br i1 %i.al, label %.split17, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split17:                                         ; preds = %bb.e, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24245)
  %i.am = load ptr, ptr %i.aa, align 8, !alias.scope !24244, !noalias !24245, !nonnull !11, !align !18, !noundef !11
  %i.an = load ptr, ptr %i.ab, align 8, !alias.scope !24245, !noalias !24244, !nonnull !11, !align !18, !noundef !11
  %i.ao = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.an), !noalias !24246, !inline_history !24197
  br i1 %i.ao, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24250)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !range !21, !alias.scope !24251, !noalias !24252, !noundef !11 ; 3 uses
  %i.at = icmp ne i32 %i.as, 4
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nsw i32 %i.as, -3
  %i.av = icmp samesign ugt i32 %i.as, 2
  %narrow.i.i2 = select i1 %i.av, i32 %i.au, i32 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !range !21, !alias.scope !24252, !noalias !24251, !noundef !11 ; 3 uses
  %i.ay = icmp ne i32 %i.ax, 4
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nsw i32 %i.ax, -3
  %i.ba = icmp samesign ugt i32 %i.ax, 2
  %narrow3.i.i = select i1 %i.ba, i32 %i.az, i32 1
  %i.bb = icmp eq i32 %narrow.i.i2, %narrow3.i.i
  br i1 %i.bb, label %bb.g, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.g:                                             ; preds = %bb.f
  switch i32 %narrow.i.i2, label %bb.h [
    i32 1, label %bb.i
    i32 2, label %.split16
    i32 0, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread"
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !alias.scope !24251, !noalias !24252, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !24252, !noalias !24251, !noundef !11
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ap, align 8, !alias.scope !24251, !noalias !24252, !align !18, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr %i.aq, align 8, !alias.scope !24252, !noalias !24251, !align !18, !noundef !11 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null                 ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.bl, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit", label %.split

bb.l:                                             ; preds = %bb.j
  br i1 %i.bl, label %.split12, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split:                                           ; preds = %bb.k
  %i.bm = tail call fastcc noundef zeroext i1 @"_ZN68_$LT$nickel_lang_core..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd96e0ed23e7e50aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bk), !noalias !24253, !inline_history !24213
  br i1 %i.bm, label %.split12, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split12:                                         ; preds = %.split, %bb.l
  %i.bn = tail call fastcc noundef zeroext i1 @"_ZN71_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31e0a61ab6a527e8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd), !inline_history !24214
  br i1 %i.bn, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

.split16:                                         ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !24251, !noalias !24252, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !24252, !noalias !24251, !noundef !11
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread", label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.m:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24257)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !range !22, !alias.scope !24258, !noalias !24259, !noundef !11 ; 3 uses
  %i.bx = icmp ne i32 %i.bw, 4
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nsw i32 %i.bw, -3
  %i.bz = icmp samesign ugt i32 %i.bw, 2
  %narrow.i.i = select i1 %i.bz, i32 %i.by, i32 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !range !22, !alias.scope !24259, !noalias !24258, !noundef !11 ; 3 uses
  %i.cc = icmp ne i32 %i.cb, 4
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = add nsw i32 %i.cb, -3
  %i.ce = icmp samesign ugt i32 %i.cb, 2
  %narrow2.i.i = select i1 %i.ce, i32 %i.cd, i32 1
  %i.cf = icmp eq i32 %narrow.i.i, %narrow2.i.i
  br i1 %i.cf, label %bb.n, label %"_ZN78_$LT$nickel_lang_parser..position..TermPos$u20$as$u20$core..cmp..PartialEq$GT$2eq17h31b360b14548dc95E.exit"

bb.n:                                             ; preds = %bb.m
  switch i32 %narrow.i.i, label %"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h5620fb7f4f8a4bfcE.exit.thread" [
    i32 1, label %bb.o
    i32 2, label %.split15
  ]

bb.o:                                             ; preds = %bb.n
end_hunk_3
begin_hunk_4_@"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E":bb.a

bb.q:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit27.i.i.i"
  store i64 %.sroa.051.0.copyload52.i.i.i, ptr %i.g, align 8, !noalias !24345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.753.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.753.i.i.i, i64 16, i1 false), !noalias !24345
  store i64 %.sroa.0.0.i2.i19.i.i.i, ptr %.sroa.755.0..sroa_idx.i.i.i, align 8, !noalias !24345
  store ptr %.sroa.6.0.i.i18.i.i.i, ptr %.sroa.856.0..sroa_idx.i.i.i, align 8, !noalias !24345
  store i64 %.sroa.7.0.i.i17.i.i.i, ptr %.sroa.957.0..sroa_idx.i.i.i, align 8, !noalias !24345
  call void @llvm.experimental.noalias.scope.decl(metadata !24352)
  %i.be = load i64, ptr %i.ac, align 8, !alias.scope !24353, !noalias !24354, !noundef !11 ; 2 uses
  %i.bf = icmp ugt i64 %i.be, 1                   ; 2 uses
  %i.bg = load ptr, ptr %i.h, align 8, !alias.scope !24353, !noalias !24354, !nonnull !11
  %.sink10.i.i.i.i.i = select i1 %i.bf, ptr %i.bg, ptr %i.h
  %.sink9.i.i.i.i.i = select i1 %i.bf, ptr %i.ad, ptr %i.ac ; 2 uses
  %.sink.i.i28.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bh = load i64, ptr %.sink9.i.i.i.i.i, align 8, !alias.scope !24355, !noalias !24356, !noundef !11 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %.sink.i.i28.i.i.i
  br i1 %i.bi, label %bb.s, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hae1725aaee8ac4b2E.exit.i.i.i", !prof !17

bb.r:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..label..ContractDiagnostic$GT$17h29b1a9291533d296E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g) #43, !noalias !24357
  br label %.body

bb.s:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hda28aac46f66ff75E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %bb.t unwind label %bb.r, !noalias !24356

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.h, align 8, !alias.scope !24355, !noalias !24356, !nonnull !11, !noundef !11
  %.pre.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !24355, !noalias !24356
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hae1725aaee8ac4b2E.exit.i.i.i"

"_ZN8smallvec17SmallVec$LT$A$GT$4push17hae1725aaee8ac4b2E.exit.i.i.i": ; preds = %bb.t, %bb.q
  %i.bl = phi i64 [ %.pre.i.i.i.i, %bb.t ], [ %i.bh, %bb.q ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ad, %bb.t ], [ %.sink9.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.0.0.i29.i.i.i = phi ptr [ %i.bk, %bb.t ], [ %.sink10.i.i.i.i.i, %bb.q ]
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i29.i.i.i, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !24337
  %i.bn = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !24355, !noalias !24356, !noundef !11
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !24355, !noalias !24356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.753.i.i.i)
  %i.bp = icmp eq ptr %i.ay, %i.ab
  br i1 %i.bp, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit27.thread.i.i.i", label %bb.l

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit27.thread.i.i.i": ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17hae1725aaee8ac4b2E.exit.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit27.i.i.i", %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.753.i.i.i)
  br label %bb.x

bb.u:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.i.i.i": ; preds = %bb.i
  %.sroa.040.0.copyload41.i.i.i = load i64, ptr %i.f, align 8, !noalias !24358 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.0..sroa_idx43.i.i.i, i64 16, i1 false), !noalias !24345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24344
  %.not2.i.i.i = icmp eq i64 %.sroa.040.0.copyload41.i.i.i, -9223372036854775808
  br i1 %.not2.i.i.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.thread.i.i.i", label %bb.v

bb.v:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.i.i.i"
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %.sink10.i.i.i.i, i64 %.sroa.7.084.i.i.i ; 5 uses
  store i64 %.sroa.040.0.copyload41.i.i.i, ptr %i.br, align 8, !noalias !24337
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.742.i.i.i, i64 16, i1 false), !noalias !24337
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %.sroa.0.0.i2.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !24337
  %.sroa.447.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i, align 8, !noalias !24337
  %.sroa.548.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.548.0..sroa_idx.i.i.i, align 8, !noalias !24337
  %i.bs = add nuw i64 %.sroa.7.084.i.i.i, 1       ; 3 uses
  %i.bt = icmp ugt i64 %i.am, %i.bs
  br i1 %i.bt, label %bb.f, label %._crit_edge.i.i.i

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.i.i.i", %bb.f
  store i64 %.sroa.7.084.i.i.i, ptr %.sink9.i.i.i.i, align 8, !alias.scope !24338, !noalias !24337
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.k, %bb.j, %bb.j
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %i.ax, %bb.j ]
  store i64 %.sroa.7.084.i.i.i, ptr %.sink9.i.i.i.i, align 8, !alias.scope !24338, !noalias !24337
  br label %.body

.loopexit.i.i:                                    ; preds = %bb.m
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i:                           ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h0e4dd6b8ec379e38E.exit.thread.i.i.i", %bb.e, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h0e4dd6b8ec379e38E.exit.i.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit.thread.i.i.i", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1a9ebcc1ea6e0191E.exit27.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !24337
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !noundef !11 ; 6 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.bz, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.z
    i64 0, label %bb.aa
  ], !prof !16

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc12 unwind label %bb.ac

.noexc12:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ca = load i64, ptr %i.bx, align 8, !noundef !11 ; 3 uses
  %i.cb = and i64 %i.ca, 72057594037927935        ; 3 uses
  %i.cc = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  %i.ce = and i64 %i.ca, 1080863910568919040
  %i.cf = icmp ult i64 %i.ca, 864691128455135232
  call void @llvm.assume(i1 %i.cf)
  %i.cg = or i64 %i.cd, %i.ce
  store i64 %i.cg, ptr %i.bx, align 8
  %i.ch = icmp eq i64 %i.cb, 72057594037927935
  br i1 %i.ch, label %bb.ab, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cl, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc13 unwind label %bb.ac

.noexc13:                                         ; preds = %bb.ab
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.aa, %bb.y, %bb.x
  store ptr %i.bx, ptr %i.j, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cn = load i32, ptr %i.cm, align 8, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.cp = load i8, ptr %i.co, align 4, !range !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !noundef !11 ; 6 uses
  %.not5 = icmp eq ptr %i.cr, null                ; 2 uses
  br i1 %.not5, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %.val.i14 = load i64, ptr %i.cr, align 8, !noundef !11 ; 2 uses
  %i.ct = icmp ne i64 %.val.i14, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add i64 %.val.i14, 1                    ; 2 uses
  store i64 %i.cu, ptr %i.cr, align 8
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit, !prof !17

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit: ; preds = %bb.ad, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !11
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cz = load i8, ptr %i.cy, align 8, !noundef !11
  store ptr %i.cr, ptr %i.i, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.cx, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 %i.cz, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.dc, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.dd, align 8, !noundef !11 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24359)
  %i.de = shl i64 %.val11, 3                      ; 4 uses
  %i.df = icmp ugt i64 %.val11, 2305843009213693951
  %i.dg = icmp ugt i64 %i.de, 9223372036854775804
  %or.cond.i.i.i.i.i = or i1 %i.df, %i.dg
  br i1 %or.cond.i.i.i.i.i, label %bb.ag, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i", label %bb.af

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.di = icmp eq i64 %.val11, 0
  call void @llvm.assume(i1 %i.di)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit"

bb.af:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24360
  %i.dj = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.de, i64 noundef range(i64 1, 9) 4) #40, !noalias !24360 ; 5 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ag, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i"

bb.ag:                                            ; preds = %bb.af, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.af ], [ 0, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6215af97d3088b18E.exit ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41
          to label %.noexc15 unwind label %bb.ai

.noexc15:                                         ; preds = %bb.ag
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i": ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %.val11
  %2 = icmp eq i64 %.val11, 0
  br i1 %2, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i", %bb.ah
  %.sroa.014.023.i.i = phi ptr [ %i.dp, %bb.ah ], [ %.val10, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ %i.do, %bb.ah ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.dn, %bb.ah ], [ %.val11, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ]
  %i.dm = icmp eq ptr %.sroa.014.023.i.i, %i.dl
  br i1 %i.dm, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit", label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.dn = add nsw i64 %.sroa.10.021.i.i, -1       ; 2 uses
  %i.do = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 8
  %.val12.i.i = load i32, ptr %.sroa.014.023.i.i, align 4, !alias.scope !24359, !noalias !24361, !noundef !11
  %i.dq = getelementptr i8, ptr %.sroa.014.023.i.i, i64 4
  %.val13.i.i = load i8, ptr %i.dq, align 4, !range !12, !alias.scope !24359, !noalias !24361, !noundef !11
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.sroa.7.022.i.i ; 2 uses
  store i32 %.val12.i.i, ptr %i.dr, align 4, !noalias !24362
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i8 %.val13.i.i, ptr %i.ds, align 4, !noalias !24362
  %i.dt = icmp eq i64 %i.dn, 0
  br i1 %i.dt, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit", label %.lr.ph.i.i

"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h636ceb76c1bb7470E.exit": ; preds = %bb.aj, %bb.ai, %bb.ak
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hee62989c5374782eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #43
          to label %.body unwind label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          cleanup
  br i1 %.not5, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h636ceb76c1bb7470E.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = load i64, ptr %i.cr, align 8, !noalias !24363, !noundef !11
  %i.dw = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.dw, ptr %i.cr, align 8, !noalias !24363
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h636ceb76c1bb7470E.exit"

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6d89f56da8e877cbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h636ceb76c1bb7470E.exit" unwind label %bb.an

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit": ; preds = %bb.ah, %.lr.ph.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i"
  %.sroa.10.0.i32.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i" ], [ %i.dj, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ], [ %i.dj, %.lr.ph.i.i ], [ %i.dj, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dz = load i32, ptr %i.dy, align 8, !range !41, !noundef !11 ; 2 uses
  %.not9 = icmp eq i32 %i.dz, 3
  br i1 %.not9, label %bb.am, label %bb.al

bb.al:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e2ff1e2325e1b76E.exit", %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.bv, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bx, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.cn, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.cp, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 %.val11, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i32.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val11, ptr %.sroa.517.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.dz, ptr %i.eh, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.an:                                            ; preds = %bb.ak, %bb.c, %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h636ceb76c1bb7470E.exit"
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h331351c45ee09159E.exit": ; preds = %.body, %bb.c
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h8b60d23ec6531fe8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !31, !noundef !11
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @453, i64 noundef 4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @507, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @509, i64 noundef 8, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @508)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @510, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @509, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @508)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN6base646engine6Engine6encode17h072a70f3d16c248aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24388)
  %.val.i = load i8, ptr %1, align 1, !range !12, !alias.scope !24388, !noalias !24389, !noundef !11
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %i.d = urem i64 %3, 3                           ; 2 uses
  %i.e = udiv i64 %3, 3
  %i.f = shl i64 %i.e, 2                          ; 4 uses
  %i.g = icmp ugt i64 %3, -4611686018427387905
  br i1 %i.g, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %bb.b, !prof !17

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
  br i1 %.not.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i, label %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i, !prof !26

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.d, %bb.b
  %.sroa.7.1.i35.i = phi i64 [ %i.j, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i ], [ %i.i, %bb.d ], [ %i.f, %bb.b ] ; 16 uses
  %i.k = icmp slt i64 %.sroa.7.1.i35.i, 0
  br i1 %i.k, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %i.l = icmp eq i64 %.sroa.7.1.i35.i, 0          ; 3 uses
  br i1 %i.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24390
  %i.m = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.7.1.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !24390 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i"

bb.g:                                             ; preds = %bb.e, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.7.1.i35.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @522) #41, !noalias !24391
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i": ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.o, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ] ; 2 uses
  %i.p = inttoptr i64 %.sroa.10.0.i.i to ptr      ; 6 uses
  %i.q = invoke noundef i64 @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_encode17hb38d5503517c65f5E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %.noexc.i unwind label %bb.s, !noalias !24387 ; 6 uses

.noexc.i:                                         ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i"
  br i1 %i.c, label %bb.h, label %_ZN6base646encode19encode_with_padding17h2e44bf26b181e72bE.exit.i

bb.h:                                             ; preds = %.noexc.i
  %i.r = icmp ugt i64 %i.q, %.sroa.7.1.i35.i
  br i1 %i.r, label %bb.j, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw nsw i64 %.sroa.7.1.i35.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.u = invoke noundef i64 @_ZN6base646encode11add_padding17h4b530db523f4f20eE(i64 noundef %i.q, ptr noalias noundef nonnull align 1 %i.t, i64 noundef %i.s)
          to label %.noexc5.i unwind label %bb.s, !noalias !24387

.noexc5.i:                                        ; preds = %bb.i
  %i.v = xor i64 %i.q, -1
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %_ZN6base646encode19encode_with_padding17h2e44bf26b181e72bE.exit.i, !prof !24392

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.q, i64 noundef %.sroa.7.1.i35.i, i64 noundef %.sroa.7.1.i35.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514) #41
          to label %.noexc6.i unwind label %bb.s, !noalias !24387

.noexc6.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %.noexc5.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @511, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #41
          to label %.noexc7.i unwind label %bb.s, !noalias !24387

.noexc7.i:                                        ; preds = %bb.k
  unreachable

_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.thread38.i: ; preds = %_ZN6base646encode11encoded_len17h1b98b82dde13ac2dE.exit.i, %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @520, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #41, !noalias !24393
  unreachable

_ZN6base646encode19encode_with_padding17h2e44bf26b181e72bE.exit.i: ; preds = %.noexc5.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24394
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.p, i64 noundef %.sroa.7.1.i35.i)
          to label %bb.n unwind label %bb.l, !noalias !24395

bb.l:                                             ; preds = %_ZN6base646encode19encode_with_padding17h2e44bf26b181e72bE.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.l, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5ad5ad5b6ffce0daE.exit.i", label %bb.m
end_hunk_4
begin_hunk_5_@"_ZN77_$LT$nickel_lang_core..error..EvalErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17h9fe8f424cf8fb406E":bb.a
  %..i32 = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2)
  switch i64 %..i32, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit34" [
    i64 2, label %bb.m
    i64 0, label %bb.n
  ], !prof !16

bb.m:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc unwind label %bb.ds

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  %i.cj = load i64, ptr %.val24, align 8, !noundef !11 ; 3 uses
  %i.ck = and i64 %i.cj, 72057594037927935        ; 3 uses
  %i.cl = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  %i.cn = and i64 %i.cj, 1080863910568919040
  %i.co = icmp ult i64 %i.cj, 864691128455135232
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = or i64 %i.cm, %i.cn
  store i64 %i.cp, ptr %.val24, align 8
  %i.cq = icmp eq i64 %i.ck, 72057594037927935
  br i1 %i.cq, label %bb.o, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit34", !prof !17

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @746, ptr %i.x, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.cu, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc33 unwind label %bb.ds

.noexc33:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val30 = load ptr, ptr %i.cx, align 8, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val31 = load i64, ptr %i.cy, align 8, !noundef !11 ; 5 uses
  %i.cz = mul i64 %.val31, 20                     ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.val31, 461168601842738790
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.p
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24867
  %i.db = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cz, i64 noundef range(i64 1, 9) 4) #40, !noalias !24867 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.r, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit"

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.q ], [ 0, %bb.p ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41, !noalias !24868
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb740f8ff4b54027dE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.q
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.db, %bb.q ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %.val31, %bb.q ] ; 4 uses
  %i.dd = icmp samesign ule i64 %.val31, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.dd)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i, ptr nonnull readonly align 4 %.val30, i64 %i.cz, i1 false), !noalias !24869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
          to label %bb.dv unwind label %bb.dt

bb.s:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @709)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = load i32, ptr %i.dh, align 8, !noundef !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dg, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.di, ptr %i.dl, align 8
  store i64 27, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cs

bb.t:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.val23 = load ptr, ptr %i.dm, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.do = ptrtoint ptr %.val23 to i64
  %i.dp = and i64 %i.do, 3
  %..i35 = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 2)
  switch i64 %..i35, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit36" [
    i64 2, label %bb.u
    i64 0, label %bb.v
  ], !prof !16

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dq = load i64, ptr %.val23, align 8, !noundef !11 ; 3 uses
  %i.dr = and i64 %i.dq, 72057594037927935        ; 3 uses
  %i.ds = icmp ne i64 %i.dr, 0
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = add nuw nsw i64 %i.dr, 1
  %i.du = and i64 %i.dq, 1080863910568919040
  %i.dv = icmp ult i64 %i.dq, 864691128455135232
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = or i64 %i.dt, %i.du
  store i64 %i.dw, ptr %.val23, align 8
  %i.dx = icmp eq i64 %i.dr, 72057594037927935
  br i1 %i.dx, label %bb.w, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit36", !prof !17

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @746, ptr %i.w, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %i.eb, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit36": ; preds = %bb.t, %bb.v
  store ptr %.val23, ptr %i.ai, align 8
  %.val22 = load ptr, ptr %i.dn, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.ec = ptrtoint ptr %.val22 to i64
  %i.ed = and i64 %i.ec, 3
  %..i37 = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 2)
  switch i64 %..i37, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit40" [
    i64 2, label %bb.x
    i64 0, label %bb.y
  ], !prof !16

bb.x:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit36"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc38 unwind label %bb.dw

.noexc38:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit36"
  %i.ee = load i64, ptr %.val22, align 8, !noundef !11 ; 3 uses
  %i.ef = and i64 %i.ee, 72057594037927935        ; 3 uses
  %i.eg = icmp ne i64 %i.ef, 0
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %i.ef, 1
  %i.ei = and i64 %i.ee, 1080863910568919040
  %i.ej = icmp ult i64 %i.ee, 864691128455135232
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = or i64 %i.eh, %i.ei
  store i64 %i.ek, ptr %.val22, align 8
  %i.el = icmp eq i64 %i.ef, 72057594037927935
  br i1 %i.el, label %bb.z, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit40", !prof !17

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @746, ptr %i.v, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr null, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %i.ep, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc39 unwind label %bb.dw

.noexc39:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  br label %bb.cs

bb.ab:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val26 = load ptr, ptr %i.eq, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val27 = load i64, ptr %i.er, align 8, !noundef !11 ; 8 uses
  %i.es = shl i64 %.val27, 5                      ; 4 uses
  %i.et = icmp ugt i64 %.val27, 576460752303423487
  %i.eu = icmp ugt i64 %i.es, 9223372036854775804
  %or.cond.i.i.i.i.i41 = or i1 %i.et, %i.eu
  br i1 %or.cond.i.i.i.i.i41, label %bb.ad, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i42, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i42: ; preds = %bb.ab
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i", label %bb.ac

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i42
  %i.ew = icmp eq i64 %.val27, 0
  tail call void @llvm.assume(i1 %i.ew)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit"

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i42
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24870
  %i.ex = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.es, i64 noundef range(i64 1, 9) 4) #40, !noalias !24870 ; 5 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.ad, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i"

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.4.0.ph.i.i.i44 = phi i64 [ 4, %bb.ac ], [ 0, %bb.ab ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i44, i64 %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41, !noalias !24871
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i": ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %.val26, i64 %.val27
  %2 = icmp eq i64 %.val27, 0
  br i1 %2, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i", %bb.ae
  %.sroa.014.023.i.i = phi ptr [ %i.fd, %bb.ae ], [ %.val26, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.fc, %bb.ae ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %i.fb, %bb.ae ], [ %.val27, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ]
  %i.fa = icmp eq ptr %.sroa.014.023.i.i, %i.ez
  br i1 %i.fa, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.fb = add nsw i64 %.sroa.10.021.i.i, -1       ; 2 uses
  %i.fc = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i, i64 32
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %.sroa.7.022.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fe, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.014.023.i.i, i64 32, i1 false), !noalias !24872
  %i.ff = icmp eq i64 %i.fb, 0
  br i1 %i.ff, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit", label %.lr.ph.i.i

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha1912ccd32589311E.exit": ; preds = %.lr.ph.i.i, %bb.ae, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i"
  %.sroa.10.0.i32.i.i = phi ptr [ inttoptr (i64 4 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i" ], [ %i.ex, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i" ], [ %i.ex, %bb.ae ], [ %i.ex, %.lr.ph.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !noundef !11
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val27, ptr %i.fi, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i32.i.i, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val27, ptr %.sroa.5122.0..sroa_idx, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fh, ptr %i.fj, align 8
  store i64 30, ptr %0, align 8
  br label %bb.cs

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24873)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.fk, align 8, !alias.scope !24873, !noalias !24874, !nonnull !11, !noundef !11 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load i64, ptr %i.fl, align 8, !alias.scope !24873, !noalias !24874, !noundef !11 ; 9 uses
  %i.fm = shl i64 %.val1.i, 4                     ; 5 uses
  %i.fn = icmp ugt i64 %.val1.i, 1152921504606846975
  %i.fo = icmp ugt i64 %i.fm, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.fn, %i.fo
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ah, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.af
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i", label %bb.ag

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.fq = icmp eq i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.fq)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"

bb.ag:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !24875
  %i.fr = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fm, i64 noundef range(i64 1, 9) 8) #40, !noalias !24875 ; 5 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.ah, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i"

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ag ], [ 0, %bb.af ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.fm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41, !noalias !24876
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i": ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.val1.i
  %3 = icmp eq i64 %.val1.i, 0
  br i1 %3, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i", %bb.ai
  %.sroa.014.023.i.i.i = phi ptr [ %i.fx, %bb.ai ], [ %.val.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.fw, %bb.ai ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.fv, %bb.ai ], [ %.val1.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ]
  %i.fu = icmp eq ptr %.sroa.014.023.i.i.i, %i.ft
  br i1 %i.fu, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i", label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.fv = add nsw i64 %.sroa.10.021.i.i.i, -1     ; 2 uses
  %i.fw = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i.i.i, i64 16
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %.sroa.7.022.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.023.i.i.i, i64 16, i1 false), !noalias !24877
  %i.fz = icmp eq i64 %i.fv, 0
  br i1 %i.fz, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i", label %.lr.ph.i.i.i

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i": ; preds = %bb.ai, %.lr.ph.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i"
  %.sroa.10.0.i32.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i" ], [ %i.fr, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ], [ %i.fr, %.lr.ph.i.i.i ], [ %i.fr, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !24878
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24880)
  %i.gb = load i64, ptr %i.ga, align 8, !range !62, !alias.scope !24881, !noalias !24882, !noundef !11 ; 3 uses
  %i.gc = icmp ne i64 %i.gb, -9223372036854775803
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = add nsw i64 %i.gb, 9223372036854775807
  %i.ge = icmp ugt i64 %i.gb, -9223372036854775808
  %i.gf = select i1 %i.ge, i64 %i.gd, i64 4
  switch i64 %i.gf, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.an
    i64 2, label %bb.aq
    i64 3, label %bb.at
    i64 4, label %bb.aw
    i64 5, label %bb.az
    i64 6, label %bb.bc
  ]

bb.aj:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  unreachable

bb.ak:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gi = load i8, ptr %i.gh, align 8, !range !76, !alias.scope !24881, !noalias !24882, !noundef !11
  %.val5.i.i = load ptr, ptr %i.gg, align 8, !alias.scope !24881, !noalias !24882, !nonnull !11, !noundef !11 ; 4 uses
  %i.gj = ptrtoint ptr %.val5.i.i to i64
  %i.gk = and i64 %i.gj, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 2)
  switch i64 %..i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.al
  ], !prof !16

bb.al:                                            ; preds = %bb.ak
  %i.gl = load i64, ptr %.val5.i.i, align 8, !noalias !24883, !noundef !11 ; 3 uses
  %i.gm = and i64 %i.gl, 72057594037927935        ; 3 uses
  %i.gn = icmp ne i64 %i.gm, 0
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  %i.gp = and i64 %i.gl, 1080863910568919040
  %i.gq = icmp ult i64 %i.gl, 864691128455135232
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = or i64 %i.go, %i.gp
  store i64 %i.gr, ptr %.val5.i.i, align 8, !noalias !24883
  %i.gs = icmp eq i64 %i.gm, 72057594037927935
  br i1 %i.gs, label %bb.am, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i", !prof !17

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !24883
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i": ; preds = %bb.al, %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.gi, ptr %i.gt, align 8, !alias.scope !24879, !noalias !24884
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val5.i.i, ptr %i.gu, align 8, !alias.scope !24879, !noalias !24884
  store i64 -9223372036854775807, ptr %i.u, align 8, !alias.scope !24879, !noalias !24884
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.an:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i.i = load ptr, ptr %i.gv, align 8, !alias.scope !24881, !noalias !24882, !nonnull !11, !noundef !11 ; 4 uses
  %i.gw = ptrtoint ptr %.val4.i.i to i64
  %i.gx = and i64 %i.gw, 3
  %..i6.i.i = tail call i64 @llvm.umin.i64(i64 %i.gx, i64 2)
  switch i64 %..i6.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ao
  ], !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.gy = load i64, ptr %.val4.i.i, align 8, !noalias !24883, !noundef !11 ; 3 uses
  %i.gz = and i64 %i.gy, 72057594037927935        ; 3 uses
  %i.ha = icmp ne i64 %i.gz, 0
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = add nuw nsw i64 %i.gz, 1
  %i.hc = and i64 %i.gy, 1080863910568919040
  %i.hd = icmp ult i64 %i.gy, 864691128455135232
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = or i64 %i.hb, %i.hc
  store i64 %i.he, ptr %.val4.i.i, align 8, !noalias !24883
  %i.hf = icmp eq i64 %i.gz, 72057594037927935
  br i1 %i.hf, label %bb.ap, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i", !prof !17

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !24883
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit7.i.i": ; preds = %bb.ao, %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val4.i.i, ptr %i.hg, align 8, !alias.scope !24879, !noalias !24884
  store i64 -9223372036854775806, ptr %i.u, align 8, !alias.scope !24879, !noalias !24884
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.aq:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i.i = load ptr, ptr %i.hh, align 8, !alias.scope !24881, !noalias !24882, !nonnull !11, !noundef !11 ; 4 uses
  %i.hi = ptrtoint ptr %.val3.i.i to i64
  %i.hj = and i64 %i.hi, 3
  %..i8.i.i = tail call i64 @llvm.umin.i64(i64 %i.hj, i64 2)
  switch i64 %..i8.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ar
  ], !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.hk = load i64, ptr %.val3.i.i, align 8, !noalias !24883, !noundef !11 ; 3 uses
  %i.hl = and i64 %i.hk, 72057594037927935        ; 3 uses
  %i.hm = icmp ne i64 %i.hl, 0
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = add nuw nsw i64 %i.hl, 1
  %i.ho = and i64 %i.hk, 1080863910568919040
  %i.hp = icmp ult i64 %i.hk, 864691128455135232
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = or i64 %i.hn, %i.ho
  store i64 %i.hq, ptr %.val3.i.i, align 8, !noalias !24883
  %i.hr = icmp eq i64 %i.hl, 72057594037927935
  br i1 %i.hr, label %bb.as, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i", !prof !17

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24883
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit9.i.i": ; preds = %bb.ar, %bb.aq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val3.i.i, ptr %i.hs, align 8, !alias.scope !24879, !noalias !24884
  store i64 -9223372036854775805, ptr %i.u, align 8, !alias.scope !24879, !noalias !24884
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.at:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i = load ptr, ptr %i.ht, align 8, !alias.scope !24881, !noalias !24882, !nonnull !11, !noundef !11 ; 4 uses
  %i.hu = ptrtoint ptr %.val2.i.i to i64
  %i.hv = and i64 %i.hu, 3
  %..i10.i.i = tail call i64 @llvm.umin.i64(i64 %i.hv, i64 2)
  switch i64 %..i10.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.au
  ], !prof !16

bb.au:                                            ; preds = %bb.at
  %i.hw = load i64, ptr %.val2.i.i, align 8, !noalias !24883, !noundef !11 ; 3 uses
  %i.hx = and i64 %i.hw, 72057594037927935        ; 3 uses
  %i.hy = icmp ne i64 %i.hx, 0
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = add nuw nsw i64 %i.hx, 1
  %i.ia = and i64 %i.hw, 1080863910568919040
  %i.ib = icmp ult i64 %i.hw, 864691128455135232
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = or i64 %i.hz, %i.ia
  store i64 %i.ic, ptr %.val2.i.i, align 8, !noalias !24883
  %i.id = icmp eq i64 %i.hx, 72057594037927935
  br i1 %i.id, label %bb.av, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i", !prof !17

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24883
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit11.i.i": ; preds = %bb.au, %bb.at
  %i.ie = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val2.i.i, ptr %i.ie, align 8, !alias.scope !24879, !noalias !24884
  store i64 -9223372036854775804, ptr %i.u, align 8, !alias.scope !24879, !noalias !24884
  br label %"_ZN86_$LT$nickel_lang_core..error..PointedExportErrorData$u20$as$u20$core..clone..Clone$GT$5clone17h7dae43eac0fbfbf1E.exit"

bb.aw:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe8c425064537e2E.exit.i"
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24883
  %.val1.i.i = load ptr, ptr %i.if, align 8, !alias.scope !24881, !noalias !24882, !nonnull !11, !noundef !11 ; 5 uses
  %i.ig = ptrtoint ptr %.val1.i.i to i64
  %i.ih = and i64 %i.ig, 3
  %..i12.i.i = tail call i64 @llvm.umin.i64(i64 %i.ih, i64 2)
  switch i64 %..i12.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i" [
    i64 2, label %.invoke25.i
    i64 0, label %bb.ax
  ], !prof !16

bb.ax:                                            ; preds = %bb.aw
  %i.ii = load i64, ptr %.val1.i.i, align 8, !noalias !24883, !noundef !11 ; 3 uses
  %i.ij = and i64 %i.ii, 72057594037927935        ; 3 uses
  %i.ik = icmp ne i64 %i.ij, 0
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = add nuw nsw i64 %i.ij, 1
  %i.im = and i64 %i.ii, 1080863910568919040
  %i.in = icmp ult i64 %i.ii, 864691128455135232
  tail call void @llvm.assume(i1 %i.in)
  %i.io = or i64 %i.il, %i.im
  store i64 %i.io, ptr %.val1.i.i, align 8, !noalias !24883
  %i.ip = icmp eq i64 %i.ij, 72057594037927935
  br i1 %i.ip, label %bb.ay, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i", !prof !17

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24883
  br label %.invoke.i

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit13.i.i": ; preds = %bb.ax, %bb.aw
  store ptr %.val1.i.i, ptr %i.t, align 8, !noalias !24883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !24883
end_hunk_5
begin_hunk_6_@"_ZN82_$LT$nickel_lang..RecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0debd401cda329faE":bb.a

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %i.g, ptr %1, align 8, !alias.scope !25523
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.h) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noundef !11 ; 5 uses
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.h
    i64 0, label %bb.i
  ], !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = load i64, ptr %i.m, align 8, !noundef !11 ; 3 uses
  %i.q = and i64 %i.p, 72057594037927935          ; 3 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  %i.t = and i64 %i.p, 1080863910568919040
  %i.u = icmp ult i64 %i.p, 864691128455135232
  tail call void @llvm.assume(i1 %i.u)
  %i.v = or i64 %i.s, %i.t
  store i64 %i.v, ptr %i.m, align 8
  %i.w = icmp eq i64 %i.q, 72057594037927935
  br i1 %i.w, label %bb.j, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.aa, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.i, %bb.g, %bb.e
  store ptr %i.j, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b64fcef760f84b7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(360) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field5_finish17hdf1a0dbaab5abae2E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @759, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @760, i64 noundef 3, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @755, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @761, i64 noundef 10, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @756, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @762, i64 noundef 3, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @757, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @763, i64 noundef 12, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @757, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @764, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @758)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$nickel_lang_parser..typ..RecordRowF$LT$Ty$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hbed1d6f97f5ce084E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @765, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @618, i64 noundef 2, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @573, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @454, i64 noundef 3, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @469)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$nickel_lang_core..term..record..FieldMetadata$u20$as$u20$core..clone..Clone$GT$5clone17hf594023765471878E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(360) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [256 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [152 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 6 uses
  %i.g = alloca [256 x i8], align 8               ; 5 uses
  %i.h = alloca [256 x i8], align 8               ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 4 uses
  %i.j = alloca [280 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.m = load ptr, ptr %i.l, align 8, !noundef !11 ; 8 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.o = load i64, ptr %i.n, align 8, !noundef !11
  %.val.i = load i64, ptr %i.m, align 8, !noundef !11 ; 2 uses
  %i.p = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.q, ptr %i.m, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93c911a05ecf4611E.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h93c911a05ecf4611E.exit: ; preds = %bb.b
  store ptr %i.m, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.s, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93c911a05ecf4611E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25553
  %i.t = load i64, ptr %1, align 8, !range !72, !alias.scope !25552, !noalias !25554, !noundef !11
  %.not.i = icmp eq i64 %i.t, 18
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25555
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9711e2b15090fcacE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !25556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25555
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.w)
          to label %"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit.i" unwind label %bb.g, !noalias !25556

bb.g:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h748ba361ff55a178E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.f)
          to label %.body unwind label %bb.h, !noalias !25556, !inline_history !68

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25556
  unreachable

"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit.i": ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false), !noalias !25557
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.z, ptr noundef nonnull align 8 dereferenceable(152) %i.e, i64 152, i1 false), !noalias !25557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !25555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !25555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.h, ptr noundef nonnull align 8 dereferenceable(256) %i.g, i64 256, i1 false), !noalias !25553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  store i64 18, ptr %i.h, align 8, !noalias !25553
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN74_$LT$nickel_lang_core..term..LabeledType$u20$as$u20$core..clone..Clone$GT$5clone17h12353a761a60ff59E.exit.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i5 = load ptr, ptr %i.aa, align 8, !alias.scope !25552, !noalias !25554, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val1.i = load i64, ptr %i.ab, align 8, !alias.scope !25552, !noalias !25554, !noundef !11 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25558
  %i.ac = shl i64 %.val1.i, 8                     ; 4 uses
  %i.ad = icmp ugt i64 %.val1.i, 72057594037927935
  %i.ae = icmp ugt i64 %i.ac, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.j
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i", label %bb.k

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.ag = icmp eq i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.ag)
  store i64 0, ptr %i.d, align 8, !noalias !25558
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !25558
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.loopexit

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25559
  %i.aj = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 9) 8) #40, !noalias !25559 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i"

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.k ], [ 0, %bb.j ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #41
          to label %.noexc.i unwind label %bb.t, !noalias !25554

.noexc.i:                                         ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i": ; preds = %bb.k
  store i64 %.val1.i, ptr %i.d, align 8, !noalias !25558
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !noalias !25558
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %.val.i5, i64 %.val1.i
  %2 = icmp eq i64 %.val1.i, 0
  br i1 %2, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i"
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.sroa.012.025.i.i.i = phi ptr [ %.val.i5, %.lr.ph.i.i.i ], [ %i.aq, %bb.q ] ; 5 uses
  %.sroa.7.024.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ar, %bb.q ] ; 3 uses
  %.sroa.10.023.i.i.i = phi i64 [ %.val1.i, %.lr.ph.i.i.i ], [ %i.ao, %bb.q ]
  %i.ao = add nsw i64 %.sroa.10.023.i.i.i, -1     ; 2 uses
  %i.ap = icmp eq ptr %.sroa.012.025.i.i.i, %i.an
  br i1 %i.ap, label %.loopexit, label %bb.n

.loopexit.i.i.i:                                  ; preds = %bb.n
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 256
  %i.ar = add nuw nsw i64 %.sroa.7.024.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25560
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9711e2b15090fcacE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.012.025.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !25561

.noexc.i.i.i:                                     ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !25562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25560
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 104
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.at)
          to label %bb.q unwind label %bb.o, !noalias !25562

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h748ba361ff55a178E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %bb.s unwind label %bb.p, !noalias !25562, !inline_history !68

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25562
  unreachable

bb.q:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !25563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !25563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25560
  %i.aw = getelementptr inbounds nuw [256 x i8], ptr %i.aj, i64 %.sroa.7.024.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.aw, ptr noundef nonnull align 8 dereferenceable(256) %i.c, i64 256, i1 false), !noalias !25561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = icmp eq i64 %i.ao, 0
  br i1 %i.ax, label %.loopexit, label %bb.m

bb.r:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25561
  unreachable

bb.s:                                             ; preds = %bb.o, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.au, %bb.o ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.024.i.i.i, ptr %i.am, align 8, !alias.scope !25564, !noalias !25558
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..LabeledType$GT$$GT$17h6ed8af0b1ca30eeeE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43
          to label %.body.i unwind label %bb.r, !noalias !25561

bb.t:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.az, %bb.t ], [ %eh.lpad-body.i.i.i, %bb.s ] ; 2 uses
  %i.ba = load i64, ptr %i.h, align 8, !range !72, !alias.scope !25565, !noalias !25554, !noundef !11
  %i.bb = icmp eq i64 %i.ba, 18
  br i1 %i.bb, label %.body, label %bb.u

bb.u:                                             ; preds = %.body.i
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h748ba361ff55a178E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(256) %i.h)
          to label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..LabeledType$GT$17hbe2faebfaf0a31feE.exit.i" unwind label %bb.v, !noalias !25554, !inline_history !68

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17hd3a798455172468eE"(ptr noalias noundef align 8 dereferenceable(152) %i.bd) #43
          to label %.body7 unwind label %bb.w, !noalias !25554

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25554
  unreachable

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..LabeledType$GT$17hbe2faebfaf0a31feE.exit.i": ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17hd3a798455172468eE"(ptr noalias noundef align 8 dereferenceable(152) %i.bf)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..LabeledType$GT$17hbe2faebfaf0a31feE.exit.i"
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body7

.body7:                                           ; preds = %bb.v, %bb.x
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25554
  unreachable

.body:                                            ; preds = %bb.aa, %bb.g, %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..LabeledType$GT$17hbe2faebfaf0a31feE.exit.i", %.body.i, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %i.bl, %bb.aa ], [ %i.x, %bb.g ], [ %eh.lpad-body.i, %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..term..LabeledType$GT$17hbe2faebfaf0a31feE.exit.i" ], [ %eh.lpad-body.i, %.body.i ]
  %i.bh = icmp eq ptr %i.m, null
  br i1 %i.bh, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h9145e09cdfb4f374E.exit", label %bb.y

bb.y:                                             ; preds = %.body
  %i.bi = load i64, ptr %i.m, align 8, !noalias !25566, !noundef !11
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  store i64 %i.bj, ptr %i.m, align 8, !noalias !25566
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.z, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h9145e09cdfb4f374E.exit"

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h887672c85bbbd88bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h9145e09cdfb4f374E.exit" unwind label %bb.ai

bb.aa:                                            ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.q, %bb.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i"
  %5 = phi ptr [ %i.ai, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.thread.i.i.i" ], [ %i.am, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17haa5aeb2c7063c248E.exit.i.i.i" ], [ %i.am, %bb.m ], [ %i.am, %bb.q ]
  store i64 %.val1.i, ptr %5, align 8, !noalias !25558
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !25552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false), !noalias !25552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25553
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bo = load i8, ptr %i.bn, align 8, !range !12, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 353
  %i.bq = load i8, ptr %i.bp, align 1, !range !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !range !53, !noundef !11 ; 3 uses
  %i.bt = icmp ne i64 %i.bs, -9223372036854775805
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i64 %i.bs, 9223372036854775807
  %i.bv = icmp ugt i64 %i.bs, -9223372036854775808
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 2
  switch i64 %i.bw, label %bb.ab [
    i64 0, label %bb.af
    i64 1, label %bb.ac
    i64 2, label %bb.ad
    i64 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %.loopexit
  unreachable

bb.ac:                                            ; preds = %.loopexit
  br label %bb.af

bb.ad:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.br)
          to label %bb.ah unwind label %bb.ag

bb.ae:                                            ; preds = %.loopexit
  br label %bb.af

bb.af:                                            ; preds = %.loopexit, %bb.ah, %bb.ae, %bb.ac
  %.sroa.0.0 = phi i64 [ -9223372036854775804, %bb.ae ], [ -9223372036854775806, %bb.ac ], [ %.sroa.0.0.copyload1, %bb.ah ], [ -9223372036854775807, %.loopexit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.m, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 %i.by, ptr %i.ca, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.j, i64 280, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %i.bo, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 %i.bq, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %.sroa.0.0, ptr %i.cd, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ag:                                            ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..term..TypeAnnotation$GT$17h8bf5889d99aea7fdE"(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.j) #43
          to label %.body unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload1 = load i64, ptr %i.i, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx2, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.ai:                                            ; preds = %bb.z, %bb.ag
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$str$GT$$GT$$GT$17h9145e09cdfb4f374E.exit": ; preds = %bb.y, %.body, %bb.z
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$nickel_lang_vector..vector..Node$LT$T$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hea062666ca2d7ec2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [272 x i8], align 8               ; 7 uses
  %i.d = alloca [272 x i8], align 8               ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !25, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25578
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 4 uses
  %i.l = load i64, ptr %i.h, align 8, !alias.scope !25577, !noalias !25579, !noundef !11 ; 9 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !25578
  store i64 %i.l, ptr %i.k, align 8, !noalias !25578
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !25577, !noalias !25579, !noundef !11 ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.i.preheader, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h924f81b522f7dce7E.exit"

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.o = sub nuw i64 %i.m, %i.l
  %.neg = add i64 %i.l, 1
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %.val.i.prol = load ptr, ptr %i.p, align 8, !alias.scope !25577, !noalias !25579, !nonnull !11, !noundef !11 ; 3 uses
  %.val.i.i.i.prol = load i64, ptr %.val.i.prol, align 8, !noalias !25578, !noundef !11 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i.prol, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i.prol, 1              ; 2 uses
  store i64 %i.r, ptr %.val.i.prol, align 8, !noalias !25578
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.prol", !prof !17

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.prol": ; preds = %.lr.ph.i.prol
  %i.t = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  store ptr %.val.i.prol, ptr %i.u, align 8, !noalias !25578
  store i64 %i.t, ptr %i.k, align 8, !noalias !25578
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.prol", %.lr.ph.i.preheader
  %.sroa.01.05.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.t, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.prol" ]
  %i.v = icmp eq i64 %i.m, %.neg
  br i1 %i.v, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h924f81b522f7dce7E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.1"
  %.sroa.01.05.i = phi i64 [ %i.ag, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.1" ], [ %.sroa.01.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.01.05.i
  %.val.i = load ptr, ptr %i.w, align 8, !alias.scope !25577, !noalias !25579, !nonnull !11, !noundef !11 ; 3 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !25578, !noundef !11 ; 2 uses
  %i.x = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.y, ptr %.val.i, align 8, !noalias !25578
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i", !prof !17

.loopexit:                                        ; preds = %.lr.ph.i, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i", %.lr.ph.i.prol
  tail call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i": ; preds = %.lr.ph.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i, 1       ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.01.05.i
  store ptr %.val.i, ptr %i.ab, align 8, !noalias !25578
  store i64 %i.aa, ptr %i.k, align 8, !noalias !25578
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.aa
  %.val.i.1 = load ptr, ptr %i.ac, align 8, !alias.scope !25577, !noalias !25579, !nonnull !11, !noundef !11 ; 3 uses
  %.val.i.i.i.1 = load i64, ptr %.val.i.1, align 8, !noalias !25578, !noundef !11 ; 2 uses
  %i.ad = icmp ne i64 %.val.i.i.i.1, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %.val.i.i.i.1, 1                ; 2 uses
  store i64 %i.ae, ptr %.val.i.1, align 8, !noalias !25578
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.1", !prof !17

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.1": ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i"
  %i.ag = add nuw nsw i64 %.sroa.01.05.i, 2       ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  store ptr %.val.i.1, ptr %i.ah, align 8, !noalias !25578
  store i64 %i.ag, ptr %i.k, align 8, !noalias !25578
  %exitcond.not.i.1 = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond.not.i.1, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h924f81b522f7dce7E.exit", label %.lr.ph.i

"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h924f81b522f7dce7E.exit": ; preds = %.lr.ph.i.prol.loopexit, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf153bc6acb232936E.exit.i.1", %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ai, ptr noundef nonnull align 8 dereferenceable(272) %i.d, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !25578
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25580)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25581
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !alias.scope !25580, !noalias !25582, !noundef !11 ; 4 uses
  store i64 %i.al, ptr %i.aj, align 8, !noalias !25581
  store i64 %i.al, ptr %i.ak, align 8, !noalias !25581
  %i.am = load i64, ptr %i.i, align 8, !alias.scope !25580, !noalias !25582, !noundef !11 ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i1, label %"_ZN89_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2a5b907cb386097cE.exit"

.lr.ph.i1:                                        ; preds = %bb.c, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  %i.ao = phi i64 [ %i.bi, %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" ], [ %i.al, %bb.c ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ao
  %.val.i2 = load ptr, ptr %i.ap, align 8, !alias.scope !25580, !noalias !25582, !nonnull !11, !noundef !11 ; 4 uses
end_hunk_6
begin_hunk_7_@"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11swap_remove17h7b0402f3c7b2d887E":bb.a
          to label %"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h1f03d437d5229bc8E.exit.i.i.i" unwind label %bb.u, !noalias !25963

bb.u:                                             ; preds = %bb.t
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !25963
  unreachable

"_ZN4core3ptr125drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h1f03d437d5229bc8E.exit.i.i.i": ; preds = %bb.t
  resume { ptr, i32 } %i.dz

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11swap_remove17h992327bdd631a949E.exit.i.i.i", %_ZN8indexmap3map4core12update_index17h67e42a5b488c481bE.exit.i.i.i
  %.sroa.411.24.copyload = load i64, ptr %i.a, align 8, !noalias !25971 ; 2 uses
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false), !noalias !25972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  %.not = icmp eq i64 %.sroa.411.24.copyload, -9223372036854775808
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit.thread14", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit"
  %.sroa.8.117 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit.thread14" ], [ %.sroa.411.24.copyload, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit" ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  br label %bb.w

.sink.split:                                      ; preds = %._crit_edge.i.i.i, %bb.a, %bb.b, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$3pop17h91e60f9dd76383c6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  br label %bb.w

bb.w:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit", %.sink.split, %bb.v
  %storemerge = phi i64 [ %.sroa.8.117, %bb.v ], [ -9223372036854775808, %.sink.split ], [ -9223372036854775808, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$16swap_remove_full17h562ac447b30d2533E.exit" ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17h36da98346baf1be4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.a, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i

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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17ha90c2b839f9b4082E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.a, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i

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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #40
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h6eba9f1fd1487ff2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %i.e, label %bb.i, label %bb.e, !prof !17

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
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %bb.f, !prof !25985

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
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i, !prof !20

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25986
  %i.u = tail call noalias noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !25986 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17hdf8f5381340fd34eE.exit.i"

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25986
  store ptr @855, ptr %i.a, align 8, !noalias !25986
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !25986
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !25986
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !25986
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !25986
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #41, !noalias !25986
  unreachable

bb.h:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef %i.r) #41, !noalias !25986
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25987
  store ptr @855, ptr %i.b, align 8, !noalias !25987
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !25987
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ab, align 8, !noalias !25987
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !25987
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ad, align 8, !noalias !25987
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #41, !noalias !25987
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17hdf8f5381340fd34eE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %i.af = add nsw i64 %.sroa.4.0.i.ph8.i.i.i, -1  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i8 -1, i64 %i.q, i1 false), !noalias !25987
  %i.ag = mul i64 %1, 72                          ; 3 uses
  %or.cond.i.i.i4.i = icmp samesign ugt i64 %1, 128102389400760775
  br i1 %or.cond.i.i.i4.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17hdf8f5381340fd34eE.exit.i"
  %4 = icmp eq i64 %i.ag, 0
  br i1 %4, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17h541a5e5ede86149aE.exit", label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25988
  %i.ah = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, 9) 8) #40, !noalias !25988 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17h541a5e5ede86149aE.exit"

bb.k:                                             ; preds = %bb.j, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17hdf8f5381340fd34eE.exit.i"
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$16with_capacity_in17hdf8f5381340fd34eE.exit.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @819) #41
          to label %.noexc.i unwind label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit", !noalias !25989

.noexc.i:                                         ; preds = %bb.k
  unreachable

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17hfafd1e04431174f4E.exit": ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %or.cond.i.i.i.i.i8 = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i, 2305843009213693951
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i8), !noalias !25989
  %i.ak = shl nuw i64 %i.af, 3
  %i.al = and i64 %i.ak, -16                      ; 2 uses
  %i.am = add nuw i64 %i.al, 16                   ; 2 uses
  %i.an = add i64 %i.q, %i.am                     ; 3 uses
  %i.ao = icmp uge i64 %i.an, %i.am
  tail call void @llvm.assume(i1 %i.ao), !noalias !25989
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap), !noalias !25989
  %i.aq = sub nuw nsw i64 -16, %i.al
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %i.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !25989
  resume { ptr, i32 } %i.aj

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17h541a5e5ede86149aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.j
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ah, %bb.j ]
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %1, %bb.j ] ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph8.i.i.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph8.i.i.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.03.0.i22.i.i.i = select i1 %i.as, i64 %i.af, i64 %i.au
  %5 = icmp samesign ule i64 %1, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %5)
  store i64 %.sroa.4.0.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
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

bb.l:                                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$13with_capacity17h541a5e5ede86149aE.exit", %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %i.aw, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(40) ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$3get17h9d370a698992b7b3E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26007)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !26007, !noundef !11 ; 5 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread"
    i64 1, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !26007, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !26007, !noundef !11
  %i.e = tail call fastcc noundef i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h834291eefa390a31E"(i64 %.val.i, i64 %.val2.i, i32 %.16.val) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26008)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !26009, !noalias !26010, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26012)
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !26013, !noalias !26014, !noundef !11 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !26013, !noalias !26014, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.08.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ah, %bb.f ]
  %.sroa.04.0.i.i.i.i = and i64 %.pn.i.i.i, %i.l  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !26015 ; 2 uses
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
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !26016, !noundef !11 ; 4 uses
  %i.x = icmp ult i64 %.val.i.i.i.i, %i.b
  br i1 %i.x, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.val.i.i.i.i, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @813) #41, !noalias !26017
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.val.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 64
  %.val2.i.i.i.i.i = load i32, ptr %i.z, align 4, !noalias !26017, !noundef !11
  %i.aa = icmp eq i32 %.16.val, %.val2.i.i.i.i.i
  br i1 %i.aa, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread3", label %bb.e, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread", !prof !17

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i"
  %i.ae = add i16 %.sroa.010.0.i39.i.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.010.0.i39.i.i.i   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = add i64 %.sroa.08.0.i.i.i.i, 16         ; 2 uses
  %i.ah = add i64 %.sroa.04.0.i.i.i.i, %i.ag
  br label %bb.c

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit": ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !26007, !nonnull !11, !noundef !11 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %.val5.i = load i32, ptr %i.ak, align 4, !noalias !26007, !noundef !11
  %i.al = icmp eq i32 %.16.val, %.val5.i
  br i1 %i.al, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread3", label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread3": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit"
  %i.am = phi ptr [ %i.aj, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit" ], [ %i.g, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i" ]
  %.sroa.5.0.i6 = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit" ], [ %.val.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6320ccb7d91503cbE.exit.i.i.i" ] ; 3 uses
  %i.an = icmp ult i64 %.sroa.5.0.i6, %i.b
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread3"
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %.sroa.5.0.i6
  br label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread"

bb.h:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread3"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.5.0.i6, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @812) #41
  unreachable

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit.thread": ; preds = %._crit_edge.i.i.i, %bb.a, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit", %bb.g
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.g ], [ null, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h749c161a32b8c2abE.exit" ], [ null, %bb.a ], [ null, %._crit_edge.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$4hash17h834291eefa390a31E"(i64 %.56.val, i64 %.64.val, i32 %.16.val) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.56.val, 8317987319222330741
  %i.d = xor i64 %.64.val, 7237128888997146477
  %i.e = xor i64 %.56.val, 7816392313619706465
  %i.f = xor i64 %.64.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !26028
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !26028
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !26028
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !26028
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.56.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !26028
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.64.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !26028
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !26028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26029
  store i32 %.16.val, ptr %i.a, align 4, !noalias !26029
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h03d1cde4dc0871c9E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26029
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !26030
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !26030
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !26030 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !26030
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !26030, !noundef !11
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26030, !noundef !11
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
