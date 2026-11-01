Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.05?download=true
inline.NumInlined: 1337
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal12log_to_drain:bb.a
  %.sroa.0.0.i4 = phi ptr [ %i.j, %bb.c ], [ %i.e, %bb.a ], !dbg !8429 ; 3 uses
  store ptr %.sroa.0.0.i4, ptr %i.a, align 8, !dbg !8430
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4, i64 16, !dbg !8431 ; 7 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8, !dbg !8432 ; 4 uses
  %i.m = and i64 %i.l, 8, !dbg !8433
  %i.n = icmp ne i64 %i.m, 0, !dbg !8433
  %i.o = icmp ugt i64 %i.l, -17
  %or.cond.i = or i1 %i.o, %i.n, !dbg !8433
  br i1 %or.cond.i, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !dbg !8433, !prof !880

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.ak, %bb.i ], [ %i.ak, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8404), !dbg !8434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8405), !dbg !8435
  %i.p = load ptr, ptr %i.a, align 8, !dbg !8436, !alias.scope !8406, !nonnull !494, !noundef !494
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !8437, !noalias !8406
  %i.r = icmp eq i64 %i.q, 1, !dbg !8438
  br i1 %i.r, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !8438

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit
  fence acquire, !dbg !8439
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.m, !dbg !8440

bb.f:                                             ; preds = %bb.k, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %.noexc
  %i.t = add nuw i64 %i.l, 16, !dbg !8441
  %i.u = cmpxchg weak ptr %i.k, i64 %i.l, i64 %i.t acquire monotonic, align 8, !dbg !8442
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.u, 1, !dbg !8443
  br i1 %.sroa.18.0.in.i, label %bb.g, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !dbg !8444, !prof !881

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %.noexc, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.v = invoke noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.k, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.g unwind label %bb.f, !dbg !8445 ; 0 uses

bb.g:                                             ; preds = %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !8446
  %i.x = load ptr, ptr %i.w, align 8, !dbg !8446, !nonnull !494, !noundef !494
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !8446
  %i.z = load ptr, ptr %i.y, align 8, !dbg !8446, !nonnull !494, !align !513, !noundef !494 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !8447
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !8447, !range !591, !invariant.load !494
  %i.ac = add nsw i64 %i.ab, -1, !dbg !8447
  %i.ad = and i64 %i.ac, -16, !dbg !8447
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad, !dbg !8447
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !8447
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i4, i64 40, !dbg !8448
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !8409
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !8409, !invariant.load !494, !nonnull !494
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %bb.j unwind label %bb.h, !dbg !8449

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw add ptr %i.k, i64 -16 release, align 8, !dbg !8450
  %i.am = and i64 %i.al, -14, !dbg !8451
  %i.an = icmp eq i64 %i.am, 18, !dbg !8451
  br i1 %i.an, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit, !dbg !8451, !prof !643

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit unwind label %bb.m, !dbg !8452

bb.j:                                             ; preds = %bb.g
  %i.ao = atomicrmw add ptr %i.k, i64 -16 release, align 8, !dbg !8453
  %i.ap = and i64 %i.ao, -14, !dbg !8454
  %i.aq = icmp eq i64 %i.ap, 18, !dbg !8454
  br i1 %i.aq, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit9, !dbg !8454, !prof !643

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit9 unwind label %bb.f, !dbg !8455

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit9: ; preds = %bb.j, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8413), !dbg !8434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8414), !dbg !8456
  %i.ar = load ptr, ptr %i.a, align 8, !dbg !8457, !alias.scope !8415, !nonnull !494, !noundef !494
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !dbg !8458, !noalias !8415
  %i.at = icmp eq i64 %i.as, 1, !dbg !8459
  br i1 %i.at, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit10, !dbg !8459

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit9
  fence acquire, !dbg !8460
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37, !dbg !8461
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit10, !dbg !8461

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit9, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8434
  ret { ptr, ptr } %i.aj, !dbg !8462

bb.m:                                             ; preds = %bb.i, %bb.e
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !8463
  unreachable, !dbg !8463

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit, %bb.e
  resume { ptr, i32 } %.pn, !dbg !8463
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal6freeze() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8464 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8508
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get(), !dbg !8515 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !8516
  %i.d = tail call noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %i.c), !dbg !8517 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !8518
  br i1 %.not.i, label %bb.b, label %bb.g, !dbg !8519

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !8520 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8520, !nonnull !494, !noundef !494
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8, !dbg !8521
  %i.h = icmp slt i64 %i.g, 0, !dbg !8522
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !8522

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !dbg !8523, !nonnull !494, !noundef !494
  br label %bb.g, !dbg !8524

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !8525
  unreachable, !dbg !8525

bb.e:                                             ; preds = %bb.j, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8505), !dbg !8526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8506), !dbg !8527
  %i.k = load ptr, ptr %i.a, align 8, !dbg !8528, !alias.scope !8507, !nonnull !494, !noundef !494
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !dbg !8529, !noalias !8507
  %i.m = icmp eq i64 %i.l, 1, !dbg !8530
  br i1 %i.m, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !8530

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !8531
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.l, !dbg !8532

bb.g:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.a ], !dbg !8533 ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !dbg !8508
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16, !dbg !8534 ; 4 uses
  %i.o = cmpxchg weak ptr %i.n, i64 0, i64 8 acquire monotonic, align 8, !dbg !8535
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.o, 1, !dbg !8536
  br i1 %.sroa.18.0.in.i, label %bb.i, label %bb.h, !dbg !8537, !prof !614

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.n, i64 undef, i32 noundef -1)
          to label %bb.i unwind label %bb.e, !dbg !8538 ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 60, !dbg !8508
  store i8 1, ptr %i.q, align 4, !dbg !8508
  %i.r = cmpxchg ptr %i.n, i64 8, i64 0 release monotonic, align 8, !dbg !8539
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.r, 1, !dbg !8540
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, label %bb.j, !dbg !8541, !prof !614

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.n, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit unwind label %bb.e, !dbg !8542

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit: ; preds = %bb.i, %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8512), !dbg !8526
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8513), !dbg !8543
  %i.s = load ptr, ptr %i.a, align 8, !dbg !8544, !alias.scope !8514, !nonnull !494, !noundef !494
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !dbg !8545, !noalias !8514
  %i.u = icmp eq i64 %i.t, 1, !dbg !8546
  br i1 %i.u, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2, !dbg !8546

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit
  fence acquire, !dbg !8547
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37, !dbg !8548
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2, !dbg !8548

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8526
  ret void, !dbg !8549

bb.l:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !8550
  unreachable, !dbg !8550

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.j, !dbg !8550
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8fork_log() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8551 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 16               ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !8664
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get(), !dbg !8665 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88, !dbg !8666
  %i.f = tail call noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %i.e), !dbg !8667 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null, !dbg !8668
  br i1 %.not.i, label %bb.b, label %.noexc, !dbg !8669

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !8670 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !8670, !nonnull !494, !noundef !494
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !dbg !8671
  %i.j = icmp slt i64 %i.i, 0, !dbg !8672
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !8672

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !dbg !8673, !nonnull !494, !noundef !494
  br label %.noexc, !dbg !8674

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !8675
  unreachable, !dbg !8675

.noexc:                                           ; preds = %bb.c, %bb.a
  %.sroa.0.0.i7 = phi ptr [ %i.k, %bb.c ], [ %i.f, %bb.a ], !dbg !8676 ; 7 uses
  store ptr %.sroa.0.0.i7, ptr %i.c, align 8, !dbg !8677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8678
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 16, !dbg !8679 ; 5 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8, !dbg !8680 ; 4 uses
  %i.n = and i64 %i.m, 8, !dbg !8681
  %i.o = icmp ne i64 %i.n, 0, !dbg !8681
  %i.p = icmp ugt i64 %i.m, -17
  %or.cond.i = or i1 %i.p, %i.o, !dbg !8681
  br i1 %or.cond.i, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !dbg !8681, !prof !880

.body:                                            ; preds = %bb.n, %bb.r, %bb.f
  %.pn = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.t, %bb.f ], [ %i.au, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8643), !dbg !8682
  call void @llvm.experimental.noalias.scope.decl(metadata !8644), !dbg !8683
  %i.q = load ptr, ptr %i.c, align 8, !dbg !8684, !alias.scope !8645, !nonnull !494, !noundef !494
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !dbg !8685, !noalias !8645
  %i.s = icmp eq i64 %i.r, 1, !dbg !8686
  br i1 %i.s, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !8686

bb.e:                                             ; preds = %.body
  fence acquire, !dbg !8687
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.s, !dbg !8688

bb.f:                                             ; preds = %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %.noexc
  %i.u = add nuw i64 %i.m, 16, !dbg !8689
  %i.v = cmpxchg weak ptr %i.l, i64 %i.m, i64 %i.u acquire monotonic, align 8, !dbg !8690
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.v, 1, !dbg !8691
  br i1 %.sroa.18.0.in.i, label %bb.g, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !dbg !8692, !prof !881

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %.noexc, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.w = invoke noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.l, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.g unwind label %bb.f, !dbg !8693 ; 0 uses

bb.g:                                             ; preds = %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 24, !dbg !8694 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8649), !dbg !8695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8650), !dbg !8695
  %i.y = load ptr, ptr %i.x, align 8, !dbg !8696, !alias.scope !8650, !nonnull !494, !noundef !494
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !8697, !noalias !8656
  %i.aa = icmp slt i64 %i.z, 0, !dbg !8698
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !8698

bb.h:                                             ; preds = %bb.g
  %0 = load <2 x ptr>, ptr %i.x, align 8, !dbg !8699, !alias.scope !8650
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 40, !dbg !8700
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !8700, !alias.scope !8650, !nonnull !494, !noundef !494 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !8701, !noalias !8656
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !8702
  br i1 %i.ae, label %bb.j, label %bb.k, !dbg !8702

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap(), !dbg !8703
  unreachable, !dbg !8703

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.trap(), !dbg !8704
  unreachable, !dbg !8704

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 48, !dbg !8700
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !8705, !alias.scope !8650, !nonnull !494, !align !513, !noundef !494
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 56, !dbg !8706
  %i.ai = load i32, ptr %i.ah, align 8, !dbg !8706, !alias.scope !8650, !noundef !494
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7, i64 60, !dbg !8707
  %i.ak = load i8, ptr %i.aj, align 4, !dbg !8707, !range !515, !alias.scope !8650, !noundef !494
  store <2 x ptr> %0, ptr %i.b, align 16, !dbg !8708, !alias.scope !8649
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !8708
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !8708, !alias.scope !8649
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8708
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8708, !alias.scope !8649
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !8708
  store i32 %i.ai, ptr %i.al, align 16, !dbg !8708, !alias.scope !8649
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !8708 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 4, !dbg !8708, !alias.scope !8649
  %i.an = atomicrmw add ptr %i.l, i64 -16 release, align 8, !dbg !8709
  %i.ao = and i64 %i.an, -14, !dbg !8710
  %i.ap = icmp eq i64 %i.ao, 18, !dbg !8710
  br i1 %i.ap, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit12, !dbg !8710, !prof !643

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit12 unwind label %bb.r, !dbg !8711

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit12: ; preds = %bb.k, %bb.l
  store i8 0, ptr %i.am, align 4, !dbg !8712
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !8713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !8714
  store i64 1, ptr %i.a, align 8, !dbg !8713
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8713
  store i64 1, ptr %i.aq, align 8, !dbg !8713
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8713
  store i64 0, ptr %i.ar, align 8, !dbg !8713
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !8715, !noalias !8660
  %i.as = tail call noundef ptr @_rjem_malloc(i64 noundef range(i64 8, 65) 64) #33, !dbg !8716, !noalias !8660 ; 3 uses
  %i.at = icmp eq ptr %i.as, null, !dbg !8717
  br i1 %i.at, label %bb.m, label %bb.p, !dbg !8718, !prof !643

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit12
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #40
          to label %.noexc13 unwind label %bb.n, !dbg !8719

.noexc13:                                         ; preds = %bb.m
  unreachable, !dbg !8719

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #39
          to label %.body unwind label %bb.o, !dbg !8720

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !8721
  unreachable, !dbg !8721

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !8722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8661), !dbg !8682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8662), !dbg !8725
  %i.aw = load ptr, ptr %i.c, align 8, !dbg !8726, !alias.scope !8663, !nonnull !494, !noundef !494
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !dbg !8727, !noalias !8663
  %i.ay = icmp eq i64 %i.ax, 1, !dbg !8728
  br i1 %i.ay, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit14, !dbg !8728

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !8729
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37, !dbg !8730
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit14, !dbg !8730

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit14: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8682
  ret ptr %i.as, !dbg !8731

bb.r:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #39
          to label %.body unwind label %bb.s, !dbg !8724

bb.s:                                             ; preds = %bb.e, %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !8732
  unreachable, !dbg !8732

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %.pn, !dbg !8732
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8unfreeze() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8733 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8777
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get(), !dbg !8784 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !8785
  %i.d = tail call noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %i.c), !dbg !8786 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !8787
  br i1 %.not.i, label %bb.b, label %bb.g, !dbg !8788

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !8789 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8789, !nonnull !494, !noundef !494
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8, !dbg !8790
  %i.h = icmp slt i64 %i.g, 0, !dbg !8791
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !8791

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !dbg !8792, !nonnull !494, !noundef !494
  br label %bb.g, !dbg !8793

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !8794
  unreachable, !dbg !8794

bb.e:                                             ; preds = %bb.j, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8774), !dbg !8795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8775), !dbg !8796
  %i.k = load ptr, ptr %i.a, align 8, !dbg !8797, !alias.scope !8776, !nonnull !494, !noundef !494
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !dbg !8798, !noalias !8776
  %i.m = icmp eq i64 %i.l, 1, !dbg !8799
  br i1 %i.m, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !8799

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !8800
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.l, !dbg !8801

bb.g:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.a ], !dbg !8802 ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !dbg !8777
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16, !dbg !8803 ; 4 uses
  %i.o = cmpxchg weak ptr %i.n, i64 0, i64 8 acquire monotonic, align 8, !dbg !8804
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.o, 1, !dbg !8805
  br i1 %.sroa.18.0.in.i, label %bb.i, label %bb.h, !dbg !8806, !prof !614

bb.h:                                             ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.n, i64 undef, i32 noundef -1)
          to label %bb.i unwind label %bb.e, !dbg !8807 ; 0 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 60, !dbg !8777
  store i8 0, ptr %i.q, align 4, !dbg !8777
  %i.r = cmpxchg ptr %i.n, i64 8, i64 0 release monotonic, align 8, !dbg !8808
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.r, 1, !dbg !8809
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, label %bb.j, !dbg !8810, !prof !614

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.n, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit unwind label %bb.e, !dbg !8811

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit: ; preds = %bb.i, %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8781), !dbg !8795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8782), !dbg !8812
  %i.s = load ptr, ptr %i.a, align 8, !dbg !8813, !alias.scope !8783, !nonnull !494, !noundef !494
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !dbg !8814, !noalias !8783
  %i.u = icmp eq i64 %i.t, 1, !dbg !8815
  br i1 %i.u, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2, !dbg !8815

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit
  fence acquire, !dbg !8816
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37, !dbg !8817
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2, !dbg !8817

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock16RwLockWriteGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2q_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8795
  ret void, !dbg !8818

bb.l:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !dbg !8819
  unreachable, !dbg !8819

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.j, !dbg !8819
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal9is_frozen() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8820 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8865
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get(), !dbg !8874 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !8875
  %i.d = tail call noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %i.c), !dbg !8876 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !8877
  br i1 %.not.i, label %bb.b, label %.noexc, !dbg !8878

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !8879 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !8879, !nonnull !494, !noundef !494
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8, !dbg !8880
  %i.h = icmp slt i64 %i.g, 0, !dbg !8881
  br i1 %i.h, label %bb.d, label %bb.c, !dbg !8881

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !dbg !8882, !nonnull !494, !noundef !494
  br label %.noexc, !dbg !8883

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !8884
  unreachable, !dbg !8884

.noexc:                                           ; preds = %bb.c, %bb.a
  %.sroa.0.0.i2 = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.a ], !dbg !8885 ; 3 uses
  store ptr %.sroa.0.0.i2, ptr %i.a, align 8, !dbg !8865
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2, i64 16, !dbg !8886 ; 5 uses
  %i.k = load atomic i64, ptr %i.j monotonic, align 8, !dbg !8887 ; 4 uses
  %i.l = and i64 %i.k, 8, !dbg !8888
  %i.m = icmp ne i64 %i.l, 0, !dbg !8888
  %i.n = icmp ugt i64 %i.k, -17
  %or.cond.i = or i1 %i.n, %i.m, !dbg !8888
  br i1 %or.cond.i, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !dbg !8888, !prof !880

bb.e:                                             ; preds = %bb.h, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8868), !dbg !8889
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8869), !dbg !8890
  %i.p = load ptr, ptr %i.a, align 8, !dbg !8891, !alias.scope !8870, !nonnull !494, !noundef !494
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !8892, !noalias !8870
end_hunk_0
begin_hunk_1_@llvm.fshl.v8i32
!8499 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8498)
!8500 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8499)
!8501 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8500)
!8502 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8499)
!8503 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8502)
!8504 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8499)
!8505 = !{!8474}
!8506 = !{!8476}
!8507 = !{!8476, !8474}
!8508 = !DILocation(line: 190, column: 5, scope: !8464)
!8509 = !DILocation(line: 190, column: 19, scope: !8464)
!8510 = !DILocation(line: 492, column: 18, scope: !8486, inlinedAt: !8509)
!8511 = !DILocation(line: 70, column: 14, scope: !8487, inlinedAt: !8510)
!8512 = !{!8495}
!8513 = !{!8497}
!8514 = !{!8497, !8495}
!8515 = !DILocation(line: 158, column: 19, scope: !386, inlinedAt: !8465)
!8516 = !DILocation(line: 159, column: 15, scope: !387, inlinedAt: !8465)
!8517 = !DILocation(line: 159, column: 39, scope: !387, inlinedAt: !8465)
!8518 = !DILocation(line: 1063, column: 15, scope: !388, inlinedAt: !8466)
!8519 = !DILocation(line: 1063, column: 9, scope: !388, inlinedAt: !8466)
!8520 = !DILocation(line: 454, column: 20, scope: !390, inlinedAt: !8470)
!8521 = !DILocation(line: 4033, column: 24, scope: !394, inlinedAt: !8472)
!8522 = !DILocation(line: 2494, column: 12, scope: !396, inlinedAt: !8468)
!8523 = !DILocation(line: 2498, column: 38, scope: !396, inlinedAt: !8468)
!8524 = !DILocation(line: 1065, column: 23, scope: !388, inlinedAt: !8466)
!8525 = !DILocation(line: 2495, column: 13, scope: !396, inlinedAt: !8468)
!8526 = !DILocation(line: 190, column: 40, scope: !8464)
!8527 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8477)
!8528 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8480)
!8529 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8482)
!8530 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8478)
!8531 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8483)
!8532 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8478)
!8533 = !DILocation(line: 0, scope: !388, inlinedAt: !8466)
!8534 = !DILocation(line: 2514, column: 9, scope: !8484, inlinedAt: !8508)
!8535 = !DILocation(line: 4153, column: 17, scope: !260, inlinedAt: !8488)
!8536 = !DILocation(line: 0, scope: !260, inlinedAt: !8488)
!8537 = !DILocation(line: 68, column: 12, scope: !8487, inlinedAt: !8510)
!8538 = !DILocation(line: 73, column: 31, scope: !8487, inlinedAt: !8510)
!8539 = !DILocation(line: 4096, column: 17, scope: !101, inlinedAt: !8493)
!8540 = !DILocation(line: 0, scope: !101, inlinedAt: !8493)
!8541 = !DILocation(line: 96, column: 12, scope: !103, inlinedAt: !8491)
!8542 = !DILocation(line: 103, column: 14, scope: !103, inlinedAt: !8491)
!8543 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8498)
!8544 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8501)
!8545 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8503)
!8546 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8499)
!8547 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8504)
!8548 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8499)
!8549 = !DILocation(line: 191, column: 2, scope: !8464)
!8550 = !DILocation(line: 189, column: 1, scope: !8464)
!8551 = distinct !DISubprogram(name: "fork_log", linkageName: "_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8fork_log", scope: !842, file: !840, line: 164, type: !495, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8552 = distinct !DILocation(line: 165, column: 18, scope: !8551)
!8553 = distinct !DILocation(line: 161, column: 9, scope: !389, inlinedAt: !8552)
!8554 = distinct !DILocation(line: 1065, column: 21, scope: !388, inlinedAt: !8553)
!8555 = distinct !DILocation(line: 161, column: 27, scope: !393, inlinedAt: !8554)
!8556 = distinct !DILocation(line: 2477, column: 29, scope: !392, inlinedAt: !8555)
!8557 = distinct !DILocation(line: 2193, column: 27, scope: !391, inlinedAt: !8556)
!8558 = distinct !DILocation(line: 2477, column: 44, scope: !392, inlinedAt: !8555)
!8559 = distinct !DILocation(line: 3224, column: 26, scope: !395, inlinedAt: !8558)
!8560 = distinct !DILexicalBlock(scope: !8551, file: !840, line: 165, column: 5)
!8561 = distinct !DISubprogram(name: "deref<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB2k_", scope: !815, file: !563, line: 2513, type: !495, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8562 = distinct !DISubprogram(name: "lock_shared", linkageName: "_RNvXNtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs7hp7eIiX3bT_8lock_api6rwlock9RawRwLock11lock_shared", scope: !609, file: !606, line: 107, type: !495, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8563 = distinct !DISubprogram(name: "read<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>", linkageName: "_RNvMs2_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingE4readB1M_", scope: !714, file: !610, line: 457, type: !495, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8564 = distinct !DILocation(line: 108, column: 18, scope: !8562, inlinedAt: !8642)
!8565 = distinct !DILocation(line: 509, column: 32, scope: !377, inlinedAt: !8564)
!8566 = distinct !DILocation(line: 2920, column: 26, scope: !376, inlinedAt: !8565)
!8567 = distinct !{!8567, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8568 = distinct !{!8568, !8567, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8569 = distinct !{!8569, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8570 = distinct !{!8570, !8569, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8571 = distinct !DILocation(line: 172, column: 1, scope: !8551)
!8572 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8571)
!8573 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8572)
!8574 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8573)
!8575 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8572)
!8576 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8575)
!8577 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8572)
!8578 = distinct !DILocation(line: 529, column: 47, scope: !380, inlinedAt: !8564)
!8579 = distinct !DILocation(line: 531, column: 18, scope: !380, inlinedAt: !8564)
!8580 = distinct !DILocation(line: 3190, column: 21, scope: !381, inlinedAt: !8579)
!8581 = distinct !DISubprogram(name: "get<foundations::telemetry::log::internal::LoggerWithKvNestingTracking>", linkageName: "_RNvMsX_NtCs3oUPovFnLWP_4core4cellINtB5_10UnsafeCellNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingE3getBV_", scope: !791, file: !789, line: 2434, type: !495, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8582 = distinct !DISubprogram(name: "deref<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>", linkageName: "_RNvXsf_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1W_", scope: !892, file: !610, line: 1427, type: !495, scopeLine: 1427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8583 = distinct !{!8583, i1 true, !"_RNvXs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_27LoggerWithKvNestingTrackingNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!8584 = distinct !{!8584, !8583, !"_RNvXs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_27LoggerWithKvNestingTrackingNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!8585 = distinct !{!8585, !8583, !"_RNvXs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_27LoggerWithKvNestingTrackingNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!8586 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn slog::SendSyncRefUnwindSafeDrain<Err=!, Ok=()>>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerDNtCscuJkFUZt1a2_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EE6as_refCsbaWXNhtWAp9_11foundations", scope: !562, file: !560, line: 450, type: !495, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8587 = distinct !DISubprogram(name: "inner<dyn slog::SendSyncRefUnwindSafeDrain<Err=!, Ok=()>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtCscuJkFUZt1a2_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_E5innerCsbaWXNhtWAp9_11foundations", scope: !566, file: !563, line: 2187, type: !495, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8588 = distinct !DISubprogram(name: "clone<dyn slog::SendSyncRefUnwindSafeDrain<Err=!, Ok=()>, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtCscuJkFUZt1a2_4slog26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsbaWXNhtWAp9_11foundations", scope: !788, file: !563, line: 2465, type: !495, scopeLine: 2465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8589 = distinct !DISubprogram(name: "clone<alloc::sync::Arc<dyn slog::SendSyncRefUnwindSafeDrain<Err=!, Ok=()>, alloc::alloc::Global>>", linkageName: "_RNvXs1D_CscuJkFUZt1a2_4slogINtB6_6LoggerINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtB6_26SendSyncRefUnwindSafeDrainp3Errzp2OkuEL_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsbaWXNhtWAp9_11foundations", scope: !8654, file: !893, line: 963, type: !495, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8590 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs2_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internalNtB5_27LoggerWithKvNestingTrackingNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !8655, file: !840, line: 12, type: !495, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8591 = distinct !DILocation(line: 166, column: 33, scope: !8560)
!8592 = distinct !DILocation(line: 16, column: 5, scope: !8590, inlinedAt: !8591)
!8593 = distinct !DILocation(line: 963, column: 10, scope: !8653, inlinedAt: !8592)
!8594 = distinct !DILocation(line: 2477, column: 29, scope: !8652, inlinedAt: !8593)
!8595 = distinct !DILocation(line: 2193, column: 27, scope: !8651, inlinedAt: !8594)
!8596 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic10atomic_addjjECsbaWXNhtWAp9_11foundations", scope: !499, file: !496, line: 4029, type: !495, scopeLine: 4029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8597 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !500, file: !496, line: 3222, type: !495, scopeLine: 3222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8598 = distinct !DILocation(line: 2477, column: 44, scope: !8652, inlinedAt: !8593)
!8599 = distinct !DILocation(line: 3224, column: 26, scope: !8657, inlinedAt: !8598)
!8600 = distinct !DILexicalBlock(scope: !8588, file: !563, line: 2477, column: 9)
!8601 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<dyn slog::SendSyncRefUnwindSafeKV>>", linkageName: "_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerDNtCscuJkFUZt1a2_4slog23SendSyncRefUnwindSafeKVEL_EE6as_refCsbaWXNhtWAp9_11foundations", scope: !562, file: !560, line: 450, type: !495, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8602 = distinct !DISubprogram(name: "inner<dyn slog::SendSyncRefUnwindSafeKV, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtCscuJkFUZt1a2_4slog23SendSyncRefUnwindSafeKVEL_E5innerCsbaWXNhtWAp9_11foundations", scope: !566, file: !563, line: 2187, type: !495, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8603 = distinct !DISubprogram(name: "clone<dyn slog::SendSyncRefUnwindSafeKV, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtCscuJkFUZt1a2_4slog23SendSyncRefUnwindSafeKVEL_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsbaWXNhtWAp9_11foundations", scope: !788, file: !563, line: 2465, type: !495, scopeLine: 2465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8604 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs2K_CscuJkFUZt1a2_4slogNtB6_11OwnedKVListNtNtCs3oUPovFnLWP_4core5clone5Clone5clone", scope: !8658, file: !893, line: 3976, type: !495, scopeLine: 3976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8605 = distinct !DILocation(line: 963, column: 10, scope: !8589, inlinedAt: !8592)
!8606 = distinct !DILocation(line: 3976, column: 10, scope: !8604, inlinedAt: !8605)
!8607 = distinct !DILocation(line: 2477, column: 29, scope: !8603, inlinedAt: !8606)
!8608 = distinct !DILocation(line: 2193, column: 27, scope: !8602, inlinedAt: !8607)
!8609 = distinct !DILocation(line: 2477, column: 44, scope: !8603, inlinedAt: !8606)
!8610 = distinct !DILocation(line: 3224, column: 26, scope: !8597, inlinedAt: !8609)
!8611 = distinct !DILexicalBlock(scope: !8603, file: !563, line: 2477, column: 9)
!8612 = distinct !DILocation(line: 166, column: 40, scope: !8560)
!8613 = distinct !DILocation(line: 848, column: 1, scope: !404, inlinedAt: !8612)
!8614 = distinct !DILocation(line: 1437, column: 29, scope: !403, inlinedAt: !8613)
!8615 = distinct !DILocation(line: 134, column: 24, scope: !384, inlinedAt: !8614)
!8616 = distinct !DILocation(line: 3257, column: 26, scope: !383, inlinedAt: !8615)
!8617 = distinct !DILexicalBlock(scope: !8560, file: !840, line: 166, column: 5)
!8618 = distinct !DISubprogram(name: "new<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>>", linkageName: "_RNvMse_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE3newB2k_", scope: !566, file: !563, line: 440, type: !495, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8619 = distinct !{!8619, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE3newB2E_"}
!8620 = distinct !{!8620, !8619, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEE3newB2E_: argument 0"}
!8621 = distinct !DILocation(line: 443, column: 25, scope: !8618, inlinedAt: !8659)
!8622 = distinct !DILocation(line: 290, column: 19, scope: !372, inlinedAt: !8621)
!8623 = distinct !DILocation(line: 251, column: 18, scope: !277, inlinedAt: !8622)
!8624 = distinct !DILocation(line: 541, column: 14, scope: !276, inlinedAt: !8623)
!8625 = distinct !DILocation(line: 424, column: 9, scope: !275, inlinedAt: !8624)
!8626 = distinct !DILocation(line: 302, column: 73, scope: !274, inlinedAt: !8625)
!8627 = distinct !DILocation(line: 130, column: 9, scope: !272, inlinedAt: !8626)
!8628 = distinct !DILocation(line: 142, column: 39, scope: !281, inlinedAt: !8627)
!8629 = distinct !{!8629, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8630 = distinct !{!8630, !8629, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8631 = distinct !{!8631, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8632 = distinct !{!8632, !8631, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8633 = distinct !DILocation(line: 172, column: 1, scope: !8551)
!8634 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8633)
!8635 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8634)
!8636 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8635)
!8637 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8634)
!8638 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8637)
!8639 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8634)
!8640 = !DILocation(line: 166, column: 19, scope: !8560)
!8641 = !DILocation(line: 166, column: 26, scope: !8560)
!8642 = !DILocation(line: 458, column: 18, scope: !8563, inlinedAt: !8641)
!8643 = !{!8568}
!8644 = !{!8570}
!8645 = !{!8570, !8568}
!8646 = !DILexicalBlockFile(scope: !8560, file: !840, discriminator: 2)
!8647 = !DILocation(line: 166, column: 19, scope: !8646)
!8648 = !DILocation(line: 1428, column: 37, scope: !8582, inlinedAt: !8647)
!8649 = !{!8584}
!8650 = !{!8585}
!8651 = !DILexicalBlockFile(scope: !8587, file: !563, discriminator: 2)
!8652 = !DILexicalBlockFile(scope: !8588, file: !563, discriminator: 2)
!8653 = !DILexicalBlockFile(scope: !8589, file: !893, discriminator: 2)
!8654 = !DINamespace(name: "{impl#103}", scope: !894)
!8655 = !DINamespace(name: "{impl#4}", scope: !842)
!8656 = !{!8584, !8585}
!8657 = !DILexicalBlockFile(scope: !8597, file: !496, discriminator: 2)
!8658 = !DINamespace(name: "{impl#172}", scope: !894)
!8659 = !DILocation(line: 171, column: 5, scope: !8617)
!8660 = !{!8620}
!8661 = !{!8630}
!8662 = !{!8632}
!8663 = !{!8632, !8630}
!8664 = !DILocation(line: 165, column: 9, scope: !8551)
!8665 = !DILocation(line: 158, column: 19, scope: !386, inlinedAt: !8552)
!8666 = !DILocation(line: 159, column: 15, scope: !387, inlinedAt: !8552)
!8667 = !DILocation(line: 159, column: 39, scope: !387, inlinedAt: !8552)
!8668 = !DILocation(line: 1063, column: 15, scope: !388, inlinedAt: !8553)
!8669 = !DILocation(line: 1063, column: 9, scope: !388, inlinedAt: !8553)
!8670 = !DILocation(line: 454, column: 20, scope: !390, inlinedAt: !8557)
!8671 = !DILocation(line: 4033, column: 24, scope: !394, inlinedAt: !8559)
!8672 = !DILocation(line: 2494, column: 12, scope: !396, inlinedAt: !8555)
!8673 = !DILocation(line: 2498, column: 38, scope: !396, inlinedAt: !8555)
!8674 = !DILocation(line: 1065, column: 23, scope: !388, inlinedAt: !8553)
!8675 = !DILocation(line: 2495, column: 13, scope: !396, inlinedAt: !8555)
!8676 = !DILocation(line: 0, scope: !388, inlinedAt: !8553)
!8677 = !DILocation(line: 165, column: 18, scope: !8551)
!8678 = !DILocation(line: 166, column: 9, scope: !8560)
!8679 = !DILocation(line: 2514, column: 9, scope: !8561, inlinedAt: !8640)
!8680 = !DILocation(line: 3998, column: 24, scope: !1, inlinedAt: !8566)
!8681 = !DILocation(line: 513, column: 12, scope: !378, inlinedAt: !8564)
!8682 = !DILocation(line: 172, column: 1, scope: !8551)
!8683 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8571)
!8684 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8574)
!8685 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8576)
!8686 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8572)
!8687 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8577)
!8688 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8572)
!8689 = !DILocation(line: 968, column: 37, scope: !379, inlinedAt: !8578)
!8690 = !DILocation(line: 4153, column: 17, scope: !260, inlinedAt: !8580)
!8691 = !DILocation(line: 0, scope: !260, inlinedAt: !8580)
!8692 = !DILocation(line: 108, column: 13, scope: !8562, inlinedAt: !8642)
!8693 = !DILocation(line: 109, column: 31, scope: !8562, inlinedAt: !8642)
!8694 = !DILocation(line: 2437, column: 9, scope: !8581, inlinedAt: !8648)
!8695 = !DILocation(line: 166, column: 33, scope: !8560)
!8696 = !DILocation(line: 454, column: 20, scope: !8586, inlinedAt: !8595)
!8697 = !DILocation(line: 4033, column: 24, scope: !8596, inlinedAt: !8599)
!8698 = !DILocation(line: 2494, column: 12, scope: !8600, inlinedAt: !8593)
!8699 = !DILocation(line: 2498, column: 38, scope: !8600, inlinedAt: !8593)
!8700 = !DILocation(line: 454, column: 20, scope: !8601, inlinedAt: !8608)
!8701 = !DILocation(line: 4033, column: 24, scope: !8596, inlinedAt: !8610)
!8702 = !DILocation(line: 2494, column: 12, scope: !8611, inlinedAt: !8606)
!8703 = !DILocation(line: 2495, column: 13, scope: !8600, inlinedAt: !8593)
!8704 = !DILocation(line: 2495, column: 13, scope: !8611, inlinedAt: !8606)
!8705 = !DILocation(line: 2498, column: 38, scope: !8611, inlinedAt: !8606)
!8706 = !DILocation(line: 22, column: 5, scope: !8590, inlinedAt: !8591)
!8707 = !DILocation(line: 29, column: 5, scope: !8590, inlinedAt: !8591)
!8708 = !DILocation(line: 12, column: 17, scope: !8590, inlinedAt: !8591)
!8709 = !DILocation(line: 4053, column: 24, scope: !382, inlinedAt: !8616)
!8710 = !DILocation(line: 136, column: 12, scope: !385, inlinedAt: !8614)
!8711 = !DILocation(line: 137, column: 18, scope: !385, inlinedAt: !8614)
!8712 = !DILocation(line: 169, column: 5, scope: !8617)
!8713 = !DILocation(line: 443, column: 34, scope: !8618, inlinedAt: !8659)
!8714 = !DILocation(line: 171, column: 39, scope: !8617)
!8715 = !DILocation(line: 128, column: 9, scope: !272, inlinedAt: !8626)
!8716 = !DILocation(line: 100, column: 13, scope: !280, inlinedAt: !8628)
!8717 = !DILocation(line: 251, column: 11, scope: !277, inlinedAt: !8622)
!8718 = !DILocation(line: 251, column: 5, scope: !277, inlinedAt: !8622)
!8719 = !DILocation(line: 253, column: 19, scope: !277, inlinedAt: !8622)
!8720 = !DILocation(line: 296, column: 5, scope: !372, inlinedAt: !8621)
!8721 = !DILocation(line: 288, column: 5, scope: !372, inlinedAt: !8621)
!8722 = !DILocation(line: 293, column: 56, scope: !373, inlinedAt: !8621)
!8723 = !DILocation(line: 447, column: 10, scope: !8618, inlinedAt: !8659)
!8724 = !DILocation(line: 172, column: 1, scope: !8560)
!8725 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8633)
!8726 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8636)
!8727 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8638)
!8728 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8634)
!8729 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8639)
!8730 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8634)
!8731 = !DILocation(line: 172, column: 2, scope: !8551)
!8732 = !DILocation(line: 164, column: 1, scope: !8551)
!8733 = distinct !DISubprogram(name: "unfreeze", linkageName: "_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal8unfreeze", scope: !842, file: !840, line: 194, type: !495, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8734 = distinct !DILocation(line: 195, column: 5, scope: !8733)
!8735 = distinct !DILocation(line: 161, column: 9, scope: !389, inlinedAt: !8734)
!8736 = distinct !DILocation(line: 1065, column: 21, scope: !388, inlinedAt: !8735)
!8737 = distinct !DILocation(line: 161, column: 27, scope: !393, inlinedAt: !8736)
!8738 = distinct !DILocation(line: 2477, column: 29, scope: !392, inlinedAt: !8737)
!8739 = distinct !DILocation(line: 2193, column: 27, scope: !391, inlinedAt: !8738)
!8740 = distinct !DILocation(line: 2477, column: 44, scope: !392, inlinedAt: !8737)
!8741 = distinct !DILocation(line: 3224, column: 26, scope: !395, inlinedAt: !8740)
!8742 = distinct !{!8742, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8743 = distinct !{!8743, !8742, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8744 = distinct !{!8744, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8745 = distinct !{!8745, !8744, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8746 = distinct !DILocation(line: 195, column: 41, scope: !8733)
!8747 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8746)
!8748 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8747)
!8749 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8748)
!8750 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8747)
!8751 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8750)
!8752 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8747)
!8753 = distinct !DISubprogram(name: "deref<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB2k_", scope: !815, file: !563, line: 2513, type: !495, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8754 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !500, file: !496, line: 3183, type: !495, scopeLine: 3183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8755 = distinct !DISubprogram(name: "write<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>", linkageName: "_RNvMs2_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingE5writeB1M_", scope: !714, file: !610, line: 491, type: !495, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8756 = distinct !DISubprogram(name: "lock_exclusive", linkageName: "_RNvXNtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs7hp7eIiX3bT_8lock_api6rwlock9RawRwLock14lock_exclusive", scope: !609, file: !606, line: 67, type: !495, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8757 = distinct !DILocation(line: 3190, column: 21, scope: !8754, inlinedAt: !8780)
!8758 = distinct !DILocation(line: 195, column: 41, scope: !8733)
!8759 = distinct !DILocation(line: 848, column: 1, scope: !100, inlinedAt: !8758)
!8760 = distinct !DILocation(line: 1832, column: 29, scope: !104, inlinedAt: !8759)
!8761 = distinct !DILocation(line: 98, column: 14, scope: !103, inlinedAt: !8760)
!8762 = distinct !DILocation(line: 3123, column: 26, scope: !102, inlinedAt: !8761)
!8763 = distinct !{!8763, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8764 = distinct !{!8764, !8763, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8765 = distinct !{!8765, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8766 = distinct !{!8766, !8765, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8767 = distinct !DILocation(line: 195, column: 41, scope: !8733)
!8768 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8767)
!8769 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8768)
!8770 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8769)
!8771 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8768)
!8772 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8771)
!8773 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8768)
!8774 = !{!8743}
!8775 = !{!8745}
!8776 = !{!8745, !8743}
!8777 = !DILocation(line: 195, column: 5, scope: !8733)
!8778 = !DILocation(line: 195, column: 19, scope: !8733)
!8779 = !DILocation(line: 492, column: 18, scope: !8755, inlinedAt: !8778)
!8780 = !DILocation(line: 70, column: 14, scope: !8756, inlinedAt: !8779)
!8781 = !{!8764}
!8782 = !{!8766}
!8783 = !{!8766, !8764}
!8784 = !DILocation(line: 158, column: 19, scope: !386, inlinedAt: !8734)
!8785 = !DILocation(line: 159, column: 15, scope: !387, inlinedAt: !8734)
!8786 = !DILocation(line: 159, column: 39, scope: !387, inlinedAt: !8734)
!8787 = !DILocation(line: 1063, column: 15, scope: !388, inlinedAt: !8735)
!8788 = !DILocation(line: 1063, column: 9, scope: !388, inlinedAt: !8735)
!8789 = !DILocation(line: 454, column: 20, scope: !390, inlinedAt: !8739)
!8790 = !DILocation(line: 4033, column: 24, scope: !394, inlinedAt: !8741)
!8791 = !DILocation(line: 2494, column: 12, scope: !396, inlinedAt: !8737)
!8792 = !DILocation(line: 2498, column: 38, scope: !396, inlinedAt: !8737)
!8793 = !DILocation(line: 1065, column: 23, scope: !388, inlinedAt: !8735)
!8794 = !DILocation(line: 2495, column: 13, scope: !396, inlinedAt: !8737)
!8795 = !DILocation(line: 195, column: 41, scope: !8733)
!8796 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8746)
!8797 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8749)
!8798 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8751)
!8799 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8747)
!8800 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8752)
!8801 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8747)
!8802 = !DILocation(line: 0, scope: !388, inlinedAt: !8735)
!8803 = !DILocation(line: 2514, column: 9, scope: !8753, inlinedAt: !8777)
!8804 = !DILocation(line: 4153, column: 17, scope: !260, inlinedAt: !8757)
!8805 = !DILocation(line: 0, scope: !260, inlinedAt: !8757)
!8806 = !DILocation(line: 68, column: 12, scope: !8756, inlinedAt: !8779)
!8807 = !DILocation(line: 73, column: 31, scope: !8756, inlinedAt: !8779)
!8808 = !DILocation(line: 4096, column: 17, scope: !101, inlinedAt: !8762)
!8809 = !DILocation(line: 0, scope: !101, inlinedAt: !8762)
!8810 = !DILocation(line: 96, column: 12, scope: !103, inlinedAt: !8760)
!8811 = !DILocation(line: 103, column: 14, scope: !103, inlinedAt: !8760)
!8812 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8767)
!8813 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8770)
!8814 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8772)
!8815 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8768)
!8816 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8773)
!8817 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8768)
!8818 = !DILocation(line: 196, column: 2, scope: !8733)
!8819 = !DILocation(line: 194, column: 1, scope: !8733)
!8820 = distinct !DISubprogram(name: "is_frozen", linkageName: "_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal9is_frozen", scope: !842, file: !840, line: 199, type: !495, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8821 = distinct !DILocation(line: 200, column: 5, scope: !8820)
!8822 = distinct !DILocation(line: 161, column: 9, scope: !389, inlinedAt: !8821)
!8823 = distinct !DILocation(line: 1065, column: 21, scope: !388, inlinedAt: !8822)
!8824 = distinct !DILocation(line: 161, column: 27, scope: !393, inlinedAt: !8823)
!8825 = distinct !DILocation(line: 2477, column: 29, scope: !392, inlinedAt: !8824)
!8826 = distinct !DILocation(line: 2193, column: 27, scope: !391, inlinedAt: !8825)
!8827 = distinct !DILocation(line: 2477, column: 44, scope: !392, inlinedAt: !8824)
!8828 = distinct !DILocation(line: 3224, column: 26, scope: !395, inlinedAt: !8827)
!8829 = distinct !DISubprogram(name: "deref<lock_api::rwlock::RwLock<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB2k_", scope: !815, file: !563, line: 2513, type: !495, scopeLine: 2513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8830 = distinct !DISubprogram(name: "lock_shared", linkageName: "_RNvXNtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCs7hp7eIiX3bT_8lock_api6rwlock9RawRwLock11lock_shared", scope: !609, file: !606, line: 107, type: !495, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8831 = distinct !DISubprogram(name: "read<parking_lot::raw_rwlock::RawRwLock, foundations::telemetry::log::internal::LoggerWithKvNestingTracking>", linkageName: "_RNvMs2_NtCs7hp7eIiX3bT_8lock_api6rwlockINtB5_6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingE4readB1M_", scope: !714, file: !610, line: 457, type: !495, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !494)
!8832 = distinct !DILocation(line: 108, column: 18, scope: !8830, inlinedAt: !8867)
!8833 = distinct !DILocation(line: 509, column: 32, scope: !377, inlinedAt: !8832)
!8834 = distinct !DILocation(line: 2920, column: 26, scope: !376, inlinedAt: !8833)
!8835 = distinct !{!8835, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8836 = distinct !{!8836, !8835, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8837 = distinct !{!8837, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8838 = distinct !{!8838, !8837, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8839 = distinct !DILocation(line: 200, column: 31, scope: !8820)
!8840 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8839)
!8841 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8840)
!8842 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8841)
!8843 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8840)
!8844 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8843)
!8845 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8840)
!8846 = distinct !DILocation(line: 529, column: 47, scope: !380, inlinedAt: !8832)
!8847 = distinct !DILocation(line: 531, column: 18, scope: !380, inlinedAt: !8832)
!8848 = distinct !DILocation(line: 3190, column: 21, scope: !381, inlinedAt: !8847)
!8849 = distinct !DILocation(line: 200, column: 31, scope: !8820)
!8850 = distinct !DILocation(line: 848, column: 1, scope: !404, inlinedAt: !8849)
!8851 = distinct !DILocation(line: 1437, column: 29, scope: !403, inlinedAt: !8850)
!8852 = distinct !DILocation(line: 134, column: 24, scope: !384, inlinedAt: !8851)
!8853 = distinct !DILocation(line: 3257, column: 26, scope: !383, inlinedAt: !8852)
!8854 = distinct !{!8854, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_"}
!8855 = distinct !{!8855, !8854, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_: argument 0"}
!8856 = distinct !{!8856, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_"}
!8857 = distinct !{!8857, !8856, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2k_: argument 0"}
!8858 = distinct !DILocation(line: 200, column: 31, scope: !8820)
!8859 = distinct !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8858)
!8860 = distinct !DILocation(line: 2928, column: 17, scope: !400, inlinedAt: !8859)
!8861 = distinct !DILocation(line: 2193, column: 27, scope: !399, inlinedAt: !8860)
!8862 = distinct !DILocation(line: 2928, column: 32, scope: !400, inlinedAt: !8859)
!8863 = distinct !DILocation(line: 3257, column: 26, scope: !402, inlinedAt: !8862)
!8864 = distinct !DILocation(line: 69, column: 9, scope: !400, inlinedAt: !8859)
!8865 = !DILocation(line: 200, column: 5, scope: !8820)
!8866 = !DILocation(line: 200, column: 19, scope: !8820)
!8867 = !DILocation(line: 458, column: 18, scope: !8831, inlinedAt: !8866)
!8868 = !{!8836}
!8869 = !{!8838}
!8870 = !{!8838, !8836}
!8871 = !{!8855}
!8872 = !{!8857}
!8873 = !{!8857, !8855}
!8874 = !DILocation(line: 158, column: 19, scope: !386, inlinedAt: !8821)
!8875 = !DILocation(line: 159, column: 15, scope: !387, inlinedAt: !8821)
!8876 = !DILocation(line: 159, column: 39, scope: !387, inlinedAt: !8821)
!8877 = !DILocation(line: 1063, column: 15, scope: !388, inlinedAt: !8822)
!8878 = !DILocation(line: 1063, column: 9, scope: !388, inlinedAt: !8822)
!8879 = !DILocation(line: 454, column: 20, scope: !390, inlinedAt: !8826)
!8880 = !DILocation(line: 4033, column: 24, scope: !394, inlinedAt: !8828)
!8881 = !DILocation(line: 2494, column: 12, scope: !396, inlinedAt: !8824)
!8882 = !DILocation(line: 2498, column: 38, scope: !396, inlinedAt: !8824)
!8883 = !DILocation(line: 1065, column: 23, scope: !388, inlinedAt: !8822)
!8884 = !DILocation(line: 2495, column: 13, scope: !396, inlinedAt: !8824)
!8885 = !DILocation(line: 0, scope: !388, inlinedAt: !8822)
!8886 = !DILocation(line: 2514, column: 9, scope: !8829, inlinedAt: !8865)
!8887 = !DILocation(line: 3998, column: 24, scope: !1, inlinedAt: !8834)
!8888 = !DILocation(line: 513, column: 12, scope: !378, inlinedAt: !8832)
!8889 = !DILocation(line: 200, column: 31, scope: !8820)
!8890 = !DILocation(line: 848, column: 1, scope: !397, inlinedAt: !8839)
!8891 = !DILocation(line: 454, column: 20, scope: !398, inlinedAt: !8842)
!8892 = !DILocation(line: 4053, column: 24, scope: !401, inlinedAt: !8844)
!8893 = !DILocation(line: 2928, column: 12, scope: !400, inlinedAt: !8840)
!8894 = !DILocation(line: 4497, column: 24, scope: !21, inlinedAt: !8845)
!8895 = !DILocation(line: 2971, column: 18, scope: !400, inlinedAt: !8840)
!8896 = !DILocation(line: 968, column: 37, scope: !379, inlinedAt: !8846)
!8897 = !DILocation(line: 4153, column: 17, scope: !260, inlinedAt: !8848)
!8898 = !DILocation(line: 0, scope: !260, inlinedAt: !8848)
!8899 = !DILocation(line: 108, column: 13, scope: !8830, inlinedAt: !8867)
!8900 = !DILocation(line: 109, column: 31, scope: !8830, inlinedAt: !8867)
end_hunk_1
