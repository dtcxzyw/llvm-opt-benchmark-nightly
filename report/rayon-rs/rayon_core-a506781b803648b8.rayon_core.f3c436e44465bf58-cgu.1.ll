Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.1?download=true
inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0_@_RNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn:bb.a

.body.thread:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i, %bb.p, %.body
  %.pn67 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %.pn.i.i, %bb.p ]
  resume { ptr, i32 } %.pn67

.body:                                            ; preds = %bb.u, %bb.d
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %1) #21
          to label %.body.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.i, 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.7.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.7.09.i, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16
  %i.p = atomicrmw xchg ptr %i.o, i64 3 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = icmp eq ptr %i.m, %i.j
  br i1 %i.r, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.l, i64 noundef %.sroa.7.09.i)
  br label %bb.d

_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit: ; preds = %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.c = load i64, ptr %i.b, align 8, !range !16, !alias.scope !427, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !427
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !427, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !4, !alias.scope !427, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !427
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !427
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %bb.d unwind label %bb.c, !noalias !427

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume unwind label %bb.e, !noalias !427

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !427
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !427, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !4, !alias.scope !427, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store i8 1, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.q)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.m, i8 %i.o) #21
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %i.s = trunc nuw i8 %i.o to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.v = and i64 %i.u, 9223372036854775807
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.x = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.x, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.t monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.y = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !7

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 128 captures(none) dereferenceable(384) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 128 captures(none) dereferenceable(256) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !446
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i, %bb.d
  %i.o = atomicrmw add ptr @_RNvNvMs9_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_14XorShift64Star3new7COUNTER, i64 1 monotonic, align 8 ; 2 uses
  %i.p = xor i64 %i.o, 8387220255154660723        ; 4 uses
  %i.q = add i64 %i.p, 7816392313619706465
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 16)
  %i.s = xor i64 %i.q, %i.r                       ; 3 uses
  %i.t = add i64 %i.s, -2389207006547353658       ; 2 uses
  %2 = xor i64 %i.t, %i.o
  %3 = add i64 %i.p, -6481707427168261424         ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 32)
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.w = xor i64 %3, -2011800112340241627         ; 3 uses
  %i.x = xor i64 %i.v, %i.t
  %i.y = xor i64 %i.x, 576460752303423488         ; 3 uses
  %i.z = add i64 %2, %i.w                         ; 3 uses
  %i.aa = add i64 %i.y, %i.u                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.ac = xor i64 %i.z, %i.ab                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ae = xor i64 %i.ad, %i.aa                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 32)
  %i.ag = add i64 %i.aa, %i.ac                    ; 3 uses
  %i.ah = add i64 %i.ae, %i.af                    ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 17)
  %i.aj = xor i64 %i.ag, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 21)
  %i.al = xor i64 %i.ak, %i.ah                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 32)
  %i.an = xor i64 %i.ah, 576460752303423488
  %i.ao = xor i64 %i.am, 255
  %i.ap = add i64 %i.an, %i.aj                    ; 3 uses
  %i.aq = add i64 %i.al, %i.ao                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.as = xor i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.au = xor i64 %i.at, %i.aq                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.aw = add i64 %i.as, %i.aq                    ; 3 uses
  %i.ax = add i64 %i.au, %i.av                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 17)
  %i.az = xor i64 %i.aw, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 21)
  %i.bb = xor i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.bd = add i64 %i.az, %i.ax                    ; 3 uses
  %i.be = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 13)
  %i.bg = xor i64 %i.bf, %i.bd                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 16)
  %i.bi = xor i64 %i.bh, %i.be                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  %i.bk = add i64 %i.bg, %i.be                    ; 3 uses
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 17)
  %i.bn = xor i64 %i.bm, %i.bk                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21)
  %i.bp = xor i64 %i.bo, %i.bl                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.br = add i64 %i.bn, %i.bl
  %i.bs = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 13)
  %i.bu = xor i64 %i.bt, %i.br                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 16)
  %i.bw = xor i64 %i.bv, %i.bs                    ; 2 uses
  %i.bx = add i64 %i.bu, %i.bs                    ; 4 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 17)
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 32)
  %i.cb = xor i64 %i.bz, %i.by
  %i.cc = xor i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.bx
  br i1 %i.cd, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ce = xor i64 %i.cc, %i.bx
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.f, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %i.h, ptr %i.cj, align 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %0, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.n, ptr %i.ck, align 128
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.ce, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cg, ptr %i.cm, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !9, !alias.scope !447, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.cq, %bb.g ], [ %i.j, %bb.k ], [ %i.j, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  ret void

bb.i:                                             ; preds = %bb.l, %bb.j, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ct = load ptr, ptr %i.c, align 8, !alias.scope !451, !nonnull !5, !noundef !5
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !451
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw) #21
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !454, !nonnull !5, !noundef !5
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !454
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx) #25
          to label %common.resume unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 128 dereferenceable(384) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvXs7_B1v_B1t_NtNtNtBZ_3ops4drop4Drop4drop0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noundef nonnull align 128 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
