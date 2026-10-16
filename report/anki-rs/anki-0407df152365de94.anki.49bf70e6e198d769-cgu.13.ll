Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN14regex_automata4meta5regex5Regex11search_half17h57ab8228b29dcbf1E:bb.a
  call void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h2284c50b46ccff7eE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %.8.val, i64 noundef %i.as, i64 noundef %i.au)
  br label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit"

bb.k:                                             ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread
  store atomic i64 1, ptr %i.at release, align 8, !noalias !1268
  %i.aw = inttoptr i64 %i.as to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.8.val, ptr %i.ax, align 8
  store i64 1, ptr %i.c, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.az, align 8
  br label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit"

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit": ; preds = %bb.j, %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !12, !noundef !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !16, !invariant.load !12
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, -16
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.c, align 8, !range !14, !noundef !12
  %i.bl = trunc nuw i64 %i.bk to i1               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !12, !align !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !12
  %.sroa.01.0 = select i1 %i.bl, ptr %i.bo, ptr %i.bq
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.bs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef align 1 %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.l unwind label %bb.t

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread7: ; preds = %bb.c, %bb.e, %bb.d, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit
  store i64 0, ptr %0, align 8
  br label %bb.r

bb.l:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit"
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bt = ptrtoint ptr %.sroa.2.0.copyload to i64 ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.bt, ptr %i.b, align 8, !noalias !1269
  %i.bu = icmp eq ptr %.sroa.2.0.copyload, inttoptr (i64 2 to ptr)
  br i1 %i.bu, label %.noexc4, label %.noexc5, !prof !17

bb.n:                                             ; preds = %bb.l
  %i.bv = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.bv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  tail call fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h23776eb7454f93b2E"(ptr noundef nonnull align 8 %.sroa.3.0.copyload, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hd58f304292b4ec60E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.2.0.copyload)
          to label %.noexc3 unwind label %.body.thread

.body.thread:                                     ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef 1400, i64 noundef 8) #34
  br label %bb.s

.noexc3:                                          ; preds = %bb.p
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef 1400, i64 noundef 8) #34
  br label %bb.q

.noexc4:                                          ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1269
  store ptr null, ptr %i.a, align 8, !noalias !1269
  call void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_ZN14regex_automata4util4pool5inner17THREAD_ID_DROPPED17ha390b5a1d905b2eeE, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #39
  unreachable

.noexc5:                                          ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 40
  store atomic i64 %i.bt, ptr %i.bx release, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.noexc5, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread7
  ret void

bb.s:                                             ; preds = %.body.thread, %bb.t
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.bw, %.body.thread ], [ %lpad.thr_comm.split-lp, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body11

bb.t:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr366drop_in_place$LT$regex_automata..util..pool..PoolGuard$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..marker..Send$u2b$core..marker..Sync$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h0992c5b1e7f9b029E"(ptr noalias noundef align 8 dereferenceable(32) %i.c) #40
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17he3e7d47abbce67f9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load i64, ptr %2, align 8, !noundef !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !12
  %.not = icmp ult i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !12 ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.i, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %i.d, align 8, !noalias !1272
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !noalias !1272
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1272, !noundef !12 ; 2 uses
  %.not.i = icmp ugt i64 %i.m, %i.p
  %i.q = add i64 %i.m, 1
  %.not8.i = icmp uge i64 %i.i, %i.q
  %or.cond.i = or i1 %.not8.i, %.not.i
  br i1 %or.cond.i, label %bb.e, label %_ZN14regex_automata4util6search5Input8set_span17h168d275187768405E.exit, !prof !19

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1272
  store i64 %i.p, ptr %i.b, align 8, !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1272
  store ptr %i.d, ptr %i.a, align 8, !noalias !1272
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17h2be7ed8bf8bcd47aE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1272
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.r, align 8, !noalias !1272
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1272
  store ptr @310, ptr %i.c, align 8, !noalias !1272
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.s, align 8, !noalias !1272
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.t, align 8, !noalias !1272
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.u, align 8, !noalias !1272
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.v, align 8, !noalias !1272
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #39, !noalias !1272
  unreachable

_ZN14regex_automata4util6search5Input8set_span17h168d275187768405E.exit: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.h, align 8, !alias.scope !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call fastcc void @"_ZN103_$LT$regex_automata..meta..regex..CapturesMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h58d6bf3b966ffe0bE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w)
  ret void

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #39
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h2284c50b46ccff7eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !12 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN86_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..Fn$LT$Args$GT$$GT$4call17ha56b99ca5f17f5bcE"(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !38, !alias.scope !1281, !noundef !12
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17hb42717564917425eE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hd58f304292b4ec60E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17hb42717564917425eE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17hb42717564917425eE.exit": ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.u, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23": ; preds = %bb.v, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22, %bb.r, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc5dcbc4b29ae802aE.exit10", %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17hb42717564917425eE.exit"
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #39
  unreachable

4:                                                ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 1400) #39
          to label %.noexc16 unwind label %5

.noexc16:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hd58f304292b4ec60E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #40
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc5dcbc4b29ae802aE.exit10": ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23"

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %14
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h970b3d6fad88af61E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !14, !noundef !12
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %12, align 8, !nonnull !12, !align !13, !noundef !12 ; 9 uses
  %i.ab = load i8, ptr %13, align 8, !range !26, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !12 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %.noexc20, !prof !37

.noexc20:                                         ; preds = %bb.k
  %i.ak = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc20
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.l, %.noexc20, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit", !prof !17

bb.m:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.aa)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit"

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !27, !noundef !12
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !12, !noundef !12
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !12, !align !13, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22, label %bb.p, !prof !37

bb.p:                                             ; preds = %bb.o
  %i.be = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.be, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23", !prof !17

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i22
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.aa)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit": ; preds = %bb.m, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN86_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..Fn$LT$Args$GT$$GT$4call17ha56b99ca5f17f5bcE"(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1282
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1401) 1400, i64 noundef 8) #34, !noalias !1282 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !17

bb.s:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 1400) #39
          to label %.noexc24 unwind label %bb.t

.noexc24:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hd58f304292b4ec60E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #40
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.v:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit23"

bb.w:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %.val.i26 = load ptr, ptr %12, align 8, !alias.scope !1283 ; 4 uses
  %.val3.i27 = load i8, ptr %13, align 8, !range !29, !alias.scope !1283, !noundef !12 ; 2 uses
  %.not.i.i28 = icmp eq i8 %.val3.i27, 2
  br i1 %.not.i.i28, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i26) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i26, i64 4
  %i.bq = trunc nuw i8 %.val3.i27 to i1
  br i1 %i.bq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !1283
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29, label %bb.z, !prof !37

bb.z:                                             ; preds = %bb.y
  %i.bu = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !1283
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !1283
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i26, i32 0 release, align 4, !noalias !1283
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i30", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33", !prof !17

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i30": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %.val.i26), !noalias !1283
  br label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33"

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit33": ; preds = %bb.w, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i29, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i30"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN86_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..Fn$LT$Args$GT$$GT$4call17ha56b99ca5f17f5bcE"(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1284
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1401) 1400, i64 noundef 8) #34, !noalias !1284 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %4, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hc5dcbc4b29ae802aE.exit10", !prof !17
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h23776eb7454f93b2E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h83a329732e23407dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @301)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #39
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %bb.ch, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.9"
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #34
  br label %common.resume

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE.exit": ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.9"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #34
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit": ; preds = %bb.p, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE.exit"
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h970b3d6fad88af61E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.8", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.7", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.6", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.5", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.4", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.3", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.2", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.1", %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26"
  %.lcssa = phi i64 [ %i.fb, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.8" ], [ %i.at, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26" ], [ %i.bh, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.1" ], [ %i.bv, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.2" ], [ %i.cj, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.3" ], [ %i.cx, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.4" ], [ %i.dl, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.5" ], [ %i.dz, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.6" ], [ %i.en, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.7" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #39
          to label %bb.d unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !14, !noundef !12
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !26, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1308, !noundef !12 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !27, !alias.scope !1308, !noundef !12
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h45b9a0ef4bb73a53E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !1309

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE"(ptr nonnull align 8 %1) #40
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E"(ptr nonnull %i.p, i8 %i.q) #40
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1308, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !1309
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1308
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %.noexc14, !prof !37

.noexc14:                                         ; preds = %bb.n
  %i.ah = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.ah, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit", !prof !17

bb.p:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.p)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit"

bb.q:                                             ; preds = %bb.ch, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.r:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !1310 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !29, !alias.scope !1310, !noundef !12 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !1310
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19, label %bb.u, !prof !37

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !1310
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !1310
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26", !prof !17

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %.val.i16)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26" unwind label %.loopexit

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i19, %bb.r, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26"
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !12, !noundef !12
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h970b3d6fad88af61E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !14, !noundef !12
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !1311 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !29, !alias.scope !1311, !noundef !12 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h01aa5a360b702ee0E.exit26.1", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_0
