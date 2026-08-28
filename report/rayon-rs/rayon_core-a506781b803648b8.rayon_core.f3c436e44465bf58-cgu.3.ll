Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.3?download=true
inline.NumInlined: 163
inline.NumDeleted: 97
begin_hunk_0_@_RNvMs3_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatch4wait:bb.a
  %.sroa.01.0.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load atomic i8, ptr %i.m monotonic, align 4, !noalias !279
  %.not.i.i = icmp ne i8 %i.n, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 4 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.o = load i64, ptr %i.d, align 8, !range !7, !alias.scope !282, !noalias !285, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1, !prof !48

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !282, !noalias !285, !nonnull !8, !align !45, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !46, !alias.scope !282, !noalias !285, !noundef !8
  store ptr %i.r, ptr %i.a, align 8, !noalias !287
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8, !noalias !287
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.g unwind label %bb.f, !noalias !282

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %common.resume unwind label %bb.h, !noalias !282

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !282
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.an, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !282, !noalias !285, !nonnull !8, !align !45, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !46, !alias.scope !282, !noalias !285, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !range !46, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %.sroa.0.08 = phi ptr [ %i.y, %.lr.ph ], [ %i.ap, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  %.sroa.7.07 = phi i8 [ %i.aa, %.lr.ph ], [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = trunc nuw i8 %.sroa.7.07 to i1
  call void @_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB3_7Condvar4waitbECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 4 %i.ae, ptr noundef nonnull align 4 %.sroa.0.08, i1 noundef zeroext %i.ah)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ai = load i64, ptr %i.c, align 8, !range !7, !alias.scope !288, !noalias !291, !noundef !8
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !288, !noalias !291, !nonnull !8, !align !45, !noundef !8
  %i.al = load i8, ptr %i.ag, align 8, !range !46, !alias.scope !288, !noalias !291, !noundef !8
  store ptr %i.ak, ptr %i.b, align 8, !noalias !293
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.al, ptr %i.am, align 8, !noalias !293
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
          to label %bb.l unwind label %bb.k, !noalias !288

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #24
          to label %common.resume unwind label %bb.m, !noalias !288

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !288
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.i
  %i.ap = load ptr, ptr %i.af, align 8, !alias.scope !288, !noalias !291, !nonnull !8, !align !45, !noundef !8 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 8, !range !46, !alias.scope !288, !noalias !291, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !46, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1
  %.sroa.7.0.lcssa = phi i8 [ %i.aa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1 ], [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.y, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1 ], [ %i.ap, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 4
  %i.av = trunc nuw i8 %.sroa.7.0.lcssa to i1
  br i1 %i.av, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aw = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.az = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.au monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %._crit_edge
  %i.ba = atomicrmw xchg ptr %.sroa.0.0.lcssa, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !48

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.lcssa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 128 captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !noalias !294, !nonnull !8, !noundef !8
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !noalias !294
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 16, !noalias !294, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load i64, ptr %i.f, align 128, !noalias !294, !noundef !8
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit: ; preds = %bb.a, %bb.c
  %.sroa.7.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ]
  %.sroa.03.0.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ]
  store i64 1, ptr %0, align 8, !alias.scope !294
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.h, align 8, !alias.scope !294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !294
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !294
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch4wait(ptr noundef nonnull align 8 %0, ptr noundef align 128 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatch4wait(ptr noundef nonnull align 4 %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %bb.g, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !8 ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp ne ptr %i.f, null
  %.sroa.0.0 = select i1 %i.d, i1 %i.g, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !306 ; 6 uses
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %i.k = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !8, !noalias !306 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.k(ptr noundef nonnull %i.f)
          to label %bb.e unwind label %bb.g, !noalias !306

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !8, !noalias !306 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !8, !noalias !306
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #21, !noalias !306
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !8, !noalias !306 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !8, !noalias !306
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #21, !noalias !306
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.b, align 8, !alias.scope !307
  %i.w = extractvalue { ptr, i32 } %i.q, 0
  %i.x = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.w)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #22
  unreachable

.thread:                                          ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !307
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit

bb.j:                                             ; preds = %.body.i.i.i.i
  %i.z = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.m unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.j, %.thread
  %i.ac = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not4 = icmp eq ptr %i.ac, null
  br i1 %.not4, label %bb.s, label %bb.r

bb.l:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.z, ptr nonnull %i.aa) #24
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core(ptr %i.ab)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ad

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %.sroa.0.0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_8CountersNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @12, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 8)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.split
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %.split
  %i.h = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
          to label %bb.c unwind label %bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = load i64, ptr %0, align 8, !noundef !8   ; 3 uses
  %i.j = lshr i64 %i.i, 32
  store i64 %i.j, ptr %i.c, align 8
end_hunk_0
