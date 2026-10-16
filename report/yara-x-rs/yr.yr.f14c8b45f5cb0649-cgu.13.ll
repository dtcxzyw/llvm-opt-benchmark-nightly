Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.13?download=true
inline.NumInlined: 1887
inline.NumDeleted: 755
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB5_9SyncWaker6notify:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RNCNvMNtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB4_5Waker10try_select0CskIqAKC4t9Ft_2yr.exit.i.i, %bb.i, %.noexc7, %bb.w, %_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB2_5Waker10try_select.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.w)
          to label %bb.y unwind label %bb.g

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryEECskIqAKC4t9Ft_2yr.exit
  %i.cd = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 384307168202282326
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !7 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 384307168202282326
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp eq i64 %i.ch, 0
  %i.ck = zext i1 %i.cj to i8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.0.0 = phi i8 [ %i.ck, %bb.z ], [ 0, %bb.y ]
  store atomic i8 %.sroa.0.0, ptr %i.e seq_cst, align 8
  br label %bb.r

bb.ab:                                            ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsgqCuqWkNCVj_17crossbeam_channel5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %0, i64 noundef range(i64 3, 0) %1, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerE4lockCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.d = load i64, ptr %i.c, align 8, !range !12, !alias.scope !1614, !noundef !7
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskIqAKC4t9Ft_2yr.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1615
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1614, !nonnull !7, !align !11, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !14, !alias.scope !1614, !noundef !7
  store ptr %i.g, ptr %i.a, align 8, !noalias !1615
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.i, ptr %i.j, align 8, !noalias !1615
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #34
          to label %bb.d unwind label %bb.c, !noalias !1614

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %common.resume unwind label %bb.e, !noalias !1614

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1614
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.aa, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1614, !nonnull !7, !align !11, !noundef !7 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !14, !alias.scope !1614, !noundef !7 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskIqAKC4t9Ft_2yr.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1616, !noundef !7 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !range !22, !alias.scope !1616, !noundef !7
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5EntryE8grow_oneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.l unwind label %bb.h, !noalias !1617

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !1618
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgqCuqWkNCVj_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.k:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCskIqAKC4t9Ft_2yr.exit
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEECskIqAKC4t9Ft_2yr(ptr nonnull %i.n, i8 %i.p) #33
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1616, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ah = add nsw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp slt i64 %i.x, 384307168202282325
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !noundef !7 ; 2 uses
  %i.am = icmp ult i64 %i.al, 384307168202282326
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, 0
  %i.ao = zext i1 %i.an to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %i.ao, %bb.m ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br i1 %i.q, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEECskIqAKC4t9Ft_2yr.exit, !prof !8

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsgqCuqWkNCVj_17crossbeam_channel5waker5WakerEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
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
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !24, !alias.scope !1627, !noundef !7
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskIqAKC4t9Ft_2yr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskIqAKC4t9Ft_2yr.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.d, %bb.e
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskIqAKC4t9Ft_2yr.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECskIqAKC4t9Ft_2yr.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #38
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %4
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !12, !noundef !7
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %5, align 8, !nonnull !7, !align !11, !noundef !7 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i8, ptr %6, align 8, !range !14, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !7 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !6

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit, !prof !8

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !22, !noundef !7
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !7, !noundef !7
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !7, !align !11, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22, !prof !8

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1628
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #26, !noalias !1628 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !8

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #33
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i25 = load ptr, ptr %7, align 8, !alias.scope !1629 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i26 = load i8, ptr %8, align 8, !range !34, !alias.scope !1629, !noundef !7 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1629
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !6

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !1629
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !1629
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !1629
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32, !prof !8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !1629
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1630
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #26, !noalias !1630 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %9, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskIqAKC4t9Ft_2yr.exit9, !prof !8

9:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #34
          to label %.noexc31 unwind label %10

.noexc31:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #33
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCskIqAKC4t9Ft_2yr.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECskIqAKC4t9Ft_2yr.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECskIqAKC4t9Ft_2yr.exit22
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !8

.thread.i:                                        ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4
  %i.e = and i64 %1, 8
  %..i.i = add nuw nsw i64 %i.e, 8
  %.sroa.03.0.i.i = select i1 %i.d, i64 4, i64 %..i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %1, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %or.cond.i.i.i = icmp samesign ugt i64 %i.j, 2305843009213693949
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.e, !prof !1635

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.m = add nuw i64 %i.l, 8
  %i.n = and i64 %i.m, -16                        ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16   ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = icmp ugt i64 %i.p, 9223372036854775792
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs1_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !18

_RNvMs1_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1636
  %i.s = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1636 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = tail call { i64, i64 } @_RNvMNtCs9QmT8tHpLPH_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1636
  br label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i

bb.g:                                             ; preds = %_RNvMs1_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = tail call { i64, i64 } @_RNvMNtCs9QmT8tHpLPH_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.p), !noalias !1636
  br label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i

bb.h:                                             ; preds = %bb.c
  %i.w = tail call { i64, i64 } @_RNvMNtCs9QmT8tHpLPH_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1637 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  br label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i: ; preds = %bb.g, %bb.f
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.12.012.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.013.i = extractvalue { i64, i64 } %.pn.i, 0
  br label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMs1_NtCs9QmT8tHpLPH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.aa = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 2 uses
  %i.ab = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ac = mul nuw nsw i64 %i.ab, 7
  %.sroa.09.0.i.i = select i1 %i.z, i64 %i.aa, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ad, i8 -1, i64 %i.o, i1 false), !noalias !1637
  br label %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit

_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %bb.h, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i
  %.sroa.10.0 = phi i64 [ %i.y, %bb.h ], [ %.sroa.12.012.i, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i ], [ %.sroa.09.0.i.i, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.x, %bb.h ], [ %.sroa.7.013.i, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i ], [ %i.aa, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ null, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.thread.i ], [ %i.ad, %_RINvMsa_NtCs9QmT8tHpLPH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECskIqAKC4t9Ft_2yr.exit.i ], [ @23, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler10RegexSetIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtBR_7RegexIdEEE16with_capacity_inCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 32, i64 noundef %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBR_5rules14FilesizeBoundsEE16with_capacity_inCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 40, i64 noundef %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtNtBR_5rules16HeaderConstraintEE16with_capacity_inCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 32, i64 noundef %1) #37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueEEE14insert_no_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1640
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !7  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !8

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1640
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [48 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14insert_no_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
end_hunk_0
