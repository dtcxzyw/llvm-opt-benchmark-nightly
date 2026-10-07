Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.11?download=true
inline.NumInlined: 3834
inline.NumDeleted: 1968
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBZ_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB13_3any3AnyNtNtB13_6marker4SendEL_EEE4send0CseyIfFeUOWMb_17polars_mem_engine:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4, !dbg !26325
  %i.am = trunc nuw i8 %i.ak to i1, !dbg !26326
  br i1 %i.am, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !dbg !26326

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !26327
  %i.ao = and i64 %i.an, 9223372036854775807, !dbg !26328
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !26328
  br i1 %i.ap, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !dbg !26328, !prof !745

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26329

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !dbg !26330

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4, !dbg !26331
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !26332

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4, !dbg !26333
  %i.as = icmp eq i32 %i.ar, 2, !dbg !26334
  br i1 %i.as, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !26334, !prof !712

bb.n:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26335

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !26336
  %i.au = load ptr, ptr %i.at, align 8, !dbg !26336, !nonnull !668, !align !821, !noundef !668 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !dbg !26336 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !26336
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !26336, !range !1023, !noundef !668 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8, !dbg !26337 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !26338

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit, !dbg !26339

.split.i:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8, !dbg !26337 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ], !dbg !26338

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !26340 ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0, !dbg !26340 ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1, !dbg !26340 ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av, !dbg !26341
  %i.bg = icmp slt i64 %i.bd, %i.av, !dbg !26342
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg, !dbg !26341
  br i1 %spec.select.i, label %bb.r, label %bb.q, !dbg !26343

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8, !dbg !26344 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1, !dbg !26345
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0, !dbg !26346
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3), !dbg !26346
  br i1 %.sroa.18.0.in.i.i.i, label %.thread10, label %.split7.us.i, !dbg !26347

bb.r:                                             ; preds = %.noexc50
  %i.bj = invoke { i64, i32 } @_RNvXs3_NtCsh8eZTKRCwoO_3std4timeNtB5_7InstantNtNtNtCscgRAwXFJnXP_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !26348 ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bk = extractvalue { i64, i32 } %i.bj, 0, !dbg !26348
  %i.bl = extractvalue { i64, i32 } %i.bj, 1, !dbg !26348
  invoke void @_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !26349

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ], !dbg !26350
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.w
    i64 3, label %.thread
  ], !dbg !26351, !prof !26244

bb.s:                                             ; preds = %.split7.us.i
  unreachable, !dbg !26352

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #34
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26353

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !26252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26252
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !26252
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !26252, !nonnull !668, !align !821, !noundef !668 ; 4 uses
  %i.bo = cmpxchg ptr %i.bn, i32 0, i32 1 acquire monotonic, align 4, !dbg !26354, !noalias !26246
  %i.bp = extractvalue { i32, i1 } %i.bo, 1, !dbg !26354
  br i1 %i.bp, label %.noexc53, label %bb.u, !dbg !26355, !prof !745

bb.u:                                             ; preds = %.thread10
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26356

.noexc53:                                         ; preds = %bb.u, %.thread10
  %i.bq = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !26357, !noalias !26246
  %i.br = and i64 %i.bq, 9223372036854775807, !dbg !26358
  %i.bs = icmp eq i64 %i.br, 0, !dbg !26358
  br i1 %i.bs, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, label %bb.v, !dbg !26358, !prof !745

bb.v:                                             ; preds = %.noexc53
  %i.bt = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26359

.noexc54:                                         ; preds = %bb.v
  %i.bu = xor i1 %i.bt, true, !dbg !26360
  %i.bv = zext i1 %i.bu to i8, !dbg !26361
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i, !dbg !26359

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i: ; preds = %.noexc54, %.noexc53
  %.sroa.01.0.i.i = phi i8 [ %i.bv, %.noexc54 ], [ 0, %.noexc53 ], !dbg !26362
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 4, !dbg !26363
  %i.bx = load atomic i8, ptr %i.bw monotonic, align 4, !dbg !26364, !noalias !26246
  %i.by = icmp ne i8 %i.bx, 0, !dbg !26365
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i1 noundef zeroext %i.by, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.bn)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26366

bb.w:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !26279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26279
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !26279
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !26279, !nonnull !668, !align !821, !noundef !668 ; 4 uses
  %i.cb = cmpxchg ptr %i.ca, i32 0, i32 1 acquire monotonic, align 4, !dbg !26367, !noalias !26247
  %i.cc = extractvalue { i32, i1 } %i.cb, 1, !dbg !26367
  br i1 %i.cc, label %.noexc58, label %bb.x, !dbg !26368, !prof !745

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ca)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26369

.noexc58:                                         ; preds = %bb.x, %bb.w
  %i.cd = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !26370, !noalias !26247
  %i.ce = and i64 %i.cd, 9223372036854775807, !dbg !26371
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !26371
  br i1 %i.cf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56, label %bb.y, !dbg !26371, !prof !745

bb.y:                                             ; preds = %.noexc58
  %i.cg = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26372

.noexc59:                                         ; preds = %bb.y
  %i.ch = xor i1 %i.cg, true, !dbg !26373
  %i.ci = zext i1 %i.ch to i8, !dbg !26374
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56, !dbg !26372

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i56: ; preds = %.noexc59, %.noexc58
  %.sroa.01.0.i.i57 = phi i8 [ %i.ci, %.noexc59 ], [ 0, %.noexc58 ], !dbg !26375
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4, !dbg !26376
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !dbg !26377, !noalias !26247
  %i.cl = icmp ne i8 %i.ck, 0, !dbg !26378
  invoke void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %i.cl, i8 noundef %.sroa.01.0.i.i57, ptr noundef nonnull align 8 %i.ca)
          to label %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26379

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.cm = load atomic i8, ptr %i.o acquire, align 8, !dbg !26380
  %i.cn = icmp eq i8 %i.cm, 0, !dbg !26381
  br i1 %i.cn, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !26381

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.cr, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.co = icmp ult i32 %.sroa.0.02.i, 7, !dbg !26382
  br i1 %i.co, label %bb.aa, label %bb.z, !dbg !26382

bb.z:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit, !dbg !26383

bb.aa:                                            ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0, !dbg !26384
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !26385

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.cp = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i, !dbg !26386 ; 2 uses
  %xtraiter = and i32 %i.cp, 7, !dbg !26385       ; 3 uses
  %i.cq = icmp ult i32 %.sroa.0.02.i, 3, !dbg !26385
  br i1 %i.cq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !26385

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.cp, 56, !dbg !26385
  br label %.lr.ph.i.i, !dbg !26385

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  call void @llvm.x86.sse2.pause(), !dbg !26387
  %niter.next.7 = add i32 %niter, 8, !dbg !26385  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !26385
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !26385

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !26385
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !26385

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0, !dbg !26385
  call void @llvm.assume(i1 %lcmp.mod77), !dbg !26385
  br label %.lr.ph.i.i.epil, !dbg !26385

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !26387
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !26385 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !26385
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !26385, !llvm.loop !26042

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.z, %bb.aa
  %i.cr = add i32 %.sroa.0.02.i, 1, !dbg !26388
  %i.cs = load atomic i8, ptr %i.o acquire, align 8, !dbg !26380
  %i.ct = icmp eq i8 %i.cs, 0, !dbg !26381
  br i1 %i.ct, label %.lr.ph.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !26381

_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !26248), !dbg !26389
  %i.cu = load i64, ptr %i.g, align 8, !dbg !26390, !range !702, !alias.scope !26248, !noalias !26249, !noundef !668
  %i.cv = trunc nuw i64 %i.cu to i1, !dbg !26391
  br i1 %i.cv, label %bb.ab, label %bb.af, !dbg !26391, !prof !712

bb.ab:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26392, !noalias !26250
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26392
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !26392, !alias.scope !26248, !noalias !26249, !nonnull !668, !align !821, !noundef !668
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !26392
  %i.cz = load i8, ptr %i.cy, align 8, !dbg !26392, !range !831, !alias.scope !26248, !noalias !26249, !noundef !668
  store ptr %i.cx, ptr %i.a, align 8, !dbg !26392, !noalias !26250
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !26392
  store i8 %i.cz, ptr %i.da, align 8, !dbg !26392, !noalias !26250
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #34
          to label %bb.ad unwind label %bb.ac, !dbg !26393, !noalias !26248

bb.ac:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.ae, !dbg !26394, !noalias !26248

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !26395, !noalias !26248
  unreachable, !dbg !26395

bb.af:                                            ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26396
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !26396, !alias.scope !26248, !noalias !26249, !nonnull !668, !align !821, !noundef !668 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !26396
  %i.dg = load i8, ptr %i.df, align 8, !dbg !26396, !range !831, !alias.scope !26248, !noalias !26249, !noundef !668 ; 2 uses
  %i.dh = trunc nuw i8 %i.dg to i1, !dbg !26396
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !26397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !26398
  call void @llvm.experimental.noalias.scope.decl(metadata !26254), !dbg !26399
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !26400
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !26400, !alias.scope !26254, !noalias !26255, !nonnull !668, !noundef !668 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !26401
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !26401, !alias.scope !26254, !noalias !26255, !noundef !668 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.dm, 24, !dbg !26402
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx64, !dbg !26402
  %i.do = icmp eq i64 %i.dm, 0, !dbg !26403
  br i1 %i.do, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63, !dbg !26404

bb.ag:                                            ; preds = %.lr.ph63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ds, i64 24, !dbg !26405 ; 2 uses
  %i.dq = add nuw nsw i64 %i.dt, 1, !dbg !26406
  %i.dr = icmp eq ptr %i.dp, %i.dn, !dbg !26403
  br i1 %i.dr, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63, !dbg !26404

.lr.ph63:                                         ; preds = %bb.af, %bb.ag
  %i.ds = phi ptr [ %i.dp, %bb.ag ], [ %i.dk, %bb.af ] ; 2 uses
  %i.dt = phi i64 [ %i.dq, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8, !dbg !26407
  %i.dv = load i64, ptr %i.du, align 8, !dbg !26407, !alias.scope !26262, !noalias !26263, !noundef !668
  %.not.i.i63 = icmp eq i64 %i.dv, %i.m, !dbg !26407
  br i1 %.not.i.i63, label %bb.ah, label %bb.ag, !dbg !26408

bb.ah:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.di, i64 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50)
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ai, !dbg !26409

bb.ai:                                            ; preds = %bb.ak, %bb.ah, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine(ptr nonnull %i.de, i8 %i.dg) #35
          to label %.body unwind label %bb.ar, !dbg !26410

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ah
  %.pr = load ptr, ptr %i.h, align 8, !dbg !26411
  %.not25 = icmp eq ptr %.pr, null, !dbg !26411
  br i1 %.not25, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.aj, !dbg !26412, !prof !740

bb.aj:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !26413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26414
  call void @llvm.experimental.noalias.scope.decl(metadata !26265), !dbg !26410
  call void @llvm.experimental.noalias.scope.decl(metadata !26266), !dbg !26415
  call void @llvm.experimental.noalias.scope.decl(metadata !26267), !dbg !26416
  call void @llvm.experimental.noalias.scope.decl(metadata !26268), !dbg !26417
  %i.dx = load ptr, ptr %i.i, align 8, !dbg !26418, !alias.scope !26269, !nonnull !668, !noundef !668
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !dbg !26419, !noalias !26269
  %i.dz = icmp eq i64 %i.dy, 1, !dbg !26420
  br i1 %i.dz, label %bb.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !26420

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !dbg !26421
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.ai, !dbg !26422

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ag, %bb.af, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #34
          to label %bb.b unwind label %bb.ai, !dbg !26423

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.aj, %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.de, i64 4, !dbg !26424
  br i1 %i.dh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.al, !dbg !26425

bb.al:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.eb = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !26426
  %i.ec = and i64 %i.eb, 9223372036854775807, !dbg !26427
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !26427
  br i1 %i.ed, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.am, !dbg !26427, !prof !745

bb.am:                                            ; preds = %bb.al
  %i.ee = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26428

.noexc67:                                         ; preds = %bb.am
  br i1 %i.ee, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, label %bb.an, !dbg !26429

bb.an:                                            ; preds = %.noexc67
  store atomic i8 1, ptr %i.ea monotonic, align 4, !dbg !26430
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, !dbg !26431

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66: ; preds = %bb.an, %.noexc67, %bb.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ef = atomicrmw xchg ptr %i.de, i32 0 release, align 4, !dbg !26432
  %i.eg = icmp eq i32 %i.ef, 2, !dbg !26433
  br i1 %i.eg, label %bb.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69, !dbg !26433, !prof !712

bb.ao:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.de)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26434

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i66, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26410
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !dbg !26435 ; 2 uses
  store i64 20, ptr %i.j, align 8, !dbg !26436
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, 20, !dbg !26437
  br i1 %.not26, label %.invoke, label %bb.ap, !dbg !26438, !prof !712

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !26435
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false), !dbg !26440
  store i64 0, ptr %0, align 8, !dbg !26439
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26439
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !26439
  br label %bb.aq, !dbg !26441

.invoke:                                          ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit78, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69
  %i.eh = phi ptr [ @30, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit69 ], [ @33, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit78 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !26442

.cont:                                            ; preds = %.invoke
  unreachable

bb.aq:                                            ; preds = %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit, %bb.bg, %bb.ap
end_hunk_0
begin_hunk_1_@_RNvMsg_NtNtCsh8eZTKRCwoO_3std4sync4mpmcINtB5_8ReceiverINtNtCscgRAwXFJnXP_4core6result6ResultIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBV_3any3AnyNtNtBV_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine:bb.a

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !28776, !noalias !28727
  unreachable, !dbg !28776

common.resume.i:                                  ; preds = %bb.am, %bb.v, %.body.i, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %eh.lpad-body.i, %bb.v ], [ %lpad.thr_comm.i, %bb.am ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !28777

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !28778
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !28778, !alias.scope !28724, !noalias !28725, !nonnull !668, !align !821, !noundef !668 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !28778
  %i.af = load i8, ptr %i.ae, align 8, !dbg !28778, !range !831, !alias.scope !28724, !noalias !28725, !noundef !668 ; 2 uses
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !28778   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28779, !noalias !28722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !28780, !noalias !28722
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !28781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28728), !dbg !28782
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24, !dbg !28783
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !28783, !alias.scope !28728, !noalias !28729, !noundef !668 ; 4 uses
  %i.ak = icmp ult i64 %i.aj, 384307168202282326, !dbg !28784
  tail call void @llvm.assume(i1 %i.ak), !dbg !28785
  %i.al = icmp eq i64 %i.aj, 0, !dbg !28786
  br i1 %i.al, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i, label %.lr.ph.i.preheader.i.i, !dbg !28786

.lr.ph.i.preheader.i.i:                           ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.am = invoke noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @47)
          to label %.noexc.i unwind label %bb.am, !dbg !28787, !noalias !28722

.noexc.i:                                         ; preds = %.lr.ph.i.preheader.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !28788
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !28788, !alias.scope !28728, !noalias !28729, !nonnull !668, !noundef !668 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.aj, 24, !dbg !28789
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i, !dbg !28789
  br label %.lr.ph.i.i.i, !dbg !28790

.lr.ph.i.i.i:                                     ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %.noexc.i
  %.sroa.02.012.i.i.i = phi i64 [ %i.bj, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], [ 0, %.noexc.i ] ; 3 uses
  %i.aq = phi ptr [ %i.ar, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i ], [ %i.ao, %.noexc.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !28791 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28730), !dbg !28792
  %i.as = load ptr, ptr %i.aq, align 8, !dbg !28793, !alias.scope !28730, !noalias !28731, !nonnull !668, !noundef !668 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40, !dbg !28794
  %i.au = load i64, ptr %i.at, align 8, !dbg !28794, !noalias !28732, !noundef !668
  %.not.i.i.i.i = icmp eq i64 %i.au, %i.am, !dbg !28790
  br i1 %.not.i.i.i.i, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, label %bb.l, !dbg !28790

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !28795
  %i.aw = load i64, ptr %i.av, align 8, !dbg !28795, !alias.scope !28730, !noalias !28731, !noundef !668
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !28796
  %i.ay = cmpxchg ptr %i.ax, i64 0, i64 %i.aw acq_rel acquire, align 8, !dbg !28797, !noalias !28732
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ay, 1, !dbg !28798
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.m, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, !dbg !28799

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !28800
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !28800, !alias.scope !28730, !noalias !28731, !noundef !668 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null, !dbg !28801
  br i1 %i.bc, label %bb.o, label %bb.n, !dbg !28801

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 32, !dbg !28802
  store atomic ptr %i.bb, ptr %i.bd release, align 8, !dbg !28803, !noalias !28732
  br label %bb.o, !dbg !28804

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = load ptr, ptr %i.az, align 8, !dbg !28805, !noalias !28732, !nonnull !668, !noundef !668
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40, !dbg !28806 ; 2 uses
  %i.bg = atomicrmw xchg ptr %i.bf, i32 1 release, align 4, !dbg !28807, !noalias !28732
  %i.bh = icmp eq i32 %i.bg, -1, !dbg !28808
  br i1 %i.bh, label %bb.p, label %.noexc9.i, !dbg !28808

bb.p:                                             ; preds = %bb.o
  %i.bi = invoke noundef zeroext i1 @_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bf)
          to label %.noexc9.i unwind label %bb.am, !dbg !28809, !noalias !28722 ; 0 uses

_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.02.012.i.i.i, 1, !dbg !28810
  %i.bk = icmp eq ptr %i.ar, %i.ap, !dbg !28811
  br i1 %i.bk, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i, label %.lr.ph.i.i.i, !dbg !28812

.noexc9.i:                                        ; preds = %bb.p, %bb.o
  %i.bl = icmp samesign ult i64 %.sroa.02.012.i.i.i, %i.aj, !dbg !28813
  tail call void @llvm.assume(i1 %i.bl), !dbg !28814
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6removeCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ah, i64 noundef %.sroa.02.012.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49)
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i unwind label %bb.am, !dbg !28815, !noalias !28722

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i: ; preds = %.noexc9.i
  %.pr.i = load ptr, ptr %i.d, align 8, !dbg !28780, !noalias !28722
  %.not.i = icmp eq ptr %.pr.i, null, !dbg !28780
  br i1 %.not.i, label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i, label %bb.q, !dbg !28816

bb.q:                                             ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28817, !noalias !28722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !28817, !noalias !28722
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !28818
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !28818, !noalias !28722, !noundef !668 ; 13 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 4, !dbg !28819
  br i1 %i.ag, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.r, !dbg !28820

bb.r:                                             ; preds = %bb.q
  %i.bp = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !28821, !noalias !28722
  %i.bq = and i64 %i.bp, 9223372036854775807, !dbg !28822
  %i.br = icmp eq i64 %i.bq, 0, !dbg !28822
  br i1 %i.br, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.s, !dbg !28822, !prof !745

bb.s:                                             ; preds = %bb.r
  %i.bs = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !dbg !28823, !noalias !28722

.noexc11.i:                                       ; preds = %bb.s
  br i1 %i.bs, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t, !dbg !28824

bb.t:                                             ; preds = %.noexc11.i
  store atomic i8 1, ptr %i.bo monotonic, align 4, !dbg !28825, !noalias !28722
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !28826

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.t, %.noexc11.i, %bb.r, %bb.q
  %i.bt = atomicrmw xchg ptr %i.ad, i32 0 release, align 4, !dbg !28827, !noalias !28722
  %i.bu = icmp eq i32 %i.bt, 2, !dbg !28828
  br i1 %i.bu, label %bb.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !28828, !prof !712

bb.u:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %.loopexit.split-lp.i, !dbg !28829, !noalias !28722

_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i: ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CseyIfFeUOWMb_17polars_mem_engine.exit.i.i.i, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCseyIfFeUOWMb_17polars_mem_engine.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28830, !noalias !28722
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 104, !dbg !28831
  %i.bw = load i8, ptr %i.bv, align 8, !dbg !28831, !range !831, !noalias !28722, !noundef !668
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28832
  store i8 %i.bw, ptr %i.bx, align 8, !dbg !28832, !alias.scope !28722
  store i64 20, ptr %0, align 8, !dbg !28832, !alias.scope !28722
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 4, !dbg !28833
  br i1 %i.ag, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i, label %bb.ai, !dbg !28834

.loopexit.i:                                      ; preds = %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.u, %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cp, %.body.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28733), !dbg !28830
  call void @llvm.experimental.noalias.scope.decl(metadata !28734), !dbg !28835
  call void @llvm.experimental.noalias.scope.decl(metadata !28735), !dbg !28836
  call void @llvm.experimental.noalias.scope.decl(metadata !28736), !dbg !28837
  %i.bz = load ptr, ptr %i.c, align 8, !dbg !28838, !alias.scope !28737, !noalias !28722, !nonnull !668, !noundef !668
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !28839, !noalias !28738
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !28840
  br i1 %i.cb, label %bb.v, label %common.resume.i, !dbg !28840

bb.v:                                             ; preds = %.body.i
  fence acquire, !dbg !28841
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #36
          to label %common.resume.i unwind label %bb.ah, !dbg !28842, !noalias !28722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.u, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.cc = icmp eq ptr %i.bn, null, !dbg !28843
  br i1 %i.cc, label %bb.ad, label %bb.w, !dbg !28843

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 73, !dbg !28844
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !28844, !range !831, !noalias !28739, !noundef !668
  %i.cf = trunc nuw i8 %i.ce to i1, !dbg !28844
  br i1 %i.cf, label %bb.aa, label %bb.x, !dbg !28844

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg acquire, align 1, !dbg !28845, !noalias !28739
  %i.ci = icmp eq i8 %i.ch, 0, !dbg !28846
  br i1 %i.ci, label %.lr.ph.i.i14.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i, !dbg !28846

.lr.ph.i.i14.i:                                   ; preds = %bb.x, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %i.cm, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.x ] ; 6 uses
  %i.cj = icmp ult i32 %.sroa.0.02.i.i.i, 7, !dbg !28847
  br i1 %i.cj, label %bb.z, label %bb.y, !dbg !28847

bb.y:                                             ; preds = %.lr.ph.i.i14.i
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i unwind label %.loopexit.i, !dbg !28848, !noalias !28722

bb.z:                                             ; preds = %.lr.ph.i.i14.i
  %.not.i.i.i15.i = icmp eq i32 %.sroa.0.02.i.i.i, 0, !dbg !28849
  br i1 %.not.i.i.i15.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !28850

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.z
  %i.ck = mul nuw nsw i32 %.sroa.0.02.i.i.i, %.sroa.0.02.i.i.i, !dbg !28851 ; 2 uses
  %xtraiter = and i32 %i.ck, 7, !dbg !28850       ; 3 uses
  %i.cl = icmp ult i32 %.sroa.0.02.i.i.i, 3, !dbg !28850
  br i1 %i.cl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !28850

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i32 %i.ck, 56, !dbg !28850
  br label %.lr.ph.i.i.i.i, !dbg !28850

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  %niter.next.7 = add i32 %niter, 8, !dbg !28850  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !28850
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !28850

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !28850
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !28850

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter, 0, !dbg !28850
  tail call void @llvm.assume(i1 %lcmp.mod25), !dbg !28850
  br label %.lr.ph.i.i.i.i.epil, !dbg !28850

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !28852, !noalias !28739
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !28850 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !28850
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !28850, !llvm.loop !28650

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.z, %bb.y
  %i.cm = add i32 %.sroa.0.02.i.i.i, 1, !dbg !28853
  %i.cn = load atomic i8, ptr %i.cg acquire, align 1, !dbg !28845, !noalias !28739
  %i.co = icmp eq i8 %i.cn, 0, !dbg !28846
  br i1 %i.co, label %.lr.ph.i.i14.i, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i, !dbg !28846

_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28854, !noalias !28739
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.bn, align 8, !dbg !28855, !noalias !28739 ; 3 uses
  store i64 20, ptr %i.bn, align 8, !dbg !28856, !noalias !28739
  %.not.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i, 20, !dbg !28857
  br i1 %.not.i.i, label %.invoke.i, label %bb.ab, !dbg !28858, !prof !712

bb.aa:                                            ; preds = %bb.w
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bn, align 8, !dbg !28859, !noalias !28739 ; 2 uses
  store i64 20, ptr %i.bn, align 8, !dbg !28860, !noalias !28739
  %.not11.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 20, !dbg !28861
  br i1 %.not11.i.i, label %.invoke.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread45.i, !dbg !28862, !prof !712

bb.ab:                                            ; preds = %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !28855
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.a, align 8, !dbg !28863, !noalias !28739
  %.sroa.56.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !28863 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx.i.i, i64 64, i1 false), !dbg !28863, !noalias !28739
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultIB1u_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn)
          to label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %.body.i.i, !dbg !28864, !noalias !28739

.body.i.i:                                        ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef 80, i64 noundef 8) #27, !dbg !28865, !noalias !28739
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(72) %i.a) #35
          to label %.body.i unwind label %bb.ac, !dbg !28866, !noalias !28739

.invoke.i:                                        ; preds = %bb.aa, %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.cq = phi ptr [ @58, %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_6PacketINtNtCscgRAwXFJnXP_4core6result6ResultIBW_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE10wait_readyCseyIfFeUOWMb_17polars_mem_engine.exit.i.i ], [ @59, %bb.aa ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #33
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !28867, !noalias !28722

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %.body.i.i
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !28868, !noalias !28739
  unreachable, !dbg !28868

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread45.i: ; preds = %bb.aa
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !28859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.732.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, i64 64, i1 false), !dbg !28869, !noalias !28722
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bn, i64 72, !dbg !28870
  store atomic i8 1, ptr %i.cs release, align 8, !dbg !28871, !noalias !28739
  br label %bb.ae, !dbg !28872

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.ab
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef 80, i64 noundef 8) #27, !dbg !28873, !noalias !28739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.732.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx7.i.i, i64 64, i1 false), !dbg !28874, !noalias !28722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28866, !noalias !28739
  br label %bb.ae, !dbg !28872

bb.ad:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28875
  store i8 1, ptr %i.ct, align 8, !dbg !28875, !alias.scope !28722
  store i64 20, ptr %0, align 8, !dbg !28875, !alias.scope !28722
  br label %bb.af, !dbg !28876

bb.ae:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread45.i
  %.sroa.030.047.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.thread45.i ], [ %.sroa.04.0.copyload.i.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE4readCseyIfFeUOWMb_17polars_mem_engine.exit.i ]
  store i64 %.sroa.030.047.i, ptr %0, align 8, !dbg !28877, !alias.scope !28722
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.732.i, i64 64, i1 false), !dbg !28877
  br label %bb.af, !dbg !28878

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28742), !dbg !28830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28743), !dbg !28879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28744), !dbg !28880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28745), !dbg !28881
  %i.cu = load ptr, ptr %i.c, align 8, !dbg !28882, !alias.scope !28746, !noalias !28722, !nonnull !668, !noundef !668
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !dbg !28883, !noalias !28747
  %i.cw = icmp eq i64 %i.cv, 1, !dbg !28884
  br i1 %i.cw, label %bb.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit20.i, !dbg !28884

bb.ag:                                            ; preds = %bb.af
  fence acquire, !dbg !28885
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE9drop_slowCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #36, !dbg !28886, !noalias !28722
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit20.i, !dbg !28886

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit20.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28830, !noalias !28722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28830, !noalias !28722
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !28887

bb.ah:                                            ; preds = %bb.am, %bb.v
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !28888, !noalias !28722
  unreachable, !dbg !28888

bb.ai:                                            ; preds = %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i
  %i.cy = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !28889, !noalias !28722
  %i.cz = and i64 %i.cy, 9223372036854775807, !dbg !28890
  %i.da = icmp eq i64 %i.cz, 0, !dbg !28890
  br i1 %i.da, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i, label %bb.aj, !dbg !28890, !prof !745

bb.aj:                                            ; preds = %bb.ai
  %i.db = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36, !dbg !28891, !noalias !28722
  br i1 %i.db, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i, label %bb.ak, !dbg !28892

bb.ak:                                            ; preds = %bb.aj
  store atomic i8 1, ptr %i.by monotonic, align 4, !dbg !28893, !noalias !28722
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i, !dbg !28894

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i
  %i.dc = atomicrmw xchg ptr %i.ad, i32 0 release, align 4, !dbg !28895, !noalias !28722
  %i.dd = icmp eq i32 %i.dc, 2, !dbg !28896
  br i1 %i.dd, label %bb.al, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !28896, !prof !712

bb.al:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad), !dbg !28897, !noalias !28722
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !28897

bb.am:                                            ; preds = %.noexc9.i, %bb.p, %.lr.ph.i.preheader.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECseyIfFeUOWMb_17polars_mem_engine(ptr nonnull %i.ad, i8 %i.af) #35
          to label %common.resume.i unwind label %bb.ah, !dbg !28898, !noalias !28722

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECseyIfFeUOWMb_17polars_mem_engine.exit20.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.732.i), !dbg !28899
  br label %bb.an, !dbg !28900

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultIBX_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEE8try_recvCseyIfFeUOWMb_17polars_mem_engine.exit, %bb.c, %bb.b
  ret void, !dbg !28901
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXCs76NdGGEXHxZ_6eitherINtB2_6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBF_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3w_EEEIBB_IB19_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 !dbg !28902 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !28910, !range !702, !noundef !668
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28910
  %i.c = trunc nuw i64 %i.a to i1, !dbg !28911
  %.val = load ptr, ptr %i.b, align 8, !dbg !28912, !nonnull !668, !noundef !668 ; 2 uses
  %i.d = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !dbg !28912
  %i.e = icmp slt i64 %i.d, 0, !dbg !28912        ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !28911

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !28913

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !28914
  unreachable, !dbg !28914

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !28915

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !28916
  unreachable, !dbg !28916

end_hunk_1
