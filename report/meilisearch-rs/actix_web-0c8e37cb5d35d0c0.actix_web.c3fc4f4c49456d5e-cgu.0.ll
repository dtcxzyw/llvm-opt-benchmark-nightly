Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN114_$LT$futures_util..stream..futures_unordered..task..Task$LT$Fut$GT$$u20$as$u20$futures_task..arc_wake..ArcWake$GT$11wake_by_ref17h61a78fcc1907382bE":bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.sroa.01.0.i.i, 1
  %i.n = cmpxchg weak ptr %.val, i64 %.sroa.01.0.i.i, i64 %i.m acquire monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.c

"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit4": ; preds = %bb.c, %bb.a, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !869
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he02237ce4a97880cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit" unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  store ptr %.val, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 289
  store atomic i8 1, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  %i.v = atomicrmw xchg ptr %i.u, i8 1 seq_cst, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.x = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !870
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit4"

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he02237ce4a97880cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit4"

bb.l:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 280
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ab = atomicrmw xchg ptr %i.aa, ptr %i.d acq_rel, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  store atomic ptr %i.d, ptr %i.ac release, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke void @_ZN12futures_core4task10__internal12atomic_waker11AtomicWaker4wake17h17b5a80ede48bc3aE(ptr noundef nonnull align 8 %i.ad)
          to label %bb.j unwind label %bb.g

bb.m:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr380drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$$GT$17h4574d325a6277e25E.exit": ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN114_$LT$futures_util..stream..futures_unordered..task..Task$LT$Fut$GT$$u20$as$u20$futures_task..arc_wake..ArcWake$GT$11wake_by_ref17h6e512c5c56ec3a0aE"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 8 uses
  %i.e = icmp eq ptr %.val, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit4", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr %.val monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.p, %bb.f ] ; 4 uses
  %i.g = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit4", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp sgt i64 %.sroa.01.0.i.i, -1
  br i1 %i.h, label %bb.f, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @362, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h66f47b62ae1982faE", ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8
  store ptr @3, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.l, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #52
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = add nuw i64 %.sroa.01.0.i.i, 1
  %i.n = cmpxchg weak ptr %.val, i64 %.sroa.01.0.i.i, i64 %i.m acquire monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.c

"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit4": ; preds = %bb.c, %bb.a, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !879
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h69cf7e325cafa4ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit" unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  store ptr %.val, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 81
  store atomic i8 1, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.v = atomicrmw xchg ptr %i.u, i8 1 seq_cst, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.x = atomicrmw add ptr %.val, i64 -1 release, align 8, !noalias !880
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit4"

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h69cf7e325cafa4ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit4"

bb.l:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ab = atomicrmw xchg ptr %i.aa, ptr %i.d acq_rel, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store atomic ptr %i.d, ptr %i.ac release, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 24
  invoke void @_ZN12futures_core4task10__internal12atomic_waker11AtomicWaker4wake17h17b5a80ede48bc3aE(ptr noundef nonnull align 8 %i.ad)
          to label %bb.j unwind label %bb.g

bb.m:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr366drop_in_place$LT$alloc..sync..Arc$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$$GT$17h6f54572a486423ceE.exit": ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN115_$LT$actix_web..route..Route$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service17heb1bc561843e79eeE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !align !35, !noundef !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !24, !nonnull !24
  %i.g = tail call { ptr, ptr } %i.f(ptr noundef nonnull align 1 %i.b) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %.val.i = load i64, ptr %i.i, align 8, !noundef !24 ; 2 uses
  %i.j = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.k, ptr %i.i, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hbe96eea6252ef9c5E.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hbe96eea6252ef9c5E.exit: ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.m) ]
  store ptr %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.q, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !883
  %i.r = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !883 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %bb.f, !prof !31

bb.c:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hbe96eea6252ef9c5E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #52
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr177drop_in_place$LT$$LT$actix_web..route..Route$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb4ef2afdb0b177ceE"(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #53
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hbe96eea6252ef9c5E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = insertvalue { ptr, ptr } poison, ptr %i.r, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @98, 1
  ret { ptr, ptr } %i.w

.body:                                            ; preds = %bb.d
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN115_$LT$actix_web..route..Route$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$17h87eb2cbd66ed977eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !33, !noundef !24
  switch i8 %i.c, label %default.unreachable26 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val15.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert22 = getelementptr i8, ptr %1, i64 32
  %.val16.pre = load ptr, ptr %.phi.trans.insert22, align 8
  br label %bb.f

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !24, !align !34, !noundef !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !24, !align !35, !noundef !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

.body:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i", %bb.l, %bb.g
  %.pn7 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.af, %bb.l ], [ %i.af, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !897, !nonnull !24, !noundef !24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !897, !noundef !24
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !897
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit"

bb.c:                                             ; preds = %.body
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5272a74365df404cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit" unwind label %bb.r

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #52
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #52
  unreachable

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %.val16 = phi ptr [ %.val16.pre, %._crit_edge ], [ %i.f, %bb.b ]
  %.val15 = phi ptr [ %.val15.pre, %._crit_edge ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !24, !noalias !898, !nonnull !24
  invoke void %i.q(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit" unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.n, align 8
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !24, !align !35, !noundef !24
  invoke fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %.val, ptr nonnull %.val12) #53
          to label %.body unwind label %bb.r

"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit": ; preds = %bb.f
  %i.s = load i64, ptr %i.a, align 8, !range !37, !noundef !24
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

common.ret:                                       ; preds = %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit19", %bb.h
  %storemerge11 = phi i64 [ 0, %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit19" ], [ 1, %bb.h ]
  %storemerge = phi i8 [ 1, %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit19" ], [ 3, %bb.h ]
  store i64 %storemerge11, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.h:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.i:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !align !34, !noundef !24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val13 = load ptr, ptr %i.n, align 8           ; 5 uses
  %.val14 = load ptr, ptr %i.o, align 8, !nonnull !24, !align !35, !noundef !24 ; 5 uses
  %i.y = load ptr, ptr %.val14, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.y(ptr noundef nonnull %.val13)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, -9223372036854775807
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %bb.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #46
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, -9223372036854775807
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #46
  br label %.body

bb.m:                                             ; preds = %bb.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %i.am = icmp eq ptr %i.v, null
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !24, !noundef !24
  br label %"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit19"

"_ZN4core3ptr121drop_in_place$LT$alloc..rc..Rc$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17ha3a0eb25a43cdbc0E.exit19": ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.4.0 = phi ptr [ %i.ao, %bb.n ], [ undef, %bb.p ], [ undef, %bb.o ]
  %.sroa.3.0 = phi ptr [ %i.x, %bb.n ], [ undef, %bb.p ], [ undef, %bb.o ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ap, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@"_ZN122_$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service17h4ac2a947f4269dffE":bb.a
  store i64 %i.ac, ptr %i.c, align 8, !noalias !1359
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dt, ptr %i.dv, align 8, !noalias !1359
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.152..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 152
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i20.i

bb.as:                                            ; preds = %bb.bd, %bb.aq
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %bb.bd ], [ 0, %bb.aq ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [200 x i8], ptr %i.ad, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1361
  invoke fastcc void @"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.dz)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ar, !noalias !1362

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1361
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 168 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !1361, !noundef !24
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.at, label %bb.au, !prof !28

bb.at:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 -1, ptr %i.ea, align 8, !noalias !1361
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 176 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ed, align 8, !noalias !1361 ; 2 uses
  store i64 -9223372036854775808, ptr %i.ed, align 8, !noalias !1361
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #52
          to label %bb.bc unwind label %bb.bb, !noalias !1361

bb.av:                                            ; preds = %bb.at
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1361
  br label %bb.ay

bb.aw:                                            ; preds = %bb.at
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1361
  store i64 0, ptr %i.dx, align 8, !noalias !1361
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h7a44e19ea6cb34dfE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
          to label %bb.ba unwind label %bb.az, !noalias !1361

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.0.copyload.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.aw ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  store i64 %.sroa.0.0.copyload.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !1361
  store i64 0, ptr %i.ea, align 8, !noalias !1361
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1361, !nonnull !24, !noundef !24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !1361, !nonnull !24, !align !35, !noundef !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !24, !noalias !1361, !nonnull !24
  %i.el = invoke { ptr, ptr } %i.ek(ptr noundef nonnull align 1 %i.eg)
          to label %bb.bd unwind label %bb.ax, !noalias !1361 ; 2 uses

bb.az:                                            ; preds = %bb.ba, %bb.ax
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1361
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ax
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ee, %bb.ax ], [ %i.en, %bb.bb ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %i.b) #53
          to label %.body.i.i.i.i.i.i20.i unwind label %bb.az, !noalias !1361

bb.bb:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.bc:                                            ; preds = %bb.au
  unreachable

bb.bd:                                            ; preds = %bb.ay
  %i.eo = extractvalue { ptr, ptr } %i.el, 0
  %i.ep = extractvalue { ptr, ptr } %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false), !noalias !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.152..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1361
  %i.eq = getelementptr inbounds nuw [224 x i8], ptr %i.dt, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  store i64 0, ptr %i.eq, align 8, !noalias !1364
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 176, i1 false), !noalias !1363
  %.sroa.4.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store ptr %i.eo, ptr %.sroa.4.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1365
  %.sroa.54.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 192
  store ptr %i.ep, ptr %.sroa.54.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1365
  %.sroa.76.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 216
  store i8 0, ptr %.sroa.76.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1365
  %i.er = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.es = icmp eq i64 %i.er, %i.ac
  br i1 %i.es, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb01896940062fea3E.exit.i.i.i, label %bb.as

.body.i.i.i.i.i.i20.i:                            ; preds = %bb.ba, %bb.ar
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dy, %bb.ar ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba ]
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dw, align 8, !noalias !1362
  invoke fastcc void @"_ZN4core3ptr287drop_in_place$LT$alloc..vec..Vec$LT$futures_util..future..maybe_done..MaybeDone$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h6d8887eb3f785333E"(ptr noundef nonnull align 8 %i.c) #53
          to label %bb.bp unwind label %bb.be, !noalias !1359

bb.be:                                            ; preds = %.body.i.i.i.i.i.i20.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1359
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hb01896940062fea3E.exit.i.i.i: ; preds = %bb.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb7069631206a9b2cE.exit.i.i.i.i.i.i.i.i.thread.i"
  %i.eu = phi ptr [ %i.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb7069631206a9b2cE.exit.i.i.i.i.i.i.i.i.thread.i" ], [ %i.dw, %bb.bd ]
  store i64 %i.ac, ptr %i.eu, align 8, !noalias !1362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.ev = load i64, ptr %i.d, align 8, !range !39, !alias.scope !1366, !noalias !1358, !noundef !24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1366, !noalias !1358, !noundef !24 ; 5 uses
  %i.ey = icmp ugt i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.bf, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb01896940062fea3E.exit.i.i.i
  %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.42.0.copyload.pre.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1366, !noalias !1358
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i

bb.bf:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb01896940062fea3E.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val22.i.i.i.i.i.i.i = load ptr, ptr %i.ez, align 8, !alias.scope !1369, !noalias !1358, !nonnull !24, !noundef !24 ; 2 uses
  %i.fa = mul nuw i64 %i.ev, 224                  ; 2 uses
  %i.fb = icmp eq i64 %i.ex, 0
  br i1 %i.fb, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.bf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, 9) 8) #46, !noalias !1370
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i": ; preds = %bb.bf
  %i.fc = mul nuw i64 %i.ex, 224                  ; 2 uses
  %i.fd = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i, i64 noundef %i.fa, i64 noundef range(i64 1, 9) 8, i64 noundef %i.fc) #46, !noalias !1370 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.bg, label %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i

bb.bg:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #52
          to label %.noexc.i.i.i23.i unwind label %bb.bh, !noalias !1371

.noexc.i.i.i23.i:                                 ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr287drop_in_place$LT$alloc..vec..Vec$LT$futures_util..future..maybe_done..MaybeDone$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h6d8887eb3f785333E"(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d) #53
          to label %bb.bp unwind label %bb.bi, !noalias !1358

bb.bi:                                            ; preds = %bb.bh
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1371
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i
  %.sroa.42.0.copyload.i.i.i.i = phi ptr [ %.sroa.42.0.copyload.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.fd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i" ]
  %i.fh = icmp ult i64 %i.ex, 41175768021673107
  tail call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1358
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bk:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i
  %.sroa.7.sroa.0.sroa.8.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.14.0.copyload86.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.7.sroa.0.sroa.7.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.13.0.copyload80.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.7.sroa.0.sroa.5.0.i = phi i8 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.1166.0.copyload70.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.7.sroa.0.sroa.4.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.1059.0.copyload63.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.7.sroa.0.sroa.0.0.i = phi ptr [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.952.0.copyload56.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.6.0.i = phi i64 [ %i.ex, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.845.0.copyload49.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.5.0.i = phi ptr [ %.sroa.42.0.copyload.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.738.0.copyload42.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %_ZN4core4iter6traits8iterator8Iterator7collect17he3d3e08000109d69E.exit.i ], [ %.sroa.034.0.copyload36.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h25471a805ba3fb6aE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y), "nonnull"(ptr %i.z) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %i.y, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr %i.z, ptr %i.fk, align 8
  store i64 %.sroa.0.0.i, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.7.sroa.0.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.7.sroa.0.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 %.sroa.7.sroa.0.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.sroa.6.i, i64 7, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.7.sroa.0.sroa.7.0.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.7.sroa.0.sroa.8.0.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i8 0, ptr %i.fl, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !1372
  %i.fm = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 216, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !1372 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.bl, label %bb.bo, !prof !31

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 216) #52
          to label %.noexc5 unwind label %bb.bm

.noexc5:                                          ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr184drop_in_place$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5c5cdf9112c3fc72E"(ptr noundef nonnull align 8 dereferenceable(216) %i.o) #53
          to label %.body unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.fm, ptr noundef nonnull align 8 dereferenceable(216) %i.o, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fq = insertvalue { ptr, ptr } poison, ptr %i.fm, 0
  %i.fr = insertvalue { ptr, ptr } %i.fq, ptr @112, 1
  ret { ptr, ptr } %i.fr

.body:                                            ; preds = %bb.bm, %bb.bp
  %eh.lpad-body10 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.bp ], [ %i.fo, %bb.bm ]
  resume { ptr, i32 } %eh.lpad-body10

bb.bp:                                            ; preds = %bb.d, %bb.g, %.body.i.i.i.i.i.i.i, %bb.al, %.body.i.i.i.i.i.i20.i, %bb.bh, %bb.bj
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ff, %bb.bh ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i20.i ], [ %eh.lpad-body.ph.i.i.i.i.i.i, %bb.al ], [ %i.aj, %bb.d ], [ %i.ar, %bb.g ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.fi, %bb.bj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  invoke fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %i.y, ptr nonnull %i.z) #53
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN122_$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$17h37eb2b014b9b35e7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 7 uses
  %i.b = alloca [216 x i8], align 8               ; 11 uses
  %i.c = alloca [224 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [192 x i8], align 8               ; 6 uses
  %i.f = alloca [192 x i8], align 8               ; 6 uses
  %i.g = alloca [192 x i8], align 8               ; 5 uses
  %i.h = alloca [192 x i8], align 8               ; 6 uses
  %i.i = alloca [32 x i8], align 16               ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [200 x i8], align 8               ; 10 uses
  %i.n = alloca [200 x i8], align 8               ; 7 uses
  %.sroa.9.i.i = alloca [184 x i8], align 8       ; 6 uses
  %.sroa.488 = alloca [16 x i8], align 8          ; 2 uses
  %i.o = alloca [32 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 14 uses
  %i.r = alloca [40 x i8], align 8                ; 16 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !range !49, !noundef !24
  switch i8 %i.v, label %default.unreachable230 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %._crit_edge
    i8 4, label %bb.b
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val30.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert200 = getelementptr i8, ptr %1, i64 120
  %.val31.pre = load ptr, ptr %.phi.trans.insert200, align 8
  br label %bb.f

default.unreachable230:                           ; preds = %.lr.ph.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 1, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !24, !align !34, !noundef !24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !24, !align !35, !noundef !24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #52
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #52
  unreachable

bb.f:                                             ; preds = %._crit_edge, %bb.c
  %.val31 = phi ptr [ %.val31.pre, %._crit_edge ], [ %i.aa, %bb.c ]
  %.val30 = phi ptr [ %.val30.pre, %._crit_edge ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ae = getelementptr i8, ptr %1, i64 120       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val31, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !24, !noalias !1522, !nonnull !24
  invoke void %i.ag(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull align 1 %.val30, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit" unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val = load ptr, ptr %i.ad, align 8
  %.val27 = load ptr, ptr %i.ae, align 8, !nonnull !24, !align !35, !noundef !24
  invoke fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %.val, ptr nonnull %.val27) #53
          to label %.body unwind label %bb.p

"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit": ; preds = %bb.f
  %i.ai = load i64, ptr %i.t, align 8, !range !37, !noundef !24
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.i

common.ret:                                       ; preds = %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71", %"_ZN97_$LT$futures_util..future..join_all..JoinAll$LT$F$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h2482ce626df311cdE.exit.thread", %bb.h
  %.sink = phi i8 [ 1, %"_ZN4core3ptr260drop_in_place$LT$futures_util..future..join_all..JoinAll$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h84302bd1994ea6efE.exit71" ], [ 4, %"_ZN97_$LT$futures_util..future..join_all..JoinAll$LT$F$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h2482ce626df311cdE.exit.thread" ], [ 3, %bb.h ]
  store i8 %.sink, ptr %i.u, align 8
  ret void

bb.h:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !align !34, !noundef !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val28 = load ptr, ptr %i.ad, align 8          ; 5 uses
  %.val29 = load ptr, ptr %i.ae, align 8, !nonnull !24, !align !35, !noundef !24 ; 5 uses
  %i.ao = load ptr, ptr %.val29, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val28) ]
end_hunk_1
begin_hunk_2_@"_ZN128_$LT$actix_web..resource..ResourceFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service17h28bfbd10e2e22ba9E":bb.a
  store i64 1, ptr %i.ci, align 8, !noalias !1766
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !1766
  br label %bb.ab

.body.i.i.i.i.i.i.i:                              ; preds = %bb.s, %bb.q, %bb.o
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %i.bm, %bb.o ], [ %i.bm, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr260drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$17h51e1c07a843403dcE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g) #53
          to label %bb.aq unwind label %bb.y, !noalias !1770

bb.y:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1771
  unreachable

bb.z:                                             ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr260drop_in_place$LT$futures_util..stream..futures_ordered..FuturesOrdered$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$17h51e1c07a843403dcE"(ptr noalias noundef align 8 dereferenceable(64) %i.f) #53
          to label %bb.aq unwind label %bb.aa, !noalias !1762

bb.aa:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1762
  unreachable

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.1170.0.copyload74.i.i.i = phi i8 [ 0, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.sroa.1170.0.copyload74.pre.i.i.i, %bb.x ] ; 2 uses
  %.sroa.849.0.copyload53.i.i.i = phi i64 [ %.sroa.849.0.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.sroa.849.0.copyload53.pre.i.i.i, %bb.x ] ; 2 uses
  %.sroa.742.0.copyload46.i.i.i = phi ptr [ %.sroa.742.0.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.sroa.742.0.copyload46.pre.i.i.i, %bb.x ] ; 2 uses
  %.sroa.038.0.copyload40.i.i.i = phi i64 [ %.sroa.038.0.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.sroa.038.0.copyload40.pre.i.i.i, %bb.x ] ; 2 uses
  %.sroa.956.0.copyload60.i.i.i = phi ptr [ %.sroa.956.0.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.x ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store atomic ptr null, ptr %i.cn monotonic, align 8, !noalias !1766
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.956.0.copyload60.i.i.i, i64 48
  %i.cp = atomicrmw xchg ptr %i.co, ptr %i.bv acq_rel, align 8, !noalias !1766
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  store atomic ptr %i.bv, ptr %i.cq release, align 8
  %.sroa.1063.0.copyload67.i.i.i = load i64, ptr %i.at, align 8, !noalias !1763 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1277.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1277.0..sroa_idx78.i.i.i, i64 7, i1 false), !noalias !1763
  %.sroa.13.0.copyload84.i.i.i = load i64, ptr %i.ao, align 8, !noalias !1763 ; 2 uses
  %.sroa.14.0.copyload90.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx87.i.i.i, align 8, !noalias !1763 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1762
  %i.cr = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i, 1 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.w
  br i1 %i.cs, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i, label %bb.j

_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1277.i.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1277.i.i.i)
  br label %bb.al

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1773
  %i.ct = shl nuw nsw i64 %i.w, 5                 ; 2 uses
  %i.cu = icmp eq i64 %i.w, 0
  br i1 %i.cu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h34fdf4bdafed8f48E.exit.i.i.i.i.i.i.i.i.thread.i", label %bb.ac

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h34fdf4bdafed8f48E.exit.i.i.i.i.i.i.i.i.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.a, align 8, !noalias !1773
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !noalias !1773
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hce7545871e1aef90E.exit.i.i.i

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !1774
  %i.cx = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ct, i64 noundef range(i64 1, 9) 8) #46, !noalias !1774 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ad, label %.preheader.i.i.i.i.i.i.i.i.preheader.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #52
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.ad
  unreachable

.preheader.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %bb.ac
  store i64 %i.w, ptr %i.a, align 8, !noalias !1773
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !1773
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae, %.preheader.i.i.i.i.i.i.i.i.preheader.i
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %bb.ae ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = invoke { ptr, ptr } @"_ZN115_$LT$actix_web..route..Route$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service17heb1bc561843e79eeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %bb.ae unwind label %.body.i.i.i.i.i.i20.i, !noalias !1777

bb.ae:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.dd = extractvalue { ptr, ptr } %i.dc, 0
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 0, ptr %i.de, align 8, !noalias !1778
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1778
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr @98, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1778
  %i.df = add nuw nsw i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dg = icmp eq i64 %i.df, %i.w
  br i1 %i.dg, label %_ZN4core4iter6traits8iterator8Iterator7collect17hce7545871e1aef90E.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i20.i:                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.da, align 8, !alias.scope !1779, !noalias !1780
  invoke fastcc void @"_ZN4core3ptr273drop_in_place$LT$alloc..vec..Vec$LT$futures_util..future..maybe_done..MaybeDone$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17he276df916f183b5eE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53
          to label %bb.aq unwind label %bb.af, !noalias !1773

bb.af:                                            ; preds = %.body.i.i.i.i.i.i20.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1773
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hce7545871e1aef90E.exit.i.i.i: ; preds = %bb.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h34fdf4bdafed8f48E.exit.i.i.i.i.i.i.i.i.thread.i"
  %i.dj = phi ptr [ %i.cw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h34fdf4bdafed8f48E.exit.i.i.i.i.i.i.i.i.thread.i" ], [ %i.da, %bb.ae ]
  store i64 %i.w, ptr %i.dj, align 8, !alias.scope !1779, !noalias !1780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.dk = load i64, ptr %i.b, align 8, !range !39, !alias.scope !1783, !noalias !1772, !noundef !24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !1783, !noalias !1772, !noundef !24 ; 5 uses
  %i.dn = icmp ugt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.ag, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hce7545871e1aef90E.exit.i.i.i
  %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.42.0.copyload.pre.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.phi.trans.insert.i.i.i.i, align 8, !alias.scope !1781, !noalias !1772
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i

bb.ag:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hce7545871e1aef90E.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val22.i.i.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !1786, !noalias !1772, !nonnull !24, !noundef !24 ; 2 uses
  %i.dp = shl nuw i64 %i.dk, 5                    ; 2 uses
  %i.dq = icmp eq i64 %i.dm, 0
  br i1 %i.dq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.ag
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i, i64 noundef %i.dp, i64 noundef range(i64 1, 9) 8) #46, !noalias !1787
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i": ; preds = %bb.ag
  %i.dr = shl nuw i64 %i.dm, 5                    ; 2 uses
  %i.ds = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.val22.i.i.i.i.i.i.i, i64 noundef %i.dp, i64 noundef range(i64 1, 9) 8, i64 noundef %i.dr) #46, !noalias !1787 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ah, label %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i

bb.ah:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #52
          to label %.noexc.i.i.i23.i unwind label %bb.ai, !noalias !1788

.noexc.i.i.i23.i:                                 ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr273drop_in_place$LT$alloc..vec..Vec$LT$futures_util..future..maybe_done..MaybeDone$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17he276df916f183b5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b) #53
          to label %bb.aq unwind label %bb.aj, !noalias !1772

bb.aj:                                            ; preds = %bb.ai
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !1788
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i
  %.sroa.42.0.copyload.i.i.i.i = phi ptr [ %.sroa.42.0.copyload.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" ], [ %i.ds, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17hf5c5f139a889147bE.exit.i.i.i.i.i.i.i" ]
  %i.dw = icmp ult i64 %i.dm, 288230376151711744
  tail call void @llvm.assume(i1 %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1772
  br label %bb.al

bb.ak:                                            ; preds = %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i
  %.sroa.7.sroa.0.sroa.8.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.14.0.copyload90.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.7.sroa.0.sroa.7.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.13.0.copyload84.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.7.sroa.0.sroa.5.0.i = phi i8 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.1170.0.copyload74.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.7.sroa.0.sroa.4.0.i = phi i64 [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.1063.0.copyload67.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.7.sroa.0.sroa.0.0.i = phi ptr [ undef, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.956.0.copyload60.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.6.0.i = phi i64 [ %i.dm, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.849.0.copyload53.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.5.0.i = phi ptr [ %.sroa.42.0.copyload.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.742.0.copyload46.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %_ZN4core4iter6traits8iterator8Iterator7collect17h98fc1e23353ca287E.exit.i ], [ %.sroa.038.0.copyload40.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17ha2ab03ae88c42dafE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %i.r, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store ptr %i.s, ptr %i.dz, align 8
  store i64 %.sroa.0.0.i, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.i, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %.sroa.7.sroa.0.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %.sroa.7.sroa.0.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i8 %.sroa.7.sroa.0.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.sroa.6.i, i64 7, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %.sroa.7.sroa.0.sroa.7.0.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.sroa.7.sroa.0.sroa.8.0.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i8 0, ptr %i.ea, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !1789
  %i.eb = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 216, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !1789 ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.am, label %bb.ap, !prof !31

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 216) #52
          to label %.noexc5 unwind label %bb.an

.noexc5:                                          ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr190drop_in_place$LT$$LT$actix_web..resource..ResourceFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17h6efeb96db13c6ee7E"(ptr noundef nonnull align 8 dereferenceable(216) %i.j) #53
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.eb, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ef = insertvalue { ptr, ptr } poison, ptr %i.eb, 0
  %i.eg = insertvalue { ptr, ptr } %i.ef, ptr @122, 1
  ret { ptr, ptr } %i.eg

.body:                                            ; preds = %bb.an, %bb.aq
  %eh.lpad-body10 = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.aq ], [ %i.ed, %bb.an ]
  resume { ptr, i32 } %eh.lpad-body10

bb.aq:                                            ; preds = %bb.d, %bb.g, %.body.i.i.i.i.i.i.i, %bb.z, %.body.i.i.i.i.i.i20.i, %bb.ai, %bb.ak
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.dh, %.body.i.i.i.i.i.i20.i ], [ %i.cl, %bb.z ], [ %i.ac, %bb.d ], [ %i.ak, %bb.g ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.dx, %bb.ak ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  invoke fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %i.r, ptr nonnull %i.s) #53
          to label %.body unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN128_$LT$actix_web..resource..ResourceFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$11new_service28_$u7b$$u7b$closure$u7d$$u7d$17h7931c5c4d8711ce7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [1 x i8], align 1                 ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 16               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.10.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !range !49, !noundef !24
  switch i8 %i.q, label %default.unreachable222 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %._crit_edge
    i8 4, label %bb.o
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val24.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert179 = getelementptr i8, ptr %1, i64 120
  %.val25.pre = load ptr, ptr %.phi.trans.insert179, align 8
  br label %bb.e

default.unreachable222:                           ; preds = %bb.bq, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 1, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !24, !align !34, !noundef !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !24, !align !35, !noundef !24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.v, ptr %i.x, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #52
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #52
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.val25 = phi ptr [ %.val25.pre, %._crit_edge ], [ %i.v, %bb.b ]
  %.val24 = phi ptr [ %.val24.pre, %._crit_edge ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.z = getelementptr i8, ptr %1, i64 120        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val25, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !24, !noalias !1968, !nonnull !24
  invoke void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 %.val24, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit" unwind label %bb.f, !inline_history !3

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val = load ptr, ptr %i.y, align 8
  %.val21 = load ptr, ptr %i.z, align 8, !nonnull !24, !align !35, !noundef !24
  invoke fastcc void @"_ZN4core3ptr615drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$u2b$Response$u20$$u3d$$u20$actix_web..service..ServiceResponse$u2b$Future$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$u2b$Error$u20$$u3d$$u20$actix_web..error..error..Error$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$17h72fd071733a38226E"(ptr %.val, ptr nonnull %.val21) #53
          to label %.body unwind label %bb.n

"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit": ; preds = %bb.e
  %i.ad = load i64, ptr %i.o, align 8, !range !37, !noundef !24
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

common.ret:                                       ; preds = %bb.dd, %bb.cm, %bb.g
  %.sink = phi i8 [ 1, %bb.dd ], [ 4, %bb.cm ], [ 3, %bb.g ]
  store i8 %.sink, ptr %i.p, align 8
  ret void

bb.g:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.h:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h5e5968b96360c138E.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !align !34, !noundef !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val22 = load ptr, ptr %i.y, align 8           ; 5 uses
  %.val23 = load ptr, ptr %i.z, align 8, !nonnull !24, !align !35, !noundef !24 ; 5 uses
  %i.aj = load ptr, ptr %.val23, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  invoke void %i.aj(ptr noundef nonnull %.val22)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.ao = icmp ult i64 %i.an, -9223372036854775807
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.al, 0
  br i1 %i.ap, label %bb.l, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.j
end_hunk_2
begin_hunk_3_@"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8adce8eeddf122d2E":bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr369drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he7c875a88f064da4E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr369drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he7c875a88f064da4E.exit2"

"_ZN4core3ptr369drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he7c875a88f064da4E.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr369drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..route..RouteService$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17he7c875a88f064da4E.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hae3afb1687e67f58E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr342drop_in_place$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h9d1809fa5b7100eeE"(ptr noundef nonnull align 8 %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit2"

"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr394drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..task..Task$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..app_service..AppRoutingFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hee889eb748e6ee20E.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he02237ce4a97880cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr356drop_in_place$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h58a7722a3f8c9fcbE"(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit2", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit2"

"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit2": ; preds = %bb.e, %bb.f, %bb.g
  ret void

"_ZN4core3ptr408drop_in_place$LT$alloc..sync..Weak$LT$futures_util..stream..futures_unordered..ready_to_run_queue..ReadyToRunQueue$LT$futures_util..stream..futures_ordered..OrderWrapper$LT$$LT$actix_web..scope..ScopeFactory$u20$as$u20$actix_service..ServiceFactory$LT$actix_web..service..ServiceRequest$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hcc1afc5fa0e6ed63E.exit": ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17hf0271141338a9c98E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7865)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i16, ptr %i.a, align 8, !alias.scope !7865, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i16, ptr %i.c, align 8, !alias.scope !7864, !noundef !24 ; 2 uses
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7868)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !30, !alias.scope !7869, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !7869 ; 2 uses
  %.val7.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !7869, !nonnull !24
  %.sroa.0.0.i.i.i = select i1 %i.h, ptr %.val.i.i.i, ptr %.val7.i.i.i ; 8 uses
  %.val8.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !7869
  %.val9.cast.i.i.i = ptrtoint ptr %.val.i.i.i to i64
  %.sroa.5.0.i.i.i = select i1 %i.h, i64 %.val8.i.i.i, i64 %.val9.cast.i.i.i ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !7869, !noundef !24 ; 7 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp ult i64 %i.m, %.sroa.5.0.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.c
  %i.o = icmp eq i64 %i.m, %.sroa.5.0.i.i.i
  br i1 %i.o, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.m
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !7870, !noalias !7871, !noundef !24
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.5.0.i.i.i, i64 noundef 0, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #52, !noalias !7871
  unreachable

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i: ; preds = %bb.d, %.split.i.i.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !30, !alias.scope !7873, !noundef !24
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i50.i.i = load ptr, ptr %i.v, align 8, !alias.scope !7873 ; 2 uses
  %.val7.i51.i.i = load ptr, ptr %i.x, align 8, !alias.scope !7873, !nonnull !24
  %.sroa.0.0.i52.i.i = select i1 %i.u, ptr %.val.i50.i.i, ptr %.val7.i51.i.i ; 8 uses
  %.val8.i53.i.i = load i64, ptr %i.w, align 8, !alias.scope !7873
  %.val9.cast.i54.i.i = ptrtoint ptr %.val.i50.i.i to i64
  %.sroa.5.0.i55.i.i = select i1 %i.u, i64 %.val8.i53.i.i, i64 %.val9.cast.i54.i.i ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !7873, !noundef !24 ; 7 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i
  %.not.i.i56.i.i = icmp ult i64 %i.z, %.sroa.5.0.i55.i.i
  br i1 %.not.i.i56.i.i, label %bb.g, label %.split.i.i57.i.i

.split.i.i57.i.i:                                 ; preds = %bb.f
  %i.ab = icmp eq i64 %i.z, %.sroa.5.0.i55.i.i
  br i1 %i.ab, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52.i.i, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !7874, !noalias !7875, !noundef !24
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i.i57.i.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i52.i.i, i64 noundef %.sroa.5.0.i55.i.i, i64 noundef 0, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #52, !noalias !7875
  unreachable

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i: ; preds = %bb.g, %.split.i.i57.i.i, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i), "nonnull"(ptr %.sroa.0.0.i52.i.i) ]
  %.not33.i.i = icmp eq i64 %i.m, 1
  br i1 %.not33.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i
  %lhsc.i.i = load i8, ptr %.sroa.0.0.i.i.i, align 1, !noalias !7876
  %i.af = icmp eq i8 %lhsc.i.i, 42
  br i1 %i.af, label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit58.i.i
  %.not36.i.i = icmp eq i64 %i.z, 1
  br i1 %.not36.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %lhsc37.i.i = load i8, ptr %.sroa.0.0.i52.i.i, align 1, !noalias !7876
  %i.ag = icmp eq i8 %lhsc37.i.i, 42
  br i1 %i.ag, label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit", label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7877)
  %i.ah = load i64, ptr %0, align 8, !range !37, !alias.scope !7878, !noundef !24
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !alias.scope !7878, !noundef !24 ; 3 uses
  %i.al = icmp ne i64 %i.ak, -9223372036854775807
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %i.ak, -9223372036854775808
  %i.an = icmp slt i64 %i.ak, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 1
  switch i64 %i.ao, label %bb.n [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i"
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i"

bb.p:                                             ; preds = %bb.m
  %.sroa.02.0.in.v.i.i.i.i = select i1 %i.h, i64 72, i64 64
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i"

"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i": ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.sink.i.sink.i.i.i = phi i64 [ 8, %bb.l ], [ %.sroa.02.0.in.v.i.i.i.i, %bb.p ], [ 40, %bb.o ], [ 24, %bb.m ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i.sink.i.i.i
  %.sroa.0.0.i59.i.i = load i64, ptr %i.ap, align 8, !alias.scope !7878 ; 7 uses
  %i.aq = add i64 %i.m, 1                         ; 8 uses
  %.not.i.i62.i.i = icmp ugt i64 %i.aq, %.sroa.0.0.i59.i.i
  br i1 %.not.i.i62.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i"
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not5.i.i.i.i = icmp ult i64 %i.aq, %.sroa.5.0.i.i.i
  br i1 %.not5.i.i.i.i, label %bb.t, label %.split.i.i63.i.i

bb.s:                                             ; preds = %bb.t, %.split.i.i63.i.i, %bb.q
  %i.as = icmp eq i64 %.sroa.0.0.i59.i.i, 0
  br i1 %i.as, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i, label %bb.u

.split.i.i63.i.i:                                 ; preds = %bb.r
  %i.at = icmp eq i64 %i.aq, %.sroa.5.0.i.i.i
  br i1 %i.at, label %bb.s, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !7879, !noalias !7880, !noundef !24
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %bb.s, label %bb.w

bb.u:                                             ; preds = %bb.s
  %.not6.i.i.i.i = icmp ult i64 %.sroa.0.0.i59.i.i, %.sroa.5.0.i.i.i
  br i1 %.not6.i.i.i.i, label %bb.v, label %.split7.i.i.i.i

.split7.i.i.i.i:                                  ; preds = %bb.u
  %i.ax = icmp eq i64 %.sroa.0.0.i59.i.i, %.sroa.5.0.i.i.i
  br i1 %i.ax, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %.sroa.0.0.i59.i.i
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !7879, !noalias !7880, !noundef !24
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.split7.i.i.i.i, %bb.t, %.split.i.i63.i.i, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i.i.i"
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.5.0.i.i.i, i64 noundef %i.aq, i64 noundef %.sroa.0.0.i59.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #52, !noalias !7880
  unreachable

_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i: ; preds = %bb.v, %.split7.i.i.i.i, %bb.s
  %i.bb = sub nuw i64 %.sroa.0.0.i59.i.i, %i.aq
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7881)
  %i.bd = load i64, ptr %1, align 8, !range !37, !alias.scope !7882, !noundef !24
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !23, !alias.scope !7882, !noundef !24 ; 3 uses
  %i.bh = icmp ne i64 %i.bg, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = xor i64 %i.bg, -9223372036854775808
  %i.bj = icmp slt i64 %i.bg, 0
  %i.bk = select i1 %i.bj, i64 %i.bi, i64 1
  switch i64 %i.bk, label %bb.y [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i"
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i"

bb.aa:                                            ; preds = %bb.x
  %.sroa.02.0.in.v.i.i64.i.i = select i1 %i.u, i64 72, i64 64
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i"

"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i": ; preds = %bb.aa, %bb.z, %bb.x, %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i
  %.sink.i.sink.i66.i.i = phi i64 [ 8, %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit.i.i ], [ %.sroa.02.0.in.v.i.i64.i.i, %bb.aa ], [ 40, %bb.z ], [ 24, %bb.x ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i.sink.i66.i.i
  %.sroa.0.0.i67.i.i = load i64, ptr %i.bl, align 8, !alias.scope !7882 ; 7 uses
  %i.bm = add i64 %i.z, 1                         ; 8 uses
  %.not.i.i74.i.i = icmp ugt i64 %i.bm, %.sroa.0.0.i67.i.i
  br i1 %.not.i.i74.i.i, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i"
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not5.i.i75.i.i = icmp ult i64 %i.bm, %.sroa.5.0.i55.i.i
  br i1 %.not5.i.i75.i.i, label %bb.ae, label %.split.i.i76.i.i

bb.ad:                                            ; preds = %bb.ae, %.split.i.i76.i.i, %bb.ab
  %i.bo = icmp eq i64 %.sroa.0.0.i67.i.i, 0
  br i1 %i.bo, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i, label %bb.af

.split.i.i76.i.i:                                 ; preds = %bb.ac
  %i.bp = icmp eq i64 %i.bm, %.sroa.5.0.i55.i.i
  br i1 %i.bp, label %bb.ad, label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52.i.i, i64 %i.bm
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !7883, !noalias !7884, !noundef !24
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %bb.ad, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %.not6.i.i77.i.i = icmp ult i64 %.sroa.0.0.i67.i.i, %.sroa.5.0.i55.i.i
  br i1 %.not6.i.i77.i.i, label %bb.ag, label %.split7.i.i78.i.i

.split7.i.i78.i.i:                                ; preds = %bb.af
  %i.bt = icmp eq i64 %.sroa.0.0.i67.i.i, %.sroa.5.0.i55.i.i
  br i1 %i.bt, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52.i.i, i64 %.sroa.0.0.i67.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !7883, !noalias !7884, !noundef !24
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split7.i.i78.i.i, %bb.ae, %.split.i.i76.i.i, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i65.i.i"
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i52.i.i, i64 noundef %.sroa.5.0.i55.i.i, i64 noundef %i.bm, i64 noundef %.sroa.0.0.i67.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @319) #52, !noalias !7884
  unreachable

_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i: ; preds = %bb.ag, %.split7.i.i78.i.i, %bb.ad
  %i.bx = sub nuw i64 %.sroa.0.0.i67.i.i, %i.bm   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52.i.i, i64 %i.bm
  %.not39.i.i = icmp eq i64 %i.bb, 1
  br i1 %.not39.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i
  %lhsc40.i.i = load i8, ptr %i.bc, align 1, !noalias !7876
  %i.bz = icmp ne i8 %lhsc40.i.i, 42
  %.not45.i.i = icmp eq i64 %i.bx, 1
  %or.cond = select i1 %i.bz, i1 %.not45.i.i, i1 false
  br i1 %or.cond, label %bb.ak, label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit"

bb.aj:                                            ; preds = %_ZN4mime4Mime7subtype17h66000d2dc16dc161E.exit79.i.i
  %.not45.i.i.old = icmp eq i64 %i.bx, 1
  br i1 %.not45.i.i.old, label %bb.ak, label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit"

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %lhsc46.i.i = load i8, ptr %i.by, align 1, !noalias !7876
  %i.ca = icmp eq i8 %lhsc46.i.i, 42
  br label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit"

bb.al:                                            ; preds = %bb.a
  %i.cb = icmp ult i16 %i.b, %i.d
  br label %"_ZN9actix_web4http6header6accept6Accept6ranked28_$u7b$$u7b$closure$u7d$$u7d$17hb6e482d3f8931140E.exit"
end_hunk_3
begin_hunk_4_@_ZN5tokio7runtime4task3raw4poll17hb94333a311761a13E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8073
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !8072, !noalias !8069 ; 2 uses
  store i64 3, ptr %i.u, align 8, !alias.scope !8072, !noalias !8069
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !32

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !8073
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !8074
  %i.v = invoke { i1, i8 } @_ZN5tokio4task4coop4stop17hd60a20175441dfa4E()
          to label %bb.f unwind label %bb.l, !noalias !8073 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #52
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.o, !noalias !8069

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !8073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8076
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !8074
  invoke void @_ZN10actix_http8encoding7decoder14ContentDecoder9feed_data17h73412a47fd435263E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.g, !noalias !8077

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %.val12.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !41, !alias.scope !8075, !noalias !8073, !noundef !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val13.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !8075, !noalias !8073
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..encoding..decoder..ContentDecoder$GT$17h73bc997102b9d15bE"(i64 %.val12.i.i.i.i.i.i.i.i.i.i, ptr %.val13.i.i.i.i.i.i.i.i.i.i) #53
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !8077

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8076
  %i.z = load i64, ptr %i.f, align 8, !range !37, !noalias !8076, !noundef !24
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !8076 ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8076
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !41, !alias.scope !8075, !noalias !8073, !noundef !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val11.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !8075, !noalias !8073
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..encoding..decoder..ContentDecoder$GT$17h73bc997102b9d15bE"(i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val11.i.i.i.i.i.i.i.i.i.i)
          to label %bb.q unwind label %bb.o, !noalias !8069

bb.j:                                             ; preds = %bb.h
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !8078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8076
  %i.ae = load i64, ptr %i.g, align 8, !range !41, !alias.scope !8075, !noalias !8073, !noundef !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !8075, !noalias !8073, !noundef !24
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8077
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr379drop_in_place$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$17h2c6e217b65d76e4bE"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #53
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !8073

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8073
  unreachable

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8069
  store ptr @378, ptr %i.j, align 8, !noalias !8069
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ak, align 8, !noalias !8069
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.al, align 8, !noalias !8069
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8, !noalias !8069
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.an, align 8, !noalias !8069
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #52
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.t, !noalias !8070

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.o, %bb.l, %bb.g
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %i.x, %bb.g ], [ %i.ai, %bb.l ]
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.body.i.i.i.i.i.i unwind label %bb.p, !noalias !8069

bb.p:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8069
  unreachable

bb.q:                                             ; preds = %bb.j, %bb.i
  %.sroa.8.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ undef, %bb.i ] ; 2 uses
  %.sroa.14.0.copyload.i.i.i = phi i64 [ %i.ae, %bb.j ], [ 3, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8073
  store ptr %i.ac, ptr %i.l, align 8, !alias.scope !8079, !noalias !8067
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !8080
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.14.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !8079, !noalias !8067
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %.sroa.8.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !8079, !noalias !8067
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8073
  %i.aq = ptrtoint ptr %.sroa.8.0.i.i.i.i.i.i.i.i.i to i64
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.t, !noalias !8070

.noexc2.i.i.i.i.i.i:                              ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8067
  store i32 2, ptr %i.k, align 8, !noalias !8067
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h39c34244bedb1e74E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.k)
          to label %bb.w unwind label %bb.r, !noalias !8067

bb.r:                                             ; preds = %.noexc2.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr206drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$$LP$core..option..Option$LT$bytes..bytes..Bytes$GT$$C$actix_http..encoding..decoder..ContentDecoder$RP$$C$std..io..error..Error$GT$$GT$$GT$17h56f1d2ed1383ebe5E"(ptr noalias noundef align 8 dereferenceable(48) %i.l) #53
          to label %.body.i.i.i.i.i.i unwind label %bb.s, !noalias !8067

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8067
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.n, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.t, %bb.r, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8070
  store i32 2, ptr %i.d, align 8, !noalias !8070
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h39c34244bedb1e74E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d)
          to label %.body.i.i.i unwind label %bb.u, !noalias !8070

bb.u:                                             ; preds = %.body.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8070
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8070
  %i.av = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.aw = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.av)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %.body.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #54
  unreachable

bb.w:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8067
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ay = load <2 x i64>, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8067
  br label %bb.y

bb.x:                                             ; preds = %.body.i.i.i
  %i.az = extractvalue { ptr, ptr } %i.aw, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.aw, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az), "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !range !40, !noundef !24
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = inttoptr i64 %i.bc to ptr
  %i.bf = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.bd, i64 0
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.013.sroa.7.0.i.i.i = phi ptr [ %i.az, %bb.x ], [ %.sroa.9.0.copyload.i.i.i, %bb.w ]
  %.sroa.013.sroa.0.0.i.i.i = phi ptr [ %i.be, %bb.x ], [ %i.ac, %bb.w ]
  %.sroa.8.0.i.i.i = phi i64 [ undef, %bb.x ], [ %i.aq, %bb.w ]
  %.sroa.714.0.i.i.i = phi i64 [ 4, %bb.x ], [ %.sroa.14.0.copyload.i.i.i, %bb.w ]
  %i.bg = phi <2 x i64> [ %i.bf, %bb.x ], [ %i.ay, %bb.w ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8081
  store ptr %.sroa.013.sroa.0.0.i.i.i, ptr %i.bh, align 8
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.013.sroa.7.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8
  %.sroa.11.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i64> %i.bg, ptr %.sroa.11.8..sroa_idx.i.i.i, align 8
  %.sroa.12.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.714.0.i.i.i, ptr %.sroa.12.8..sroa_idx.i.i.i, align 8
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.8.0.i.i.i, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.c, align 8, !noalias !8081
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h39c34244bedb1e74E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c)
          to label %.thread.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bj)
          to label %bb.ab unwind label %bb.aa     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #54
  unreachable

.thread.i.i.i:                                    ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8081
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.bm = extractvalue { ptr, ptr } %i.bk, 0      ; 4 uses
  %i.bn = extractvalue { ptr, ptr } %i.bk, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void %i.bo(ptr noundef nonnull %i.bm)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, -9223372036854775807
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %bb.al, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.ae
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %i.bs) #46
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, -9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bx, 0
  br i1 %i.cb, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #46
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.am, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.af
  %common.resume.op.i = phi { ptr, i32 } [ %i.ck, %bb.am ], [ %i.bv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.bv, %bb.af ]
  resume { ptr, i32 } %common.resume.op.i

bb.ag:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h39c34244bedb1e74E"(ptr noundef nonnull align 8 %i.cc, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ce)
          to label %bb.ak unwind label %bb.ai     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #54
  unreachable

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h9a63b2cb9d0c7ec5E.exit.i.i

bb.ak:                                            ; preds = %bb.ah
  %i.ch = extractvalue { ptr, ptr } %i.cf, 0
  %i.ci = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h9a63b2cb9d0c7ec5E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h9a63b2cb9d0c7ec5E.exit.i.i: ; preds = %bb.ak, %bb.aj
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.aj ], [ %i.ci, %bb.ak ]
  %.sroa.64.0.i.i.i = phi ptr [ null, %bb.aj ], [ %i.ch, %bb.ak ]
  %.sroa.03.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.03.0.i.i.i = load i64, ptr %.sroa.03.0.in.i.i.i, align 8, !range !40, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.03.0.i.i.i, ptr %i.cj, align 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.64.0.i.i.i, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.01.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.01.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 4, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h39c34244bedb1e74E"(ptr noundef nonnull align 8 %i.cc, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.al:                                            ; preds = %_ZN5tokio7runtime4task7harness11cancel_task17h9a63b2cb9d0c7ec5E.exit.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.ae, %bb.ab, %.thread.i.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h4c6752b27962f949E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h31f267a00e7942d9E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hd3db5f7b321cfcc6E.exit.i": ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr526drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17ha4051e4dbdae0e1cE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit.i" unwind label %bb.am

bb.am:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hd3db5f7b321cfcc6E.exit.i"
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  br label %common.resume.i

"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hd3db5f7b321cfcc6E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h31f267a00e7942d9E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h31f267a00e7942d9E.exit": ; preds = %bb.a, %bb.al, %"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw7dealloc17h34e58b32a3b04f14E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr526drop_in_place$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17ha4051e4dbdae0e1cE"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  resume { ptr, i32 } %i.a

"_ZN4core3ptr551drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$actix_http..encoding..decoder..Decoder$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$u20$as$u20$futures_core..stream..Stream$GT$..poll_next..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$$GT$17hbdca954bf396339eE.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #46
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw8schedule17h0fd99ae2d6e0f9eeE(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !align !35, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  tail call void @"_ZN103_$LT$tokio..runtime..blocking..schedule..BlockingSchedule$u20$as$u20$tokio..runtime..task..Schedule$GT$8schedule17hc1e7b37771adfe3fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw8shutdown17h6afa10538a9a0a21E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
end_hunk_4
begin_hunk_5_@"_ZN84_$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$5check17h246fa170f6f97877E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6138.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7133.0..sroa_idx, i64 80, i1 false)
  store i64 %.sroa.0131.0.copyload, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8979)
  %i.iy = load i8, ptr %i.im, align 8, !range !30, !alias.scope !8979, !noundef !24 ; 3 uses
  %i.iz = trunc nuw i8 %i.iy to i1                ; 3 uses
  %.val.i37 = load ptr, ptr %i.in, align 8, !alias.scope !8979 ; 4 uses
  %.val7.i38 = load ptr, ptr %i.ip, align 8, !alias.scope !8979 ; 4 uses
  %.sroa.0.0.i39 = select i1 %i.iz, ptr %.val.i37, ptr %.val7.i38 ; 10 uses
  %.val8.i40 = load i64, ptr %i.io, align 8, !alias.scope !8979
  %.val9.cast.i41 = ptrtoint ptr %.val.i37 to i64
  %.sroa.5.0.i42 = select i1 %i.iz, i64 %.val8.i40, i64 %.val9.cast.i41 ; 7 uses
  %i.ja = load i64, ptr %i.iq, align 8, !alias.scope !8979, !noundef !24 ; 9 uses
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = ptrtoint ptr %.val7.i38 to i64          ; 2 uses
  br i1 %i.jb, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i43 = icmp ult i64 %i.ja, %.sroa.5.0.i42
  br i1 %.not.i.i43, label %bb.bc, label %.split.i.i44

.split.i.i44:                                     ; preds = %bb.bb
  %i.jd = icmp eq i64 %i.ja, %.sroa.5.0.i42
  br i1 %i.jd, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46, label %.invoke

bb.bc:                                            ; preds = %bb.bb
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 %i.ja
  %i.jf = load i8, ptr %i.je, align 1, !alias.scope !8980, !noalias !8981, !noundef !24
  %i.jg = icmp sgt i8 %i.jf, -65
  br i1 %i.jg, label %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46, label %.invoke

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit", %bb.az
  %i.jh = phi ptr [ %.sroa.4110.0.copyload, %bb.az ], [ %i.ix, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit" ] ; 3 uses
  %i.ji = ptrtoint ptr %i.ik to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub nuw i64 %i.ji, %i.jj
  %i.jl = udiv exact i64 %i.jk, 96
  call void @llvm.experimental.noalias.scope.decl(metadata !8982)
  %i.jm = icmp eq ptr %i.ik, %i.jh
  br i1 %i.jm, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit.thread", %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.jo, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit.thread" ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [96 x i8], ptr %i.jh, i64 %.sroa.0.07.i.i.i.i ; 5 uses
  %i.jo = add nuw i64 %.sroa.0.07.i.i.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8983)
  call void @llvm.experimental.noalias.scope.decl(metadata !8984)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !8985)
  %i.jq = load i8, ptr %i.jp, align 8, !range !30, !alias.scope !8986, !noalias !8987, !noundef !24
  %i.jr = icmp eq i8 %i.jq, 0
  br i1 %i.jr, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i", label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !8988)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.js, align 8, !alias.scope !8989, !noalias !8987 ; 2 uses
  %i.jt = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.jt, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ju, align 8, !alias.scope !8989, !noalias !8987, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8990
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i": ; preds = %bb.be, %bb.bd, %.lr.ph.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.jv, align 8, !range !23, !alias.scope !8991, !noalias !8987, !noundef !24 ; 3 uses
  %i.jw = icmp ne i64 %.val.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.jw)
  %or.cond.i4.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i", label %bb.bf

bb.bf:                                            ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.jx, align 8, !alias.scope !8991, !noalias !8987, !nonnull !24, !noundef !24
  %i.jy = shl nuw i64 %.val.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.jy, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !8992
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i": ; preds = %bb.bf, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i"
  %i.jz = icmp eq i64 %i.jo, %i.jl
  br i1 %i.jz, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i": ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit.thread"
  %i.ka = icmp eq i64 %.sroa.0.0.copyload1112.i, 0
  br i1 %i.ka, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit", label %bb.bg

bb.bg:                                            ; preds = %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i"
  %i.kb = mul nuw i64 %.sroa.0.0.copyload1112.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4110.0.copyload, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !8987
  br label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit": ; preds = %bb.bg, %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ao, %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95", %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit"
  %.sroa.0.0 = phi i1 [ false, %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit" ], [ false, %bb.ao ], [ true, %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %.sroa.0.0

bb.bi:                                            ; preds = %.invoke
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE"(ptr noalias noundef align 8 dereferenceable(88) %i.f) #53
  call fastcc void @"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #53
  br label %common.resume

_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46:   ; preds = %bb.bc, %.split.i.i44, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !8993)
  %i.kd = trunc nuw i64 %.sroa.0131.0.copyload to i1
  br i1 %i.kd, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49", label %bb.bj

bb.bj:                                            ; preds = %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46
  %i.ke = load i64, ptr %i.ir, align 8, !range !23, !alias.scope !8993, !noundef !24 ; 3 uses
  %i.kf = icmp ne i64 %i.ke, -9223372036854775807
  call void @llvm.assume(i1 %i.kf)
  %i.kg = xor i64 %i.ke, -9223372036854775808
  %i.kh = icmp slt i64 %i.ke, 0
  %i.ki = select i1 %i.kh, i64 %i.kg, i64 1
  switch i64 %i.ki, label %bb.bk [
    i64 0, label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49"
    i64 1, label %bb.bl
    i64 2, label %bb.bm
  ]

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bj
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49"

bb.bm:                                            ; preds = %bb.bj
  %.sroa.02.0.in.v.i.i48 = select i1 %i.iz, i64 72, i64 64
  br label %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49"

"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49": ; preds = %bb.bm, %bb.bl, %bb.bj, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46
  %.sink.i.sink.i50 = phi i64 [ 8, %_ZN4mime4Mime5type_17hc63bd80e89a0eb65E.exit46 ], [ %.sroa.02.0.in.v.i.i48, %bb.bm ], [ 40, %bb.bl ], [ 24, %bb.bj ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink.i.sink.i50
  %.sroa.0.0.i51 = load i64, ptr %i.kj, align 8, !alias.scope !8993 ; 11 uses
  %i.kk = add i64 %i.ja, 1                        ; 12 uses
  %.not.i.i58 = icmp ugt i64 %i.kk, %.sroa.0.0.i51
  br i1 %.not.i.i58, label %.invoke, label %bb.bn

bb.bn:                                            ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49"
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not5.i.i59 = icmp ult i64 %i.kk, %.sroa.5.0.i42
  br i1 %.not5.i.i59, label %bb.bq, label %.split.i.i60

bb.bp:                                            ; preds = %bb.bq, %.split.i.i60, %bb.bn
  %i.km = icmp eq i64 %.sroa.0.0.i51, 0
  br i1 %i.km, label %bb.bt, label %bb.br

.split.i.i60:                                     ; preds = %bb.bo
  %i.kn = icmp eq i64 %i.kk, %.sroa.5.0.i42
  br i1 %i.kn, label %bb.bp, label %.invoke

bb.bq:                                            ; preds = %bb.bo
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 %i.kk
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !8994, !noalias !8995, !noundef !24
  %i.kq = icmp sgt i8 %i.kp, -65
  br i1 %i.kq, label %bb.bp, label %.invoke

bb.br:                                            ; preds = %bb.bp
  %.not6.i.i61 = icmp ult i64 %.sroa.0.0.i51, %.sroa.5.0.i42
  br i1 %.not6.i.i61, label %bb.bs, label %.split7.i.i62

.split7.i.i62:                                    ; preds = %bb.br
  %i.kr = icmp eq i64 %.sroa.0.0.i51, %.sroa.5.0.i42
  br i1 %i.kr, label %bb.bt, label %.invoke

bb.bs:                                            ; preds = %bb.br
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 %.sroa.0.0.i51
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !8994, !noalias !8995, !noundef !24
  %i.ku = icmp sgt i8 %i.kt, -65
  br i1 %i.ku, label %bb.bt, label %.invoke

.invoke:                                          ; preds = %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49", %.split.i.i60, %bb.bq, %.split7.i.i62, %bb.bs, %.split.i.i44, %bb.bc
  %i.kv = phi i64 [ 0, %.split.i.i44 ], [ 0, %bb.bc ], [ %i.kk, %bb.bs ], [ %i.kk, %.split7.i.i62 ], [ %i.kk, %bb.bq ], [ %i.kk, %.split.i.i60 ], [ %i.kk, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49" ]
  %i.kw = phi i64 [ %i.ja, %.split.i.i44 ], [ %i.ja, %bb.bc ], [ %.sroa.0.0.i51, %bb.bs ], [ %.sroa.0.0.i51, %.split7.i.i62 ], [ %.sroa.0.0.i51, %bb.bq ], [ %.sroa.0.0.i51, %.split.i.i60 ], [ %.sroa.0.0.i51, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49" ]
  %i.kx = phi ptr [ @318, %.split.i.i44 ], [ @318, %bb.bc ], [ @319, %bb.bs ], [ @319, %.split7.i.i62 ], [ @319, %bb.bq ], [ @319, %.split.i.i60 ], [ @319, %"_ZN4mime4Mime7subtype28_$u7b$$u7b$closure$u7d$$u7d$17h265b7bf907bc64d6E.exit.i49" ]
  store ptr %i.ix, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i39, i64 noundef %.sroa.5.0.i42, i64 noundef %i.kv, i64 noundef %i.kw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kx) #52
          to label %.cont unwind label %bb.bi

.cont:                                            ; preds = %.invoke
  unreachable

bb.bt:                                            ; preds = %bb.bp, %.split7.i.i62, %bb.bs
  %i.ky = sub nuw i64 %.sroa.0.0.i51, %i.kk       ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i39, i64 %i.kk ; 2 uses
  %.not.i = icmp eq i64 %i.ja, %i.hd              ; 2 uses
  br i1 %.not.i, label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit", label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread"

"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit": ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i), "nonnull"(ptr %.sroa.0.0.i39) ]
  %bcmp.i = call i32 @bcmp(ptr nonnull %.sroa.0.0.i39, ptr nonnull %.sroa.0.0.i, i64 %i.hd), !noalias !8996
  %i.la = icmp eq i32 %bcmp.i, 0
  %.not.i67 = icmp eq i64 %i.ky, %i.ih
  %or.cond = select i1 %i.la, i1 %.not.i67, i1 false
  br i1 %or.cond, label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit69", label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread"

"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread": ; preds = %bb.bt, %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit69", %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit"
  %.not23 = icmp eq i64 %i.ky, 1
  br i1 %.not23, label %bb.bu, label %bb.bv

"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit69": ; preds = %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit"
  %bcmp.i68 = call i32 @bcmp(ptr nonnull %i.kz, ptr nonnull %i.ii, i64 %i.ih), !noalias !8997
  %i.lb = icmp eq i32 %bcmp.i68, 0
  br i1 %i.lb, label %bb.ca, label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread"

bb.bu:                                            ; preds = %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i39) ]
  %lhsc = load i8, ptr %i.kz, align 1
  %i.lc = icmp eq i8 %lhsc, 42
  br i1 %i.lc, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76.thread", %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit.thread", %bb.bz, %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !8998)
  %i.ld = icmp eq i8 %i.iy, 0
  %i.le = icmp eq ptr %.val7.i38, null
  %or.cond380 = select i1 %i.ld, i1 true, i1 %i.le
  br i1 %or.cond380, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i37, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8999
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i": ; preds = %bb.bw, %bb.bv
  %.val.i72 = load i64, ptr %i.ir, align 8, !range !23, !alias.scope !8998, !noundef !24 ; 3 uses
  %i.lf = icmp ne i64 %.val.i72, -9223372036854775807
  call void @llvm.assume(i1 %i.lf)
  %or.cond.i4.i = icmp slt i64 %.val.i72, 1
  br i1 %or.cond.i4.i, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit", label %bb.bx

bb.bx:                                            ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i"
  %.val1.i = load ptr, ptr %i.iv, align 8, !alias.scope !8998, !nonnull !24, !noundef !24
  %i.lg = shl nuw i64 %.val.i72, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.lg, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !8998
  br label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit"

bb.by:                                            ; preds = %bb.bu
  br i1 %.not.i, label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76", label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76.thread"

"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76": ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %bcmp.i75 = call i32 @bcmp(ptr nonnull %.sroa.0.0.i39, ptr nonnull %.sroa.0.0.i, i64 %i.hd), !noalias !9000
  %i.lh = icmp eq i32 %bcmp.i75, 0
  br i1 %i.lh, label %bb.ca, label %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76.thread"

"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76.thread": ; preds = %bb.by, %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76"
  %.not24 = icmp eq i64 %i.ja, 1
  br i1 %.not24, label %bb.bz, label %bb.bv

bb.bz:                                            ; preds = %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76.thread"
  %lhsc25 = load i8, ptr %.sroa.0.0.i39, align 1
  %i.li = icmp eq i8 %lhsc25, 42
  %or.cond8 = select i1 %i.li, i1 %i.iu, i1 false
  br i1 %or.cond8, label %bb.ca, label %bb.bv

bb.ca:                                            ; preds = %bb.bz, %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit76", %"_ZN51_$LT$mime..Name$u20$as$u20$core..cmp..PartialEq$GT$2eq17h560dd0a4122d8a33E.exit69"
  call void @llvm.experimental.noalias.scope.decl(metadata !9001)
  %i.lj = icmp eq i8 %i.iy, 0
  %i.lk = icmp eq ptr %.val7.i38, null
  %or.cond381 = select i1 %i.lj, i1 true, i1 %i.lk
  br i1 %or.cond381, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i37, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9002
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79": ; preds = %bb.cb, %bb.ca
  %.val.i80 = load i64, ptr %i.ir, align 8, !range !23, !alias.scope !9001, !noundef !24 ; 3 uses
  %i.ll = icmp ne i64 %.val.i80, -9223372036854775807
  call void @llvm.assume(i1 %i.ll)
  %or.cond.i4.i81 = icmp slt i64 %.val.i80, 1
  br i1 %or.cond.i4.i81, label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83", label %bb.cc

bb.cc:                                            ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79"
  %.val1.i82 = load ptr, ptr %i.iv, align 8, !alias.scope !9001, !nonnull !24, !noundef !24
  %i.lm = shl nuw i64 %.val.i80, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i82, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9001
  br label %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83"

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit": ; preds = %bb.bx, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ln = icmp eq ptr %i.ix, %i.ik
  br i1 %i.ln, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb94ab6fb3a18761aE.exit"

"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83": ; preds = %bb.cc, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i79"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.lo = ptrtoint ptr %i.ik to i64
  %i.lp = ptrtoint ptr %i.ix to i64
  %i.lq = sub nuw i64 %i.lo, %i.lp
  %i.lr = udiv exact i64 %i.lq, 96
  call void @llvm.experimental.noalias.scope.decl(metadata !9003)
  %i.ls = icmp eq ptr %i.ik, %i.ix
  br i1 %i.ls, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94", label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83", %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93"
  %.sroa.0.07.i.i.i.i86 = phi i64 [ %i.lu, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93" ], [ 0, %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83" ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [96 x i8], ptr %i.ix, i64 %.sroa.0.07.i.i.i.i86 ; 5 uses
  %i.lu = add nuw i64 %.sroa.0.07.i.i.i.i86, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9004)
  call void @llvm.experimental.noalias.scope.decl(metadata !9005)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !9006)
  %i.lw = load i8, ptr %i.lv, align 8, !range !30, !alias.scope !9007, !noalias !9008, !noundef !24
  %i.lx = icmp eq i8 %i.lw, 0
  br i1 %i.lx, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89", label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i85
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !9009)
  %.val.i.i.i.i.i.i.i.i87 = load i64, ptr %i.ly, align 8, !alias.scope !9010, !noalias !9008 ; 2 uses
  %i.lz = icmp eq i64 %.val.i.i.i.i.i.i.i.i87, 0
  br i1 %i.lz, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %.val1.i.i.i.i.i.i.i.i88 = load ptr, ptr %i.ma, align 8, !alias.scope !9010, !noalias !9008, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i88, i64 noundef %.val.i.i.i.i.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !9011
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89": ; preds = %bb.ce, %bb.cd, %.lr.ph.i.i.i.i85
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %.val.i.i.i.i.i.i90 = load i64, ptr %i.mb, align 8, !range !23, !alias.scope !9012, !noalias !9008, !noundef !24 ; 3 uses
  %i.mc = icmp ne i64 %.val.i.i.i.i.i.i90, -9223372036854775807
  call void @llvm.assume(i1 %i.mc)
  %or.cond.i4.i.i.i.i.i.i91 = icmp slt i64 %.val.i.i.i.i.i.i90, 1
  br i1 %or.cond.i4.i.i.i.i.i.i91, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %.val1.i.i.i.i.i.i92 = load ptr, ptr %i.md, align 8, !alias.scope !9012, !noalias !9008, !nonnull !24, !noundef !24
  %i.me = shl nuw i64 %.val.i.i.i.i.i.i90, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i92, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9013
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93": ; preds = %bb.cf, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i89"
  %i.mf = icmp eq i64 %i.lu, %i.lr
  br i1 %i.mf, label %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94", label %.lr.ph.i.i.i.i85

"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i93", %"_ZN4core3ptr31drop_in_place$LT$mime..Mime$GT$17h5477106f377882faE.exit83"
  %i.mg = icmp eq i64 %.sroa.0.0.copyload1112.i, 0
  br i1 %i.mg, label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95", label %bb.cg

bb.cg:                                            ; preds = %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94"
  %i.mh = mul nuw i64 %.sroa.0.0.copyload1112.i, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4110.0.copyload, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9008
  br label %"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95"

"_ZN4core3ptr291drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$$LT$actix_web..guard..acceptable..Acceptable$u20$as$u20$actix_web..guard..Guard$GT$..check..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb4d39b0b1b3c0522E.exit95": ; preds = %bb.cg, %"_ZN4core3ptr102drop_in_place$LT$$u5b$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$u5d$$GT$17h9f8ea579a76b8d94E.exit.i.i.i94"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bh

bb.ch:                                            ; preds = %.invoke382
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #53
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN84_$LT$actix_web..http..header..range..ByteRangeSpec$u20$as$u20$core..fmt..Display$GT$3fmt17h04da0a893025e5b5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 8, !range !41, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.k, label %default.unreachable43 [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit25
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit30
  ]

default.unreachable43:                            ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = load i64, ptr %i.l, align 8, !noundef !24
  store i64 %i.m, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !24
  store i64 %i.o, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_5
begin_hunk_6_@"_ZN97_$LT$actix_web..resource..Resource$LT$T$GT$$u20$as$u20$actix_web..service..HttpServiceFactory$GT$8register28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h76db8110cef7e31bE":bb.a

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @613) #52
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %.val11 = phi ptr [ %.val11.pre, %bb.b ], [ %i.h, %bb.c ]
  %.val10 = phi ptr [ %.val10.pre, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !24, !noalias !9887, !nonnull !24
  invoke void %i.n(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 1 %.val10, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hfad9ef601a15d7b4E.exit" unwind label %bb.g, !inline_history !9874

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %i.k, align 8
  %.val7 = load ptr, ptr %i.l, align 8, !nonnull !24, !align !35, !noundef !24
  invoke fastcc void @"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE"(ptr %.val, ptr nonnull %.val7) #53
          to label %.body unwind label %bb.w

"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hfad9ef601a15d7b4E.exit": ; preds = %bb.f
  %i.p = load i64, ptr %i.c, align 8, !range !69, !noundef !24 ; 3 uses
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.u, %bb.h
  %storemerge = phi i8 [ 1, %bb.u ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.h:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hfad9ef601a15d7b4E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 4, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hfad9ef601a15d7b4E.exit"
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val8 = load ptr, ptr %i.k, align 8            ; 5 uses
  %.val9 = load ptr, ptr %i.l, align 8, !nonnull !24, !align !35, !noundef !24 ; 5 uses
  %i.r = load ptr, ptr %.val9, align 8, !invariant.load !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.r(ptr noundef nonnull %.val8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.w = icmp ult i64 %i.v, -9223372036854775807
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) %i.v) #46
  br label %"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE.exit"

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !39, !invariant.load !24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !40, !invariant.load !24 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, -9223372036854775807
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #46
  br label %.body

"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.k
  %i.af = icmp eq i64 %i.p, 3
  br i1 %i.af, label %bb.v, label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE.exit"
  %.sroa.1422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.1422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  store i64 %i.p, ptr %i.b, align 8
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.1016.0..sroa_idx, align 8
  %.sroa.1219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.5.0.copyload, ptr %.sroa.1219.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !9888)
  call void @llvm.experimental.noalias.scope.decl(metadata !9889)
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.42.0.copyload.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !9890 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9890 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, i64 88, i1 false), !noalias !9892
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.ah = invoke noundef align 8 dereferenceable(64) ptr @"_ZN93_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1ab7d8a40fd2b6adE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.t unwind label %bb.n, !noalias !9893 ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E"(ptr noalias noundef align 8 dereferenceable(8) %i.ag) #53
          to label %bb.q unwind label %bb.o, !noalias !9893

bb.o:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9893
  unreachable

bb.p:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ak)
          to label %.body.i.i.i unwind label %bb.o, !noalias !9893

bb.q:                                             ; preds = %bb.n
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #53
          to label %bb.p unwind label %bb.o, !noalias !9893

.body.i.i.i:                                      ; preds = %bb.p
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$actix_web..error..error..Error$GT$$GT$17hfcad7737ef59bae3E"(ptr %.sroa.42.0.copyload.i.i, ptr %.sroa.6.0.copyload.i.i) #53
          to label %.body.i.i unwind label %bb.r, !noalias !9891

bb.r:                                             ; preds = %.body.i.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9891
  unreachable

.body.i.i:                                        ; preds = %.body.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_web..request..HttpRequest$GT$17h11517464c0ac3d23E"(ptr noalias noundef readonly align 8 dereferenceable(8) %i.am) #53
          to label %.body unwind label %bb.s, !noalias !9894

bb.s:                                             ; preds = %.body.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9895
  unreachable

bb.t:                                             ; preds = %bb.m
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !noalias !9890
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.10.0.copyload = load ptr, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !9890
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.11.0.copyload = load ptr, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !noalias !9890
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.12.0..sroa_idx, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.ag, align 8, !alias.scope !9896, !noalias !9891, !align !35, !noundef !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9891
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !9890, !nonnull !24, !noundef !24
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.9.0 = phi ptr [ undef, %bb.v ], [ %i.ar, %bb.t ]
  %.sroa.8.0 = phi ptr [ undef, %bb.v ], [ %.sroa.6.0.copyload.i.i, %bb.t ]
  %.sroa.732.0 = phi ptr [ undef, %bb.v ], [ %.sroa.42.0.copyload.i.i, %bb.t ]
  %.sroa.531.0 = phi ptr [ undef, %bb.v ], [ %i.ao, %bb.t ]
  %.sroa.4.0 = phi ptr [ %.sroa.5.0.copyload, %bb.v ], [ %.sroa.0.sroa.11.0.copyload, %bb.t ]
  %.sroa.327.0 = phi ptr [ %.sroa.3.0.copyload, %bb.v ], [ %.sroa.0.sroa.10.0.copyload, %bb.t ]
  %.sroa.025.0 = phi i64 [ 3, %bb.v ], [ %.sroa.0.sroa.0.0.copyload, %bb.t ]
  store i64 %.sroa.025.0, ptr %0, align 8
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.327.0, ptr %.sroa.327.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530, i64 16, i1 false)
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.531.0, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.732.0, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %common.ret

bb.v:                                             ; preds = %"_ZN4core3ptr226drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$GT$$GT$$GT$$GT$17h440d6192b52e927cE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.u

bb.w:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$actix_web..response..builder..HttpResponseBuilder$u20$as$u20$core..future..future..Future$GT$4poll17hdfddb1f6e4caabd6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN9actix_web8response7builder19HttpResponseBuilder4body17h3820b846526a4ffdE(ptr noalias noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal noundef range(i16 400, 414) i16 @"_ZN99_$LT$actix_http..error..PayloadError$u20$as$u20$actix_web..error..response_error..ResponseError$GT$11status_code17h14f484db71fbe63eE"(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #24 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !44, !noundef !24 ; 2 uses
  %i.b = icmp ne i8 %i.a, 9
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i8 %i.a, 7
  %. = select i1 %i.c, i16 413, i16 400
  ret i16 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$10poll_ready17h0622520fb2b9ac77E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$10poll_ready17h27eecec05136f3c1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$10poll_ready17h5eade808c04ae4cfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$10poll_ready17hd8d1befef199a327E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #25 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h5cf93face2bc5615E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9906)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !9907
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.b, align 8, !alias.scope !9908
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !9909
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9909 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h32f2289a68299b97E.exit", !prof !31

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #52
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr128drop_in_place$LT$actix_web..resource..Resource..new$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66458b1d383a3b5bE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr128drop_in_place$LT$actix_web..resource..Resource..new$LT$$RF$str$GT$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66458b1d383a3b5bE.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.e

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h32f2289a68299b97E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @616, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h61466435e3a5ffa9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9931)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !9933
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %0, ptr %i.h, align 8, !noalias !9932
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !9931, !noundef !24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9935)
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !9936, !noundef !24 ; 2 uses
  %i.i = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.j, ptr %.val.i, align 8, !noalias !9936
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17he9ecf70cdb3e5242E.exit.i.i, !prof !32

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17he9ecf70cdb3e5242E.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !9933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9938)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9939, !nonnull !24, !noundef !24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !9939, !noundef !24 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.o, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %.sroa.03.017.i.i.i = phi ptr [ %i.r, %bb.f ], [ %i.m, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9940)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9941
  store ptr %i.d, ptr %i.a, align 8, !noalias !9941
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9940, !noalias !9942, !nonnull !24, !noundef !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !9943, !nonnull !24, !noundef !24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noalias !9943, !noundef !24 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i.i
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %"_ZN115_$LT$actix_web..route..RouteService$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h523fb0032ae3878cE.exit.i.i.i", label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %"_ZN115_$LT$actix_web..route..RouteService$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h523fb0032ae3878cE.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.02.04.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.v, %.lr.ph.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.02.04.i.i.i.i, align 8, !noalias !9943, !nonnull !24, !align !34, !noundef !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !9943, !nonnull !24, !align !35, !noundef !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !24, !noalias !9943, !nonnull !24
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 1 %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc.i.i.i unwind label %bb.g, !noalias !9942, !inline_history !48

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  br i1 %i.ah, label %bb.e, label %bb.f

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !9945
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9939, !nonnull !24, !noundef !24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !9939, !nonnull !24, !align !35, !noundef !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !24, !noalias !9942, !nonnull !24
  %i.ao = call { ptr, ptr } %i.an(ptr noundef nonnull align 1 %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !9936, !inline_history !9924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9944
  br label %"_ZN117_$LT$actix_service..apply..Apply$LT$S$C$F$C$Req$C$In$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h0866189fd2668f37E.exit"

bb.f:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9941
  %i.ap = icmp eq ptr %i.r, %i.p
  br i1 %i.ap, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

"_ZN115_$LT$actix_web..route..RouteService$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h523fb0032ae3878cE.exit.i.i.i": ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !9945
  call void @llvm.experimental.noalias.scope.decl(metadata !9946)
  %i.aq = load ptr, ptr %.sroa.03.017.i.i.i, align 8, !alias.scope !9946, !noalias !9942, !nonnull !24, !noundef !24
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !9946, !noalias !9942, !nonnull !24, !align !35, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !24, !noalias !9947, !nonnull !24
  %i.av = call { ptr, ptr } %i.au(ptr noundef nonnull align 1 %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !9936, !inline_history !9924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9944
  br label %"_ZN117_$LT$actix_service..apply..Apply$LT$S$C$F$C$Req$C$In$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h0866189fd2668f37E.exit"

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef align 8 dereferenceable(32) %i.d) #53
          to label %common.resume unwind label %bb.h, !noalias !9942

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9942
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17he9ecf70cdb3e5242E.exit.i.i: ; preds = %bb.b
  invoke void @_ZN9actix_web7service14ServiceRequest18add_data_container17h757798cb5c39ad60E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.i, !noalias !9948

common.resume:                                    ; preds = %bb.l, %bb.g, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.i ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.g ], [ %i.bc, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17he9ecf70cdb3e5242E.exit.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #53
          to label %common.resume unwind label %bb.j, !noalias !9948

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9948
  unreachable

"_ZN117_$LT$actix_service..apply..Apply$LT$S$C$F$C$Req$C$In$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h0866189fd2668f37E.exit": ; preds = %._crit_edge.i.i.i, %"_ZN115_$LT$actix_web..route..RouteService$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h523fb0032ae3878cE.exit.i.i.i"
  %.pn.i.i.i = phi { ptr, ptr } [ %i.ao, %._crit_edge.i.i.i ], [ %i.av, %"_ZN115_$LT$actix_web..route..RouteService$u20$as$u20$actix_service..Service$LT$actix_web..service..ServiceRequest$GT$$GT$4call17h523fb0032ae3878cE.exit.i.i.i" ] ; 2 uses
  %.sroa.0.0.i.i.i = extractvalue { ptr, ptr } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.3.0.i.i.i = extractvalue { ptr, ptr } %.pn.i.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i), "nonnull"(ptr %.sroa.3.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9937
  store ptr %.sroa.0.0.i.i.i, ptr %i.f, align 8, !alias.scope !9949
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.3.0.i.i.i, ptr %i.ay, align 8, !alias.scope !9949
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %i.az, align 8, !alias.scope !9949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9932
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !9950
  %i.ba = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !9950 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ea7157fb04752c3E.exit", !prof !31

bb.k:                                             ; preds = %"_ZN117_$LT$actix_service..apply..Apply$LT$S$C$F$C$Req$C$In$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h0866189fd2668f37E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #52
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr176drop_in_place$LT$$LT$actix_web..resource..Resource$u20$as$u20$actix_web..service..HttpServiceFactory$GT$..register..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h39175416eea16266E"(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #53
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0ea7157fb04752c3E.exit": ; preds = %"_ZN117_$LT$actix_service..apply..Apply$LT$S$C$F$C$Req$C$In$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h0866189fd2668f37E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.be = insertvalue { ptr, ptr } poison, ptr %i.ba, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr @617, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN99_$LT$actix_service..boxed..ServiceWrapper$LT$S$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h62d4bc885c01c06bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.8.i.i = alloca [40 x i8], align 8        ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9978
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !9979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9981
  invoke fastcc void @"_ZN68_$LT$actix_web..redirect..Redirect$u20$as$u20$core..clone..Clone$GT$5clone17h5b67a468e17ededaE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
          to label %bb.b unwind label %bb.p, !noalias !9982

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN91_$LT$actix_web..redirect..Redirect$u20$as$u20$actix_web..response..responder..Responder$GT$10respond_to17hb1e652ead9be7f34E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison)
          to label %bb.c unwind label %bb.p, !noalias !9983

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !9979
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !9984)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 48, i1 false), !noalias !9986
  %i.g = invoke noundef align 8 dereferenceable(64) ptr @"_ZN93_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1ab7d8a40fd2b6adE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.h unwind label %bb.d, !noalias !9987 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hc8d578fce76a4571E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #53
          to label %bb.f unwind label %bb.e, !noalias !9987

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9987
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.j)
          to label %.body.i.i.i unwind label %bb.e, !noalias !9987

.body.i.i.i:                                      ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !9984, !noalias !9981, !align !34, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !9984, !noalias !9981
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$actix_web..error..error..Error$GT$$GT$17hfcad7737ef59bae3E"(ptr %.val.i.i.i, ptr %.val1.i.i.i) #53
          to label %.body.i.i unwind label %bb.g, !noalias !9985

bb.g:                                             ; preds = %.body.i.i.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9985
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !9988, !noalias !9985, !align !35, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !9989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9985
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !9984, !noalias !9981, !align !34, !noundef !24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !9984, !noalias !9981 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9990)
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %"_ZN123_$LT$actix_service..fn_service..FnService$LT$F$C$Fut$C$Req$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h805bea1b81d58379E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.u = load ptr, ptr %i.s, align 8, !invariant.load !24, !noalias !9991 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.u(ptr noundef nonnull %i.q)
          to label %bb.k unwind label %bb.l, !noalias !9991

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !39, !invariant.load !24, !noalias !9991 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !40, !invariant.load !24, !noalias !9991 ; 2 uses
  %i.z = icmp ult i64 %i.y, -9223372036854775807
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %"_ZN123_$LT$actix_service..fn_service..FnService$LT$F$C$Fut$C$Req$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h805bea1b81d58379E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.y) #46, !noalias !9991
  br label %"_ZN123_$LT$actix_service..fn_service..FnService$LT$F$C$Fut$C$Req$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h805bea1b81d58379E.exit"

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !39, !invariant.load !24, !noalias !9991 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !40, !invariant.load !24, !noalias !9991 ; 2 uses
  %i.ag = icmp ult i64 %i.af, -9223372036854775807
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %.body.i4.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.l
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.af) #46, !noalias !9991
  br label %.body.i4.i.i

.body.i4.i.i:                                     ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_web..request..HttpRequest$GT$17h11517464c0ac3d23E"(ptr noalias noundef align 8 dereferenceable(8) %i.ai) #53
          to label %bb.n unwind label %bb.m, !noalias !9992

bb.m:                                             ; preds = %bb.n, %.body.i4.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9992
  unreachable

bb.n:                                             ; preds = %.body.i4.i.i
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2a24f08e635f7441E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53
          to label %common.resume unwind label %bb.m, !noalias !9992

.body.i.i:                                        ; preds = %.body.i.i.i
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #53
          to label %common.resume unwind label %bb.o, !noalias !9981

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !9983
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.n, %.body.i.i, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.al, %bb.p ], [ %i.h, %.body.i.i ], [ %i.aq, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #53
          to label %common.resume unwind label %bb.o, !noalias !9983

"_ZN123_$LT$actix_service..fn_service..FnService$LT$F$C$Fut$C$Req$C$Res$C$Err$GT$$u20$as$u20$actix_service..Service$LT$Req$GT$$GT$4call17h805bea1b81d58379E.exit": ; preds = %bb.h, %bb.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !9990, !noalias !9981, !nonnull !24, !noundef !24
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !9993
  %.sroa.819.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.819.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, i64 40, i1 false), !noalias !9994
end_hunk_6
