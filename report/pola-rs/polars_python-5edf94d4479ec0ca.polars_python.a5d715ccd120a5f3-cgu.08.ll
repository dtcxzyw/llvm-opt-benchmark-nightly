Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0B12_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !131404
  %i.al = trunc nuw i8 %i.aj to i1, !dbg !131405
  br i1 %i.al, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !131405

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131406
  %i.an = and i64 %i.am, 9223372036854775807, !dbg !131407
  %i.ao = icmp eq i64 %i.an, 0, !dbg !131407
  br i1 %i.ao, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !131407, !prof !5231

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131408

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n, !dbg !131409

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4, !dbg !131410
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !131411

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4, !dbg !131412
  %i.ar = icmp eq i32 %i.aq, 2, !dbg !131413
  br i1 %i.ar, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, !dbg !131413, !prof !4934

bb.o:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131414

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !131415
  %i.at = load ptr, ptr %i.as, align 8, !dbg !131415, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !dbg !131415 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !131415
  %i.aw = load i32, ptr %i.av, align 8, !dbg !131415, !range !5870, !noundef !4872 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !dbg !131416 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !131417

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !131418

.split.i:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8, !dbg !131416 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !131417

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131419 ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0, !dbg !131419 ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1, !dbg !131419 ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au, !dbg !131420
  %i.bf = icmp slt i64 %i.bc, %i.au, !dbg !131421
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf, !dbg !131420
  br i1 %spec.select.i, label %bb.s, label %bb.r, !dbg !131422

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8, !dbg !131423 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bh, 1, !dbg !131424
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bh, 0, !dbg !131425
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !131425
  br i1 %.sroa.18.0.in.i.i.i, label %.thread15, label %.split7.us.i, !dbg !131426

bb.s:                                             ; preds = %.noexc38
  %i.bi = invoke { i64, i32 } @_RNvXs3_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtNtCscgRAwXFJnXP_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131427 ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bj = extractvalue { i64, i32 } %i.bi, 0, !dbg !131427
  %i.bk = extractvalue { i64, i32 } %i.bi, 1, !dbg !131427
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bj, i32 noundef %i.bk)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131428

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ], !dbg !131429
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.x
    i64 3, label %.thread12
  ], !dbg !131430, !prof !5949

bb.t:                                             ; preds = %.split7.us.i
  unreachable, !dbg !131431

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #54
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131432

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !131433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !131433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !131433
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !131433
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !131433, !nonnull !4872, !align !5241, !noundef !4872 ; 4 uses
  %i.bn = cmpxchg ptr %i.bm, i32 0, i32 1 acquire monotonic, align 4, !dbg !131434, !noalias !131342
  %i.bo = extractvalue { i32, i1 } %i.bn, 1, !dbg !131434
  br i1 %i.bo, label %.noexc41, label %bb.v, !dbg !131435, !prof !5231

bb.v:                                             ; preds = %.thread15
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bm)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131436

.noexc41:                                         ; preds = %bb.v, %.thread15
  %i.bp = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131437, !noalias !131342
  %i.bq = and i64 %i.bp, 9223372036854775807, !dbg !131438
  %i.br = icmp eq i64 %i.bq, 0, !dbg !131438
  br i1 %i.br, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.w, !dbg !131438, !prof !5231

bb.w:                                             ; preds = %.noexc41
  %i.bs = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131439

.noexc42:                                         ; preds = %bb.w
  %i.bt = xor i1 %i.bs, true, !dbg !131440
  %i.bu = zext i1 %i.bt to i8, !dbg !131441
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, !dbg !131439

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc42, %.noexc41
  %.sroa.01.0.i.i = phi i8 [ %i.bu, %.noexc42 ], [ 0, %.noexc41 ], !dbg !131442
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4, !dbg !131443
  %i.bw = load atomic i8, ptr %i.bv monotonic, align 4, !dbg !131444, !noalias !131342
  %i.bx = icmp ne i8 %i.bw, 0, !dbg !131445
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i1 noundef zeroext %i.bx, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.bm)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131446

bb.x:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !131447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !131447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !131447
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !131447
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !131447, !nonnull !4872, !align !5241, !noundef !4872 ; 4 uses
  %i.ca = cmpxchg ptr %i.bz, i32 0, i32 1 acquire monotonic, align 4, !dbg !131448, !noalias !131343
  %i.cb = extractvalue { i32, i1 } %i.ca, 1, !dbg !131448
  br i1 %i.cb, label %.noexc46, label %bb.y, !dbg !131449, !prof !5231

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bz)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131450

.noexc46:                                         ; preds = %bb.y, %bb.x
  %i.cc = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131451, !noalias !131343
  %i.cd = and i64 %i.cc, 9223372036854775807, !dbg !131452
  %i.ce = icmp eq i64 %i.cd, 0, !dbg !131452
  br i1 %i.ce, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i44, label %bb.z, !dbg !131452, !prof !5231

bb.z:                                             ; preds = %.noexc46
  %i.cf = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131453

.noexc47:                                         ; preds = %bb.z
  %i.cg = xor i1 %i.cf, true, !dbg !131454
  %i.ch = zext i1 %i.cg to i8, !dbg !131455
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i44, !dbg !131453

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i44: ; preds = %.noexc47, %.noexc46
  %.sroa.01.0.i.i45 = phi i8 [ %i.ch, %.noexc47 ], [ 0, %.noexc46 ], !dbg !131456
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !131457
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !dbg !131458, !noalias !131343
  %i.ck = icmp ne i8 %i.cj, 0, !dbg !131459
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.ck, i8 noundef %.sroa.01.0.i.i45, ptr noundef nonnull align 8 %i.bz)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131460

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cl = load atomic i8, ptr %i.n acquire, align 8, !dbg !131461
  %i.cm = icmp eq i8 %i.cl, 0, !dbg !131462
  br i1 %i.cm, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit, !dbg !131462

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cq, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.cn = icmp ult i32 %.sroa.0.02.i, 7, !dbg !131463
  br i1 %i.cn, label %bb.ab, label %bb.aa, !dbg !131463

bb.aa:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit, !dbg !131464

bb.ab:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0, !dbg !131465
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !131466

.lr.ph.i.i.preheader:                             ; preds = %bb.ab
  %i.co = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i, !dbg !131467 ; 2 uses
  %xtraiter = and i32 %i.co, 7, !dbg !131466      ; 3 uses
  %i.cp = icmp ult i32 %.sroa.0.02.i, 3, !dbg !131466
  br i1 %i.cp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !131466

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.co, 56, !dbg !131466
  br label %.lr.ph.i.i, !dbg !131466

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  call void @llvm.x86.sse2.pause(), !dbg !131468
  %niter.next.7 = add i32 %niter, 8, !dbg !131466 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !131466
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !131466

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !131466
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !131466

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0, !dbg !131466
  call void @llvm.assume(i1 %lcmp.mod78), !dbg !131466
  br label %.lr.ph.i.i.epil, !dbg !131466

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !131468
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !131466 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !131466
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !131466, !llvm.loop !131172

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.aa, %bb.ab
  %i.cq = add i32 %.sroa.0.02.i, 1, !dbg !131469
  %i.cr = load atomic i8, ptr %i.n acquire, align 8, !dbg !131461
  %i.cs = icmp eq i8 %i.cr, 0, !dbg !131462
  br i1 %i.cs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit, !dbg !131462

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131344), !dbg !131470
  %i.ct = load i64, ptr %i.g, align 8, !dbg !131471, !range !4932, !alias.scope !131344, !noalias !131345, !noundef !4872
  %i.cu = trunc nuw i64 %i.ct to i1, !dbg !131472
  br i1 %i.cu, label %bb.ac, label %bb.ag, !dbg !131472, !prof !4934

bb.ac:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !131473, !noalias !131346
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !131473
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !131473, !alias.scope !131344, !noalias !131345, !nonnull !4872, !align !5241, !noundef !4872
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !131473
  %i.cy = load i8, ptr %i.cx, align 8, !dbg !131473, !range !5133, !alias.scope !131344, !noalias !131345, !noundef !4872
  store ptr %i.cw, ptr %i.a, align 8, !dbg !131473, !noalias !131346
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !131473
  store i8 %i.cy, ptr %i.cz, align 8, !dbg !131473, !noalias !131346
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @280, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #54
          to label %bb.ae unwind label %bb.ad, !dbg !131474, !noalias !131344

bb.ad:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #56
          to label %.body unwind label %bb.af, !dbg !131475, !noalias !131344

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !131476, !noalias !131344
  unreachable, !dbg !131476

bb.ag:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !131477
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !131477, !alias.scope !131344, !noalias !131345, !nonnull !4872, !align !5241, !noundef !4872 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !131477
  %i.df = load i8, ptr %i.de, align 8, !dbg !131477, !range !5133, !alias.scope !131344, !noalias !131345, !noundef !4872 ; 2 uses
  %i.dg = trunc nuw i8 %i.df to i1, !dbg !131477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !131478
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 56, !dbg !131433
  call void @llvm.experimental.noalias.scope.decl(metadata !131347), !dbg !131479
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 64, !dbg !131480
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !131480, !alias.scope !131347, !noalias !131348, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 72, !dbg !131481
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !131481, !alias.scope !131347, !noalias !131348, !noundef !4872 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.dl, 24, !dbg !131482
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx65, !dbg !131482
  %i.dn = icmp eq i64 %i.dl, 0, !dbg !131483
  br i1 %i.dn, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64, !dbg !131484

bb.ah:                                            ; preds = %.lr.ph64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dr, i64 24, !dbg !131485 ; 2 uses
  %i.dp = add nuw nsw i64 %i.ds, 1, !dbg !131486
  %i.dq = icmp eq ptr %i.do, %i.dm, !dbg !131483
  br i1 %i.dq, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64, !dbg !131484

.lr.ph64:                                         ; preds = %bb.ag, %bb.ah
  %i.dr = phi ptr [ %i.do, %bb.ah ], [ %i.dj, %bb.ag ] ; 2 uses
  %i.ds = phi i64 [ %i.dp, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8, !dbg !131487
  %i.du = load i64, ptr %i.dt, align 8, !dbg !131487, !alias.scope !131349, !noalias !131350, !noundef !4872
  %.not.i.i51 = icmp eq i64 %i.du, %i.l, !dbg !131487
  br i1 %.not.i.i51, label %bb.ai, label %bb.ah, !dbg !131488

bb.ai:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dh, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.aj, !dbg !131489

bb.aj:                                            ; preds = %bb.al, %bb.ai, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python(ptr nonnull %i.dd, i8 %i.df) #56
          to label %.body unwind label %bb.au, !dbg !131490

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ai
  %.pr = load ptr, ptr %i.h, align 8, !dbg !131491
  %.not14 = icmp eq ptr %.pr, null, !dbg !131491
  br i1 %.not14, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ak, !dbg !131492, !prof !5961

bb.ak:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !131493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !131494
  call void @llvm.experimental.noalias.scope.decl(metadata !131352), !dbg !131490
  call void @llvm.experimental.noalias.scope.decl(metadata !131353), !dbg !131495
  call void @llvm.experimental.noalias.scope.decl(metadata !131354), !dbg !131496
  call void @llvm.experimental.noalias.scope.decl(metadata !131355), !dbg !131497
  %i.dw = load ptr, ptr %i.i, align 8, !dbg !131498, !alias.scope !131356, !nonnull !4872, !noundef !4872
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !dbg !131499, !noalias !131356
  %i.dy = icmp eq i64 %i.dx, 1, !dbg !131500
  br i1 %i.dy, label %bb.al, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit, !dbg !131500

bb.al:                                            ; preds = %bb.ak
  fence acquire, !dbg !131501
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #58
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit unwind label %bb.aj, !dbg !131502

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ah, %bb.ag, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #54
          to label %bb.c unwind label %bb.aj, !dbg !131503

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.ak, %bb.al
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 4, !dbg !131504
  br i1 %i.dg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.am, !dbg !131505

bb.am:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit
  %i.ea = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131506
  %i.eb = and i64 %i.ea, 9223372036854775807, !dbg !131507
  %i.ec = icmp eq i64 %i.eb, 0, !dbg !131507
  br i1 %i.ec, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.an, !dbg !131507, !prof !5231

bb.an:                                            ; preds = %bb.am
  %i.ed = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131508

.noexc55:                                         ; preds = %bb.an
  br i1 %i.ed, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.ao, !dbg !131509

bb.ao:                                            ; preds = %.noexc55
  store atomic i8 1, ptr %i.dz monotonic, align 4, !dbg !131510
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, !dbg !131511

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54: ; preds = %bb.ao, %.noexc55, %bb.am, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit
  %i.ee = atomicrmw xchg ptr %i.dd, i32 0 release, align 4, !dbg !131512
  %i.ef = icmp eq i32 %i.ee, 2, !dbg !131513
  br i1 %i.ef, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit57, !dbg !131513, !prof !4934

bb.ap:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dd)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131514

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit57: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !131490
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !131515
  store i8 0, ptr %i.eg, align 8, !dbg !131515
  br label %bb.aq, !dbg !131516

bb.aq:                                            ; preds = %bb.bj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit57
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bj ], [ -9223372036854775806, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69 ], [ -9223372036854775806, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit57 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !131517
  %i.eh = load i64, ptr %i.j, align 8, !dbg !131518, !range !5361, !alias.scope !131357, !noundef !4872
  %i.ei = icmp slt i64 %i.eh, -9223372036854775805, !dbg !131518
  br i1 %i.ei, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zero6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1x_.exit, label %bb.ar, !dbg !131518

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i unwind label %bb.as, !dbg !131519

bb.as:                                            ; preds = %bb.ar
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %.thread unwind label %bb.at, !dbg !131520

bb.at:                                            ; preds = %bb.as
  %i.ek = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0B12_:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4, !dbg !131936
  %i.am = trunc nuw i8 %i.ak to i1, !dbg !131937
  br i1 %i.am, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !dbg !131937

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131938
  %i.ao = and i64 %i.an, 9223372036854775807, !dbg !131939
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !131939
  br i1 %i.ap, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !131939, !prof !5231

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131940

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !131941

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4, !dbg !131942
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !131943

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4, !dbg !131944
  %i.as = icmp eq i32 %i.ar, 2, !dbg !131945
  br i1 %i.as, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, !dbg !131945, !prof !4934

bb.n:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131946

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !131947
  %i.au = load ptr, ptr %i.at, align 8, !dbg !131947, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !dbg !131947 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !131947
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !131947, !range !5870, !noundef !4872 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8, !dbg !131948 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !131949

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !131950

.split.i:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8, !dbg !131948 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !131949

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131951 ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0, !dbg !131951 ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1, !dbg !131951 ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av, !dbg !131952
  %i.bg = icmp slt i64 %i.bd, %i.av, !dbg !131953
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg, !dbg !131952
  br i1 %spec.select.i, label %bb.r, label %bb.q, !dbg !131954

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8, !dbg !131955 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1, !dbg !131956
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0, !dbg !131957
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !131957
  br i1 %.sroa.18.0.in.i.i.i, label %.thread10, label %.split7.us.i, !dbg !131958

bb.r:                                             ; preds = %.noexc50
  %i.bj = invoke { i64, i32 } @_RNvXs3_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtNtCscgRAwXFJnXP_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131959 ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bk = extractvalue { i64, i32 } %i.bj, 0, !dbg !131959
  %i.bl = extractvalue { i64, i32 } %i.bj, 1, !dbg !131959
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !131960

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ], !dbg !131961
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.w
    i64 3, label %.thread
  ], !dbg !131962, !prof !5949

bb.s:                                             ; preds = %.split7.us.i
  unreachable, !dbg !131963

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #54
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131964

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !131868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !131868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !131868
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !131868
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !131868, !nonnull !4872, !align !5241, !noundef !4872 ; 4 uses
  %i.bo = cmpxchg ptr %i.bn, i32 0, i32 1 acquire monotonic, align 4, !dbg !131965, !noalias !131862
  %i.bp = extractvalue { i32, i1 } %i.bo, 1, !dbg !131965
  br i1 %i.bp, label %.noexc53, label %bb.u, !dbg !131966, !prof !5231

bb.u:                                             ; preds = %.thread10
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131967

.noexc53:                                         ; preds = %bb.u, %.thread10
  %i.bq = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131968, !noalias !131862
  %i.br = and i64 %i.bq, 9223372036854775807, !dbg !131969
  %i.bs = icmp eq i64 %i.br, 0, !dbg !131969
  br i1 %i.bs, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.v, !dbg !131969, !prof !5231

bb.v:                                             ; preds = %.noexc53
  %i.bt = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131970

.noexc54:                                         ; preds = %bb.v
  %i.bu = xor i1 %i.bt, true, !dbg !131971
  %i.bv = zext i1 %i.bu to i8, !dbg !131972
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, !dbg !131970

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc54, %.noexc53
  %.sroa.01.0.i.i = phi i8 [ %i.bv, %.noexc54 ], [ 0, %.noexc53 ], !dbg !131973
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 4, !dbg !131974
  %i.bx = load atomic i8, ptr %i.bw monotonic, align 4, !dbg !131975, !noalias !131862
  %i.by = icmp ne i8 %i.bx, 0, !dbg !131976
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i1 noundef zeroext %i.by, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.bn)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131977

bb.w:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !131890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !131890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !131890
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !131890
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !131890, !nonnull !4872, !align !5241, !noundef !4872 ; 4 uses
  %i.cb = cmpxchg ptr %i.ca, i32 0, i32 1 acquire monotonic, align 4, !dbg !131978, !noalias !131863
  %i.cc = extractvalue { i32, i1 } %i.cb, 1, !dbg !131978
  br i1 %i.cc, label %.noexc58, label %bb.x, !dbg !131979, !prof !5231

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ca)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131980

.noexc58:                                         ; preds = %bb.x, %bb.w
  %i.cd = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !131981, !noalias !131863
  %i.ce = and i64 %i.cd, 9223372036854775807, !dbg !131982
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !131982
  br i1 %i.cf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56, label %bb.y, !dbg !131982, !prof !5231

bb.y:                                             ; preds = %.noexc58
  %i.cg = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131983

.noexc59:                                         ; preds = %bb.y
  %i.ch = xor i1 %i.cg, true, !dbg !131984
  %i.ci = zext i1 %i.ch to i8, !dbg !131985
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56, !dbg !131983

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56: ; preds = %.noexc59, %.noexc58
  %.sroa.01.0.i.i57 = phi i8 [ %i.ci, %.noexc59 ], [ 0, %.noexc58 ], !dbg !131986
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4, !dbg !131987
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !dbg !131988, !noalias !131863
  %i.cl = icmp ne i8 %i.ck, 0, !dbg !131989
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.cl, i8 noundef %.sroa.01.0.i.i57, ptr noundef nonnull align 8 %i.ca)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !131990

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cm = load atomic i8, ptr %i.o acquire, align 8, !dbg !131991
  %i.cn = icmp eq i8 %i.cm, 0, !dbg !131992
  br i1 %i.cn, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.loopexit, !dbg !131992

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cr, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.co = icmp ult i32 %.sroa.0.02.i, 7, !dbg !131993
  br i1 %i.co, label %bb.aa, label %bb.z, !dbg !131993

bb.z:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit, !dbg !131994

bb.aa:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0, !dbg !131995
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !131996

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.cp = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i, !dbg !131997 ; 2 uses
  %xtraiter = and i32 %i.cp, 7, !dbg !131996      ; 3 uses
  %i.cq = icmp ult i32 %.sroa.0.02.i, 3, !dbg !131996
  br i1 %i.cq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !131996

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cp, 56, !dbg !131996
  br label %.lr.ph.i.i, !dbg !131996

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  call void @llvm.x86.sse2.pause(), !dbg !131998
  %niter.next.7 = add i32 %niter, 8, !dbg !131996 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !131996
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !131996

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !131996
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !131996

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0, !dbg !131996
  call void @llvm.assume(i1 %lcmp.mod77), !dbg !131996
  br label %.lr.ph.i.i.epil, !dbg !131996

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !131998
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !131996 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !131996
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !131996, !llvm.loop !131691

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.z, %bb.aa
  %i.cr = add i32 %.sroa.0.02.i, 1, !dbg !131999
  %i.cs = load atomic i8, ptr %i.o acquire, align 8, !dbg !131991
  %i.ct = icmp eq i8 %i.cs, 0, !dbg !131992
  br i1 %i.ct, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.loopexit, !dbg !131992

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131864), !dbg !132000
  %i.cu = load i64, ptr %i.g, align 8, !dbg !132001, !range !4932, !alias.scope !131864, !noalias !131865, !noundef !4872
  %i.cv = trunc nuw i64 %i.cu to i1, !dbg !132002
  br i1 %i.cv, label %bb.ab, label %bb.af, !dbg !132002, !prof !4934

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !132003, !noalias !131866
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !132003
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !132003, !alias.scope !131864, !noalias !131865, !nonnull !4872, !align !5241, !noundef !4872
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !132003
  %i.cz = load i8, ptr %i.cy, align 8, !dbg !132003, !range !5133, !alias.scope !131864, !noalias !131865, !noundef !4872
  store ptr %i.cx, ptr %i.a, align 8, !dbg !132003, !noalias !131866
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !132003
  store i8 %i.cz, ptr %i.da, align 8, !dbg !132003, !noalias !131866
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @280, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #54
          to label %bb.ad unwind label %bb.ac, !dbg !132004, !noalias !131864

bb.ac:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #56
          to label %.body unwind label %bb.ae, !dbg !132005, !noalias !131864

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !132006, !noalias !131864
  unreachable, !dbg !132006

bb.af:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !132007
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !132007, !alias.scope !131864, !noalias !131865, !nonnull !4872, !align !5241, !noundef !4872 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !132007
  %i.dg = load i8, ptr %i.df, align 8, !dbg !132007, !range !5133, !alias.scope !131864, !noalias !131865, !noundef !4872 ; 2 uses
  %i.dh = trunc nuw i8 %i.dg to i1, !dbg !132007
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !132008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !132009
  call void @llvm.experimental.noalias.scope.decl(metadata !131870), !dbg !132010
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !132011
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !132011, !alias.scope !131870, !noalias !131871, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !132012
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !132012, !alias.scope !131870, !noalias !131871, !noundef !4872 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.dm, 24, !dbg !132013
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx64, !dbg !132013
  %i.do = icmp eq i64 %i.dm, 0, !dbg !132014
  br i1 %i.do, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63, !dbg !132015

bb.ag:                                            ; preds = %.lr.ph63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ds, i64 24, !dbg !132016 ; 2 uses
  %i.dq = add nuw nsw i64 %i.dt, 1, !dbg !132017
  %i.dr = icmp eq ptr %i.dp, %i.dn, !dbg !132014
  br i1 %i.dr, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63, !dbg !132015

.lr.ph63:                                         ; preds = %bb.af, %bb.ag
  %i.ds = phi ptr [ %i.dp, %bb.ag ], [ %i.dk, %bb.af ] ; 2 uses
  %i.dt = phi i64 [ %i.dq, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !132018
  %i.dv = load i64, ptr %i.du, align 8, !dbg !132018, !alias.scope !131872, !noalias !131873, !noundef !4872
  %.not.i.i63 = icmp eq i64 %i.dv, %i.m, !dbg !132018
  br i1 %.not.i.i63, label %bb.ah, label %bb.ag, !dbg !132019

bb.ah:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.di, i64 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ai, !dbg !132020

bb.ai:                                            ; preds = %bb.ak, %bb.ah, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python(ptr nonnull %i.de, i8 %i.dg) #56
          to label %.body unwind label %bb.at, !dbg !132021

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ah
  %.pr = load ptr, ptr %i.h, align 8, !dbg !132022
  %.not25 = icmp eq ptr %.pr, null, !dbg !132022
  br i1 %.not25, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.aj, !dbg !132023, !prof !5961

bb.aj:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !132024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !132025
  call void @llvm.experimental.noalias.scope.decl(metadata !131875), !dbg !132021
  call void @llvm.experimental.noalias.scope.decl(metadata !131876), !dbg !132026
  call void @llvm.experimental.noalias.scope.decl(metadata !131877), !dbg !132027
  call void @llvm.experimental.noalias.scope.decl(metadata !131878), !dbg !132028
  %i.dx = load ptr, ptr %i.i, align 8, !dbg !132029, !alias.scope !131879, !nonnull !4872, !noundef !4872
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !dbg !132030, !noalias !131879
  %i.dz = icmp eq i64 %i.dy, 1, !dbg !132031
  br i1 %i.dz, label %bb.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit, !dbg !132031

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !132032
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #58
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit unwind label %bb.ai, !dbg !132033

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ag, %bb.af, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #54
          to label %bb.b unwind label %bb.ai, !dbg !132034

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.aj, %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 4, !dbg !132035
  br i1 %i.dh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.al, !dbg !132036

bb.al:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit
  %i.eb = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !132037
  %i.ec = and i64 %i.eb, 9223372036854775807, !dbg !132038
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !132038
  br i1 %i.ed, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.am, !dbg !132038, !prof !5231

bb.am:                                            ; preds = %bb.al
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132039

.noexc67:                                         ; preds = %bb.am
  br i1 %i.ee, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.an, !dbg !132040

bb.an:                                            ; preds = %.noexc67
  store atomic i8 1, ptr %i.ea monotonic, align 4, !dbg !132041
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, !dbg !132042

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66: ; preds = %bb.an, %.noexc67, %bb.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit
  %i.ef = atomicrmw xchg ptr %i.de, i32 0 release, align 4, !dbg !132043
  %i.eg = icmp eq i32 %i.ef, 2, !dbg !132044
  br i1 %i.eg, label %bb.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69, !dbg !132044, !prof !4934

bb.ao:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.de)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132045

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !132021
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !dbg !132046 ; 2 uses
  store i64 -9223372036854775806, ptr %i.j, align 8, !dbg !132047
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775806, !dbg !132048
  br i1 %.not26, label %.invoke, label %bb.ap, !dbg !132049, !prof !4934

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !132046
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !132050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false), !dbg !132051
  store i64 0, ptr %0, align 8, !dbg !132050
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !132050
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !132050
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zero6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEEB1x_.exit, !dbg !132052

.invoke:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit81, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69
  %i.eh = phi ptr [ @236, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit69 ], [ @239, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit81 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh) #54
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !132053

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_:bb.a
          to label %common.resume unwind label %bb.h, !dbg !151933, !noalias !151873

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !151934, !noalias !151873
  unreachable, !dbg !151934

common.resume:                                    ; preds = %bb.bi, %bb.s, %bb.t, %.body.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %lpad.phi, %bb.t ], [ %lpad.thr_comm, %bb.bi ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.s ]
  resume { ptr, i32 } %common.resume.op, !dbg !151935

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseeLknQCOKOd_13polars_python.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !151936
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !151936, !alias.scope !151873, !noalias !151874, !nonnull !4872, !align !5241, !noundef !4872 ; 19 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !151936
  %i.an = load i8, ptr %i.am, align 8, !dbg !151936, !range !5133, !alias.scope !151873, !noalias !151874, !noundef !4872 ; 5 uses
  %i.ao = trunc nuw i8 %i.an to i1, !dbg !151936  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !151937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !151876
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !151938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151878), !dbg !151939
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !151940
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !151940, !alias.scope !151878, !noalias !151879, !noundef !4872 ; 4 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326, !dbg !151941
  tail call void @llvm.assume(i1 %i.as), !dbg !151942
  %i.at = icmp eq i64 %i.ar, 0, !dbg !151943
  br i1 %i.at, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i, !dbg !151943

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit
  %i.au = invoke noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @333)
          to label %.noexc unwind label %bb.bi, !dbg !151944

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !151945
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !151945, !alias.scope !151878, !noalias !151879, !nonnull !4872, !noundef !4872 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ar, 24, !dbg !151946
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i, !dbg !151946
  br label %.lr.ph.i.i, !dbg !151947

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.br, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.ay = phi ptr [ %i.az, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.aw, %.noexc ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !151948 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151880), !dbg !151949
  %i.ba = load ptr, ptr %i.ay, align 8, !dbg !151950, !alias.scope !151880, !noalias !151881, !nonnull !4872, !noundef !4872 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40, !dbg !151951
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !151951, !noalias !151882, !noundef !4872
  %.not.i.i.i = icmp eq i64 %i.bc, %i.au, !dbg !151947
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i, label %bb.i, !dbg !151947

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !151952
  %i.be = load i64, ptr %i.bd, align 8, !dbg !151952, !alias.scope !151880, !noalias !151881, !noundef !4872
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !151953
  %i.bg = cmpxchg ptr %i.bf, i64 0, i64 %i.be acq_rel acquire, align 8, !dbg !151954, !noalias !151882
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.bg, 1, !dbg !151955
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.j, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !151956

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !151957
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !151957, !alias.scope !151880, !noalias !151881, !noundef !4872 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null, !dbg !151958
  br i1 %i.bk, label %bb.l, label %bb.k, !dbg !151958

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !151959
  store atomic ptr %i.bj, ptr %i.bl release, align 8, !dbg !151960, !noalias !151882
  br label %bb.l, !dbg !151961

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = load ptr, ptr %i.bh, align 8, !dbg !151962, !noalias !151882, !nonnull !4872, !noundef !4872
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40, !dbg !151963 ; 2 uses
  %i.bo = atomicrmw xchg ptr %i.bn, i32 1 release, align 4, !dbg !151964, !noalias !151882
  %i.bp = icmp eq i32 %i.bo, -1, !dbg !151965
  br i1 %i.bp, label %bb.m, label %.noexc9, !dbg !151965

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bn)
          to label %.noexc9 unwind label %bb.bi, !dbg !151966 ; 0 uses

_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.br = add nuw nsw i64 %.sroa.02.012.i.i, 1, !dbg !151967
  %i.bs = icmp eq ptr %i.az, %i.ax, !dbg !151968
  br i1 %i.bs, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i, !dbg !151969

.noexc9:                                          ; preds = %bb.m, %bb.l
  %i.bt = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ar, !dbg !151970
  tail call void @llvm.assume(i1 %i.bt), !dbg !151971
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ap, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335)
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bi, !dbg !151972

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8, !dbg !151876
  %.not = icmp eq ptr %.pr, null, !dbg !151876
  br i1 %.not, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.n, !dbg !151973

bb.n:                                             ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !151974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !151974
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !151975
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !151975, !noundef !4872
  store ptr %i.bv, ptr %i.p, align 8, !dbg !151976
  %i.bw = getelementptr inbounds nuw i8, ptr %i.al, i64 4, !dbg !151977
  br i1 %i.ao, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !dbg !151978

bb.o:                                             ; preds = %bb.n
  %i.bx = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !151979
  %i.by = and i64 %i.bx, 9223372036854775807, !dbg !151980
  %i.bz = icmp eq i64 %i.by, 0, !dbg !151980
  br i1 %i.bz, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !dbg !151980, !prof !5231

bb.p:                                             ; preds = %bb.o
  %i.ca = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #58
          to label %.noexc11 unwind label %.loopexit.split-lp, !dbg !151981

.noexc11:                                         ; preds = %bb.p
  br i1 %i.ca, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q, !dbg !151982

bb.q:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bw monotonic, align 4, !dbg !151983
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !151984

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %.noexc11, %bb.o, %bb.n
  %i.cb = atomicrmw xchg ptr %i.al, i32 0 release, align 4, !dbg !151985
  %i.cc = icmp eq i32 %i.cb, 2, !dbg !151986
  br i1 %i.cc, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit, !dbg !151986, !prof !4934

bb.r:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp, !dbg !151987

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseeLknQCOKOd_13polars_python.exit, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !151988
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 104, !dbg !151989
  %i.ce = load i8, ptr %i.cd, align 8, !dbg !151989, !range !5133, !noundef !4872
  %i.cf = trunc nuw i8 %i.ce to i1, !dbg !151989
  br i1 %i.cf, label %bb.bc, label %bb.ag, !dbg !151989

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.invoke, %bb.p, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151884), !dbg !151988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151885), !dbg !151990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151886), !dbg !151991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151887), !dbg !151992
  %i.cg = load ptr, ptr %i.j, align 8, !dbg !151993, !alias.scope !151888, !nonnull !4872, !noundef !4872
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !dbg !151994, !noalias !151888
  %i.ci = icmp eq i64 %i.ch, 1, !dbg !151995
  br i1 %i.ci, label %bb.t, label %common.resume, !dbg !151995

bb.t:                                             ; preds = %bb.s
  fence acquire, !dbg !151996
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #58
          to label %common.resume unwind label %bb.af, !dbg !151997

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  %.val8 = load ptr, ptr %i.p, align 8, !dbg !151998, !noundef !4872 ; 11 uses
  %i.cj = icmp eq ptr %.val8, null, !dbg !151999
  br i1 %i.cj, label %bb.ab, label %bb.u, !dbg !151999

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.val8, i64 49, !dbg !152000
  %i.cl = load i8, ptr %i.ck, align 1, !dbg !152000, !range !5133, !noalias !151889, !noundef !4872
  %i.cm = trunc nuw i8 %i.cl to i1, !dbg !152000
  br i1 %i.cm, label %bb.y, label %bb.v, !dbg !152000

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 48 ; 2 uses
  %i.co = load atomic i8, ptr %i.cn acquire, align 1, !dbg !152001, !noalias !151889
  %i.cp = icmp eq i8 %i.co, 0, !dbg !152002
  br i1 %i.cp, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i, !dbg !152002

.lr.ph.i.i14:                                     ; preds = %bb.v, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.ct, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.cq = icmp ult i32 %.sroa.0.02.i.i, 7, !dbg !152003
  br i1 %i.cq, label %bb.x, label %bb.w, !dbg !152003

bb.w:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit, !dbg !152004

bb.x:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0, !dbg !152005
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !152006

.lr.ph.i.i.i.preheader:                           ; preds = %bb.x
  %i.cr = mul nuw nsw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i, !dbg !152007 ; 2 uses
  %xtraiter = and i32 %i.cr, 7, !dbg !152006      ; 3 uses
  %i.cs = icmp ult i32 %.sroa.0.02.i.i, 3, !dbg !152006
  br i1 %i.cs, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !152006

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.cr, 56, !dbg !152006
  br label %.lr.ph.i.i.i, !dbg !152006

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  %niter.next.7 = add i32 %niter, 8, !dbg !152006 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !152006
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !152006

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !152006
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !152006

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0, !dbg !152006
  tail call void @llvm.assume(i1 %lcmp.mod92), !dbg !152006
  br label %.lr.ph.i.i.i.epil, !dbg !152006

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !152008, !noalias !151889
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !152006 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !152006
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !152006, !llvm.loop !151660

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.w, %bb.x
  %i.ct = add i32 %.sroa.0.02.i.i, 1, !dbg !152009
  %i.cu = load atomic i8, ptr %i.cn acquire, align 1, !dbg !152001, !noalias !151889
  %i.cv = icmp eq i8 %i.cu, 0, !dbg !152002
  br i1 %i.cv, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i, !dbg !152002

_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.v
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 8, !dbg !152010, !noalias !151889 ; 2 uses
  store i64 -9223372036854775806, ptr %.val8, align 8, !dbg !152011, !noalias !151889
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775806, !dbg !152012
  br i1 %.not.i, label %.invoke, label %bb.z, !dbg !152013, !prof !4934

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 8, !dbg !152014, !noalias !151889 ; 2 uses
  store i64 -9223372036854775806, ptr %.val8, align 8, !dbg !152015, !noalias !151889
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775806, !dbg !152016
  br i1 %.not11.i, label %.invoke, label %bb.aa, !dbg !152017, !prof !4934

.invoke:                                          ; preds = %bb.y, %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i
  %i.cw = phi ptr [ @458, %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i ], [ @459, %bb.y ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw) #59
          to label %.cont unwind label %.loopexit.split-lp, !dbg !152018

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10wait_readyBZ_.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8, !dbg !152010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.56.0..sroa_idx.i, i64 40, i1 false), !dbg !152019
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 56, i64 noundef 8) #50, !dbg !152020, !noalias !151889
  br label %bb.ac, !dbg !152021

bb.aa:                                            ; preds = %bb.y
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8, !dbg !152014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, i64 40, i1 false), !dbg !152022
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 48, !dbg !152023
  store atomic i8 1, ptr %i.cx release, align 8, !dbg !152024, !noalias !151889
  br label %bb.ac, !dbg !152021

bb.ab:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !152025
  store i8 1, ptr %i.cy, align 8, !dbg !152025
  store i64 -9223372036854775806, ptr %0, align 8, !dbg !152025
  br label %bb.ad, !dbg !152026

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.aa ], [ %.sroa.04.0.copyload.i, %bb.z ]
  store i64 %.sroa.032.0.ph, ptr %0, align 8, !dbg !152027
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !152027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false), !dbg !152027
  br label %bb.ad, !dbg !152028

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151894), !dbg !151988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151895), !dbg !152029
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151896), !dbg !152030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151897), !dbg !152031
  %i.cz = load ptr, ptr %i.j, align 8, !dbg !152032, !alias.scope !151898, !nonnull !4872, !noundef !4872
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !dbg !152033, !noalias !151898
  %i.db = icmp eq i64 %i.da, 1, !dbg !152034
  br i1 %i.db, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit20, !dbg !152034

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !152035
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #58, !dbg !152036
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit20, !dbg !152036

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseeLknQCOKOd_13polars_python.exit20: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !151988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !151988
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseeLknQCOKOd_13polars_python.exit25, !dbg !152037

bb.af:                                            ; preds = %bb.t, %bb.bi
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !152038
  unreachable, !dbg !152038

bb.ag:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151900), !dbg !152039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !152040, !noalias !151901
  store ptr %i.m, ptr %i.h, align 8, !dbg !152041, !noalias !151900
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !152041
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !dbg !152041, !noalias !151900
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !152041
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !dbg !152041, !noalias !151900
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !152041 ; 3 uses
  store ptr %i.al, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !152041, !noalias !151900
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !152041 ; 5 uses
  store i8 %i.an, ptr %.sroa.950.0..sroa_idx, align 8, !dbg !152041, !noalias !151900
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !152042
  %i.dd = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL), !dbg !152043 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !152044
  %i.df = load i8, ptr %i.de, align 8, !dbg !152045, !range !5323, !noalias !151902, !noundef !4872
  %i.dg = icmp eq i8 %i.df, 1, !dbg !152046
  br i1 %i.dg, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !152046, !prof !5231

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ag
  %i.dh = invoke noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.dd, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.av, !dbg !152047, !noalias !151901 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i
  %i.di = icmp eq ptr %i.dh, null, !dbg !152048
  br i1 %i.di, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4w_EB3w_.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !152048

_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %.noexc.i, %bb.ag
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dh, %.noexc.i ], [ %i.dd, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !152049, !noalias !151903
  %i.dj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !152050, !noalias !151904, !noundef !4872 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !dbg !152051, !noalias !151904
  %.not.i.i.i21 = icmp eq ptr %i.dj, null, !dbg !152052
  br i1 %.not.i.i.i21, label %bb.ah, label %bb.ao, !dbg !152053, !prof !4934

bb.ah:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !152054, !noalias !151904
  %i.dk = invoke noundef nonnull ptr @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.ai unwind label %bb.av, !dbg !152054, !noalias !151901 ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.dk, ptr %i.f, align 8, !dbg !152054, !noalias !151904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !152055, !noalias !151904
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !dbg !152056, !noalias !151904
  store ptr %i.m, ptr %i.c, align 8, !dbg !152057, !noalias !151900
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !152057
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !dbg !152057, !noalias !151900
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !152057
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !dbg !152057, !noalias !151900
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !152057
  store ptr %i.al, ptr %.sroa.8.0..sroa_idx48, align 8, !dbg !152057, !noalias !151900
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !152057
  store i8 %i.an, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !dbg !152057, !noalias !151904
  invoke fastcc void @_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0B12_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.dk)
          to label %bb.al unwind label %bb.aj, !dbg !152058, !noalias !151903

bb.aj:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !dbg !152059, !noalias !151905
  %i.dn = icmp eq i64 %i.dm, 1, !dbg !152060
  br i1 %i.dn, label %bb.ak, label %.body.i, !dbg !152060

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !152061
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58
          to label %.body.i unwind label %bb.an, !dbg !152062, !noalias !151904

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !152055, !noalias !151904
  %i.do = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !dbg !152063, !noalias !151906
  %i.dp = icmp eq i64 %i.do, 1, !dbg !152064
  br i1 %i.dp, label %bb.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit24.i.i.i, !dbg !152064

bb.am:                                            ; preds = %bb.al
  fence acquire, !dbg !152065
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit24.i.i.i unwind label %bb.av, !dbg !152066, !noalias !151901

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECseeLknQCOKOd_13polars_python.exit24.i.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !152067, !noalias !151904
  br label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4w_EB3w_.exit.i, !dbg !152067

bb.an:                                            ; preds = %bb.au, %bb.as, %bb.ak
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries18___pymethod_eq_u8__:bb.a

.thread65:                                        ; preds = %.noexc22
  %.sroa.10.8..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !163127
  %i.an = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx42, align 8, !dbg !163127, !noalias !163075
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx42.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !163127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx42.sroa_idx, i64 40, i1 false), !dbg !163127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163128, !noalias !163073
  br label %bb.m, !dbg !163120

bb.m:                                             ; preds = %.thread65, %bb.k
  %.sroa.5.0 = phi ptr [ %i.ah, %bb.k ], [ %.sroa.5.8.copyload40, %.thread65 ], !dbg !163129
  %i.ao = phi <2 x ptr> [ %i.ag, %bb.k ], [ %i.an, %.thread65 ], !dbg !163129
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163130
  store ptr %.sroa.5.0, ptr %i.ap, align 8, !dbg !163130
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !163130
  store <2 x ptr> %i.ao, ptr %.sroa.550.0..sroa_idx, align 8, !dbg !163130
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !163130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.752.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6, i64 40, i1 false), !dbg !163130
  br label %bb.o, !dbg !163131

bb.n:                                             ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163128, !noalias !163073
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163132
  store ptr %.sroa.5.8.copyload40, ptr %i.aq, align 8, !dbg !163132
  br label %bb.o, !dbg !163133

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge = phi i64 [ 0, %bb.n ], [ 1, %bb.m ], !dbg !163134
  store i64 %storemerge, ptr %0, align 8, !dbg !163134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !163118
  %i.ar = load ptr, ptr %i.i, align 8, !dbg !163135, !alias.scope !163076, !noundef !4872
  %i.as = icmp eq ptr %i.ar, null, !dbg !163135
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit23, label %bb.p, !dbg !163135

bb.p:                                             ; preds = %bb.o
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i), !dbg !163136
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit23, !dbg !163135

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit23: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !163085
  br label %bb.q, !dbg !163137

bb.q:                                             ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !163079
  ret void, !dbg !163137

bb.r:                                             ; preds = %bb.h, %bb.f
  store i64 1, ptr %0, align 8, !dbg !163138
  %i.at = load ptr, ptr %i.i, align 8, !dbg !163139, !alias.scope !163078, !noundef !4872
  %i.au = icmp eq ptr %i.at, null, !dbg !163139
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24, label %bb.s, !dbg !163139

bb.s:                                             ; preds = %bb.r
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i), !dbg !163140
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24, !dbg !163139

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit24: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !163085
  br label %bb.q, !dbg !163084

bb.t:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !163141
  unreachable, !dbg !163141

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %i.s, !dbg !163141
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_6SenderNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4sendBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !163142 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 17 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [56 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [56 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !163786
  %i.ac = load i64, ptr %1, align 8, !dbg !163787, !range !5010, !noundef !4872
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !163787
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !163788, !noundef !4872 ; 17 uses
  switch i64 %i.ac, label %default.unreachable59 [
    i64 0, label %bb.b
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ], !dbg !163786

default.unreachable59:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !163789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !163789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163699), !dbg !163790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163700), !dbg !163790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.af, align 8, !noalias !163701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !163791, !noalias !163701
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !163792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false), !dbg !163792, !noalias !163701
  %i.aj = load atomic i64, ptr %i.ah monotonic, align 8, !dbg !163793, !noalias !163702 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 16, !dbg !163794, !noalias !163702, !noundef !4872 ; 2 uses
  %i.al = and i64 %i.ak, %i.aj, !dbg !163795
  %i.am = icmp eq i64 %i.al, 0, !dbg !163795
  br i1 %i.am, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i, !dbg !163795

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 392 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ar = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %.lr.ph.i.i, !dbg !163795

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.i.lr.ph.i
  %i.at = phi i64 [ %i.ak, %.lr.ph.i.lr.ph.i ], [ %i.dt, %bb.ag ]
  %i.au = phi i64 [ %i.aj, %.lr.ph.i.lr.ph.i ], [ %i.ds, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !163703), !dbg !163796
  br label %bb.c, !dbg !163795

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, %.lr.ph.i.i
  %i.av = phi i64 [ %i.at, %.lr.ph.i.i ], [ %i.cb, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ]
  %.sroa.02.033.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.ca, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ] ; 8 uses
  %.sroa.0.02832.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i ] ; 14 uses
  %i.aw = add i64 %i.av, -1, !dbg !163797
  %i.ax = and i64 %i.aw, %.sroa.02.033.i.i, !dbg !163798 ; 3 uses
  %i.ay = load i64, ptr %i.an, align 8, !dbg !163799, !noalias !163704, !noundef !4872
  %i.az = sub i64 0, %i.ay, !dbg !163800
  %i.ba = and i64 %.sroa.02.033.i.i, %i.az, !dbg !163801
  %i.bb = load ptr, ptr %i.ao, align 8, !dbg !163802, !noalias !163704, !nonnull !4872, !noundef !4872
  %i.bc = load i64, ptr %i.ap, align 16, !dbg !163802, !noalias !163704, !noundef !4872
  %i.bd = icmp ult i64 %i.ax, %i.bc, !dbg !163803
  call void @llvm.assume(i1 %i.bd), !dbg !163804
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.bb, i64 %i.ax, !dbg !163805 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !163806
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8, !dbg !163807, !noalias !163704 ; 2 uses
  %i.bh = icmp eq i64 %.sroa.02.033.i.i, %i.bg, !dbg !163808
  br i1 %i.bh, label %bb.e, label %bb.d, !dbg !163808

bb.d:                                             ; preds = %bb.c
  %i.bi = load i64, ptr %i.an, align 8, !dbg !163809, !noalias !163704, !noundef !4872
  %i.bj = add i64 %i.bi, %i.bg, !dbg !163810
  %i.bk = add i64 %.sroa.02.033.i.i, 1, !dbg !163811
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !163812
  br i1 %i.bl, label %bb.i, label %bb.f, !dbg !163812

bb.e:                                             ; preds = %bb.c
  %i.bm = add nuw i64 %i.ax, 1, !dbg !163813
  %i.bn = load i64, ptr %i.aq, align 128, !dbg !163814, !noalias !163704, !noundef !4872
  %i.bo = icmp ult i64 %i.bm, %i.bn, !dbg !163813
  br i1 %i.bo, label %bb.l, label %bb.k, !dbg !163813

bb.f:                                             ; preds = %bb.d
  %i.bp = icmp ult i32 %.sroa.0.02832.i.i, 7, !dbg !163815
  br i1 %i.bp, label %bb.h, label %bb.g, !dbg !163815

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.body.thread29.loopexit.i, !dbg !163816, !noalias !163701

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !163817
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !163818

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bq = mul nuw nsw i32 %.sroa.0.02832.i.i, %.sroa.0.02832.i.i, !dbg !163819 ; 2 uses
  %xtraiter = and i32 %i.bq, 7, !dbg !163818      ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !163818
  br i1 %i.br, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !163818

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.bq, 56, !dbg !163818
  br label %.lr.ph.i.i.i, !dbg !163818

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  %niter.next.7 = add i32 %niter, 8, !dbg !163818 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !163818
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !163818

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !163818
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !163818

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0, !dbg !163818
  call void @llvm.assume(i1 %lcmp.mod104), !dbg !163818
  br label %.lr.ph.i.i.i.epil, !dbg !163818

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !163820, !noalias !163704
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !163818 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !163818
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !163818, !llvm.loop !163185

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  %i.bs = add i32 %.sroa.0.02832.i.i, 1, !dbg !163821
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !163822

bb.i:                                             ; preds = %bb.d
  fence seq_cst, !dbg !163823
  %i.bt = load atomic i64, ptr %i.ae monotonic, align 16, !dbg !163824, !noalias !163704
  %i.bu = load i64, ptr %i.an, align 8, !dbg !163825, !noalias !163704, !noundef !4872
  %i.bv = add i64 %i.bu, %i.bt, !dbg !163826
  %i.bw = icmp eq i64 %i.bv, %.sroa.02.033.i.i, !dbg !163827
  br i1 %i.bw, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i, label %bb.j, !dbg !163827

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6), !dbg !163828 ; 2 uses
  %i.bx = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !163829 ; 2 uses
  %.not.i11.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !163830
  br i1 %.not.i11.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, label %.lr.ph.i12.i.i.preheader, !dbg !163831

.lr.ph.i12.i.i.preheader:                         ; preds = %bb.j
  %xtraiter105 = and i32 %i.bx, 5, !dbg !163831   ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !163831
  br i1 %i.by, label %.lr.ph.i12.i.i.epil.preheader, label %.lr.ph.i12.i.i.preheader.new, !dbg !163831

.lr.ph.i12.i.i.preheader.new:                     ; preds = %.lr.ph.i12.i.i.preheader
  %unroll_iter109 = and i32 %i.bx, 56, !dbg !163831
  br label %.lr.ph.i12.i.i, !dbg !163831

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i12.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0, !dbg !163831
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil.preheader, !dbg !163831

.lr.ph.i12.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0, !dbg !163831
  call void @llvm.assume(i1 %lcmp.mod108), !dbg !163831
  br label %.lr.ph.i12.i.i.epil, !dbg !163831

.lr.ph.i12.i.i.epil:                              ; preds = %.lr.ph.i12.i.i.epil, %.lr.ph.i12.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i12.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i12.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  %epil.iter106.next = add i32 %epil.iter106, 1, !dbg !163831 ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105, !dbg !163831
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil, !dbg !163831, !llvm.loop !163199

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i12.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bz = add i32 %.sroa.0.02832.i.i, 1, !dbg !163833
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !163834

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i, %.lr.ph.i12.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i12.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i12.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163832, !noalias !163704
  %niter110.next.7 = add i32 %niter110, 8, !dbg !163831 ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109, !dbg !163831
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i, !dbg !163831

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i: ; preds = %._crit_edge.loopexit.i20.i.i, %bb.n, %._crit_edge.loopexit.i.i.i, %bb.j, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 1, %bb.n ], [ %i.ck, %._crit_edge.loopexit.i20.i.i ], [ %i.bz, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.j ], !dbg !163835
  %i.ca = load atomic i64, ptr %i.ah monotonic, align 16, !dbg !163836, !noalias !163704 ; 2 uses
  %i.cb = load i64, ptr %i.ai, align 16, !dbg !163794, !noalias !163704, !noundef !4872 ; 2 uses
  %i.cc = and i64 %i.cb, %i.ca, !dbg !163795
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !163795
  br i1 %i.cd, label %bb.c, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.i, !dbg !163795

bb.k:                                             ; preds = %bb.e
  %i.ce = load i64, ptr %i.an, align 8, !dbg !163837, !noalias !163704, !noundef !4872
  %i.cf = add i64 %i.ce, %i.ba, !dbg !163838
  br label %bb.m, !dbg !163839

bb.l:                                             ; preds = %bb.e
  %i.cg = add i64 %.sroa.02.033.i.i, 1, !dbg !163840
  br label %bb.m, !dbg !163839

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.01.0.i.i = phi i64 [ %i.cg, %bb.l ], [ %i.cf, %bb.k ], !dbg !163835
  %i.ch = cmpxchg weak ptr %i.ah, i64 %.sroa.02.033.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !dbg !163841, !noalias !163704
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ch, 1, !dbg !163842
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.thread.i, label %bb.n, !dbg !163843

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6), !dbg !163844 ; 2 uses
  %i.ci = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i, %.sroa.0.0.i.i15.i.i, !dbg !163845 ; 2 uses
  %.not.i16.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0, !dbg !163846
  br i1 %.not.i16.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, label %.lr.ph.i17.i.i.preheader, !dbg !163847

.lr.ph.i17.i.i.preheader:                         ; preds = %bb.n
  %xtraiter111 = and i32 %i.ci, 5, !dbg !163847   ; 3 uses
  %i.cj = icmp ult i32 %.sroa.0.02832.i.i, 3, !dbg !163847
  br i1 %i.cj, label %.lr.ph.i17.i.i.epil.preheader, label %.lr.ph.i17.i.i.preheader.new, !dbg !163847

.lr.ph.i17.i.i.preheader.new:                     ; preds = %.lr.ph.i17.i.i.preheader
  %unroll_iter115 = and i32 %i.ci, 56, !dbg !163847
  br label %.lr.ph.i17.i.i, !dbg !163847

._crit_edge.loopexit.i20.i.i.unr-lcssa:           ; preds = %.lr.ph.i17.i.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0, !dbg !163847
  br i1 %lcmp.mod113.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil.preheader, !dbg !163847

.lr.ph.i17.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i20.i.i.unr-lcssa, %.lr.ph.i17.i.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0, !dbg !163847
  call void @llvm.assume(i1 %lcmp.mod114), !dbg !163847
  br label %.lr.ph.i17.i.i.epil, !dbg !163847

.lr.ph.i17.i.i.epil:                              ; preds = %.lr.ph.i17.i.i.epil, %.lr.ph.i17.i.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i17.i.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i17.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  %epil.iter112.next = add i32 %epil.iter112, 1, !dbg !163847 ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111, !dbg !163847
  br i1 %epil.iter112.cmp.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil, !dbg !163847, !llvm.loop !163216

._crit_edge.loopexit.i20.i.i:                     ; preds = %.lr.ph.i17.i.i.epil, %._crit_edge.loopexit.i20.i.i.unr-lcssa
  %i.ck = add i32 %.sroa.0.02832.i.i, 1, !dbg !163849
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i, !dbg !163850

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  call void @llvm.x86.sse2.pause(), !dbg !163848, !noalias !163704
  %niter116.next.7 = add i32 %niter116, 8, !dbg !163847 ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115, !dbg !163847
  br i1 %niter116.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i, !dbg !163847

.body.thread29.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread29.loopexit.split-lp.i:               ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4send0uEs_0uEB3w_.exit.i.i, %bb.aa, %bb.v, %bb.q, %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.o
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_sendB10_.exit.i: ; preds = %bb.i
  %i.cl = load i32, ptr %i.af, align 8, !dbg !163851, !range !5870, !noalias !163701, !noundef !4872 ; 2 uses
  %.not.i = icmp eq i32 %i.cl, 1000000000, !dbg !163851
  br i1 %.not.i, label %bb.p, label %bb.o, !dbg !163852

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE5writeB10_.exit.thread.i: ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr %i.be, ptr %i.v, align 8, !dbg !163853, !alias.scope !163703, !noalias !163701
  %i.cn = add i64 %.sroa.02.033.i.i, 1, !dbg !163854 ; 2 uses
  store i64 %i.cn, ptr %i.ag, align 8, !dbg !163854, !alias.scope !163703, !noalias !163701
  %.sroa.018.0.copyload34.i = load i64, ptr %i.aa, align 8, !dbg !163855, !alias.scope !163700, !noalias !163699
  %.sroa.5.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !163855
  store i64 %.sroa.018.0.copyload34.i, ptr %i.be, align 8, !dbg !163856, !noalias !163707
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !163856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx35.i, i64 40, i1 false), !dbg !163856, !noalias !163699
  store atomic i64 %i.cn, ptr %i.cm release, align 8, !dbg !163857, !noalias !163708
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 320, !dbg !163858
  call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.co) #55, !dbg !163859, !noalias !163701
  br label %bb.ai, !dbg !163860
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtBa_6series8PySeries26___pymethod_to_numpy_view__:bb.a
  br i1 %.sroa.18.0.in.i.i, label %.noexc19, label %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !dbg !220073, !prof !6016

_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %bb.h
  %i.u = invoke noundef zeroext i1 @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.n, i1 noundef zeroext false, i64 undef, i32 noundef 1000000000)
          to label %.noexc19 unwind label %bb.e, !dbg !220074 ; 0 uses

.noexc19:                                         ; preds = %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !220075
  call void @llvm.experimental.noalias.scope.decl(metadata !220040), !dbg !220076
  %i.w = load ptr, ptr %i.v, align 8, !dbg !220077, !alias.scope !220040, !nonnull !4872, !noundef !4872 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !220077
  %i.y = load ptr, ptr %i.x, align 8, !dbg !220077, !alias.scope !220040, !nonnull !4872, !align !5241, !noundef !4872 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !220078
  %i.aa = load i64, ptr %i.z, align 8, !dbg !220078, !range !5152, !invariant.load !4872, !noalias !220040
  %i.ab = add nsw i64 %i.aa, -1, !dbg !220078
  %i.ac = and i64 %i.ab, -16, !dbg !220078
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac, !dbg !220078
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !220078 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 304, !dbg !220079
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !220079, !invariant.load !4872, !noalias !220040, !nonnull !4872
  %i.ah = invoke noundef nonnull align 16 ptr %i.ag(ptr noundef nonnull %i.ae) #55
          to label %.noexc.i unwind label %bb.m, !dbg !220080, !inline_history !3308

.noexc.i:                                         ; preds = %.noexc19
  %i.ai = invoke noundef zeroext i1 @_RNvNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy5utils19dtype_supports_view(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ah)
          to label %.noexc14.i unwind label %bb.m, !dbg !220081

.noexc14.i:                                       ; preds = %.noexc.i
  br i1 %i.ai, label %bb.i, label %bb.q, !dbg !220081

bb.i:                                             ; preds = %.noexc14.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 328, !dbg !220082
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !220082, !invariant.load !4872, !noalias !220041, !nonnull !4872
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull %i.ae) #55
          to label %.noexc15.i unwind label %bb.m, !dbg !220083, !inline_history !3308

.noexc15.i:                                       ; preds = %bb.i
  %i.am = icmp ugt i64 %i.al, 1, !dbg !220082
  br i1 %i.am, label %bb.q, label %bb.j, !dbg !220084

bb.j:                                             ; preds = %.noexc15.i
  %i.an = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !dbg !220085, !noalias !220041
  %i.ao = icmp slt i64 %i.an, 0, !dbg !220086
  br i1 %i.ao, label %bb.k, label %bb.l, !dbg !220086

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap(), !dbg !220087
  unreachable, !dbg !220087

bb.l:                                             ; preds = %bb.j
  %i.ap = invoke fastcc noundef nonnull ptr @_RNvNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_series30series_to_numpy_view_recursive(ptr noundef nonnull %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.y, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.m, !dbg !220088 ; 3 uses

bb.m:                                             ; preds = %bb.l, %bb.i, %.noexc.i, %.noexc19
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %i.n, i64 16 release, align 8, !dbg !220089
  %i.as = and i64 %i.ar, -14, !dbg !220090
  %i.at = icmp eq i64 %i.as, 18, !dbg !220090
  br i1 %i.at, label %bb.n, label %.body, !dbg !220090, !prof !4934

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.n)
          to label %.body unwind label %bb.t, !dbg !220091

bb.o:                                             ; preds = %bb.l
  %i.au = atomicrmw sub ptr %i.n, i64 16 release, align 8, !dbg !220092
  %i.av = and i64 %i.au, -14, !dbg !220093
  %i.aw = icmp eq i64 %i.av, 18, !dbg !220093
  br i1 %i.aw, label %bb.p, label %_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit, !dbg !220093, !prof !4934

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.n)
          to label %_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit unwind label %bb.s, !dbg !220094

bb.q:                                             ; preds = %.noexc15.i, %.noexc14.i
  %i.ax = atomicrmw sub ptr %i.n, i64 16 release, align 8, !dbg !220095
  %i.ay = and i64 %i.ax, -14, !dbg !220096
  %i.az = icmp eq i64 %i.ay, 18, !dbg !220096
  br i1 %i.az, label %bb.r, label %bb.u, !dbg !220096, !prof !4934

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.n)
          to label %bb.u unwind label %bb.e, !dbg !220097

bb.s:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python(ptr nonnull %i.ap) #56
          to label %.body unwind label %bb.t, !dbg !220098

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !220099
  unreachable, !dbg !220099

bb.u:                                             ; preds = %bb.q, %bb.r
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !220100, !noalias !220042
  br label %_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit, !dbg !220101

_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit: ; preds = %bb.o, %bb.p, %bb.u
  %.sroa.02.0.i.i.i = phi ptr [ @_Py_NoneStruct, %bb.u ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], !dbg !220102
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !220103
  store ptr %.sroa.02.0.i.i.i, ptr %i.bc, align 8, !dbg !220103
  store i64 0, ptr %0, align 8, !dbg !220104
  %i.bd = load ptr, ptr %i.b, align 8, !dbg !220105, !alias.scope !220048, !noundef !4872
  %i.be = icmp eq ptr %i.bd, null, !dbg !220105
  br i1 %i.be, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18.sink.split, !dbg !220105

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18.sink.split: ; preds = %_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit, %bb.g
  call void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !220106
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18, !dbg !220049

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit18.sink.split, %_RNvMNtNtNtCseeLknQCOKOd_13polars_python7interop5numpy15to_numpy_seriesNtNtB8_6series8PySeries13to_numpy_view.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !220049
  ret void, !dbg !220107

bb.v:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !220108
  unreachable, !dbg !220108

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit: ; preds = %.body, %bb.f
  %eh.lpad-body29 = phi { ptr, i32 } [ %eh.lpad-body.ph, %.body ], [ %eh.lpad-body28, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body29, !dbg !220108
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20disconnect_receiversCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !220109 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !220158 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !220158, !noundef !4872
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !220159
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !220160 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !dbg !220161, !noundef !4872 ; 2 uses
  %i.f = and i64 %i.e, %i.d, !dbg !220162
  %i.g = icmp eq i64 %i.f, 0, !dbg !220162        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !220162

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !220163
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #55, !dbg !220164
  %.pre = load i64, ptr %i.a, align 16, !dbg !220165
  br label %bb.c, !dbg !220166

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ], !dbg !220165 ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128, !dbg !220167
  %i.k = xor i64 %i.i, -1, !dbg !220168
  %i.l = and i64 %i.d, %i.k, !dbg !220169
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d, !dbg !220170

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !220171
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !220172 ; 8 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !220173 ; 5 uses
  %i.r = add i64 %i.q, -1, !dbg !220174
  %i.s = and i64 %.sroa.0.0.i, %i.r, !dbg !220175 ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !dbg !220176, !noundef !4872
  %i.u = sub i64 0, %i.t, !dbg !220177
  %i.v = and i64 %.sroa.0.0.i, %i.u, !dbg !220178
  %i.w = load ptr, ptr %i.n, align 8, !dbg !220179, !nonnull !4872, !noundef !4872
  %i.x = load i64, ptr %i.o, align 32, !dbg !220179, !noundef !4872
  %i.y = icmp ult i64 %i.s, %i.x, !dbg !220180
  tail call void @llvm.assume(i1 %i.y), !dbg !220181
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %i.s, !dbg !220182 ; 3 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8, !dbg !220183 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1, !dbg !220184
  %i.ac = icmp eq i64 %i.ab, %i.aa, !dbg !220184
  br i1 %i.ac, label %bb.f, label %bb.e, !dbg !220184

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i, !dbg !220185
  br i1 %i.ad, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCseeLknQCOKOd_13polars_python.exit, label %bb.g, !dbg !220185

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1, !dbg !220186
  %i.af = load i64, ptr %i.p, align 128, !dbg !220187, !noundef !4872
  %i.ag = icmp ult i64 %i.ae, %i.af, !dbg !220186
  br i1 %i.ag, label %bb.k, label %bb.j, !dbg !220186

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7, !dbg !220188
  br i1 %i.ah, label %bb.i, label %bb.h, !dbg !220188

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !220189
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !220189

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0, !dbg !220190
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !220191

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw nsw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !220192 ; 2 uses
  %xtraiter = and i32 %i.ai, 7, !dbg !220191      ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3, !dbg !220191
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !220191

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56, !dbg !220191
  br label %.lr.ph.i.i, !dbg !220191

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  %niter.next.7 = add i32 %niter, 8, !dbg !220191 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !220191
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !220191

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !220191
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !220191

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0, !dbg !220191
  tail call void @llvm.assume(i1 %lcmp.mod2), !dbg !220191
  br label %.lr.ph.i.i.epil, !dbg !220191

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !220193
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !220191 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !220191
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !220191, !llvm.loop !220143

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1, !dbg !220194
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i, !dbg !220195

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.m, %bb.l, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.l ], [ %.sroa.0.07.i, %bb.m ], !dbg !220196
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.l ], [ %.sroa.05.0.i, %bb.m ], !dbg !220173
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !220171
  br label %bb.d, !dbg !220170

bb.j:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !dbg !220197, !noundef !4872
  %i.am = add i64 %i.al, %i.v, !dbg !220198
  br label %bb.k, !dbg !220199

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.j ], [ %i.aa, %bb.f ], !dbg !220200 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !220201 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !dbg !220202, !range !5364, !alias.scope !220157, !noundef !4872
  %i.ap = icmp eq i64 %i.ao, 18, !dbg !220202
  br i1 %i.ap, label %bb.l, label %bb.m, !dbg !220202

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !220202
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.aq), !dbg !220202
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i, !dbg !220202

bb.m:                                             ; preds = %bb.k
  tail call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.an), !dbg !220202
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit.i, !dbg !220202

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE20discard_all_messagesCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !220203
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE18disconnect_sendersB10_(ptr noundef nonnull align 128 %0) unnamed_addr #1 !dbg !220204 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !220214 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !220214, !noundef !4872
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !220215
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !220216
  %i.e = load i64, ptr %i.a, align 16, !dbg !220217, !noundef !4872
  %i.f = and i64 %i.e, %i.d, !dbg !220218
  %i.g = icmp eq i64 %i.f, 0, !dbg !220218        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !220218

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !220219
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #55, !dbg !220220
  br label %bb.c, !dbg !220221

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g, !dbg !220222
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20disconnect_receiversB10_(ptr noundef nonnull align 128 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !220223 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !220281 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !dbg !220281, !noundef !4872
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !220282
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8, !dbg !220283 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !dbg !220284, !noundef !4872 ; 2 uses
  %i.f = and i64 %i.e, %i.d, !dbg !220285
  %i.g = icmp eq i64 %i.f, 0, !dbg !220285        ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !220285

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !220286
  tail call fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #55, !dbg !220287
  %.pre = load i64, ptr %i.a, align 16, !dbg !220288
  br label %bb.c, !dbg !220289

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ], !dbg !220288 ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128, !dbg !220290
  %i.k = xor i64 %i.i, -1, !dbg !220291
  %i.l = and i64 %i.d, %i.k, !dbg !220292
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d, !dbg !220293

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i ], !dbg !220294
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i ], !dbg !220295 ; 8 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i ], !dbg !220296 ; 5 uses
  %i.r = add i64 %i.q, -1, !dbg !220297
  %i.s = and i64 %.sroa.0.0.i, %i.r, !dbg !220298 ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !dbg !220299, !noundef !4872
  %i.u = sub i64 0, %i.t, !dbg !220300
  %i.v = and i64 %.sroa.0.0.i, %i.u, !dbg !220301
  %i.w = load ptr, ptr %i.n, align 8, !dbg !220302, !nonnull !4872, !noundef !4872
  %i.x = load i64, ptr %i.o, align 32, !dbg !220302, !noundef !4872
  %i.y = icmp ult i64 %i.s, %i.x, !dbg !220303
  tail call void @llvm.assume(i1 %i.y), !dbg !220304
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %i.s, !dbg !220305 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48, !dbg !220306
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8, !dbg !220307 ; 2 uses
  %i.ac = add i64 %.sroa.0.0.i, 1, !dbg !220308
  %i.ad = icmp eq i64 %i.ac, %i.ab, !dbg !220308
  br i1 %i.ad, label %bb.f, label %bb.e, !dbg !220308

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.l, %.sroa.0.0.i, !dbg !220309
  br i1 %i.ae, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20discard_all_messagesB10_.exit, label %bb.g, !dbg !220309

bb.f:                                             ; preds = %bb.d
  %i.af = add nuw i64 %i.s, 1, !dbg !220310
  %i.ag = load i64, ptr %i.p, align 128, !dbg !220311, !noundef !4872
  %i.ah = icmp ult i64 %i.af, %i.ag, !dbg !220310
  br i1 %i.ah, label %bb.k, label %bb.j, !dbg !220310

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp ult i32 %.sroa.0.07.i, 7, !dbg !220312
  br i1 %i.ai, label %bb.i, label %bb.h, !dbg !220312

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !220313
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !220313

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0, !dbg !220314
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !220315

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw nsw i32 %.sroa.0.07.i, %.sroa.0.07.i, !dbg !220316 ; 2 uses
  %xtraiter = and i32 %i.aj, 7, !dbg !220315      ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3, !dbg !220315
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !220315

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56, !dbg !220315
  br label %.lr.ph.i.i, !dbg !220315

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  %niter.next.7 = add i32 %niter, 8, !dbg !220315 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !220315
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !220315

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !220315
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !220315

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod7 = icmp ne i32 %xtraiter, 0, !dbg !220315
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !220315
  br label %.lr.ph.i.i.epil, !dbg !220315

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !220317
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !220315 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !220315
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !220315, !llvm.loop !220261

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1, !dbg !220318
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, !dbg !220319

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.07.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !220320
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.k ], [ %.sroa.05.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !220296
  %.pre.i = load i64, ptr %i.a, align 16, !dbg !220294
  br label %bb.d, !dbg !220293

bb.j:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !dbg !220321, !noundef !4872
  %i.an = add i64 %i.am, %i.v, !dbg !220322
  br label %bb.k, !dbg !220323

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.j ], [ %i.ab, %bb.f ], !dbg !220324 ; 2 uses
  %i.ao = load i64, ptr %i.z, align 8, !dbg !220325, !range !5362, !alias.scope !220280, !noundef !4872
  %switch.i.i = icmp slt i64 %i.ao, -9223372036854775806, !dbg !220325
  br i1 %switch.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, label %bb.l, !dbg !220325

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.m, !dbg !220326

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i unwind label %bb.n, !dbg !220327

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !220326
  unreachable, !dbg !220326

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i: ; preds = %bb.m
  resume { ptr, i32 } %i.ap, !dbg !220326

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.l
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z), !dbg !220328
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_.exit.i, !dbg !220329

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE20discard_all_messagesB10_.exit: ; preds = %bb.e
  ret i1 %i.g, !dbg !220330
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvB10_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !220331 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !220543
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !220579
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !dbg !220579
  br label %bb.b, !dbg !220580

bb.b:                                             ; preds = %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4recvs_0uEB1C_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !220544), !dbg !220581
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !220582

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ], !dbg !220583 ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !dbg !220584, !noalias !220544 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !dbg !220585, !noalias !220544, !noundef !4872
  %i.w = add i64 %i.v, -1, !dbg !220586
  %i.x = and i64 %i.w, %i.u, !dbg !220587         ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !dbg !220588, !noalias !220544, !noundef !4872
  %i.z = sub i64 0, %i.y, !dbg !220589
  %i.aa = and i64 %i.u, %i.z, !dbg !220590
  %i.ab = load ptr, ptr %i.o, align 8, !dbg !220591, !noalias !220544, !nonnull !4872, !noundef !4872
  %i.ac = load i64, ptr %i.p, align 32, !dbg !220591, !noalias !220544, !noundef !4872
  %i.ad = icmp ult i64 %i.x, %i.ac, !dbg !220592
  call void @llvm.assume(i1 %i.ad), !dbg !220593
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.x, !dbg !220594 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48, !dbg !220595
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !dbg !220596, !noalias !220544 ; 3 uses
  %i.ah = add i64 %i.u, 1, !dbg !220597
  %i.ai = icmp eq i64 %i.ah, %i.ag, !dbg !220597
  br i1 %i.ai, label %bb.d, label %bb.c, !dbg !220597

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u, !dbg !220598
  br i1 %i.aj, label %bb.h, label %bb.e, !dbg !220598

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ak = add nuw i64 %i.x, 1, !dbg !220599
  %i.al = load i64, ptr %i.r, align 128, !dbg !220600, !noalias !220544, !noundef !4872
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !220599
  br i1 %i.am, label %bb.l, label %bb.k, !dbg !220599

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.028.i, 7, !dbg !220601
  br i1 %i.an, label %bb.g, label %bb.f, !dbg !220601

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !220602, !noalias !220544
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !220602

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !220603
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !220604

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw nsw i32 %.sroa.0.028.i, %.sroa.0.028.i, !dbg !220605 ; 2 uses
  %xtraiter = and i32 %i.ao, 7, !dbg !220604      ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.028.i, 3, !dbg !220604
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !220604

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56, !dbg !220604
  br label %.lr.ph.i.i, !dbg !220604

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  %niter.next.7 = add i32 %niter, 8, !dbg !220604 ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !220604
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !220604

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !220604
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !220604

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0, !dbg !220604
  call void @llvm.assume(i1 %lcmp.mod65), !dbg !220604
  br label %.lr.ph.i.i.epil, !dbg !220604

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !220606, !noalias !220544
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !220604 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !220604
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !220604, !llvm.loop !220362

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.028.i, 1, !dbg !220607
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !220608

bb.h:                                             ; preds = %bb.c
  fence seq_cst, !dbg !220609
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !dbg !220610, !noalias !220544 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !dbg !220611, !noalias !220544, !noundef !4872 ; 2 uses
  %i.at = xor i64 %i.as, -1, !dbg !220612
  %i.au = and i64 %i.ar, %i.at, !dbg !220613
  %i.av = icmp eq i64 %i.au, %i.u, !dbg !220613
  br i1 %i.av, label %bb.j, label %bb.i, !dbg !220613

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !220614 ; 2 uses
  %i.aw = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !220615 ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !220616
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader, !dbg !220617

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter66 = and i32 %i.aw, 5, !dbg !220617    ; 3 uses
  %i.ax = icmp ult i32 %.sroa.0.028.i, 3, !dbg !220617
  br i1 %i.ax, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new, !dbg !220617

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %i.aw, 56, !dbg !220617
  br label %.lr.ph.i12.i, !dbg !220617

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0, !dbg !220617
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader, !dbg !220617

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0, !dbg !220617
  call void @llvm.assume(i1 %lcmp.mod69), !dbg !220617
  br label %.lr.ph.i12.i.epil, !dbg !220617

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  %epil.iter67.next = add i32 %epil.iter67, 1, !dbg !220617 ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66, !dbg !220617
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !dbg !220617, !llvm.loop !220375

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ay = add i32 %.sroa.0.028.i, 1, !dbg !220619
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !220620

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220618, !noalias !220544
  %niter71.next.7 = add i32 %niter71, 8, !dbg !220617 ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70, !dbg !220617
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i, !dbg !220617

bb.j:                                             ; preds = %bb.h
  %i.az = and i64 %i.as, %i.ar, !dbg !220621
  %i.ba = icmp eq i64 %i.az, 0, !dbg !220621
  br i1 %i.ba, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit.thread, !dbg !220621

bb.k:                                             ; preds = %bb.d
  %i.bb = load i64, ptr %i.n, align 8, !dbg !220622, !noalias !220544, !noundef !4872
  %i.bc = add i64 %i.bb, %i.aa, !dbg !220623
  br label %bb.l, !dbg !220624

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bc, %bb.k ], [ %i.ag, %bb.d ], !dbg !220625
  %i.bd = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !dbg !220626, !noalias !220544
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bd, 1, !dbg !220627
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m, !dbg !220628

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6), !dbg !220629 ; 2 uses
  %i.be = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i, !dbg !220630 ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0, !dbg !220631
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader, !dbg !220632

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter72 = and i32 %i.be, 5, !dbg !220632    ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.028.i, 3, !dbg !220632
  br i1 %i.bf, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new, !dbg !220632

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %i.be, 56, !dbg !220632
  br label %.lr.ph.i17.i, !dbg !220632

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0, !dbg !220632
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader, !dbg !220632

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0, !dbg !220632
  call void @llvm.assume(i1 %lcmp.mod75), !dbg !220632
  br label %.lr.ph.i17.i.epil, !dbg !220632

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  %epil.iter73.next = add i32 %epil.iter73, 1, !dbg !220632 ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72, !dbg !220632
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !dbg !220632, !llvm.loop !220391

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bg = add i32 %.sroa.0.028.i, 1, !dbg !220634
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, !dbg !220635

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.aq, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bg, %._crit_edge.loopexit.i20.i ], [ %i.ay, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, !dbg !220584

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  call void @llvm.x86.sse2.pause(), !dbg !220633, !noalias !220544
  %niter77.next.7 = add i32 %niter77, 8, !dbg !220632 ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76, !dbg !220632
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i, !dbg !220632

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE10start_recvB10_.exit: ; preds = %bb.j
  %i.bh = load i32, ptr %i.k, align 8, !dbg !220636, !range !5870, !noundef !4872 ; 2 uses
  %.not = icmp eq i32 %i.bh, 1000000000, !dbg !220636
  br i1 %.not, label %bb.r, label %bb.q, !dbg !220637

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.ae, ptr %i.i, align 8, !dbg !220638, !alias.scope !220544
  %i.bj = load i64, ptr %i.n, align 8, !dbg !220639, !noalias !220544, !noundef !4872
  %i.bk = add i64 %i.bj, %i.u, !dbg !220640       ; 2 uses
  store i64 %i.bk, ptr %i.l, align 8, !dbg !220641, !alias.scope !220544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !220642, !noalias !220549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !220643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !dbg !220644, !noalias !220549
  store atomic i64 %i.bk, ptr %i.bi release, align 8, !dbg !220645, !noalias !220549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !220646, !noalias !220549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !220647
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !220648
  invoke fastcc void @_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bl)
          to label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestE4readB10_.exit unwind label %bb.o, !dbg !220649, !noalias !220549

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCseeLknQCOKOd_13polars_python7timeout14TimeoutRequestEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #56
          to label %common.resume unwind label %bb.p, !dbg !220650, !noalias !220549

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !220651, !noalias !220549
end_hunk_4
