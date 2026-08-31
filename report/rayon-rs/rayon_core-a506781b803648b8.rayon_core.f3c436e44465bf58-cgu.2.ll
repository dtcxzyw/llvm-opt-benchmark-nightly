Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep5sleepNCNvMs8_NtB5_8registryNtB10_12WorkerThread15wait_until_cold0EB5_:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !5, !noalias !9, !nonnull !4, !align !13, !noundef !4 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !14, !alias.scope !5, !noalias !9, !noundef !4 ; 4 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = cmpxchg ptr %2, i64 1, i64 2 seq_cst monotonic, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.af, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.ai, %bb.ah, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ak = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.ak, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.al = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !11

bb.o:                                             ; preds = %.preheader, %bb.p
  %i.an = load atomic i64, ptr %i.ac seq_cst, align 8 ; 3 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = load i64, ptr %i.ad, align 8, !noundef !4
  %.not = icmp eq i64 %i.ao, %i.ap
  br i1 %.not, label %bb.p, label %bb.ah

bb.p:                                             ; preds = %bb.o
  %i.aq = add i64 %i.an, 1
  %i.ar = cmpxchg ptr %i.ac, i64 %i.an, i64 %i.aq seq_cst monotonic, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  fence seq_cst
  %i.at = invoke noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread16has_injected_job(ptr noundef nonnull align 128 %3)
          to label %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread15wait_until_cold0B9_.exit unwind label %bb.aj

_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread15wait_until_cold0B9_.exit: ; preds = %bb.q
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread15wait_until_cold0B9_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 5 ; 2 uses
  store i8 1, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br label %bb.t

bb.s:                                             ; preds = %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread15wait_until_cold0B9_.exit
  %i.ax = atomicrmw sub ptr %i.ac, i64 1 seq_cst, align 8 ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.x, %bb.r
  %i.ay = load i8, ptr %i.au, align 1, !range !14, !noundef !4
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %i.av, ptr noundef nonnull align 4 %i.w)
          to label %bb.x unwind label %bb.v, !noalias !16

bb.v:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull align 4 %i.w, i8 %i.y) #30
          to label %common.resume unwind label %bb.w, !noalias !16

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31, !noalias !16
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bc = load atomic i8, ptr %i.aw monotonic, align 4, !noalias !16
  %.not.i.not = icmp eq i8 %i.bc, 0
  br i1 %.not.i.not, label %bb.t, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19
  store ptr %i.w, ptr %i.b, align 8, !noalias !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.y, ptr %i.bd, align 8, !noalias !19
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.aa unwind label %bb.z, !noalias !23

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #30
          to label %common.resume unwind label %bb.ab, !noalias !23

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31, !noalias !23
  unreachable

.loopexit:                                        ; preds = %bb.t, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.bg, align 8
  store i64 -1, ptr %i.ad, align 8
  %i.bh = load atomic i64, ptr %2 acquire, align 8
  %i.bi = icmp eq i64 %i.bh, 3
  br i1 %i.bi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.bj = cmpxchg ptr %2, i64 2, i64 0 seq_cst monotonic, align 8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bm = and i64 %i.bl, 9223372036854775807
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24, label %bb.af, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.bo = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.bo, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store atomic i8 1, ptr %i.bk monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.bp = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit.sink.split: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit.sink.split, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i24, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.a
  ret void

bb.ah:                                            ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 32, ptr %i.br, align 8
  store i64 -1, ptr %i.ad, align 8
  %i.bs = load atomic i64, ptr %2 acquire, align 8
  %i.bt = icmp eq i64 %i.bs, 3
  br i1 %i.bt, label %bb.k, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = cmpxchg ptr %2, i64 2, i64 0 seq_cst monotonic, align 8 ; 0 uses
  br label %bb.k

bb.aj:                                            ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.w, i8 %i.y) #30
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1g_12DefaultSpawnNtB1g_11ThreadSpawn5spawn0uEB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB14_12DefaultSpawnNtB14_11ThreadSpawn5spawn0uEB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %2)
  %3 = load <2 x ptr>, ptr %i.a, align 16
  %i.j = load ptr, ptr %i.a, align 16, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB3_7Condvar4waitbECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1, ptr noundef nonnull align 4 %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %3 to i8                         ; 2 uses
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync7condvar5futexNtB2_7Condvar4wait(ptr noundef nonnull align 4 %1, ptr noundef nonnull align 4 %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull %2, i8 %i.a) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load atomic i8, ptr %i.c monotonic, align 4
  %.not = icmp ne i8 %i.d, 0
  %spec.select = zext i1 %.not to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.f, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !24 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val2, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !27
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !24 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = shl nuw i64 %.val, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !30
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.g, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !11

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, i8 %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit, !prof !11

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %switch.i = icmp samesign ult i64 %.val, 2
  br i1 %switch.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  %i.c = ptrtoint ptr %.val1 to i64               ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.d
  ], !prof !37

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !38, !noalias !34
  store i8 3, ptr %i.a, align 8, !alias.scope !38, !noalias !34
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBD_INtB1c_7StealerB1W_EEEEB20_:bb.a
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !44 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !50
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !44 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !49, !nonnull !4, !noundef !4
  %i.g = shl nuw i64 %.val.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !53
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #30
          to label %common.resume unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_.exit: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i1 = load i64, ptr %i.i, align 8, !alias.scope !56 ; 2 uses
  %i.k = icmp eq i64 %.val2.i1, 0
  br i1 %i.k, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i2 = load ptr, ptr %i.l, align 8, !alias.scope !61, !nonnull !4, !noundef !4
  %i.m = shl nuw i64 %.val2.i1, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i2, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !62
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_.exit
  %.val.i3 = load i64, ptr %i.i, align 8, !alias.scope !56 ; 2 uses
  %i.n = icmp eq i64 %.val.i3, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i4 = load ptr, ptr %i.o, align 8, !alias.scope !61, !nonnull !4, !noundef !4
  %i.p = shl nuw i64 %.val.i3, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !65
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_.exit

common.resume:                                    ; preds = %.body, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.a, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB23_12DefaultSpawnNtB23_11ThreadSpawn5spawn0uEs_000uEB25_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  call void asm sideeffect "", "~{memory}"() #34, !srcloc !71
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1f_12DefaultSpawnNtB1f_11ThreadSpawn5spawn0uEB1h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(104) %0, i64 104, i1 false)
  call void @_RNvMNtCskVyUMSjkkSy_10rayon_core8registryNtB2_13ThreadBuilder3run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  call void asm sideeffect "", "~{memory}"() #34, !srcloc !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 4 %3) unnamed_addr #3 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %2, ptr %i.b, align 8
  store i64 %spec.select, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !78, !alias.scope !75, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !75
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !75
  %i.j = load i64, ptr %i.a, align 8, !range !8, !noalias !75, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !79, !noalias !75, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !75, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !75
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !75
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0EB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0EB2X_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !14, !alias.scope !80, !noalias !83, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.us.i
  %.sroa.0.08.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !88
  %i.l = load ptr, ptr %i.b, align 8, !noalias !89, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !88
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.us.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.08.us.i, 1              ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !range !14, !noalias !89, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !87
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !87
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %exitcond11.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond11.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0EB2X_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.i
  %.sroa.0.08.i = phi i64 [ %i.t, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !87
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_lifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !88
  %i.q = load ptr, ptr %i.b, align 8, !noalias !89, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !88
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.i

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.08.i, 1                 ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !range !14, !noalias !89, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !87
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !87
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !87
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  %exitcond.not.i = icmp eq i64 %i.t, %i.f
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0EB2X_.exit, label %.lr.ph.split.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0EB2X_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0B1N_.exit.us.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3T_EIB67_B50_EEB3S_E0E0EB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0EB2X_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !14, !alias.scope !94, !noalias !97, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.us.i
  %.sroa.0.08.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !102
  %i.l = load ptr, ptr %i.b, align 8, !noalias !103, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !102
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.us.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.08.us.i, 1              ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !range !14, !noalias !103, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !101
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !101
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %exitcond11.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond11.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0EB2X_.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.i
  %.sroa.0.08.i = phi i64 [ %i.t, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !101
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_lifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !102
  %i.q = load ptr, ptr %i.b, align 8, !noalias !103, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !102
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.i

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.08.i, 1                 ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !range !14, !noalias !103, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !101
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !101
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !101
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %exitcond.not.i = icmp eq i64 %i.t, %i.f
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0EB2X_.exit, label %.lr.ph.split.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0EB2X_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0B1N_.exit.us.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0EB1A_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0EB2X_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0B1N_.exit.i, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0B1N_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !113
  %i.e = load ptr, ptr %i.b, align 8, !noalias !108, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !113
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0B1N_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0B1N_.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !range !14, !noalias !108, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !117
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !117
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0EB2X_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0EB2X_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0B1N_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0EB1A_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0EB2X_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0B1N_.exit.i, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0B1N_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_fifoBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !124
  %i.e = load ptr, ptr %i.b, align 8, !noalias !119, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !124
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0B1N_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0B1N_.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !range !14, !noalias !119, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !128
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !128
  call void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0EB2X_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0EB2X_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0B1N_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB1u_5Sleep3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2k_8for_each4callINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtB1u_16WorkerSleepStateENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB3n_E14extend_trustedBN_E0E0EB1w_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEuNCNvMB38_NtB38_5Sleep3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B40_EE0E0E0EB3a_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %.neg = add i64 %0, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.c = add nuw i64 %0, 1
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload ; 4 uses
  store i32 0, ptr %i.d, align 128, !noalias !130
  %.sroa.43.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.prol, align 4, !noalias !130
  %.sroa.54.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 0, ptr %.sroa.54.0..sroa_idx.i.i.prol, align 1, !noalias !130
  %.sroa.76.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.76.0..sroa_idx.i.i.prol, align 8, !noalias !130
  %i.e = add i64 %.sroa.4.0.copyload, 1           ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.prol ]
  %i.f = icmp eq i64 %1, %.neg
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEuNCNvMB38_NtB38_5Sleep3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B40_EE0E0E0EB3a_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.g = phi i64 [ %i.l, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 4 uses
  store i32 0, ptr %i.h, align 128, !noalias !130
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i, align 4, !noalias !130
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  store i8 0, ptr %.sroa.54.0..sroa_idx.i.i, align 1, !noalias !130
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !130
  %i.i = add nuw i64 %.sroa.0.010.i, 2            ; 2 uses
  %i.j = getelementptr [128 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 128
  store i32 0, ptr %i.k, align 128, !noalias !130
  %.sroa.43.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 132
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.1, align 4, !noalias !130
  %.sroa.54.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 133
  store i8 0, ptr %.sroa.54.0..sroa_idx.i.i.1, align 1, !noalias !130
  %.sroa.76.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 136
  store i32 0, ptr %.sroa.76.0..sroa_idx.i.i.1, align 8, !noalias !130
  %i.l = add i64 %i.g, 2                          ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEuNCNvMB38_NtB38_5Sleep3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B40_EE0E0E0EB3a_.exit, label %.lr.ph.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEuNCNvMB38_NtB38_5Sleep3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB51_3VecB25_E14extend_trustedINtB1B_3MapB3_B40_EE0E0E0EB3a_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.l, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1w_6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0EB2r_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val6.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !140
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB1w_9ScopeFifo3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtB1y_3job7JobFifoNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3W_3VecB3t_E14extend_trustedBN_E0E0EB1y_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtB29_5scopeNtB2T_9ScopeFifo3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB41_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0EB29_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i
  %.val4.i = phi i64 [ %i.e, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.c, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i ], [ %0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 128 captures(none) dereferenceable(256) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i unwind label %bb.b, !noalias !148

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i: ; preds = %.lr.ph.i
  %i.c = add i64 %.sroa.0.010.i, 1                ; 2 uses
  %i.d = getelementptr inbounds nuw [256 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.d, ptr noundef nonnull readonly align 128 dereferenceable(256) %i.a, i64 256, i1 false), !noalias !149
  %i.e = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtB29_5scopeNtB2T_9ScopeFifo3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB41_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0EB29_.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !148
  resume { ptr, i32 } %i.f

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtB29_5scopeNtB2T_9ScopeFifo3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB41_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0EB29_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.e, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifouNCNvMs_NtBZ_5scopeNtB1J_9ScopeFifo3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3k_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0BZ_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !148
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsk_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0EB2D_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsk_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0EB1P_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3n_EIB4P_B4u_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !154
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !154
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !154
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !154
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendB2u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBD_INtB1c_7StealerB1W_EEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3p_EIB4R_B4w_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !157
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !157
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !157
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !157
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !157
  invoke void @_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendB2u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBD_INtB1c_7StealerB1W_EEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvCskVyUMSjkkSy_10rayon_core10initialize(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  call void @_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0EB4_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0)
  %i.c = load i64, ptr %i.a, align 8, !range !163, !noalias !160, !noundef !4 ; 3 uses
  %.not.i = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !160 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  br i1 %.not.i, label %_RNvMs0_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalB5_.exit.thread, label %bb.b

_RNvMs0_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalB5_.exit.thread: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !noalias !160, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  tail call void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry17wait_until_primed(ptr noundef nonnull align 128 %i.g), !noalias !160
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.h, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #34 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #30
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit: ; preds = %bb.b
  store i64 %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.e, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs0_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalB5_.exit.thread, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit ], [ null, %_RNvMs0_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder12build_globalB5_.exit.thread ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @7, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvCskVyUMSjkkSy_10rayon_core19current_num_threads() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry19current_num_threads()
  ret i64 %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep15announce_sleepy(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @_RINvMs_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_activeEB9_(ptr noundef nonnull align 8 %i.a)
  %i.c = lshr i64 %i.b, 32
  ret i64 %i.c
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp ult i64 %i.b, 72057594037927936
  tail call void @llvm.assume(i1 %i.c)
  %.not10 = icmp eq i64 %i.b, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.08 = phi i32 [ %.sroa.0.1, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.sroa.04.07 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.04.07, 1          ; 2 uses
  %i.e = tail call fastcc noundef zeroext i1 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep20wake_specific_thread(ptr noundef nonnull align 8 %0, i64 noundef %.sroa.04.07)
  br i1 %i.e, label %bb.d, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.d, %.lr.ph
  %.sroa.0.1 = phi i32 [ %i.f, %bb.d ], [ %.sroa.0.08, %.lr.ph ]
  %exitcond.not = icmp eq i64 %i.d, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.f = add i32 %.sroa.0.08, -1                  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep20wake_specific_thread(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.i = load i64, ptr %i.b, align 8, !range !8, !alias.scope !164, !noalias !167, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !164, !noalias !167, !nonnull !4, !align !13, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !14, !alias.scope !164, !noalias !167, !noundef !4
  store ptr %i.l, ptr %i.a, align 8, !noalias !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !169
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
          to label %bb.e unwind label %bb.d, !noalias !164

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %common.resume unwind label %bb.f, !noalias !164

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31, !noalias !164
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.ah, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !164, !noalias !167, !nonnull !4, !align !13, !noundef !4 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !14, !alias.scope !164, !noalias !167, !noundef !4 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsB5_:bb.a
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not28 = icmp eq i64 %i.ba, -1
  br i1 %.not28, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715, i64 16, i1 false)
  store i64 %i.ba, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.bs = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !227, !nonnull !4, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !227, !noundef !4 ; 2 uses
  switch i64 %i.bu, label %thread-pre-split.i.i74 [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load i8, ptr %i.bs, align 1, !alias.scope !230, !noalias !233, !noundef !4 ; 2 uses
  switch i8 %i.bv, label %bb.ac [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  ]

thread-pre-split.i.i74:                           ; preds = %bb.aa
  %.pr.i.i75 = load i8, ptr %i.bs, align 1, !alias.scope !230, !noalias !233
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split.i.i74, %bb.ab
  %i.bw = phi i8 [ %.pr.i.i75, %thread-pre-split.i.i74 ], [ %i.bv, %bb.ab ]
  %cond.i.i57 = icmp eq i8 %i.bw, 43              ; 2 uses
  %i.bx = sext i1 %cond.i.i57 to i64
  %.sroa.15.0.i.i58 = add nsw i64 %i.bu, %i.bx    ; 4 uses
  %.sroa.0.0.idx.i.i59 = zext i1 %cond.i.i57 to i64
  %.sroa.0.0.i.i60 = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.idx.i.i59 ; 2 uses
  %i.by = icmp samesign ult i64 %.sroa.15.0.i.i58, 17
  br i1 %i.by, label %.preheader.i.i67, label %.preheader56.i.i61.preheader

.preheader.i.i67:                                 ; preds = %bb.ac
  %.not5366.i.i68 = icmp eq i64 %.sroa.15.0.i.i58, 0
  br i1 %.not5366.i.i68, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

.preheader56.i.i61:                               ; preds = %bb.ad
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i64127, i64 1
  %i.ca = add nsw i64 %.sroa.15.1.i.i63126, -1    ; 2 uses
  %.not52.i.not.i65.not = icmp eq i64 %i.ca, 0
  br i1 %.not52.i.not.i65.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61.preheader

.preheader56.i.i61.preheader:                     ; preds = %bb.ac, %.preheader56.i.i61
  %.sroa.0.1.i.i64127 = phi ptr [ %i.bz, %.preheader56.i.i61 ], [ %.sroa.0.0.i.i60, %bb.ac ] ; 2 uses
  %.sroa.15.1.i.i63126 = phi i64 [ %i.ca, %.preheader56.i.i61 ], [ %.sroa.15.0.i.i58, %bb.ac ]
  %.sroa.042.0.i.i62125 = phi i64 [ %i.cj, %.preheader56.i.i61 ], [ 0, %bb.ac ]
  %i.cb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i62125, i64 10) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %.preheader56.i.i61.preheader
  %i.cd = extractvalue { i64, i1 } %i.cb, 0       ; 2 uses
  %i.ce = load i8, ptr %.sroa.0.1.i.i64127, align 1, !alias.scope !230, !noalias !233, !noundef !4
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = add i64 %i.cd, %i.ci                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cd
  %or.cond.i66 = select i1 %i.ch, i1 true, i1 %i.ck, !prof !192
  br i1 %or.cond.i66, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.preheader56.i.i61, !prof !192

.lr.ph.i.i69:                                     ; preds = %.preheader.i.i67, %bb.ae
  %.sroa.0.269.i.i70 = phi ptr [ %i.cr, %bb.ae ], [ %.sroa.0.0.i.i60, %.preheader.i.i67 ] ; 2 uses
  %.sroa.15.268.i.i71 = phi i64 [ %i.cq, %bb.ae ], [ %.sroa.15.0.i.i58, %.preheader.i.i67 ]
  %.sroa.042.267.i.i72 = phi i64 [ %i.ct, %bb.ae ], [ 0, %.preheader.i.i67 ]
  %i.cl = load i8, ptr %.sroa.0.269.i.i70, align 1, !alias.scope !230, !noalias !233, !noundef !4
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9                   ; 3 uses
  br i1 %i.co, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i69
  %i.cp = mul i64 %.sroa.042.267.i.i72, 10
  %i.cq = add nsw i64 %.sroa.15.268.i.i71, -1     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i70, i64 1
  %i.cs = zext nneg i32 %i.cn to i64
  %i.ct = add i64 %i.cp, %i.cs                    ; 2 uses
  %.not53.i.i73 = icmp eq i64 %i.cq, 0
  br i1 %.not53.i.i73, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46, label %.lr.ph.i.i69

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46: ; preds = %bb.ad, %.preheader56.i.i61.preheader, %.preheader56.i.i61, %bb.ae, %.lr.ph.i.i69, %.preheader.i.i67, %bb.ab, %bb.ab, %bb.aa
  %.sroa.102.0.i47 = phi i64 [ undef, %bb.ab ], [ 0, %.preheader.i.i67 ], [ undef, %bb.aa ], [ undef, %bb.ab ], [ undef, %.lr.ph.i.i69 ], [ %i.ct, %bb.ae ], [ undef, %bb.ad ], [ undef, %.preheader56.i.i61.preheader ], [ %i.cj, %.preheader56.i.i61 ]
  %.sink.i.i48 = phi i1 [ true, %bb.ab ], [ false, %.preheader.i.i67 ], [ true, %bb.aa ], [ true, %bb.ab ], [ %i.co, %bb.ae ], [ %i.co, %.lr.ph.i.i69 ], [ true, %bb.ad ], [ true, %.preheader56.i.i61.preheader ], [ false, %.preheader56.i.i61 ] ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i49 = load i64, ptr %i.c, align 8, !alias.scope !235 ; 2 uses
  %i.cv = icmp eq i64 %.val2.i.i.i49, 0
  br i1 %i.cv, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val3.i.i.i50 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !242, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i50, i64 noundef %.val2.i.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !243
  br label %common.resume

bb.ah:                                            ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i46
  %.val.i.i.i52 = load i64, ptr %i.c, align 8, !alias.scope !235 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i52, 0
  br i1 %i.cw, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val1.i.i.i53 = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !alias.scope !242, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i53, i64 noundef %.val.i.i.i52, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !246
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit

_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.3.0.i56 = select i1 %.sink.i.i48, i64 undef, i64 %.sroa.102.0.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  %i.cx = icmp eq i64 %.sroa.3.0.i56, 0
  %or.cond.not = select i1 %.sink.i.i48, i1 true, i1 %i.cx
  br i1 %or.cond.not, label %bb.ak, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorEECskVyUMSjkkSy_10rayon_core.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0B7_.exit
  %i.cy = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.cz = extractvalue { i64, ptr } %i.cy, 0
  %i.da = extractvalue { i64, ptr } %i.cy, 1      ; 4 uses
  %i.db = trunc nuw i64 %i.cz to i1
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  br i1 %i.db, label %bb.al, label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  %i.dd = and i64 %i.dc, 3
  switch i64 %i.dd, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 3, label %bb.am
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77
    i64 1, label %bb.an
  ], !prof !37

bb.am:                                            ; preds = %bb.al
  %i.de = icmp ult ptr %i.da, inttoptr (i64 188978561024 to ptr)
  %i.df = and i64 %i.dc, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.dg)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

bb.an:                                            ; preds = %bb.al
  %i.dh = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !252, !noalias !249
  store i8 3, ptr %i.a, align 8, !alias.scope !252, !noalias !249
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di), !noalias !249
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit.i77: ; preds = %bb.an, %bb.am, %bb.al, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !249
  br label %_RNCNvMs2_CskVyUMSjkkSy_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threads0B7_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !255, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b, i64 noundef %2) #35
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #34
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CskVyUMSjkkSy_10rayon_coreNtB5_13Configuration5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @_RINvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnEB5_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %i.c, align 8, !range !163, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.h = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #34 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit: ; preds = %bb.b
  store i64 %i.d, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @7, ptr %i.m, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs4_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildError14is_unsupported(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = ptrtoint ptr %.val to i64                ; 3 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !37

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = tail call noundef i8 %i.j(i32 noundef %i.g), !inline_history !256
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.d, 32
  %i.m = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.l to i8   ; 2 uses
  %i.n = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !257, !noundef !4
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %.val, i64 31
  %i.r = load i8, ptr %i.q, align 8, !range !257, !noundef !4
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i8 %.sroa.0.0.i, 36
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.s, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1D_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !78, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !258
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !258
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !258, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !79, !noalias !258, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !258, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !258
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !258
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !78, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !261
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !261
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noalias !261, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_2
