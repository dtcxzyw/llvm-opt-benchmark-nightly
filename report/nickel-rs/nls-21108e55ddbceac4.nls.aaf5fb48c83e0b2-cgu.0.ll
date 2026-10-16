Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN14regex_automata4meta5regex5Regex11search_half17hc6284984175e0f93E:bb.a
  %i.ba = tail call fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h09d997d8782e7679E"(ptr noundef nonnull align 8 %i.aw, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !21105 ; 0 uses
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h62e1f86474aacff3E.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h62e1f86474aacff3E.exit.i": ; preds = %bb.k, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.thread
  %.val.i.i.i = load i64, ptr %i.aw, align 8, !noalias !21105, !noundef !44 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8, !noalias !21105 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i.i, %i.bc
  br i1 %i.bd, label %bb.m, label %bb.l, !prof !46

bb.l:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h62e1f86474aacff3E.exit.i"
  call fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h6666b76b326976b0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %.8.val, i64 noundef %.val.i.i.i, i64 noundef %i.bc)
  br label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfd4c3a5f83198788E.exit"

bb.m:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h62e1f86474aacff3E.exit.i"
  store atomic i64 1, ptr %i.bb release, align 8, !noalias !21105
  %i.be = inttoptr i64 %.val.i.i.i to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.8.val, ptr %i.bf, align 8
  store i64 1, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.bh, align 8
  br label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfd4c3a5f83198788E.exit"

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfd4c3a5f83198788E.exit": ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !44, !noundef !44
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !78, !invariant.load !44
  %i.bo = add i64 %i.bn, -1
  %i.bp = and i64 %i.bo, -16
  %i.bq = getelementptr i8, ptr %i.bj, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.c, align 8, !range !60, !noundef !44
  %i.bt = trunc nuw i64 %i.bs to i1               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !44, !align !50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !44
  %.sroa.03.0 = select i1 %i.bt, ptr %i.bw, ptr %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !44, !nonnull !44
  invoke void %i.ca(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef align 1 %i.br, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.03.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfd4c3a5f83198788E.exit"
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = ptrtoint ptr %.sroa.2.0.copyload to i64 ; 2 uses
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %i.cb, ptr %i.b, align 8, !noalias !21106
  %i.cc = icmp eq ptr %.sroa.2.0.copyload, inttoptr (i64 2 to ptr)
  br i1 %i.cc, label %.noexc6, label %.noexc7, !prof !49

bb.p:                                             ; preds = %bb.n
  %i.cd = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.cd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h1e3c683a6fe2385cE"(ptr noundef nonnull align 8 %.sroa.3.0.copyload, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hbe67a742e29686baE"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.2.0.copyload)
          to label %.noexc5 unwind label %.body.thread

.body.thread:                                     ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef 1400, i64 noundef 8) #66
  br label %bb.u

.noexc5:                                          ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef 1400, i64 noundef 8) #66
  br label %bb.s

.noexc6:                                          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21106
  store ptr null, ptr %i.a, align 8, !noalias !21106
  call void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_ZN14regex_automata4util4pool5inner17THREAD_ID_DROPPED17h55f6ec996bef5bb7E, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #75
  unreachable

.noexc7:                                          ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 40
  store atomic i64 %i.cb, ptr %i.cf release, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %.noexc7, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.thread7
  ret void

bb.u:                                             ; preds = %.body.thread, %bb.v
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.ce, %.body.thread ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %eh.lpad-body11

bb.v:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfd4c3a5f83198788E.exit"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr366drop_in_place$LT$regex_automata..util..pool..PoolGuard$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h5f2756c8cb335241E"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #77
          to label %bb.u unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h6666b76b326976b0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [1400 x i8], align 8              ; 5 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = cmpxchg ptr %i.e, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !44 ; 3 uses
  %i.i = icmp ult i64 %i.h, 144115188075855872
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20 = load ptr, ptr %i.k, align 8, !nonnull !44, !align !57, !noundef !44
  %i.l = getelementptr i8, ptr %1, i64 32
  %.val21 = load ptr, ptr %i.l, align 8, !nonnull !44, !align !50, !noundef !44
  %i.m = getelementptr inbounds nuw i8, ptr %.val21, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !44, !noalias !21124, !nonnull !44
  call void %i.n(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.c, ptr noundef nonnull align 1 %.val20)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !range !92, !alias.scope !21125, !noundef !44
  %i.q = icmp eq i64 %i.p, 3
  br i1 %i.q, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17he07c381b4fee14c3E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hbe67a742e29686baE"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.o)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17he07c381b4fee14c3E.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.o, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  br label %common.resume

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17he07c381b4fee14c3E.exit": ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.o, ptr noundef nonnull align 8 dereferenceable(1400) %i.c, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = inttoptr i64 %2 to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.t, align 8
  store i64 1, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.v, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30": ; preds = %bb.v, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29, %bb.r, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h39c1a35865136539E.exit10", %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17he07c381b4fee14c3E.exit"
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.r, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #75
  unreachable

4:                                                ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1400) #75
          to label %.noexc22 unwind label %5

.noexc22:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hbe67a742e29686baE"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #77
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h39c1a35865136539E.exit10": ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.cl, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30"

bb.h:                                             ; preds = %bb.c
  %i.w = urem i64 %2, %i.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !44, !noundef !44
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.w ; 12 uses
  %i.aa = cmpxchg ptr %i.z, i32 0, i32 1 acquire monotonic, align 4, !noalias !21126
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.i, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41"

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 5 uses
  %i.ad = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !21126
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.thread", label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit", !prof !46

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit": ; preds = %bb.i
  %i.ag = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !21126 ; 3 uses
  %i.ah = load atomic i8, ptr %i.ac monotonic, align 1, !noalias !21126
  %.not.i.not = icmp eq i8 %i.ah, 0
  br i1 %.not.i.not, label %bb.j, label %bb.w

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.thread": ; preds = %bb.i
  %i.ai = load atomic i8, ptr %i.ac monotonic, align 1, !noalias !21126
  %.not.i.not70 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.not70, label %.thread74, label %.thread

bb.j:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit"
  %i.aj = xor i1 %i.ag, true
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !44 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.n

.thread74:                                        ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.thread"
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !44 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.thread78, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ag, label %.thread78, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

.thread78:                                        ; preds = %.thread74, %bb.k
  %i.aq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %.noexc27, !prof !46

.noexc27:                                         ; preds = %.thread78
  %i.at = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.at, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc27
  store atomic i8 1, ptr %i.ac monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.l, %.noexc27, %.thread78, %bb.k
  %i.au = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.m, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit", !prof !49

bb.m:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit"

bb.n:                                             ; preds = %.thread74, %bb.j
  %i.aw = phi i64 [ %i.ao, %.thread74 ], [ %i.al, %bb.j ] ; 2 uses
  %i.ax = phi ptr [ %i.an, %.thread74 ], [ %i.ak, %bb.j ]
  %.sroa.01.0.i.i7277 = phi i1 [ false, %.thread74 ], [ %i.aj, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.az = add nsw i64 %i.aw, -1                   ; 3 uses
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = load i64, ptr %i.ay, align 8, !range !74, !noundef !44
  %i.bb = icmp samesign ult i64 %i.az, %i.ba
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !44, !noundef !44
  %i.be = icmp ult i64 %i.aw, 1152921504606846977
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.az
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bh, align 8
  store i64 0, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bj, align 8
  br i1 %.sroa.01.0.i.i7277, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bl = and i64 %i.bk, 9223372036854775807
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29, label %bb.p, !prof !46

bb.p:                                             ; preds = %bb.o
  %i.bn = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bn, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bo = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %bb.r, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30", !prof !49

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i29
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit": ; preds = %bb.m, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load ptr, ptr %i.bq, align 8, !nonnull !44, !align !57, !noundef !44
  %i.br = getelementptr i8, ptr %1, i64 32
  %.val17 = load ptr, ptr %i.br, align 8, !nonnull !44, !align !50, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.val17, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !44, !noalias !21127, !nonnull !44
  call void %i.bt(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noundef nonnull align 1 %.val16), !inline_history !21115
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !21128
  %i.bu = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !21128 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.s, label %bb.v, !prof !47

bb.s:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1400) #75
          to label %.noexc32 unwind label %bb.t

.noexc32:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hbe67a742e29686baE"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #77
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.v:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bu, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.by, align 8
  store i64 0, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ca, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit30"

bb.w:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit"
  br i1 %i.ag, label %.thread, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37

.thread:                                          ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.thread", %bb.w
  %i.cb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !21129
  %i.cc = and i64 %i.cb, 9223372036854775807
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37, label %bb.x, !prof !46

bb.x:                                             ; preds = %.thread
  %i.ce = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !21129
  br i1 %i.ce, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.ac monotonic, align 1, !noalias !21129
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37: ; preds = %bb.y, %bb.x, %.thread, %bb.w
  %i.cf = atomicrmw xchg ptr %i.z, i32 0 release, align 4, !noalias !21129
  %i.cg = icmp eq i32 %i.cf, 2
  br i1 %i.cg, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i38", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41", !prof !49

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i38": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z), !noalias !21129
  br label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41"

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit41": ; preds = %bb.h, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i37, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i38"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load ptr, ptr %i.ch, align 8, !nonnull !44, !align !57, !noundef !44
  %i.ci = getelementptr i8, ptr %1, i64 32
  %.val19 = load ptr, ptr %i.ci, align 8, !nonnull !44, !align !50, !noundef !44
  %i.cj = getelementptr inbounds nuw i8, ptr %.val19, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !44, !noalias !21130, !nonnull !44
  call void %i.ck(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noundef nonnull align 1 %.val18), !inline_history !21115
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !21131
  %i.cl = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !21131 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %4, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h39c1a35865136539E.exit10", !prof !47
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h1e3c683a6fe2385cE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN14regex_automata4util4pool5inner9THREAD_ID29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hc93ca01033e8a023E") ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !45, !noalias !21145, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h09d997d8782e7679E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %bb.c unwind label %.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !44 ; 3 uses
  %i.h = icmp ult i64 %i.g, 144115188075855872
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #75
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.j, %bb.d
  unreachable

common.resume:                                    ; preds = %bb.ci, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %.body ], [ %lpad.phi, %bb.ci ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.9"
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #66
  br label %common.resume

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hf1d584b40f16bb6bE.exit": ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.9"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #66
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit": ; preds = %bb.r, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hf1d584b40f16bb6bE.exit"
  ret void

bb.g:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.a, align 8, !noundef !44
  %i.k = urem i64 %.val.i.i, %i.g                 ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !44, !noundef !44
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.k ; 5 uses
  %i.o = cmpxchg ptr %i.n, i32 0, i32 1 acquire monotonic, align 4, !noalias !21146
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %bb.h, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28"

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.r = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !21146
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit", label %bb.i, !prof !46

bb.i:                                             ; preds = %bb.h
  %i.u = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.i
  %i.v = xor i1 %i.u, true
  %i.w = zext i1 %i.v to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.8", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.7", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.6", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.5", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.4", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.3", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.2", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.1", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28"
  %.lcssa = phi i64 [ %i.hl, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.8" ], [ %i.az, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28" ], [ %i.bu, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.1" ], [ %i.cp, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.2" ], [ %i.dk, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.3" ], [ %i.ef, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.4" ], [ %i.fa, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.5" ], [ %i.fv, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.6" ], [ %i.gq, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.7" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.k, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #75
          to label %bb.e unwind label %.loopexit.split-lp

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit": ; preds = %bb.h, %.noexc12
  %.sroa.01.0.i.i = phi i8 [ %i.w, %.noexc12 ], [ 0, %bb.h ] ; 2 uses
  %i.x = load atomic i8, ptr %i.q monotonic, align 1, !noalias !21146
  %.not.i.not = icmp eq i8 %i.x, 0
  br i1 %.not.i.not, label %bb.k, label %bb.t

bb.k:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.9", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.8", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.7", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.6", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.5", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.4", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.3", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.2", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.1", %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit"
  %.lcssa59 = phi ptr [ %i.n, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit" ], [ %i.bc, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.1" ], [ %i.bx, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.2" ], [ %i.cs, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.3" ], [ %i.dn, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.4" ], [ %i.ei, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.5" ], [ %i.fd, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.6" ], [ %i.fy, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.7" ], [ %i.gt, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.8" ], [ %i.ho, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.9" ] ; 7 uses
  %.sroa.01.0.i.i.lcssa = phi i8 [ %.sroa.01.0.i.i, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit" ], [ %.sroa.01.0.i.i.1, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.1" ], [ %.sroa.01.0.i.i.2, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.2" ], [ %.sroa.01.0.i.i.3, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.3" ], [ %.sroa.01.0.i.i.4, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.4" ], [ %.sroa.01.0.i.i.5, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.5" ], [ %.sroa.01.0.i.i.6, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.6" ], [ %.sroa.01.0.i.i.7, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.7" ], [ %.sroa.01.0.i.i.8, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.8" ], [ %.sroa.01.0.i.i.9, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit.9" ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !21147, !noundef !44 ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !range !74, !alias.scope !21147, !noundef !44
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he4ec79f1b8940f8cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245)
          to label %bb.o unwind label %bb.m, !noalias !21148

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hf1d584b40f16bb6bE"(ptr nonnull align 8 %1) #77
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.body:                                            ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE"(ptr nonnull %.lcssa59, i8 %.sroa.01.0.i.i.lcssa) #77
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !21147, !nonnull !44, !noundef !44
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aa
  store ptr %1, ptr %i.ah, align 8, !noalias !21148
  %i.ai = add i64 %i.aa, 1
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !21147
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 4
  %i.ak = trunc nuw i8 %.sroa.01.0.i.i.lcssa to i1
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %.noexc16, !prof !46

.noexc16:                                         ; preds = %bb.p
  %i.ao = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ao, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc16
  store atomic i8 1, ptr %i.aj monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.q, %.noexc16, %bb.p, %bb.o
  %i.ap = atomicrmw xchg ptr %.lcssa59, i32 0 release, align 4
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.r, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit", !prof !49

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.lcssa59)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit"

bb.s:                                             ; preds = %.body, %bb.ci
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.t:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17hcffba852c17ecc7eE.exit"
  %i.as = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !21149
  %i.au = and i64 %i.at, 9223372036854775807
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21, label %bb.v, !prof !46

bb.v:                                             ; preds = %bb.u
  %i.aw = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.v
  br i1 %i.aw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21, label %bb.w

bb.w:                                             ; preds = %.noexc26
  store atomic i8 1, ptr %i.q monotonic, align 1, !noalias !21149
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21: ; preds = %bb.w, %.noexc26, %bb.u, %bb.t
  %i.ax = atomicrmw xchg ptr %i.n, i32 0 release, align 4, !noalias !21149
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i22", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28", !prof !49

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i22": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.n)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28" unwind label %.loopexit

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28": ; preds = %bb.g, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9464c1f3aa368a1bE.exit.sink.split.i22"
  %i.az = load i64, ptr %i.f, align 8, !noundef !44 ; 2 uses
  %i.ba = icmp ult i64 %i.k, %i.az
  br i1 %i.ba, label %bb.x, label %bb.j

bb.x:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28"
  %i.bb = load ptr, ptr %i.l, align 8, !nonnull !44, !noundef !44
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.bb, i64 %i.k ; 5 uses
  %i.bd = cmpxchg ptr %i.bc, i32 0, i32 1 acquire monotonic, align 4, !noalias !21146
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %bb.y, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h1a4750a5f8f6b879E.exit28.1"

bb.y:                                             ; preds = %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.bg = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !21146
  %i.bh = and i64 %i.bg, 9223372036854775807
end_hunk_0
begin_hunk_1_@_ZN3nls12field_walker13FieldResolver18containers_at_path17h030b7d97c1c5d9ffE:.loopexit140.i
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.db)
          to label %bb.aa unwind label %bb.r, !noalias !44397

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i69.i = load i64, ptr %i.f, align 8, !alias.scope !44424, !noalias !44397 ; 4 uses
  %.sroa.4.0.copyload.i71.i = load ptr, ptr %.sroa.4.0..sroa_idx.i70.i, align 8, !alias.scope !44424, !noalias !44397, !nonnull !44, !noundef !44 ; 3 uses
  %.sroa.5.0.copyload.i73.i = load i64, ptr %.sroa.5.0..sroa_idx.i72.i, align 8, !alias.scope !44424, !noalias !44397 ; 5 uses
  %i.dd = icmp ult i64 %.sroa.5.0.copyload.i73.i, 384307168202282326
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !44425)
  %.idx136.i = mul nuw nsw i64 %.sroa.5.0.copyload.i73.i, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !44426)
  %i.de = load i64, ptr %i.l, align 8, !alias.scope !44427, !noalias !44397, !noundef !44 ; 3 uses
  %i.df = load i64, ptr %i.h, align 8, !range !74, !alias.scope !44427, !noalias !44397, !noundef !44
  %i.dg = sub i64 %i.df, %i.de
  %i.dh = icmp ugt i64 %.sroa.5.0.copyload.i73.i, %i.dg
  br i1 %i.dh, label %bb.ad, label %bb.ae, !prof !49

bb.ab:                                            ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = icmp eq i64 %.sroa.0.0.copyload.i69.i, 0
  br i1 %i.dj, label %.body74.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = mul nuw i64 %.sroa.0.0.copyload.i69.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i71.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44428
  br label %.body74.i

bb.ad:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.de, i64 noundef %.sroa.5.0.copyload.i73.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i.i unwind label %bb.ab, !noalias !44429

.noexc.i.i:                                       ; preds = %bb.ad
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !44430, !noalias !44397
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i, %bb.aa
  %i.dl = phi i64 [ %i.de, %bb.aa ], [ %.pre.i.i.i, %.noexc.i.i ] ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 384307168202282326
  call void @llvm.assume(i1 %i.dm)
  %i.dn = load ptr, ptr %i.k, align 8, !alias.scope !44430, !noalias !44397, !nonnull !44, !noundef !44
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull readonly align 8 %.sroa.4.0.copyload.i71.i, i64 %.idx136.i, i1 false), !noalias !44431
  %i.dp = add nuw nsw i64 %i.dl, %.sroa.5.0.copyload.i73.i
  store i64 %i.dp, ptr %i.l, align 8, !alias.scope !44430, !noalias !44397
  %i.dq = icmp eq i64 %.sroa.0.0.copyload.i69.i, 0
  br i1 %i.dq, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = mul nuw i64 %.sroa.0.0.copyload.i69.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i71.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44432
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44397
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit78.i", %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit.i", %bb.y, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit.i"
  %i.ds = icmp eq ptr %i.cn, %i.ck
  br i1 %i.ds, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.i", label %.lr.ph227.i

bb.ah:                                            ; preds = %bb.s
  %i.dt = load ptr, ptr %i.r, align 8, !noalias !44397, !nonnull !44, !noundef !44 ; 5 uses
  %i.du = load i64, ptr %i.s, align 8, !noalias !44397, !noundef !44 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44433)
  %i.dv = load i64, ptr %i.l, align 8, !alias.scope !44434, !noalias !44397, !noundef !44 ; 4 uses
  %i.dw = load i64, ptr %i.h, align 8, !range !74, !alias.scope !44434, !noalias !44397, !noundef !44
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = icmp ugt i64 %i.du, %i.dx
  br i1 %i.dy, label %bb.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i", !prof !49

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dv, i64 noundef %i.du, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread.i" unwind label %bb.aj, !noalias !44397

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread.i": ; preds = %bb.ai
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !44433, !noalias !44397
  %i.dz = load ptr, ptr %i.k, align 8, !alias.scope !44433, !noalias !44397, !nonnull !44, !noundef !44
  br label %.preheader.i.preheader.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i": ; preds = %bb.ah
  %i.ea = load ptr, ptr %i.k, align 8, !alias.scope !44433, !noalias !44397, !nonnull !44, !noundef !44
  %i.eb = icmp eq i64 %i.du, 0
  br i1 %i.eb, label %.loopexit.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread.i"
  %i.ec = phi ptr [ %i.dz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread.i" ], [ %i.ea, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ] ; 3 uses
  %i.ed = phi i64 [ %.pre.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread.i" ], [ %i.dv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ] ; 2 uses
  %xtraiter = and i64 %i.du, 1
  %i.ee = icmp eq i64 %i.du, 1
  br i1 %i.ee, label %.preheader.i.i.epil.preheader, label %.preheader.i.preheader.i.new

.preheader.i.preheader.i.new:                     ; preds = %.preheader.i.preheader.i
  %unroll_iter = and i64 %i.du, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i.new
  %i.ef = phi i64 [ %i.ed, %.preheader.i.preheader.i.new ], [ %i.em, %.preheader.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %i.en, %.preheader.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.06.0.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !noalias !44435
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.06.0.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = getelementptr [24 x i8], ptr %i.ec, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !noalias !44435
  %i.em = add i64 %i.ef, 2                        ; 3 uses
  %i.en = add nuw i64 %.sroa.06.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val38.i = load i64, ptr %i.e, align 8, !noalias !44397 ; 2 uses
  %i.ep = icmp eq i64 %.val38.i, 0
  br i1 %i.ep, label %.body74.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = mul nuw i64 %.val38.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44397
  br label %.body74.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader.i
  %.epil.init = phi i64 [ %i.ed, %.preheader.i.preheader.i ], [ %i.em, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader.i ], [ %i.en, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i64 %i.du to i1
  call void @llvm.assume(i1 %lcmp.mod294)
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.06.0.i.i.i.i.i.epil.init
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.er, i64 24, i1 false), !noalias !44435
  %i.et = add i64 %.epil.init, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i"
  %storemerge.i.i.i.i = phi i64 [ %i.dv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ], [ %i.em, %.loopexit.i.loopexit.unr-lcssa ], [ %i.et, %.preheader.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i, ptr %i.l, align 8, !alias.scope !44433, !noalias !44436
  %.val.i = load i64, ptr %i.e, align 8, !noalias !44397 ; 2 uses
  %i.eu = icmp eq i64 %.val.i, 0
  br i1 %i.eu, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit78.i", label %bb.al

bb.al:                                            ; preds = %.loopexit.i
  %i.ev = mul nuw i64 %.val.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44397
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit78.i"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit78.i": ; preds = %bb.al, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44397
  br label %bb.ag

.thread.i:                                        ; preds = %bb.a, %.body.i
  resume { ptr, i32 } %.pn.pn.i

_ZN3nls12field_walker13FieldResolver26resolve_containers_at_path17hb7f09ec5d07e18d5E.exit: ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit66.i", %.loopexit140.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !44395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls12field_walker13FieldResolver18containers_at_path17h8f2bc0ba2e51366cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i32 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.loopexit84:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 13 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 7 uses
  %i.h = alloca [8 x i8], align 4                 ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  call fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.0.0.copyload.i30 = load i64, ptr %i.j, align 8, !alias.scope !44560, !noalias !44561
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i32 = load ptr, ptr %.sroa.4.0..sroa_idx.i31, align 8, !alias.scope !44560, !noalias !44561, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0.copyload.i34 = load i64, ptr %.sroa.5.0..sroa_idx.i33, align 8, !alias.scope !44560, !noalias !44561 ; 3 uses
  %i.k = icmp ult i64 %.sroa.5.0.copyload.i34, 384307168202282326
  tail call void @llvm.assume(i1 %i.k), !noalias !44561
  %.idx = mul nuw i64 %.sroa.5.0.copyload.i34, 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i32, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !44562
  store i64 %.sroa.0.0.copyload.i30, ptr %i.i, align 8, !alias.scope !44563, !noalias !44562
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  store ptr %.sroa.4.0.copyload.i32, ptr %i.m, align 8, !alias.scope !44563, !noalias !44562
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 11 uses
  store i64 %.sroa.5.0.copyload.i34, ptr %i.n, align 8, !alias.scope !44563, !noalias !44562
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.10.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.12.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.14.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.24.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %.sroa.26.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.27.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.04.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44562
  store i32 0, ptr %i.h, align 4, !noalias !44562
  store i32 %3, ptr %4, align 4, !noalias !44562
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i32, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44564
  br label %bb.b

.body19:                                          ; preds = %.thread74.i.i.i, %bb.n, %bb.o, %bb.q, %.body, %.body.i.i.i.i, %"_ZN4core3ptr484drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nickel_lang_parser..identifier..Ident$C$core..iter..sources..once..Once$LT$nickel_lang_parser..identifier..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54d4c817c312ad0aE.exit.sink.split.i.i.i"
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %"_ZN4core3ptr484drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nickel_lang_parser..identifier..Ident$C$core..iter..sources..once..Once$LT$nickel_lang_parser..identifier..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54d4c817c312ad0aE.exit.sink.split.i.i.i" ], [ %i.bu, %bb.n ], [ %i.bu, %bb.o ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i, %bb.q ], [ %.pn.i, %.body ], [ %i.ab, %.thread74.i.i.i ]
  %.val40.i = load i64, ptr %i.i, align 8, !noalias !44562 ; 2 uses
  %i.q = icmp eq i64 %.val40.i, 0
  br i1 %i.q, label %.thread, label %bb.a

bb.a:                                             ; preds = %.body19
  %.val41.i = load ptr, ptr %i.m, align 8, !noalias !44562, !nonnull !44, !noundef !44
  %i.r = mul nuw i64 %.val40.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44562
  br label %.thread

bb.b:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i", %.loopexit84
  %.sroa.24.0.i.i = phi ptr [ %.sroa.4.0.copyload.i32, %.loopexit84 ], [ %i.w, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i" ] ; 5 uses
  %.sroa.12.0.i.i = phi ptr [ undef, %.loopexit84 ], [ %i.aa, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i" ] ; 4 uses
  %.sroa.10.0.i.i = phi i64 [ undef, %.loopexit84 ], [ %.pr.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i" ] ; 6 uses
  %.sroa.7.0.i.i = phi ptr [ undef, %.loopexit84 ], [ %.sroa.2.0.copyload.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ null, %.loopexit84 ], [ %.sroa.2.0.copyload.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i" ] ; 5 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %.sroa.7.0.i.i, %.sroa.12.0.i.i
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %.sroa.10.0.i.i, 0
  br i1 %i.t, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = shl nuw i64 %.sroa.10.0.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44565
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44566
  %i.v = icmp eq ptr %.sroa.24.0.i.i, %i.l
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.thread", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.24.0.i.i, i64 24
  %i.x = load i32, ptr %i.h, align 4, !range !72, !noalias !44567, !noundef !44
  %i.y = load i32, ptr %4, align 4, !noalias !44567
  invoke fastcc void @_ZN3nls12field_walker9Container3get17h17c6500e0ea203c6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.24.0.i.i, i32 noundef %i.x, i32 %i.y)
          to label %.noexc.i.i.i unwind label %.thread74.i.i.i, !noalias !44568

.noexc.i.i.i:                                     ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i"
  %.pr.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !44566 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.thread", label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i3.i.i.i": ; preds = %.noexc.i.i.i
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44566 ; 2 uses
  %i.z = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.z), !noalias !44569
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44566, !nonnull !44, !noundef !44 ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.3.0.copyload.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44566
  br label %bb.b

.thread74.i.i.i:                                  ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0.i.i, i64 16, i1 false), !noalias !44570
  %i.ad = ptrtoint ptr %.sroa.12.0.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub nuw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = lshr exact i64 %i.af, 4
  %i.ah = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.ah, 1 ; 2 uses
  %i.ai = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 4 uses
  %i.aj = icmp eq i64 %i.af, -16
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775800
  %or.cond.i.i.i6.i.i.i.i = select i1 %i.aj, i1 true, i1 %i.ak, !prof !69
  br i1 %or.cond.i.i.i6.i.i.i.i, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.thread": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 0, ptr %i.n, align 8, !noalias !44562
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !44571
  %i.am = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, 9) 8) #66, !noalias !44571 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i.i.i.i unwind label %bb.n, !noalias !44564

.noexc.i.i.i.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.ao = icmp samesign ult i64 %i.ah, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ao), !noalias !44562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, i64 16, i1 false), !noalias !44564
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !44564
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !44564
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !44564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44564
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !44572
  store ptr %i.ac, ptr %.sroa.7.0..sroa_idx2.i.i, align 8, !noalias !44572
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx4.i.i, align 8, !noalias !44572
  store ptr %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx6.i.i, align 8, !noalias !44572
  store ptr null, ptr %.sroa.14.0..sroa_idx8.i.i, align 8, !noalias !44572
  store ptr %.sroa.24.0.i.i, ptr %.sroa.24.0..sroa_idx16.i.i, align 8, !noalias !44572
  store ptr %i.p, ptr %.sroa.26.0..sroa_idx18.i.i, align 8, !noalias !44572
  store ptr %i.h, ptr %.sroa.27.0..sroa_idx20.i.i, align 8, !noalias !44572
  call void @llvm.experimental.noalias.scope.decl(metadata !44573), !noalias !44562
  call void @llvm.experimental.noalias.scope.decl(metadata !44574), !noalias !44562
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i", %bb.i
  %i.ap = phi ptr [ %i.bk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.i ]
  %i.aq = phi i64 [ %i.bm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ 1, %bb.i ] ; 5 uses
  %i.ar = phi ptr [ %.lcssa101, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %.sroa.24.0.i.i, %bb.i ] ; 2 uses
  %.pr.i.i30.lcssa3150.i.i.i.i = phi i64 [ %.val5.i.i.i.i.i.i.i.i.lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i, %bb.i ] ; 2 uses
  %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i = phi ptr [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %i.ac, %bb.i ] ; 3 uses
  %.lcssa3642.i.i.i.i = phi ptr [ %.lcssa108, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %.sroa.12.0.i.i, %bb.i ] ; 3 uses
  %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i = phi ptr [ %.sroa.2.0.copyload.i.i19.i.i.i.i.lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i, %bb.i ] ; 2 uses
  %i.as = icmp eq ptr %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i, %.lcssa3642.i.i.i.i
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i"
  %.sroa.2.0.copyload.i.i19.i.i.i.i132 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ], [ %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i, %bb.j ]
  %i.at = phi ptr [ %i.ay, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ], [ %i.ar, %bb.j ] ; 3 uses
  %.sroa.2.0.copyload.i.i26.i.i.i.i131 = phi ptr [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ], [ %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i, %bb.j ]
  %.val5.i.i.i.i.i.i.i.i130 = phi i64 [ %.pr.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ], [ %.pr.i.i30.lcssa3150.i.i.i.i, %bb.j ] ; 3 uses
  %i.au = phi ptr [ %i.bc, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ], [ %.lcssa3642.i.i.i.i, %bb.j ]
  %i.av = icmp eq i64 %.val5.i.i.i.i.i.i.i.i130, 0
  br i1 %i.av, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aw = shl nuw i64 %.val5.i.i.i.i.i.i.i.i130, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i19.i.i.i.i132, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44575
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i: ; preds = %bb.k, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44576
  %i.ax = icmp eq ptr %i.at, %i.l
  br i1 %i.ax, label %bb.p, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  %i.az = load i32, ptr %i.h, align 4, !range !72, !noalias !44577, !noundef !44
  %i.ba = load i32, ptr %4, align 4, !noalias !44577
  invoke fastcc void @_ZN3nls12field_walker9Container3get17h17c6500e0ea203c6E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, i32 noundef %i.az, i32 %i.ba)
          to label %.noexc10.i.i.i.i unwind label %bb.l, !noalias !44564

.noexc10.i.i.i.i:                                 ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i.i"
  %.pr.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !44576 ; 3 uses
  %.not.i.i8.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i8.i.i.i.i, label %bb.p, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i": ; preds = %.noexc10.i.i.i.i
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44576 ; 3 uses
  %i.bb = icmp ult i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.bb), !noalias !44578
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44576, !nonnull !44, !noundef !44 ; 5 uses
  %.idx144 = shl nuw nsw i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.idx144 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44576
  %i.bd = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.body.i.i.i.i:                                    ; preds = %bb.m, %bb.l
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  call fastcc void @"_ZN4core3ptr484drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nickel_lang_parser..identifier..Ident$C$core..iter..sources..once..Once$LT$nickel_lang_parser..identifier..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54d4c817c312ad0aE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #77, !noalias !44579
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !44564 ; 2 uses
  %i.be = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.be, label %.body19, label %"_ZN4core3ptr484drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nickel_lang_parser..identifier..Ident$C$core..iter..sources..once..Once$LT$nickel_lang_parser..identifier..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54d4c817c312ad0aE.exit.sink.split.i.i.i"

bb.l:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h28c45c4cd2041208E.exit.i.i.i.i.i.i"
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.c, align 8, !noalias !44564
  store ptr %i.ay, ptr %.sroa.24.0..sroa_idx16.i.i, align 8, !noalias !44564
  store ptr %.sroa.2.0.copyload.i.i26.i.i.i.i131, ptr %.sroa.7.0..sroa_idx2.i.i, align 8, !noalias !44564
  store i64 %.val5.i.i.i.i.i.i.i.i130, ptr %.sroa.10.0..sroa_idx4.i.i, align 8, !noalias !44564
  store ptr %i.au, ptr %.sroa.12.0..sroa_idx6.i.i, align 8, !noalias !44564
  br label %.body.i.i.i.i

._crit_edge:                                      ; preds = %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i", %bb.j
  %.lcssa108 = phi ptr [ %.lcssa3642.i.i.i.i, %bb.j ], [ %i.bc, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ] ; 3 uses
  %.val5.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %.pr.i.i30.lcssa3150.i.i.i.i, %bb.j ], [ %.pr.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ] ; 2 uses
  %.sroa.2.0.copyload.i.i26.i.i.i.i.lcssa = phi ptr [ %.sroa.2.0.copyload.i.i26.lcssa2746.i.i.i.i, %bb.j ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ] ; 2 uses
  %.lcssa101 = phi ptr [ %i.ar, %bb.j ], [ %i.ay, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ] ; 2 uses
  %.sroa.2.0.copyload.i.i19.i.i.i.i.lcssa = phi ptr [ %.sroa.2.0.copyload.i.i20.lcssa39.i.i.i.i, %bb.j ], [ %.sroa.2.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$$GT$17he54064c0dc028eb0E.exit.i.i9.i.i.i.i" ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i26.i.i.i.i.lcssa, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0.copyload.i.i26.i.i.i.i.lcssa, i64 16, i1 false), !noalias !44580
  %i.bh = icmp samesign ult i64 %i.aq, 576460752303423488
  call void @llvm.assume(i1 %i.bh), !noalias !44562
  %i.bi = load i64, ptr %i.d, align 8, !range !74, !alias.scope !44581, !noalias !44564, !noundef !44
  %i.bj = icmp eq i64 %i.aq, %i.bi
  br i1 %i.bj, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i.i.i.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i", %._crit_edge
  %i.bk = phi ptr [ %.pre.i.i.i.i, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !44582
  %i.bm = add nuw nsw i64 %i.aq, 1                ; 2 uses
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44581, !noalias !44564
  br label %bb.j

bb.m:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i.i.i.i.i"
  %i.bn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.2.0.copyload.i.i19.i.i.i.i.lcssa, ptr %i.c, align 8, !noalias !44564
  store ptr %.lcssa108, ptr %.sroa.12.0..sroa_idx6.i.i, align 8, !noalias !44564
  store ptr %i.bg, ptr %.sroa.7.0..sroa_idx2.i.i, align 8, !noalias !44564
  store i64 %.val5.i.i.i.i.i.i.i.i.lcssa, ptr %.sroa.10.0..sroa_idx4.i.i, align 8, !noalias !44564
  store ptr %.lcssa101, ptr %.sroa.24.0..sroa_idx16.i.i, align 8, !noalias !44564
  br label %.body.i.i.i.i

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i.i.i.i.i": ; preds = %._crit_edge
  %i.bo = ptrtoint ptr %.lcssa108 to i64
  %i.bp = ptrtoint ptr %i.bg to i64
  %i.bq = sub nuw i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 4
  %i.bs = add nuw nsw i64 %i.br, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.aq, i64 noundef %i.bs, i64 noundef 8, i64 noundef 16)
          to label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.m, !noalias !44583

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i_crit_edge.i.i.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h9cba0698def345adE.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !44581, !noalias !44564
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h880513a764a48234E.exit.i.i.i.i.i.i"

"_ZN4core3ptr484drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nickel_lang_parser..identifier..Ident$C$core..iter..sources..once..Once$LT$nickel_lang_parser..identifier..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54d4c817c312ad0aE.exit.sink.split.i.i.i": ; preds = %.body.i.i.i.i
  %.val5.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !44564, !nonnull !44, !noundef !44
  %i.bt = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44584
  br label %.body19

bb.n:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = icmp eq i64 %.sroa.10.0.i.i, 0
  br i1 %i.bv, label %.body19, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = shl nuw i64 %.sroa.10.0.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44585
  br label %.body19

bb.p:                                             ; preds = %.noexc10.i.i.i.i, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h46b05c4d0909dd3bE.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44564
  %.sroa.044.0.copyload = load i64, ptr %i.d, align 8, !noalias !44586 ; 4 uses
  %.sroa.545.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !44586, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !44586 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 0, ptr %i.n, align 8, !noalias !44562
  %i.bx = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.bx), !noalias !44562
  %.idx145 = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.545.0.copyload, i64 %.idx145
  %i.bz = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit", label %.lr.ph139

.body:                                            ; preds = %bb.al, %bb.ak, %bb.ac, %bb.ad, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %i.cc, %bb.r ], [ %i.cy, %bb.ad ], [ %i.ee, %bb.ak ], [ %i.ee, %bb.al ] ; 2 uses
  %i.ca = icmp eq i64 %.sroa.044.0.copyload, 0
  br i1 %i.ca, label %.body19, label %bb.q

bb.q:                                             ; preds = %.body
  %i.cb = shl nuw i64 %.sroa.044.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.545.0.copyload, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44587
  br label %.body19

bb.r:                                             ; preds = %bb.y, %bb.w, %bb.x, %bb.aa, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph139:                                        ; preds = %bb.p, %bb.ah
  %.sroa.556.0137 = phi ptr [ %i.cd, %bb.ah ], [ %.sroa.545.0.copyload, %bb.p ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.556.0137, i64 16 ; 2 uses
  %.sroa.561.8.copyload = load ptr, ptr %.sroa.556.0137, align 8, !noalias !44588 ; 5 uses
  %.sroa.762.8..sroa.556.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.556.0137, i64 8
  %.sroa.762.8.copyload = load i64, ptr %.sroa.762.8..sroa.556.8..sroa_idx, align 8, !noalias !44588 ; 3 uses
  %i.ce = icmp eq ptr %.sroa.561.8.copyload, null
  br i1 %i.ce, label %bb.t, label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit": ; preds = %bb.ah, %bb.p
  %i.cf = icmp eq i64 %.sroa.044.0.copyload, 0
  br i1 %i.cf, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit"
  %i.cg = shl nuw i64 %.sroa.044.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.545.0.copyload, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44589
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit.thread", %bb.s, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !44590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.t:                                             ; preds = %.lr.ph139
  %i.ch = inttoptr i64 %.sroa.762.8.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44562
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver12resolve_type17hb954fe2ab5116529E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ch)
          to label %bb.ai unwind label %bb.r, !noalias !44562, !inline_history !44526

bb.u:                                             ; preds = %.lr.ph139
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.561.8.copyload, i64 272
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !44562, !noundef !44
  %i.ck = icmp eq i64 %.sroa.762.8.copyload, %i.cj
  br i1 %i.ck, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !44591)
  %i.cl = load i64, ptr %i.n, align 8, !alias.scope !44591, !noalias !44562, !noundef !44 ; 3 uses
  %i.cm = load i64, ptr %i.i, align 8, !range !74, !alias.scope !44591, !noalias !44562, !noundef !44
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit"

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1d4064b3619b3b4fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit" unwind label %bb.r

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit": ; preds = %bb.w, %bb.v
  %i.co = load ptr, ptr %i.m, align 8, !alias.scope !44591, !noalias !44562, !nonnull !44, !noundef !44
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cl ; 3 uses
  store i64 1, ptr %i.cp, align 8, !noalias !44592
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.561.8.copyload, ptr %.sroa.464.0..sroa_idx, align 8, !noalias !44592
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.762.8.copyload, ptr %.sroa.565.0..sroa_idx, align 8, !noalias !44592
  %i.cq = add i64 %i.cl, 1
  store i64 %i.cq, ptr %i.n, align 8, !alias.scope !44591, !noalias !44562
  br label %bb.ah

bb.x:                                             ; preds = %bb.u
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.sroa.561.8.copyload)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %bb.x
  store ptr %1, ptr %.sroa.04.sroa.4.0..sroa_idx.i, align 8, !alias.scope !44593, !noalias !44562
  store ptr null, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !44593, !noalias !44562
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !44593, !noalias !44562
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h75f57110b89e90a0E"(ptr noalias noundef align 8 dereferenceable(24) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.g)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.561.8.copyload, i64 216 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !range !72, !noalias !44562, !noundef !44
  %.not.i = icmp eq i32 %i.cs, 3
  br i1 %.not.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44562
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver17resolve_container17h589838502bee0d4aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cr)
          to label %bb.ab unwind label %bb.r, !noalias !44562, !inline_history !44526

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !alias.scope !44594, !noalias !44562 ; 4 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !44594, !noalias !44562, !nonnull !44, !noundef !44 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.a, align 8, !alias.scope !44594, !noalias !44562 ; 5 uses
  %i.ct = icmp ult i64 %.sroa.5.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ct), !noalias !44562
  call void @llvm.experimental.noalias.scope.decl(metadata !44595)
  %.idx81 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !44596), !noalias !44562
  %i.cu = load i64, ptr %i.n, align 8, !alias.scope !44597, !noalias !44562, !noundef !44 ; 3 uses
  %i.cv = load i64, ptr %i.i, align 8, !range !74, !alias.scope !44597, !noalias !44562, !noundef !44
  %i.cw = sub i64 %i.cv, %i.cu
  %i.cx = icmp ugt i64 %.sroa.5.0.copyload.i, %i.cw
  br i1 %i.cx, label %bb.ae, label %bb.af, !prof !49

bb.ac:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.cz, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = mul nuw i64 %.sroa.0.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44598
  br label %.body

bb.ae:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cu, i64 noundef %.sroa.5.0.copyload.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.ac, !noalias !44599

.noexc.i:                                         ; preds = %bb.ae
  %.pre.i.i = load i64, ptr %i.n, align 8, !alias.scope !44600, !noalias !44562
  br label %bb.af

bb.af:                                            ; preds = %.noexc.i, %bb.ab
  %i.db = phi i64 [ %i.cu, %bb.ab ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.dc = icmp ult i64 %i.db, 384307168202282326
  call void @llvm.assume(i1 %i.dc), !noalias !44562
  %i.dd = load ptr, ptr %i.m, align 8, !alias.scope !44600, !noalias !44562, !nonnull !44, !noundef !44
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull readonly align 8 %.sroa.4.0.copyload.i, i64 %.idx81, i1 false), !noalias !44601
  %i.df = add nuw nsw i64 %i.db, %.sroa.5.0.copyload.i
  store i64 %i.df, ptr %i.n, align 8, !alias.scope !44600, !noalias !44562
  %i.dg = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.dg, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = mul nuw i64 %.sroa.0.0.copyload.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44602
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit"

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit": ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44562
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he7e3f864399efe79E.exit", %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h65b5a10e494a390fE.exit", %bb.z
  %i.di = icmp eq ptr %i.cd, %i.by
  br i1 %i.di, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he8a89f0286e76219E.exit", label %.lr.ph139

bb.ai:                                            ; preds = %bb.t
  %i.dj = load ptr, ptr %5, align 8, !noalias !44562, !nonnull !44, !noundef !44 ; 5 uses
  %i.dk = load i64, ptr %i.o, align 8, !noalias !44562, !noundef !44 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44603)
  %i.dl = load i64, ptr %i.n, align 8, !alias.scope !44604, !noalias !44562, !noundef !44 ; 4 uses
  %i.dm = load i64, ptr %i.i, align 8, !range !74, !alias.scope !44604, !noalias !44562, !noundef !44
  %i.dn = sub i64 %i.dm, %i.dl
  %i.do = icmp ugt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.aj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i", !prof !49

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.dl, i64 noundef %i.dk, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" unwind label %bb.ak

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread": ; preds = %bb.aj
  %.pre.i = load i64, ptr %i.n, align 8, !alias.scope !44603, !noalias !44562
  %i.dp = load ptr, ptr %i.m, align 8, !alias.scope !44603, !noalias !44562, !nonnull !44, !noundef !44
  br label %.preheader.i.preheader

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i": ; preds = %bb.ai
  %i.dq = load ptr, ptr %i.m, align 8, !alias.scope !44603, !noalias !44562, !nonnull !44, !noundef !44
  %i.dr = icmp eq i64 %i.dk, 0
  br i1 %i.dr, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i"
  %i.ds = phi ptr [ %i.dp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" ], [ %i.dq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ] ; 3 uses
  %i.dt = phi i64 [ %.pre.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.thread" ], [ %i.dl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ] ; 2 uses
  %xtraiter = and i64 %i.dk, 1
  %i.du = icmp eq i64 %i.dk, 1
  br i1 %i.du, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.dk, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.dv = phi i64 [ %i.dt, %.preheader.i.preheader.new ], [ %i.ec, %.preheader.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ed, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.sroa.06.0.i.i.i.i
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !noalias !44605
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.sroa.06.0.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = getelementptr [24 x i8], ptr %i.ds, i64 %i.dv
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !44605
  %i.ec = add i64 %i.dv, 2                        ; 3 uses
  %i.ed = add nuw i64 %.sroa.06.0.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i

bb.ak:                                            ; preds = %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val38.i = load i64, ptr %i.e, align 8, !noalias !44562 ; 2 uses
  %i.ef = icmp eq i64 %.val38.i, 0
  br i1 %i.ef, label %.body, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = mul nuw i64 %.val38.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44562
  br label %.body

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi i64 [ %i.dt, %.preheader.i.preheader ], [ %i.ec, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.06.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ed, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i64 %i.dk to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.sroa.06.0.i.i.i.i.epil.init
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !noalias !44605
  %i.ej = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i"
  %storemerge.i.i.i = phi i64 [ %i.dl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i" ], [ %i.ec, %.loopexit.loopexit.unr-lcssa ], [ %i.ej, %.preheader.i.epil.preheader ]
  store i64 %storemerge.i.i.i, ptr %i.n, align 8, !alias.scope !44603, !noalias !44606
  %.val.i = load i64, ptr %i.e, align 8, !noalias !44562 ; 2 uses
  %i.ek = icmp eq i64 %.val.i, 0
  br i1 %i.ek, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.el = mul nuw i64 %.val.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44562
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit": ; preds = %bb.am, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44562
  br label %bb.ah

.thread:                                          ; preds = %bb.a, %.body19
  resume { ptr, i32 } %.pn.pn.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3nls12field_walker13FieldResolver21resolve_def_with_path17h6c7df9767e50e720E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.4379 = alloca [16 x i8], align 8         ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 13 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 20 uses
  %i.j = alloca [8 x i8], align 4                 ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 16 uses
  %i.l = alloca [104 x i8], align 8               ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [88 x i8], align 8                ; 8 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.8299 = alloca [96 x i8], align 8         ; 5 uses
  %.sroa.7293 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.7257 = alloca [16 x i8], align 8         ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.4241 = alloca [16 x i8], align 8         ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [104 x i8], align 8               ; 5 uses
  %i.t = alloca [248 x i8], align 8               ; 26 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 8 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_ZN3nls12field_walker3Def6values17hd6562d9d475bbae6E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.bf, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1021", %.body94, %bb.ck, %.body71, %bb.cf, %bb.cg, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ny, %bb.cf ], [ %.pn.i54, %.body94 ], [ %eh.lpad-body72, %bb.ck ], [ %i.aa, %bb.c ], [ %i.ny, %bb.cg ], [ %eh.lpad-body72, %.body71 ], [ %.pn.i, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1021" ], [ %.pn.i, %bb.bf ]
  %.val = load i64, ptr %i.v, align 8             ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit", label %bb.b

bb.b:                                             ; preds = %.body
  %.val42 = load ptr, ptr %i.w, align 8, !nonnull !44, !noundef !44
  %i.z = mul nuw i64 %.val, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #66
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit"

bb.c:                                             ; preds = %.invoke, %bb.ce, %bb.bn, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !alias.scope !44957 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !44957, !nonnull !44, !noundef !44 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !44957 ; 2 uses
  %i.ab = icmp ult i64 %.sroa.5.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44958)
  %i.ad = load i32, ptr %2, align 8, !range !72   ; 3 uses
  %switch.i.i = icmp samesign ult i32 %i.ad, 2    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.0.0.i.i111 = select i1 %switch.i.i, ptr %i.af, ptr inttoptr (i64 4 to ptr) ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %.idx672 = select i1 %switch.i.i, i64 %i.ai, i64 0 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i111, i64 %.idx672
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 9 uses
  %i.am = icmp samesign eq i64 %.idx672, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.10.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.12.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.14.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.24.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %.sroa.26.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.27.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.04.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %.sroa.6.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 4 uses
end_hunk_1
