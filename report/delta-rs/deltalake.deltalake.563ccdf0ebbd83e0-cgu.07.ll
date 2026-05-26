inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake:bb.a
  store ptr %i.p, ptr %i.d, align 8, !noalias !10822
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !10822
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #34
          to label %bb.d unwind label %bb.c, !noalias !10817

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #37
          to label %common.resume unwind label %bb.e, !noalias !10817

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10817
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ai, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %.body.i ], [ %i.t, %bb.c ], [ %i.cq, %bb.ad ], [ %i.dl, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10817, !noalias !10820, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !40, !alias.scope !10817, !noalias !10820, !noundef !3 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ae, align 8
  store ptr %.0.val, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10823, !noalias !10826, !noundef !3 ; 4 uses
  %i.ah = load i64, ptr %i.ac, align 8, !range !92, !alias.scope !10823, !noalias !10826, !noundef !3
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.l unwind label %bb.h, !noalias !10826

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !10828
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #35
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.w, i8 %i.y) #37
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !10823, !noalias !10826, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aq = add nsw i64 %i.ag, 1                    ; 2 uses
  store i64 %i.aq, ptr %i.af, align 8, !alias.scope !10823, !noalias !10826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ar = icmp slt i64 %i.ag, 384307168202282325
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !3 ; 2 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = zext i1 %i.aw to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.ax, %bb.m ], [ 0, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store atomic i8 %.sroa.0.0.i, ptr %i.ay seq_cst, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !46

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.bd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit, !prof !37

bb.r:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w)
  br label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit

bb.s:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.r
  %i.bh = load atomic i64, ptr %i.k seq_cst, align 128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 128
  %.unshifted.i = xor i64 %i.bj, %i.bh
  %i.bk = icmp ult i64 %.unshifted.i, 2
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bm = cmpxchg ptr %i.bl, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register.exit
  %i.bn = load atomic i64, ptr %i.bi seq_cst, align 128
  %i.bo = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !range !6, !noundef !3 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.bu, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.v, %bb.w
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 3 uses
  switch i64 %i.bx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.w
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.w:                                             ; preds = %.split.us.i
  call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.v, %bb.z
  %i.by = load atomic i64, ptr %i.bw acquire, align 8 ; 3 uses
  switch i64 %i.by, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.x
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.x:                                             ; preds = %.split.i
  %i.bz = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ca = extractvalue { i64, i32 } %i.bz, 0      ; 3 uses
  %i.cb = extractvalue { i64, i32 } %i.bz, 1      ; 2 uses
  %i.cc = icmp eq i64 %i.ca, %i.bs
  %i.cd = icmp slt i64 %i.ca, %i.bs
  %i.ce = icmp samesign ult i32 %i.cb, %i.bu
  %spec.select.i4 = select i1 %i.cc, i1 %i.ce, i1 %i.cd
  br i1 %spec.select.i4, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = cmpxchg ptr %i.bw, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.cf, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.cf, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.z:                                             ; preds = %bb.x
  %i.cg = call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.bs, i32 noundef range(i32 0, 1000000001) %i.bu, i64 noundef %i.ca, i32 noundef %i.cb) ; 2 uses
  %i.ch = extractvalue { i64, i32 } %i.cg, 0
  %i.ci = extractvalue { i64, i32 } %i.cg, 1
  call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv, i64 noundef %i.ch, i32 noundef %i.ci)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.y
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.y ], [ %i.bx, %.split.us.i ], [ %i.bx, %.split.us.i ], [ %i.by, %.split.i ], [ %i.by, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !10837

bb.aa:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.ab:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #36
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5: ; preds = %bb.y, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10838
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !10838
  call void @llvm.experimental.noalias.scope.decl(metadata !10841)
  %i.cj = load i64, ptr %i.c, align 8, !range !34, !alias.scope !10841, !noalias !10844, !noundef !3
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ac, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5, !prof !37

bb.ac:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10846
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !10841, !noalias !10844, !nonnull !3, !align !39, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !40, !alias.scope !10841, !noalias !10844, !noundef !3
  store ptr %i.cm, ptr %i.a, align 8, !noalias !10846
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.co, ptr %i.cp, align 8, !noalias !10846
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #34
          to label %bb.ae unwind label %bb.ad, !noalias !10847

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.af, !noalias !10847

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10847
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5: ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !10841, !noalias !10844, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !range !40, !alias.scope !10841, !noalias !10844, !noundef !3 ; 2 uses
  %i.cw = trunc nuw i8 %i.cv to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10838
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10848)
  call void @llvm.experimental.noalias.scope.decl(metadata !10851)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !10851, !noalias !10853, !nonnull !3, !noundef !3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !10851, !noalias !10853, !noundef !3 ; 3 uses
  %.idx = mul nuw nsw i64 %i.db, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx
  %i.dd = icmp eq i64 %i.db, 0
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.df = add nuw nsw i64 %i.di, 1
  %i.dg = icmp eq ptr %i.de, %i.dc
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5, %bb.ag
  %i.dh = phi ptr [ %i.de, %bb.ag ], [ %i.cz, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5 ] ; 2 uses
  %i.di = phi i64 [ %i.df, %bb.ag ], [ 0, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !10854, !noalias !10859, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.dk, %i.i
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cx, i64 noundef %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
          to label %._RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i unwind label %bb.ai, !noalias !10838

._RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.da, align 8, !noalias !10838
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

._crit_edge:                                      ; preds = %bb.ag, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i5
  store ptr null, ptr %i.b, align 8, !alias.scope !10848, !noalias !10864
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ct, i8 %i.cv) #37
          to label %common.resume unwind label %bb.ap, !noalias !10838

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i: ; preds = %._crit_edge, %._RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i
  %i.dm = phi i64 [ %.pre.i, %._RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i ], [ %i.db, %._crit_edge ] ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !10838, !noundef !3 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = zext i1 %i.ds to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %.sroa.0.0.i8 = phi i8 [ %i.dt, %bb.aj ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i ]
  store atomic i8 %.sroa.0.0.i8, ptr %i.ay seq_cst, align 8, !noalias !10838
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10838
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  br i1 %i.cw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !10838
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.am, !prof !46

bb.am:                                            ; preds = %bb.al
  %i.dy = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35, !noalias !10838
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.an

bb.an:                                            ; preds = %bb.am
  store atomic i8 1, ptr %i.du monotonic, align 4, !noalias !10838
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.dz = atomicrmw xchg ptr %i.ct, i32 0 release, align 4, !noalias !10838
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.ao, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit, !prof !37

bb.ao:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ct), !noalias !10838
  br label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit

bb.ap:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10838
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, %bb.ao
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %bb.as, label %bb.aq, !prof !37

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.aq:                                            ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ec = atomicrmw sub ptr %.sroa.0.0.copyload1, i64 1 release, align 8, !noalias !10865
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.as:                                            ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !39, !noundef !3
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store i8 0, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.c

bb.b:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit66.thread, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, %bb.t
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !10874, !noalias !10877, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.t, align 8, !range !92, !alias.scope !10874, !noalias !10877, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.i unwind label %bb.e, !noalias !10877

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !10879
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.at, %bb.z, %bb.f, %bb.e, %bb.af, %bb.az
  %.sroa.019.2 = phi i1 [ false, %bb.az ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.at ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.az ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.dz, %bb.at ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.j) #37
          to label %.body61 unwind label %bb.aq

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bd, %bb.bf
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bd ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bf ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10874, !noalias !10877, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !10874, !noalias !10877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !range !40, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !46

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !6, !noundef !3 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bj = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bk = extractvalue { i64, i32 } %i.bj, 0
  %i.bl = extractvalue { i64, i32 } %i.bj, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !10888

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #34
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bn)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bp)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bq = load atomic i8, ptr %i.o acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10wait_readyCs7p2uQeJxui2_9deltalake.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 4 uses
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 4 uses
  %i.bs = shl i32 %.sroa.0.02.i, 1
  %i.bt = or i32 %i.bs, 1
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.bw = icmp ult i32 %i.bv, 7
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !10889

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.bt
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10wait_readyCs7p2uQeJxui2_9deltalake.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !10890)
  %i.ca = load i64, ptr %i.g, align 8, !range !34, !alias.scope !10890, !noalias !10893, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !37

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10895
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !10890, !noalias !10893, !nonnull !3, !align !39, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !40, !alias.scope !10890, !noalias !10893, !noundef !3
  store ptr %i.cd, ptr %i.a, align 8, !noalias !10895
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !10895
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #34
          to label %bb.aa unwind label %bb.z, !noalias !10890

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body unwind label %bb.ab, !noalias !10890

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10890
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !10890, !noalias !10893, !nonnull !3, !align !39, !noundef !3 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !40, !alias.scope !10890, !noalias !10893, !noundef !3 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !10896)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !10896, !noalias !10899, !nonnull !3, !noundef !3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !10896, !noalias !10899, !noundef !3 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx64
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ad:                                            ; preds = %.lr.ph63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !10901, !noalias !10906, !noundef !3
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ck, i8 %i.cm) #37
          to label %.body unwind label %bb.aq

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !10911

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !10912)
  call void @llvm.experimental.noalias.scope.decl(metadata !10915)
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake:bb.a

bb.bh:                                            ; preds = %.body61
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val33 = load i8, ptr %i.ff, align 8, !range !40, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.q, i8 %.val33) #37
          to label %.body61.thread unwind label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 11 uses
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !39, !noundef !3
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  store i8 1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store i8 0, ptr %i.n, align 8
  store i64 4, ptr %i.j, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !39, !noundef !3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.d

bb.b:                                             ; preds = %.body
  br i1 %.sroa.04.2, label %bb.bo, label %bb.bn

bb.c:                                             ; preds = %bb.bm, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit55.thread, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, %bb.u
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.l, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.u, align 8
  store ptr %.0.val, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10966, !noalias !10969, !noundef !3 ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !range !92, !alias.scope !10966, !noalias !10969, !noundef !3
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.j unwind label %bb.f, !noalias !10969

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !10971
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ay, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.be
  %.sroa.04.2 = phi i1 [ false, %bb.be ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.ay ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.be ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.ed, %bb.ay ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.j) #37
          to label %bb.b unwind label %bb.av

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bm, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bi, %bb.bk
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bi ], [ false, %bb.bm ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bk ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !10966, !noalias !10969, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !10966, !noalias !10969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !40, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !37

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !6, !noundef !3 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bh, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bi = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bj = extractvalue { i64, i32 } %i.bi, 0
  %i.bk = extractvalue { i64, i32 } %i.bi, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bj, i32 noundef %i.bk)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !10888

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #34
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bm)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bo)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bp = load atomic i8, ptr %i.n acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 4 uses
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 4 uses
  %i.br = shl i32 %.sroa.0.02.i, 1
  %i.bs = or i32 %i.br, 1
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 7
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !10980

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.bs
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !10981)
  %i.bz = load i64, ptr %i.g, align 8, !range !34, !alias.scope !10981, !noalias !10984, !noundef !3
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !37

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10986
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !10981, !noalias !10984, !nonnull !3, !align !39, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !40, !alias.scope !10981, !noalias !10984, !noundef !3
  store ptr %i.cc, ptr %i.a, align 8, !noalias !10986
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !10986
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #34
          to label %bb.ab unwind label %bb.aa, !noalias !10981

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body unwind label %bb.ac, !noalias !10981

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10981
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !10981, !noalias !10984, !nonnull !3, !align !39, !noundef !3 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !40, !alias.scope !10981, !noalias !10984, !noundef !3 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !10987)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !10987, !noalias !10990, !nonnull !3, !noundef !3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !10987, !noalias !10990, !noundef !3 ; 2 uses
  %.idx66 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx66
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !10992, !noalias !10997, !noundef !3
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.cj, i8 %i.cl) #37
          to label %.body unwind label %bb.av

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !10911

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !11002)
  call void @llvm.experimental.noalias.scope.decl(metadata !11005)
end_hunk_1
