Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpsc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.u = zext i1 %i.t to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i8 [ %i.u, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 260 ; 2 uses
  %i.w = load atomic i8, ptr %i.v monotonic, align 4, !noalias !27387
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.h, !prof !439

bb.h:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27388
  store ptr %i.m, ptr %i.b, align 8, !noalias !27388
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !27388
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3149, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3243) #72
          to label %bb.j unwind label %bb.i, !noalias !27389

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #73
          to label %common.resume.i.i unwind label %bb.k, !noalias !27389

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27389
  unreachable

common.resume.i.i:                                ; preds = %bb.co, %.loopexit.split-lp.i.i.i.i.i, %bb.bs, %bb.bl, %bb.am, %bb.n, %bb.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i, %bb.n ], [ %eh.lpad-body.i.i3.i.i, %bb.bl ], [ %eh.lpad-body.i.i.i.i, %bb.am ], [ %i.y, %bb.i ], [ %eh.lpad-body.i.i17.i.i, %bb.co ], [ %i.ha, %bb.bs ], [ %lpad.phi.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.aa = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i.i.i to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27390)
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 272
  %i.ad = load ptr, ptr %i.ac, align 16, !alias.scope !27390, !nonnull !416, !noundef !416 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 280 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !27390, !noundef !416 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.af, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc5.i.i.i.i.i.i ], [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i.i.i.i.i, align 8, !noalias !27390, !nonnull !416, !noundef !416
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i.i.i.i.i.i, i64 24
  %i.ak = cmpxchg ptr %i.aj, i64 0, i64 2 acq_rel acquire, align 8, !noalias !27390
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ak, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %bb.l, label %.noexc5.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc5.i.i.i.i.i.i, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke fastcc void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab)
          to label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.al = load ptr, ptr %.sroa.0.03.i.i.i.i.i.i.i, align 8, !noalias !27390, !nonnull !416, !noundef !416
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !27390, !nonnull !416, !noundef !416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ap = atomicrmw xchg ptr %i.ao, i32 1 release, align 4, !noalias !27390
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.m, label %.noexc5.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ao)
          to label %.noexc5.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i ; 0 uses

.noexc5.i.i.i.i.i.i:                              ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i.i.i.i
  %i.as = icmp eq ptr %i.ai, %i.ag
  br i1 %i.as, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.m
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull align 8 %i.m, i8 %.sroa.01.0.i.i.i.i.i.i.i.i) #73
          to label %common.resume.i.i unwind label %bb.u

_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.at = load i64, ptr %i.ae, align 8, !noundef !416 ; 2 uses
  %i.au = icmp ult i64 %i.at, 384307168202282326
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 304
  %i.ax = load i64, ptr %i.aw, align 16, !noundef !416 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 384307168202282326
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ax, 0
  %i.ba = zext i1 %i.az to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.ba, %bb.o ], [ 0, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 312
  store atomic i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bb seq_cst, align 8
  br i1 %i.aa, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bd = and i64 %i.bc, 9223372036854775807
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.r, !prof !439

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store atomic i8 1, ptr %i.v monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.bg = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.t, label %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i, !prof !426

bb.t:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.m)
  br label %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i: ; preds = %bb.t, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.bj = load atomic i64, ptr %.8.val monotonic, align 16
  %i.bk = load i64, ptr %i.f, align 16, !noundef !416 ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  %i.bm = and i64 %i.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 408 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.val, i64 416 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i
  %i.br = phi i64 [ %i.bk, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %bb.ab ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.ab ] ; 7 uses
  %.sroa.0.0.i2.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.ab ] ; 5 uses
  %i.bs = add i64 %i.br, -1
  %i.bt = and i64 %.sroa.0.0.i2.i.i.i.i.i, %i.bs  ; 3 uses
  %i.bu = load i64, ptr %i.bn, align 8, !noundef !416
  %i.bv = sub i64 0, %i.bu
  %i.bw = and i64 %.sroa.0.0.i2.i.i.i.i.i, %i.bv
  %i.bx = load ptr, ptr %i.bo, align 8, !nonnull !416, !noundef !416
  %i.by = load i64, ptr %i.bp, align 16, !noundef !416
  %i.bz = icmp ult i64 %i.bt, %i.by
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bt ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = add i64 %.sroa.0.0.i2.i.i.i.i.i, 1
  %i.ce = icmp eq i64 %i.cd, %i.cc
  br i1 %i.ce, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = icmp eq i64 %i.bm, %.sroa.0.0.i2.i.i.i.i.i
  br i1 %i.cf, label %_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cg = add nuw i64 %i.bt, 1
  %i.ch = load i64, ptr %i.bq, align 128, !noundef !416
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.ad, label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.cj = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.cj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i3.i.i.i.i.i.preheader

.lr.ph.i.i3.i.i.i.i.i.preheader:                  ; preds = %bb.aa
  %i.ck = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter47 = and i32 %i.ck, 7                  ; 3 uses
  %i.cl = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.cl, label %.lr.ph.i.i3.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i3.i.i.i.i.i.preheader.new

.lr.ph.i.i3.i.i.i.i.i.preheader.new:              ; preds = %.lr.ph.i.i3.i.i.i.i.i.preheader
  %unroll_iter51 = and i32 %i.ck, 56
  br label %.lr.ph.i.i3.i.i.i.i.i

.lr.ph.i.i3.i.i.i.i.i:                            ; preds = %.lr.ph.i.i3.i.i.i.i.i, %.lr.ph.i.i3.i.i.i.i.i.preheader.new
  %niter52 = phi i32 [ 0, %.lr.ph.i.i3.i.i.i.i.i.preheader.new ], [ %niter52.next.7, %.lr.ph.i.i3.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter52.next.7 = add i32 %niter52, 8           ; 2 uses
  %niter52.ncmp.7 = icmp eq i32 %niter52.next.7, %unroll_iter51
  br i1 %niter52.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i3.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i3.i.i.i.i.i
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i3.i.i.i.i.i.epil.preheader

.lr.ph.i.i3.i.i.i.i.i.epil.preheader:             ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i3.i.i.i.i.i.preheader
  %lcmp.mod50 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i3.i.i.i.i.i.epil

.lr.ph.i.i3.i.i.i.i.i.epil:                       ; preds = %.lr.ph.i.i3.i.i.i.i.i.epil, %.lr.ph.i.i3.i.i.i.i.i.epil.preheader
  %epil.iter48 = phi i32 [ 0, %.lr.ph.i.i3.i.i.i.i.i.epil.preheader ], [ %epil.iter48.next, %.lr.ph.i.i3.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i3.i.i.i.i.i.epil, !llvm.loop !27323

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i3.i.i.i.i.i.epil, %bb.aa, %bb.z
  %i.cm = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.ad ], [ %i.cm, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.ad ], [ %.sroa.0.0.i2.i.i.i.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.f, align 16
  br label %bb.v

bb.ac:                                            ; preds = %bb.x
  %i.cn = load i64, ptr %i.bn, align 8, !noundef !416
  %i.co = add i64 %i.cn, %i.bw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.co, %bb.ac ], [ %i.cc, %bb.x ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.ca)
  br label %bb.ab

_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.cq = atomicrmw xchg ptr %i.cp, i8 1 acq_rel, align 1
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27392)
  %.val2.i.i.i.i.i.i = load i64, ptr %i.bp, align 16, !alias.scope !27393, !noundef !416 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !27393, !nonnull !416, !noundef !416
  %i.ct = mul nuw nsw i64 %.val2.i.i.i.i.i.i, 40
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ct, i64 noundef 8) #68, !noalias !27393
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.cu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cw) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27394
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.ah

.body.i.i.i.i.i.i:                                ; preds = %bb.ah, %bb.af
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.af ], [ %i.da, %bb.ah ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(64) %i.cz) #73
          to label %bb.am unwind label %bb.ak

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtBI_4mpmc5waker5WakerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.db)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 352
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dd) #73
          to label %bb.am unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27395
  unreachable

bb.ak:                                            ; preds = %.body.i.i.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27393
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 352
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.al ], [ %i.dc, %bb.ai ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #68
  br label %common.resume.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5array7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.an:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.dj = atomicrmw sub ptr %i.di, i64 1 acq_rel, align 8
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ao:                                            ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.dm = atomicrmw or ptr %i.dl, i64 1 seq_cst, align 8
  %i.dn = and i64 %i.dm, 1
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ap, label %_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drops_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dq = and i64 %i.dp, 62
  %i.dr = icmp eq i64 %i.dq, 62
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ap, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i
  %.sroa.0.04042.i.i.i.i.i.i = phi i32 [ %i.dv, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i ], [ 0, %bb.ap ] ; 6 uses
  %i.ds = icmp ult i32 %.sroa.0.04042.i.i.i.i.i.i, 7
  br i1 %i.ds, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i9.i.i = icmp eq i32 %.sroa.0.04042.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i9.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i, label %.lr.ph.i.i.i.i.i10.i.i.preheader

.lr.ph.i.i.i.i.i10.i.i.preheader:                 ; preds = %bb.ar
  %i.dt = mul nuw nsw i32 %.sroa.0.04042.i.i.i.i.i.i, %.sroa.0.04042.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.dt, 7                    ; 3 uses
  %i.du = icmp ult i32 %.sroa.0.04042.i.i.i.i.i.i, 3
  br i1 %i.du, label %.lr.ph.i.i.i.i.i10.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i10.i.i.preheader.new

.lr.ph.i.i.i.i.i10.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i10.i.i.preheader
  %unroll_iter = and i32 %i.dt, 56
  br label %.lr.ph.i.i.i.i.i10.i.i

.lr.ph.i.i.i.i.i10.i.i:                           ; preds = %.lr.ph.i.i.i.i.i10.i.i, %.lr.ph.i.i.i.i.i10.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i10.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i10.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i10.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i10.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i, label %.lr.ph.i.i.i.i.i10.i.i.epil.preheader

.lr.ph.i.i.i.i.i10.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i10.i.i.preheader
  %lcmp.mod28 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i.i.i.i.i10.i.i.epil

.lr.ph.i.i.i.i.i10.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i10.i.i.epil, %.lr.ph.i.i.i.i.i10.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i10.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i10.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i, label %.lr.ph.i.i.i.i.i10.i.i.epil, !llvm.loop !27344

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i10.i.i.epil, %bb.ar, %bb.aq
  %i.dv = add i32 %.sroa.0.04042.i.i.i.i.i.i, 1   ; 2 uses
  %i.dw = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dx = and i64 %i.dw, 62
  %i.dy = icmp eq i64 %i.dx, 62
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i, %bb.ap
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.ap ], [ %i.dw, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i ]
  %.sroa.0.040.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.ap ], [ %i.dv, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i8.i.i ]
  %i.dz = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.ea = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.ec = atomicrmw xchg ptr %i.eb, ptr null acq_rel, align 8 ; 2 uses
  %i.ed = lshr i64 %i.ea, 1                       ; 2 uses
  %i.ee = icmp ne i64 %i.ed, %i.dz                ; 2 uses
  %i.ef = icmp eq ptr %i.ec, null
  %or.cond.i.i.i.i.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i5.i.i

.loopexit.i.i.i.i5.i.i:                           ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.ec, %._crit_edge.i.i.i.i.i.i ], [ %i.ek, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.ee, label %.lr.ph48.i.i.i.i.i.i, label %._crit_edge49.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i7.i.i = phi i32 [ %i.ej, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i ], [ %.sroa.0.040.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.eg = icmp ult i32 %.sroa.0.1.i.i.i.i7.i.i, 7
  br i1 %i.eg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i

bb.at:                                            ; preds = %.preheader.i.i.i.i.i.i
  %.not.i21.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i7.i.i, 0
  br i1 %.not.i21.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i, label %.lr.ph.i22.i.i.i.i.i.i.preheader

.lr.ph.i22.i.i.i.i.i.i.preheader:                 ; preds = %bb.at
  %i.eh = mul nuw nsw i32 %.sroa.0.1.i.i.i.i7.i.i, %.sroa.0.1.i.i.i.i7.i.i ; 2 uses
  %xtraiter29 = and i32 %i.eh, 7                  ; 3 uses
  %i.ei = icmp ult i32 %.sroa.0.1.i.i.i.i7.i.i, 3
  br i1 %i.ei, label %.lr.ph.i22.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i22.i.i.i.i.i.i.preheader.new

.lr.ph.i22.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i22.i.i.i.i.i.i.preheader
  %unroll_iter33 = and i32 %i.eh, 56
  br label %.lr.ph.i22.i.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i.i:                           ; preds = %.lr.ph.i22.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.preheader.new
  %niter34 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.i.i.preheader.new ], [ %niter34.next.7, %.lr.ph.i22.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter34.next.7 = add i32 %niter34, 8           ; 2 uses
  %niter34.ncmp.7 = icmp eq i32 %niter34.next.7, %unroll_iter33
  br i1 %niter34.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i22.i.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i.i.i.i.i.i
  %lcmp.mod31.not = icmp eq i32 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i, label %.lr.ph.i22.i.i.i.i.i.i.epil.preheader

.lr.ph.i22.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.i.i.preheader
  %lcmp.mod32 = icmp ne i32 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i22.i.i.i.i.i.i.epil

.lr.ph.i22.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i22.i.i.i.i.i.i.epil, %.lr.ph.i22.i.i.i.i.i.i.epil.preheader
  %epil.iter30 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.i.i.epil.preheader ], [ %epil.iter30.next, %.lr.ph.i22.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter30.next = add i32 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i32 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i, label %.lr.ph.i22.i.i.i.i.i.i.epil, !llvm.loop !27345

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.i.i.epil, %bb.at, %bb.as
  %i.ej = add i32 %.sroa.0.1.i.i.i.i7.i.i, 1
  %i.ek = atomicrmw xchg ptr %i.eb, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i5.i.i

._crit_edge49.i.i.i.i.i.i:                        ; preds = %bb.bb, %.loopexit.i.i.i.i5.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i5.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.bb ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.ea, %.loopexit.i.i.i.i5.i.i ], [ %i.fk, %bb.bb ]
  %i.el = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.el, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE20discard_all_messagesCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.au

.lr.ph48.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i5.i.i, %bb.bb
  %i.em = phi i64 [ %i.fl, %bb.bb ], [ %i.ed, %.loopexit.i.i.i.i5.i.i ]
  %.sroa.05.046.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.bb ], [ %i.ea, %.loopexit.i.i.i.i5.i.i ]
  %.sroa.011.145.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.bb ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i5.i.i ] ; 6 uses
  %i.en = and i64 %i.em, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.en, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.av, label %bb.ay

bb.au:                                            ; preds = %._crit_edge49.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 1248, i64 noundef 8) #68
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE20discard_all_messagesCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.av:                                            ; preds = %.lr.ph48.i.i.i.i.i.i
  %i.eo = load atomic ptr, ptr %.sroa.011.145.i.i.i.i.i.i acquire, align 8
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.lr.ph.i26.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %bb.av, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i27.i.i.i.i.i.i = phi i32 [ %i.et, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.av ] ; 6 uses
  %i.eq = icmp ult i32 %.sroa.0.02.i27.i.i.i.i.i.i, 7
  br i1 %i.eq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i26.i.i.i.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i27.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ax
  %i.er = mul nuw nsw i32 %.sroa.0.02.i27.i.i.i.i.i.i, %.sroa.0.02.i27.i.i.i.i.i.i ; 2 uses
  %xtraiter41 = and i32 %i.er, 7                  ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.02.i27.i.i.i.i.i.i, 3
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter45 = and i32 %i.er, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter46 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter46.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter46.next.7 = add i32 %niter46, 8           ; 2 uses
  %niter46.ncmp.7 = icmp eq i32 %niter46.next.7, %unroll_iter45
  br i1 %niter46.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod43.not = icmp eq i32 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod44 = icmp ne i32 %xtraiter41, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter42 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter42.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter42.next = add i32 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i32 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !27346

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %bb.ax, %bb.aw
  %i.et = add i32 %.sroa.0.02.i27.i.i.i.i.i.i, 1
  %i.eu = load atomic ptr, ptr %.sroa.011.145.i.i.i.i.i.i acquire, align 8
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %.lr.ph.i26.i.i.i.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.av
  %i.ew = load atomic ptr, ptr %.sroa.011.145.i.i.i.i.i.i acquire, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i.i.i.i.i.i, i64 noundef 1248, i64 noundef 8) #68
  br label %bb.bb

bb.ay:                                            ; preds = %.lr.ph48.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i.i.i.i.i.i, i64 8
  %i.ey = getelementptr inbounds nuw [40 x i8], ptr %i.ex, i64 %i.en ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8
  %i.fb = and i64 %i.fa, 1
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i28.i.i.i.i.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i28.i.i.i.i.i.i:                           ; preds = %bb.ay, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i.i.i = phi i32 [ %i.fg, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i ], [ 0, %bb.ay ] ; 6 uses
  %i.fd = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 7
  br i1 %i.fd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i

bb.ba:                                            ; preds = %.lr.ph.i28.i.i.i.i.i.i
  %.not.i.i31.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.i.i.preheader:               ; preds = %bb.ba
  %i.fe = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i.i.i, %.sroa.0.02.i29.i.i.i.i.i.i ; 2 uses
  %xtraiter35 = and i32 %i.fe, 7                  ; 3 uses
  %i.ff = icmp ult i32 %.sroa.0.02.i29.i.i.i.i.i.i, 3
  br i1 %i.ff, label %.lr.ph.i.i32.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i32.i.i.i.i.i.i.preheader.new

.lr.ph.i.i32.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.preheader
  %unroll_iter39 = and i32 %i.fe, 56
  br label %.lr.ph.i.i32.i.i.i.i.i.i

.lr.ph.i.i32.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i32.i.i.i.i.i.i, %.lr.ph.i.i32.i.i.i.i.i.i.preheader.new
  %niter40 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.i.i.preheader.new ], [ %niter40.next.7, %.lr.ph.i.i32.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter40.next.7 = add i32 %niter40, 8           ; 2 uses
  %niter40.ncmp.7 = icmp eq i32 %niter40.next.7, %unroll_iter39
  br i1 %niter40.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i.i.i.i.i.i
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i32.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.i.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i32.i.i.i.i.i.i.epil

.lr.ph.i.i32.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i32.i.i.i.i.i.i.epil, %.lr.ph.i.i32.i.i.i.i.i.i.epil.preheader
  %epil.iter36 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.i.i.epil.preheader ], [ %epil.iter36.next, %.lr.ph.i.i32.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.i.i.epil, !llvm.loop !27347

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.i.i.epil, %bb.ba, %bb.az
  %i.fg = add i32 %.sroa.0.02.i29.i.i.i.i.i.i, 1
  %i.fh = load atomic i64, ptr %i.ez acquire, align 8
  %i.fi = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i28.i.i.i.i.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.i.i, %bb.ay
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.ey)
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.145.i.i.i.i.i.i, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.ew, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.fk = add i64 %.sroa.05.046.i.i.i.i.i.i, 2    ; 3 uses
  %i.fl = lshr i64 %i.fk, 1                       ; 2 uses
  %.not.i.i.i.i6.i.i = icmp eq i64 %i.fl, %i.dz
  br i1 %.not.i.i.i.i6.i.i, label %._crit_edge49.i.i.i.i.i.i, label %.lr.ph48.i.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE20discard_all_messagesCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.au, %._crit_edge49.i.i.i.i.i.i
  %i.fm = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.fm, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drops_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drops_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE20discard_all_messagesCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.fo = atomicrmw xchg ptr %i.fn, i8 1 acq_rel, align 1
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.bc

bb.bc:                                            ; preds = %_RNCNvXsi_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB7_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drops_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27398)
  %i.fq = load atomic i64, ptr %.8.val monotonic, align 8, !alias.scope !27399, !noalias !27400
  %i.fr = load atomic i64, ptr %i.dl monotonic, align 8, !alias.scope !27399, !noalias !27400
  %i.fs = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.ft = load atomic ptr, ptr %i.fs monotonic, align 8, !alias.scope !27399, !noalias !27400 ; 2 uses
  %i.fu = and i64 %i.fq, -2                       ; 2 uses
  %i.fv = and i64 %i.fr, -2                       ; 2 uses
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.fu, %i.fv
  br i1 %.not14.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i4.i.i, label %.lr.ph.i.i.i.i3.i.i.i

._crit_edge.i.i.i.i.i4.i.i:                       ; preds = %.noexc.i.i.i.i.i.i, %bb.bc
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ft, %bb.bc ], [ %.sroa.06.1.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ] ; 2 uses
  %i.fw = icmp eq ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.fw, label %_RNvXs2_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.bd

.lr.ph.i.i.i.i3.i.i.i:                            ; preds = %bb.bc, %.noexc.i.i.i.i.i.i
  %.sroa.0.016.i.i.i.i.i.i.i = phi i64 [ %i.gc, %.noexc.i.i.i.i.i.i ], [ %i.fu, %bb.bc ] ; 2 uses
  %.sroa.06.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %i.ft, %bb.bc ] ; 4 uses
  %i.fx = lshr exact i64 %.sroa.0.016.i.i.i.i.i.i.i, 1
  %i.fy = and i64 %i.fx, 31                       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i64 %i.fy, 31
  br i1 %.not11.i.i.i.i.i.i.i, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i4.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i.i.i.i.i.i, i64 noundef 1248, i64 noundef 8) #68, !noalias !27401
  br label %_RNvXs2_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i.i3.i.i.i
  %i.fz = load atomic ptr, ptr %.sroa.06.015.i.i.i.i.i.i.i monotonic, align 8, !noalias !27401
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015.i.i.i.i.i.i.i, i64 noundef 1248, i64 noundef 8) #68, !noalias !27401
  br label %.noexc.i.i.i.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i3.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i.i.i.i.i, i64 8
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %i.ga, i64 %i.fy
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.gb)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bg, !noalias !27402

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bf, %bb.be
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %i.fz, %bb.be ], [ %.sroa.06.015.i.i.i.i.i.i.i, %bb.bf ] ; 2 uses
  %i.gc = add i64 %.sroa.0.016.i.i.i.i.i.i.i, 2   ; 2 uses
  %.not.i.i.i.i4.i.i.i = icmp eq i64 %i.gc, %i.fv
  br i1 %.not.i.i.i.i4.i.i.i, label %._crit_edge.i.i.i.i.i4.i.i, label %.lr.ph.i.i.i.i3.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker9SyncWakerECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(64) %i.ge) #73
          to label %bb.bl unwind label %bb.bj, !noalias !27400

_RNvXs2_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.bd, %._crit_edge.i.i.i.i.i4.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.gf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i unwind label %bb.bh, !noalias !27400

bb.bh:                                            ; preds = %_RNvXs2_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.gh) #73
          to label %bb.bl unwind label %bb.bi, !noalias !27400

bb.bi:                                            ; preds = %bb.bh
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27403
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !27402
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RNvXs2_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.8.val, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(24) %i.gk)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.bk, !noalias !27400

bb.bk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh, %bb.bg
  %eh.lpad-body.i.i3.i.i = phi { ptr, i32 } [ %i.gl, %bb.bk ], [ %i.gg, %bb.bh ], [ %i.gd, %bb.bg ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #68, !noalias !27400
  br label %common.resume.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4list7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #68, !noalias !27400
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bm:                                            ; preds = %bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.gn = atomicrmw sub ptr %i.gm, i64 1 acq_rel, align 8
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync4mpmc8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bn:                                            ; preds = %bb.bm
  %i.gp = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !27404
  %i.gq = extractvalue { i32, i1 } %i.gp, 1
  br i1 %i.gq, label %bb.bp, label %bb.bo, !prof !439

bb.bo:                                            ; preds = %bb.bn
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val), !noalias !27404
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gr = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !27404
  %i.gs = and i64 %i.gr, 9223372036854775807
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.bq, !prof !439

bb.bq:                                            ; preds = %bb.bp
  %i.gu = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !27404
  %i.gv = xor i1 %i.gu, true
  %i.gw = zext i1 %i.gv to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.sroa.01.0.i.i.i.i.i.i.i = phi i8 [ %i.gw, %bb.bq ], [ 0, %bb.bp ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 2 uses
  %i.gy = load atomic i8, ptr %i.gx monotonic, align 1, !noalias !27404
  %.not.i.i.i.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.br, !prof !439

bb.br:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvMs7_NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6sharedINtB5_5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputuNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !214889
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 8) #68, !noalias !214889
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = icmp eq ptr %.sroa.0.0.copyload6, null
  br i1 %i.i, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.e

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.6.015 = phi ptr [ %.sroa.6.0.copyload8, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.015) ]
  store ptr %.sroa.6.015, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.015, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noundef !416
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.r, label %bb.o, !prof !439

bb.e:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0.copyload6, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload8, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.8.0.copyload10, ptr %.sroa.8.0..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.8.0.copyload10 to ptr
  %i.m = icmp eq ptr %.sroa.6.0.copyload8, null
  br i1 %i.m, label %bb.l, label %bb.f, !prof !439

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3421) #72
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.o, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214891)
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !214892, !nonnull !416, !noundef !416
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !214892
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull %.sroa.6.0.copyload8, ptr %.cast) #73
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.q, %bb.i, %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.s = atomicrmw sub ptr %.sroa.0.0.copyload6, i64 1 release, align 8, !noalias !214893
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit3

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit3

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit3: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit3
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.p, %bb.q, %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.u, %bb.q ], [ %i.u, %bb.p ]
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3422) #72
          to label %bb.g unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214895)
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !214896, !nonnull !416, !noundef !416
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !214896
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.k

bb.r:                                             ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread
  %i.y = atomicrmw sub ptr %.sroa.6.015, i64 1 release, align 8, !noalias !214897
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit5

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit5: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCsgczF5crJ4sT_3std4sync4mpscINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.736.i.i = alloca [24 x i8], align 8      ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.416.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.6.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.65.i.i = alloca [24 x i8], align 8       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214989)
  switch i64 %.0.val, label %default.unreachable.i [
    i64 0, label %bb.b
    i64 1, label %bb.av
    i64 2, label %bb.bw
  ]

default.unreachable.i:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214990)
  %i.f = load atomic i64, ptr %.8.val monotonic, align 8, !noalias !214991
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i, %bb.b
  %.sroa.0.028.i.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.1.i.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i ] ; 14 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.as, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i ] ; 7 uses
  %i.m = load i64, ptr %i.g, align 16, !noalias !214991, !noundef !416
  %i.n = add i64 %i.m, -1
  %i.o = and i64 %i.n, %.sroa.02.0.i.i.i          ; 3 uses
  %i.p = load i64, ptr %i.h, align 8, !noalias !214991, !noundef !416
  %i.q = sub i64 0, %i.p
  %i.r = and i64 %.sroa.02.0.i.i.i, %i.q
  %i.s = load ptr, ptr %i.i, align 8, !noalias !214991, !nonnull !416, !noundef !416
  %i.t = load i64, ptr %i.j, align 16, !noalias !214991, !noundef !416
  %i.u = icmp ult i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.o ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load atomic i64, ptr %i.w acquire, align 8, !noalias !214991 ; 3 uses
  %i.y = add i64 %.sroa.02.0.i.i.i, 1
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.x, %.sroa.02.0.i.i.i
  br i1 %i.aa, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = add nuw i64 %i.o, 1
  %i.ac = load i64, ptr %i.l, align 128, !noalias !214991, !noundef !416
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp ult i32 %.sroa.0.028.i.i.i, 7
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !214991
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.af = mul nuw nsw i32 %.sroa.0.028.i.i.i, %.sroa.0.028.i.i.i ; 2 uses
  %xtraiter163 = and i32 %i.af, 7                 ; 3 uses
  %i.ag = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ag, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter167 = and i32 %i.af, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter168 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter168.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %niter168.next.7 = add i32 %niter168, 8         ; 2 uses
  %niter168.ncmp.7 = icmp eq i32 %niter168.next.7, %unroll_iter167
  br i1 %niter168.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod165.not = icmp eq i32 %xtraiter163, 0
  br i1 %lcmp.mod165.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod166 = icmp ne i32 %xtraiter163, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter164 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter164.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %epil.iter164.next = add i32 %epil.iter164, 1   ; 2 uses
  %epil.iter164.cmp.not = icmp eq i32 %epil.iter164.next, %xtraiter163
  br i1 %epil.iter164.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !214904

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.h, %bb.g
  %i.ah = add i32 %.sroa.0.028.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.ai = load atomic i64, ptr %i.k monotonic, align 16, !noalias !214991 ; 2 uses
  %i.aj = load i64, ptr %i.g, align 16, !noalias !214991, !noundef !416 ; 2 uses
  %i.ak = xor i64 %i.aj, -1
  %i.al = and i64 %i.ai, %i.ak
  %i.am = icmp eq i64 %i.al, %.sroa.02.0.i.i.i
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.j
  %xtraiter169 = and i32 %i.an, 5                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter173 = and i32 %i.an, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod171.not = icmp eq i32 %xtraiter169, 0
  br i1 %lcmp.mod171.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod172 = icmp ne i32 %xtraiter169, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter170 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter170.next, %.lr.ph.i12.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %epil.iter170.next = add i32 %epil.iter170, 1   ; 2 uses
  %epil.iter170.cmp.not = icmp eq i32 %epil.iter170.next, %xtraiter169
  br i1 %epil.iter170.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !214905

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.028.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter174 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter174.next.7, %.lr.ph.i12.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %niter174.next.7 = add i32 %niter174, 8         ; 2 uses
  %niter174.ncmp.7 = icmp eq i32 %niter174.next.7, %unroll_iter173
  br i1 %niter174.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = and i64 %i.aj, %i.ai
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.n, %._crit_edge.loopexit.i.i.i.i, %bb.j, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.ah, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 1, %bb.n ], [ %i.ay, %._crit_edge.loopexit.i20.i.i.i ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.j ]
  %i.as = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !214991
  br label %bb.c

bb.l:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.h, align 8, !noalias !214991, !noundef !416
  %i.au = add i64 %i.at, %i.r
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.sroa.01.0.i.i.i = phi i64 [ %i.au, %bb.l ], [ %i.x, %bb.e ]
  %i.av = cmpxchg weak ptr %.8.val, i64 %.sroa.02.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !214991
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %i.aw = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.n
  %xtraiter175 = and i32 %i.aw, 5                 ; 3 uses
  %i.ax = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ax, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter179 = and i32 %i.aw, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod177.not = icmp eq i32 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod178 = icmp ne i32 %xtraiter175, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter176 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter176.next, %.lr.ph.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %epil.iter176.next = add i32 %epil.iter176, 1   ; 2 uses
  %epil.iter176.cmp.not = icmp eq i32 %epil.iter176.next, %xtraiter175
  br i1 %epil.iter176.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !214906

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.ay = add i32 %.sroa.0.028.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter180 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter180.next.7, %.lr.ph.i17.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  tail call void @llvm.x86.sse2.pause(), !noalias !214991
  %niter180.next.7 = add i32 %niter180, 8         ; 2 uses
  %niter180.ncmp.7 = icmp eq i32 %niter180.next.7, %unroll_iter179
  br i1 %niter180.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.az, align 8, !alias.scope !214992
  store i64 -1, ptr %0, align 8, !alias.scope !214992
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i)
  br label %bb.as

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bb = load i64, ptr %i.h, align 8, !noalias !214991, !noundef !416
  %i.bc = add i64 %i.bb, %.sroa.02.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !214993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !214993
  store atomic i64 %i.bc, ptr %i.ba release, align 8, !noalias !214993
  %i.bd = getelementptr inbounds nuw i8, ptr %.8.val, i64 256 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val, i64 312 ; 3 uses
  %i.bf = load atomic i8, ptr %i.be seq_cst, align 8, !noalias !214993
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bh = cmpxchg ptr %i.bd, i32 0, i32 1 acquire monotonic, align 4, !noalias !214994
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %.noexc.i.i.i, label %bb.q, !prof !439

bb.q:                                             ; preds = %bb.p
end_hunk_1
begin_hunk_2_@_RNvMs9_NtNtCsgczF5crJ4sT_3std4sync4mpscINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !215000, !noalias !215001, !noundef !416 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store atomic ptr %i.ct, ptr %i.cv release, align 8, !noalias !215002
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cw = load ptr, ptr %i.cr, align 8, !noalias !215002, !nonnull !416, !noundef !416
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cy = atomicrmw xchg ptr %i.cx, i32 1 release, align 4, !noalias !215002
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.ae, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.da = invoke noundef zeroext i1 @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.cx)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.w, !noalias !214993 ; 0 uses

_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.db = add nuw nsw i64 %.sroa.02.012.i.i.i.i.i.i, 1
  %i.dc = icmp eq ptr %i.cj, %i.ch
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.dd = icmp samesign ult i64 %.sroa.02.012.i.i.i.i.i.i, %i.ca
  tail call void @llvm.assume(i1 %i.dd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215003)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215004)
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.sroa.02.012.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !215005 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !215005
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = xor i64 %.sroa.02.012.i.i.i.i.i.i, -1
  %i.dh = add nsw i64 %i.ca, %i.dg
  %i.di = mul nuw nsw i64 %i.dh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.df, i64 %i.di, i1 false), !noalias !215006
  %i.dj = add nsw i64 %i.ca, -1                   ; 2 uses
  store i64 %i.dj, ptr %i.bz, align 8, !alias.scope !215007, !noalias !215008
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %bb.af, !prof !542

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.012.i.i.i.i.i.i, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3201) #72
          to label %.noexc5.i.i.i.i unwind label %bb.w, !noalias !214993

.noexc5.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i
  unreachable

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, i64 16, i1 false), !noalias !215009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !214997, !noalias !215009
  %i.dk = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 1 release, align 8, !noalias !215010
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7context5InnerE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.w, !noalias !214993

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.ag, %bb.af, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214993
  invoke fastcc void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.by)
          to label %bb.ah unwind label %bb.w, !noalias !214993

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.dm = load i64, ptr %i.bz, align 8, !noalias !214993, !noundef !416 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 304
  %i.dq = load i64, ptr %i.dp, align 16, !noalias !214993, !noundef !416 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = zext i1 %i.ds to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.dt, %bb.ai ], [ 0, %bb.ah ]
  store atomic i8 %.sroa.0.0.i.i.i.i, ptr %i.be seq_cst, align 8, !noalias !214993
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  br i1 %i.bv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !214993
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.am, !prof !439

bb.am:                                            ; preds = %bb.al
  %i.dx = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc3.i.i.i unwind label %bb.aq, !noalias !214993

.noexc3.i.i.i:                                    ; preds = %bb.am
  br i1 %i.dx, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.noexc3.i.i.i
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !214993
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.an, %.noexc3.i.i.i, %bb.al, %bb.ak
  %i.dy = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !214993
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.ao, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

bb.ao:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.bd)
          to label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.aq, !noalias !214993

bb.ap:                                            ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !214993
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.r, %bb.q
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aq, %bb.w, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %i.bs, %bb.t ], [ %i.bu, %bb.w ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.e) #73
          to label %common.resume.i unwind label %bb.ar, !noalias !214993

bb.ar:                                            ; preds = %.body.i.i.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !214993
  unreachable

common.resume.i:                                  ; preds = %bb.dg, %bb.cq, %bb.cp, %bb.cb, %.body.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ig, %bb.cb ], [ %lpad.phi.i.i, %bb.cq ], [ %lpad.thr_comm.i.i, %bb.dg ], [ %lpad.phi.i.i, %bb.cp ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ao, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %bb.o
  %.sroa.03.0.copyload4.i.i = load i64, ptr %i.e, align 8, !noalias !214992 ; 2 uses
  %.sroa.65.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx6.i.i, i64 24, i1 false), !noalias !214992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !214993
  %i.ed = icmp eq i64 %.sroa.03.0.copyload4.i.i, -1
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ee, align 8, !alias.scope !214992
  br label %bb.au

bb.at:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, i64 24, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge.i.i = phi i64 [ %.sroa.03.0.copyload4.i.i, %bb.at ], [ -1, %bb.as ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !214992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215011)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  %i.ef = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.eg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.eh = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  %i.ei = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.av
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.av ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 15 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.eh, %bb.av ], [ %.sroa.012.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ef, %bb.av ], [ %.sroa.07.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 5 uses
  %i.ej = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.ek = and i64 %i.ej, 31                       ; 5 uses
  %i.el = icmp eq i64 %i.ek, 31
  br i1 %i.el, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.backedge.i.i.i
  %i.em = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.em, label %bb.ax, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i6.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i6.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.preheader

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.ax
  %i.en = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter145 = and i32 %i.en, 7                 ; 3 uses
  %i.eo = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.eo, label %.lr.ph.i.i.i7.i.epil.preheader, label %.lr.ph.i.i.i7.i.preheader.new

.lr.ph.i.i.i7.i.preheader.new:                    ; preds = %.lr.ph.i.i.i7.i.preheader
  %unroll_iter149 = and i32 %i.en, 56
  br label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i, %.lr.ph.i.i.i7.i.preheader.new
  %niter150 = phi i32 [ 0, %.lr.ph.i.i.i7.i.preheader.new ], [ %niter150.next.7, %.lr.ph.i.i.i7.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter150.next.7 = add i32 %niter150, 8         ; 2 uses
  %niter150.ncmp.7 = icmp eq i32 %niter150.next.7, %unroll_iter149
  br i1 %niter150.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i

bb.ay:                                            ; preds = %.backedge.i.i.i
  %i.ep = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.eq = and i64 %.sroa.07.0.i.i.i, 1
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.az, label %bb.bc

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i: ; preds = %bb.bd, %bb.aw
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215012
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i
  %lcmp.mod147.not = icmp eq i32 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil.preheader

.lr.ph.i.i.i7.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter145, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.i.i7.i.epil

.lr.ph.i.i.i7.i.epil:                             ; preds = %.lr.ph.i.i.i7.i.epil, %.lr.ph.i.i.i7.i.epil.preheader
  %epil.iter146 = phi i32 [ 0, %.lr.ph.i.i.i7.i.epil.preheader ], [ %epil.iter146.next, %.lr.ph.i.i.i7.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter146.next = add i32 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i32 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil, !llvm.loop !214942

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod141.not = icmp eq i32 %xtraiter139, 0
  br i1 %lcmp.mod141.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod142 = icmp ne i32 %xtraiter139, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter140 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter140.next, %.lr.ph.i19.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter140.next = add i32 %epil.iter140, 1   ; 2 uses
  %epil.iter140.cmp.not = icmp eq i32 %epil.iter140.next, %xtraiter139
  br i1 %epil.iter140.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !214943

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.epil, %bb.be, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i, %bb.ax
  %i.es = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.et = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  %.sroa.0.1.i.i5.i = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.az:                                            ; preds = %bb.ay
  fence seq_cst
  %i.eu = load atomic i64, ptr %i.ei monotonic, align 8, !noalias !215012 ; 3 uses
  %i.ev = lshr i64 %i.eu, 1
  %i.ew = icmp eq i64 %i.ej, %i.ev
  br i1 %i.ew, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.unshifted.i.i.i = xor i64 %i.eu, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.ex = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ep, %i.ex
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ey = and i64 %i.eu, 1
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.01.0.i.i1.i = phi i64 [ %i.ep, %bb.ay ], [ %spec.select.i.i.i, %bb.ba ] ; 2 uses
  %i.fa = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.fa, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fb = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.fb, label %bb.be, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i

bb.be:                                            ; preds = %bb.bd
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.be
  %i.fc = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter139 = and i32 %i.fc, 7                 ; 3 uses
  %i.fd = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.fd, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter143 = and i32 %i.fc, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter144 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter144.next.7, %.lr.ph.i19.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter144.next.7 = add i32 %niter144, 8         ; 2 uses
  %niter144.ncmp.7 = icmp eq i32 %niter144.next.7, %unroll_iter143
  br i1 %niter144.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, label %.lr.ph.i19.i.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.fe = cmpxchg weak ptr %.8.val, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i1.i seq_cst acquire, align 8, !noalias !215012
  %.sroa.18.0.in.i.i.i2.i = extractvalue { i64, i1 } %i.fe, 1
  br i1 %.sroa.18.0.in.i.i.i2.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0.0.i.i.i.i3.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.ff = mul nuw nsw i32 %.sroa.0.0.i.i.i.i3.i, %.sroa.0.0.i.i.i.i3.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.bg
  %xtraiter133 = and i32 %i.ff, 5                 ; 3 uses
  %i.fg = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.fg, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter137 = and i32 %i.ff, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i4.i.unr-lcssa:          ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod135.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod136 = icmp ne i32 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter134 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter134.next, %.lr.ph.i24.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter134.next = add i32 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i32 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !214944

._crit_edge.loopexit.i.i.i4.i:                    ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i4.i.unr-lcssa
  %i.fh = add i32 %.sroa.0.034.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter138 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter138.next.7, %.lr.ph.i24.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter138.next.7 = add i32 %niter138, 8         ; 2 uses
  %niter138.ncmp.7 = icmp eq i32 %niter138.next.7, %unroll_iter137
  br i1 %niter138.ncmp.7, label %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, label %.lr.ph.i24.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i4.i, %bb.bg
  %i.fi = phi i32 [ %i.fh, %._crit_edge.loopexit.i.i.i4.i ], [ 1, %bb.bg ]
  %i.fj = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.fk = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i
  %.sroa.0.034.i.i.i.be = phi i32 [ %.sroa.0.1.i.i5.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fi, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  %.sroa.012.0.i.i.i.be = phi ptr [ %i.et, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fk, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  %.sroa.07.0.i.i.i.be = phi i64 [ %i.es, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fj, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  br label %.backedge.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fl = icmp eq i64 %i.ek, 30
  br i1 %i.fl, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fm = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !215012 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.bi, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.fr, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.bi ] ; 6 uses
  %i.fo = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.fo, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i27.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215012
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.bk:                                            ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fp = mul nuw nsw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter151 = and i32 %i.fp, 7                 ; 3 uses
  %i.fq = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter155 = and i32 %i.fp, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter156 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter156.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter156.next.7 = add i32 %niter156, 8         ; 2 uses
  %niter156.ncmp.7 = icmp eq i32 %niter156.next.7, %unroll_iter155
  br i1 %niter156.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod153.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod154 = icmp ne i32 %xtraiter151, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter152 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter152.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter152.next = add i32 %epil.iter152, 1   ; 2 uses
  %epil.iter152.cmp.not = icmp eq i32 %epil.iter152.next, %xtraiter151
  br i1 %epil.iter152.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !214945

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.bk, %bb.bj
  %i.fr = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.fs = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !215012 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.bi
  %.lcssa.i.i.i.i = phi ptr [ %i.fm, %bb.bi ], [ %i.fs, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.fu = and i64 %.sroa.01.0.i.i1.i, -2
  %i.fv = add i64 %i.fu, 2
  %i.fw = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !215012
  %i.fx = icmp ne ptr %i.fw, null
  %i.fy = zext i1 %i.fx to i64
  %spec.select17.i.i.i = or disjoint i64 %i.fv, %i.fy
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.eg release, align 8, !noalias !215012
  store atomic i64 %spec.select17.i.i.i, ptr %.8.val release, align 8, !noalias !215012
  br label %bb.bl

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.fz, align 8, !alias.scope !215013
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bl:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %i.ga, i64 %i.ek ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 3 uses
  %i.gd = load atomic i64, ptr %i.gc acquire, align 8, !noalias !215014
  %i.ge = and i64 %i.gd, 1
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.bl, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.gj, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.bl ] ; 6 uses
  %i.gg = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.gg, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i3.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215014
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.bn
  %i.gh = mul nuw nsw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter157 = and i32 %i.gh, 7                 ; 3 uses
  %i.gi = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.gi, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter161 = and i32 %i.gh, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter162 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter162.next.7, %.lr.ph.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  %niter162.next.7 = add i32 %niter162, 8         ; 2 uses
  %niter162.ncmp.7 = icmp eq i32 %niter162.next.7, %unroll_iter161
  br i1 %niter162.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod159.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod159.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod160 = icmp ne i32 %xtraiter157, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter158 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter158.next, %.lr.ph.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !214948

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.bn, %bb.bm
  %i.gj = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.gk = load atomic i64, ptr %i.gc acquire, align 8, !noalias !215014
  %i.gl = and i64 %i.gk, 1
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, %bb.bl
  %.sroa.015.0.copyload.i.i = load i64, ptr %i.gb, align 8, !noalias !215014 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i.i, i64 24, i1 false), !noalias !215013
  %i.gn = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.go = icmp eq i64 %i.gn, 31
  br i1 %i.go, label %.lr.ph.i2.i.i.i, label %bb.br

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bq
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.gx, %bb.bq ], [ 0, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40 ; 2 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8, !noalias !215014
  %i.gs = and i64 %i.gr, 2
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.bo, label %.lr.ph.i2.i.i.i.1

bb.bo:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.gu = atomicrmw or ptr %i.gq, i64 4 acq_rel, align 8, !noalias !215014
  %i.gv = and i64 %i.gu, 2
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.bo, %.lr.ph.i2.i.i.i
  %i.gx = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 80 ; 2 uses
  %i.ha = load atomic i64, ptr %i.gz acquire, align 8, !noalias !215014
  %i.hb = and i64 %i.ha, 2
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.hd = atomicrmw or ptr %i.gz, i64 4 acq_rel, align 8, !noalias !215014
  %i.he = and i64 %i.hd, 2
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.gx, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.br:                                            ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.hg = atomicrmw or ptr %i.gc, i64 2 acq_rel, align 8, !noalias !215014
  %i.hh = and i64 %i.hg, 4
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bs

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.bu, %bb.bq, %bb.bs
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 1248, i64 noundef 8) #68, !noalias !215014
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.hj = icmp samesign ult i64 %i.ek, 29
  br i1 %i.hj, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.bs, %bb.bu
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.hk, %bb.bu ], [ %i.gn, %bb.bs ] ; 2 uses
  %i.hk = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40 ; 2 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8, !noalias !215014
  %i.ho = and i64 %i.hn, 2
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.hq = atomicrmw or ptr %i.hm, i64 4 acq_rel, align 8, !noalias !215014
  %i.hr = and i64 %i.hq, 2
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.hk, 30
  br i1 %exitcond.not.i6.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i4.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bt, %bb.bo, %bb.bp, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.br
  %i.ht = icmp eq i64 %.sroa.015.0.copyload.i.i, -1
  br i1 %i.ht, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.bv

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.bb
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hu, align 8, !alias.scope !215013
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bv:                                            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, i64 24, i1 false)
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.bv, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi i64 [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %.sroa.015.0.copyload.i.i, %bb.bv ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !215013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215015)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.736.i.i)
  %i.hv = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !215016
  %i.hw = extractvalue { i32, i1 } %i.hv, 1
  br i1 %i.hw, label %bb.by, label %bb.bx, !prof !439

bb.bx:                                            ; preds = %bb.bw
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val), !noalias !215016
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hx = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !215016
  %i.hy = and i64 %i.hx, 9223372036854775807
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bz, !prof !439

bb.bz:                                            ; preds = %bb.by
  %i.ia = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !215016
  %i.ib = xor i1 %i.ia, true
  %i.ic = zext i1 %i.ib to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bz, %bb.by
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ic, %bb.bz ], [ 0, %bb.by ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ie = load atomic i8, ptr %i.id monotonic, align 1, !noalias !215016
  %.not.i.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ca, !prof !439

bb.ca:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215017
  store ptr %.8.val, ptr %i.a, align 8, !noalias !215017
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.if, align 8, !noalias !215017
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3148, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3301) #72
          to label %bb.cc unwind label %bb.cb, !noalias !215018

bb.cb:                                            ; preds = %bb.ca
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #73
          to label %common.resume.i unwind label %bb.cd, !noalias !215018

bb.cc:                                            ; preds = %bb.ca
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215018
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ii = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215019)
  %i.ij = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !215019, !noalias !215020, !noundef !416 ; 6 uses
  %i.il = icmp ult i64 %i.ik, 384307168202282326
  tail call void @llvm.assume(i1 %i.il)
  %i.im = icmp eq i64 %i.ik, 0
  br i1 %i.im, label %.loopexit50.i.i, label %bb.ce

bb.ce:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.in = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !215019, !noalias !215020, !nonnull !416, !noundef !416 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ik, 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.ce
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.jl, %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ 0, %bb.ce ] ; 5 uses
  %i.is = phi ptr [ %i.it, %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.iq, %bb.ce ] ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215021)
  %i.iu = load ptr, ptr %i.is, align 8, !alias.scope !215021, !noalias !215022, !nonnull !416, !noundef !416 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !215023, !noundef !416
  %.not.i.i.i.i11.i = icmp eq i64 %i.iw, %i.io
  br i1 %.not.i.i.i.i11.i, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i10.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !215021, !noalias !215022, !noundef !416
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.ja = cmpxchg ptr %i.iz, i64 0, i64 %i.iy acq_rel acquire, align 8, !noalias !215023
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ja, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.cg, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !215021, !noalias !215022, !noundef !416 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store atomic ptr %i.jd, ptr %i.jf release, align 8, !noalias !215023
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.jg = load ptr, ptr %i.jb, align 8, !noalias !215023, !nonnull !416, !noundef !416
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 2 uses
  %i.ji = atomicrmw xchg ptr %i.jh, i32 1 release, align 4, !noalias !215023
  %i.jj = icmp eq i32 %i.ji, -1
  br i1 %i.jj, label %bb.cj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.jk = invoke noundef zeroext i1 @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.jh)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.dg, !noalias !215024 ; 0 uses

_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.cf, %.lr.ph.i.i.i10.i
  %i.jl = add nuw nsw i64 %.sroa.02.012.i.i.i.i, 1
  %i.jm = icmp eq ptr %i.it, %i.ir
  br i1 %i.jm, label %.loopexit50.i.i, label %.lr.ph.i.i.i10.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.jn = icmp samesign ult i64 %.sroa.02.012.i.i.i.i, %i.ik
  tail call void @llvm.assume(i1 %i.jn)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215025)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215026)
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.sroa.02.012.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %i.jo, align 8, !noalias !215027 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !215027
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = xor i64 %.sroa.02.012.i.i.i.i, -1
  %i.jr = add nsw i64 %i.ik, %i.jq
  %i.js = mul nuw nsw i64 %i.jr, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jo, ptr nonnull align 8 %i.jp, i64 %i.js, i1 false), !noalias !215028
  %i.jt = add nsw i64 %i.ik, -1                   ; 2 uses
  store i64 %i.jt, ptr %i.ij, align 8, !alias.scope !215029, !noalias !215030
  %.not.i.i.i12.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i, null
  br i1 %.not.i.i.i12.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, label %bb.ck, !prof !542

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.012.i.i.i.i, i64 noundef %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3201) #72
          to label %.noexc9.i.i unwind label %bb.dg, !noalias !215024

.noexc9.i.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i
  unreachable

bb.ck:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !215024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !215024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.b, align 8, !noalias !215024
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !215024, !noundef !416 ; 11 uses
  br i1 %i.ii, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jw = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !215024
  %i.jx = and i64 %i.jw, 9223372036854775807
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cm, !prof !439

bb.cm:                                            ; preds = %bb.cl
  %i.jz = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.i.i, !noalias !215024

.noexc10.i.i:                                     ; preds = %bb.cm
  br i1 %i.jz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.noexc10.i.i
  store atomic i8 1, ptr %i.id monotonic, align 4, !noalias !215024
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.cn, %.noexc10.i.i, %bb.cl, %bb.ck
  %i.ka = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !215024
  %i.kb = icmp eq i32 %i.ka, 2
  br i1 %i.kb, label %bb.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

bb.co:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %.loopexit.split-lp.i.i, !noalias !215024

.loopexit50.i.i:                                  ; preds = %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.8.val, i64 104
  %i.kd = load i8, ptr %i.kc, align 8, !range !428, !noalias !215024, !noundef !416
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.kd, ptr %i.ke, align 8, !alias.scope !215024
  store i64 -1, ptr %0, align 8, !alias.scope !215024
  br i1 %i.ii, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i, label %bb.dc

.loopexit.i.i:                                    ; preds = %bb.ct
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i, %bb.co, %bb.cm
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215034)
  %i.kf = load ptr, ptr %i.b, align 8, !alias.scope !215035, !noalias !215024, !nonnull !416, !noundef !416
  %i.kg = atomicrmw sub ptr %i.kf, i64 1 release, align 8, !noalias !215036
  %i.kh = icmp eq i64 %i.kg, 1
  br i1 %i.kh, label %bb.cq, label %common.resume.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7context5InnerE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.db, !noalias !215024

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.co, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.ki = icmp eq ptr %i.jv, null
  br i1 %i.ki, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 33
  %i.kk = load i8, ptr %i.kj, align 1, !range !428, !noalias !215037, !noundef !416
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 32 ; 2 uses
  %i.kn = load atomic i8, ptr %i.km acquire, align 1, !noalias !215037
  %i.ko = icmp eq i8 %i.kn, 0
  br i1 %i.ko, label %.lr.ph.i.i13.i.i, label %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i13.i.i:                                 ; preds = %bb.cs, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i
  %.sroa.0.02.i.i.i14.i = phi i32 [ %i.ks, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i ], [ 0, %bb.cs ] ; 6 uses
  %i.kp = icmp ult i32 %.sroa.0.02.i.i.i14.i, 7
  br i1 %i.kp, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i13.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i unwind label %.loopexit.i.i, !noalias !215024

bb.cu:                                            ; preds = %.lr.ph.i.i13.i.i
  %.not.i.i.i14.i.i = icmp eq i32 %.sroa.0.02.i.i.i14.i, 0
  br i1 %.not.i.i.i14.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.cu
  %i.kq = mul nuw nsw i32 %.sroa.0.02.i.i.i14.i, %.sroa.0.02.i.i.i14.i ; 2 uses
  %xtraiter = and i32 %i.kq, 7                    ; 3 uses
  %i.kr = icmp ult i32 %.sroa.0.02.i.i.i14.i, 3
  br i1 %i.kr, label %.lr.ph.i.i.i.i16.i.epil.preheader, label %.lr.ph.i.i.i.i16.i.preheader.new

.lr.ph.i.i.i.i16.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i16.i.preheader
  %unroll_iter = and i32 %i.kq, 56
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i, %.lr.ph.i.i.i.i16.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i16.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i16.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i16.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i16.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.epil.preheader

.lr.ph.i.i.i.i16.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16.i.preheader
  %lcmp.mod132 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph.i.i.i.i16.i.epil

.lr.ph.i.i.i.i16.i.epil:                          ; preds = %.lr.ph.i.i.i.i16.i.epil, %.lr.ph.i.i.i.i16.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i16.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i16.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215037
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i, label %.lr.ph.i.i.i.i16.i.epil, !llvm.loop !214980

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16.i.epil, %bb.cu, %bb.ct
  %i.ks = add i32 %.sroa.0.02.i.i.i14.i, 1
  %i.kt = load atomic i8, ptr %i.km acquire, align 1, !noalias !215037
  %i.ku = icmp eq i8 %i.kt, 0
  br i1 %i.ku, label %.lr.ph.i.i13.i.i, label %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i15.i, %bb.cs
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.jv, align 8, !noalias !215037 ; 2 uses
  store i64 -1, ptr %i.jv, align 8, !noalias !215037
  %.not.i.i13.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i, -1
  br i1 %.not.i.i13.i, label %.invoke.i.i, label %bb.cw, !prof !426

bb.cv:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.jv, align 8, !noalias !215037 ; 2 uses
  store i64 -1, ptr %i.jv, align 8, !noalias !215037
  %.not11.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not11.i.i.i, label %.invoke.i.i, label %bb.cx, !prof !426

.invoke.i.i:                                      ; preds = %bb.cv, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.kv = phi ptr [ @3299, %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ @3300, %bb.cv ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kv) #72
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !215024

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cw:                                            ; preds = %_RNvMs0_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_readyCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.736.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !215024
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jv, i64 noundef 40, i64 noundef 8) #68, !noalias !215037
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.736.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !215024
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store atomic i8 1, ptr %i.kw release, align 8, !noalias !215037
  br label %bb.cy

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.kx, align 8, !alias.scope !215024
  store i64 -1, ptr %0, align 8, !alias.scope !215024
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.035.0.ph.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.cx ], [ %.sroa.04.0.copyload.i.i.i, %bb.cw ]
  store i64 %.sroa.035.0.ph.i.i, ptr %0, align 8, !alias.scope !215024
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.438.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.736.i.i, i64 24, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215041)
  %i.ky = load ptr, ptr %i.b, align 8, !alias.scope !215042, !noalias !215024, !nonnull !416, !noundef !416
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 release, align 8, !noalias !215043
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.da, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryECsfR8GmIBoxTX_21lance_namespace_impls.exit19.i.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7context5InnerE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !215024
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryECsfR8GmIBoxTX_21lance_namespace_impls.exit19.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryECsfR8GmIBoxTX_21lance_namespace_impls.exit19.i.i: ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !215024
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.db:                                            ; preds = %bb.dg, %bb.cq
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !215024
  unreachable

bb.dc:                                            ; preds = %.loopexit50.i.i
  %i.lc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !215024
  %i.ld = and i64 %i.lc, 9223372036854775807
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i, label %bb.dd, !prof !439

bb.dd:                                            ; preds = %bb.dc
  %i.lf = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !215024
  br i1 %i.lf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store atomic i8 1, ptr %i.id monotonic, align 4, !noalias !215024
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i: ; preds = %bb.de, %bb.dd, %bb.dc, %.loopexit50.i.i
  %i.lg = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !215024
  %i.lh = icmp eq i32 %i.lg, 2
  br i1 %i.lh, label %bb.df, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

bb.df:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val), !noalias !215024
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.dg:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i, %bb.cj
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfR8GmIBoxTX_21lance_namespace_impls(ptr nonnull align 8 %.8.val, i8 %.sroa.01.0.i.i.i.i) #73
          to label %common.resume.i unwind label %bb.db, !noalias !215024

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.df, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryECsfR8GmIBoxTX_21lance_namespace_impls.exit19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.au, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB1K_4sync4WeakNtB2k_11ObjectStoreEEE5writeCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg weak ptr %1, i32 0, i32 1073741823 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !439

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !439

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load atomic i8, ptr %i.i monotonic, align 8
  %i.k = icmp ne i8 %i.j, 0
  %spec.select.i = zext i1 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.l, align 8, !alias.scope !215046
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01.0.i, ptr %i.m, align 8, !alias.scope !215046
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !215046
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE4pushCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !215053
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !215053, !noundef !416 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !419, !alias.scope !215053, !noundef !416
  %i.e = icmp eq i64 %i.c, %i.d
end_hunk_2
