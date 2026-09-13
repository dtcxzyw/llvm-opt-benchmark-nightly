Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/tower-b9b886617e464995.tower.78b054c8cecd5f04-cgu.0?download=true
begin_hunk_0_@_RNvMNtNtCsamqgnMfIDNU_5tower6buffer5errorNtB2_12ServiceError3new:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtBG_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1S_4SendEL_EEECsamqgnMfIDNU_5tower(ptr nonnull %0, ptr nonnull %1) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB19_6marker4SyncNtB1G_4SendEL_EEE3newCsamqgnMfIDNU_5tower.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5limit4rate4rateNtB2_4Rate3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = zext i64 %2 to i128
  %i.b = mul nuw nsw i128 %i.a, 1000000000
  %i.c = zext nneg i32 %3 to i128
  %i.d = or i128 %i.b, %i.c
  %.not1 = icmp eq i128 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5limit4rate5layerNtB2_14RateLimitLayer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = zext i64 %2 to i128
  %i.b = mul nuw nsw i128 %i.a, 1000000000
  %i.c = zext nneg i32 %3 to i128
  %i.d = or i128 %i.b, %i.c
  %.not1.i = icmp eq i128 %i.d, 0
  br i1 %.not1.i, label %bb.d, label %_RNvMNtNtNtCsamqgnMfIDNU_5tower5limit4rate4rateNtB2_4Rate3new.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30, !noalias !24
  unreachable

_RNvMNtNtNtCsamqgnMfIDNU_5tower5limit4rate4rateNtB2_4Rate3new.exit: ; preds = %bb.c
  store i64 %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i32 noundef %3, float noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %1, 60
  %i.b = icmp ult i64 %1, 61
  %i.c = icmp eq i32 %2, 0
  %spec.select38 = select i1 %i.a, i1 %i.c, i1 %i.b
  br i1 %spec.select38, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = fcmp ult float %4, 0.000000e+00
  br i1 %i.d, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = fcmp ugt float %4, 1.000000e+03
  br i1 %i.e, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = icmp ult i32 %3, 2147483647
  br i1 %i.f, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #30
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.g = fcmp oeq float %4, 0.000000e+00
  br i1 %i.g, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.h = fcmp ugt float %4, 1.000000e+00
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.i = fdiv float 1.000000e+03, %4
  %i.j = tail call i64 @llvm.fptosi.sat.i64.f32(float %i.i)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.k = fdiv float 1.000000e+00, %4
  %i.l = tail call i64 @llvm.fptosi.sat.i64.f32(float %i.k)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.sroa.028.0 = phi i64 [ 1000, %bb.m ], [ 1, %bb.n ], [ 0, %bb.k ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.m ], [ %i.l, %bb.n ], [ 1, %bb.k ] ; 3 uses
  %i.m = zext nneg i32 %3 to i64
  %i.n = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.m, i64 %1) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0
  %i.p = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.p, label %bb.p, label %bb.q, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.q = icmp sgt i64 %1, -1
  %. = select i1 %i.q, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.09.0 = phi i64 [ %i.o, %bb.o ], [ %., %bb.p ] ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.09.0, i64 %.sroa.0.0) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 0
  %i.t = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.t, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.u = xor i64 %.sroa.09.0, %.sroa.0.0
  %i.v = icmp sgt i64 %i.u, -1
  %.39 = select i1 %i.v, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.011.0 = phi i64 [ %i.s, %bb.q ], [ %.39, %bb.r ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !27
  %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed = tail call align 8 dereferenceable_or_null(80) ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 80, i64 8) ; 3 uses
  %i.w = icmp eq ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, null
  br i1 %i.w, label %bb.t, label %bb.v, !prof !9

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 80) #30
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.x = udiv i64 %1, 10
  %i.y = urem i64 %1, 10
  %i.z = mul nuw nsw i64 %i.y, 1000000000
  %i.aa = urem i32 %2, 10
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = or disjoint i64 %i.z, %i.ab
  %i.ad = udiv i32 %2, 10
  %i.ae = udiv i64 %i.ac, 10
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  %5 = icmp samesign ugt i32 %i.ag, 999999999     ; 2 uses
  %.sroa.3.0.i.i = select i1 %5, i32 0, i32 %i.ag
  %6 = zext i1 %5 to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.x, %6
  %i.ah = extractvalue { i64, i32 } %i.ar, 1
  %i.ai = extractvalue { i64, i32 } %i.ar, 0
  store i32 0, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %.sroa.415.0..sroa_idx, align 4
  %.sroa.516.sroa.3.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.516.sroa.3.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.516.sroa.4.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ah, ptr %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.011.0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 10, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0.i.i, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.3.0.i.i, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.028.0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0, ptr %i.aq, align 8
  ret void

bb.v:                                             ; preds = %bb.s
  %i.ar = invoke { i64, i32 } @_RNvMNtNtCseXbohGRa9jr_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.u unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed, i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budgetNtB2_9TpsBudget6expire(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !32
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0), !noalias !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !32
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationE4lockB15_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !32
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationE4lockB15_.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationE4lockB15_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !32
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEINtBM_11PoisonErrorBH_EE6expectB1K_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationE4lockB15_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  store ptr %0, ptr %i.a, align 8, !noalias !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !33
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #30
          to label %bb.g unwind label %bb.f, !noalias !33

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEEEB1X_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #31
          to label %common.resume unwind label %bb.h, !noalias !33

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #32, !noalias !33
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.r, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEINtBM_11PoisonErrorBH_EE6expectB1K_.exit: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationE4lockB15_.exit
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = invoke { i64, i32 } @_RNvMNtNtCseXbohGRa9jr_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.invoke74, %.invoke72, %.invoke, %bb.j, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEINtBM_11PoisonErrorBH_EE6expectB1K_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEEB1E_(ptr nonnull %0, i8 %.sroa.01.0.i.i) #31
          to label %common.resume unwind label %bb.aj

bb.j:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEINtBM_11PoisonErrorBH_EE6expectB1K_.exit
  %i.s = extractvalue { i64, i32 } %i.q, 0        ; 2 uses
  %i.t = extractvalue { i64, i32 } %i.q, 1        ; 2 uses
  store i64 %i.s, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !range !11, !noundef !3
  %i.z = invoke { i64, i32 } @_RNvMNtNtCseXbohGRa9jr_5tokio4time7instantNtB2_7Instant25saturating_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %i.w, i32 noundef %i.y)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = extractvalue { i64, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i64, i32 } %i.z, 1       ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %i.ad
  br i1 %i.ae, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.af = icmp ult i32 %i.ab, 1000000000
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load i32, ptr %i.ag, align 8, !range !11, !noundef !3
  %i.ai = icmp samesign ult i32 %i.ab, %i.ah
  br i1 %i.ai, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp ult i64 %i.aa, %i.ad
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = atomicrmw xchg ptr %i.ak, i64 0 seq_cst, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !3 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3 ; 2 uses
  %i.ar = icmp ult i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.r, label %.invoke74

bb.n:                                             ; preds = %.split, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.p, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.av = call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.av, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.aw = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEEB1E_.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtNtCsamqgnMfIDNU_5tower5retry6budget10tps_budget10GenerationEEB1E_.exit, !prof !9

bb.r:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.an
  store atomic i64 %i.al, ptr %i.az seq_cst, align 8
  %i.ba = load i64, ptr %i.ap, align 8, !noundef !3 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.invoke72, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr %i.am, align 8, !noundef !3
  %i.bd = add i64 %i.bc, 1
  %i.be = urem i64 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre = load i64, ptr %i.ac, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.ai, %bb.s
  %i.bg = phi i64 [ %i.ba, %bb.s ], [ %i.cn, %bb.ai ] ; 2 uses
  %i.bh = phi i64 [ %.pre, %bb.s ], [ %i.bz, %bb.ai ] ; 2 uses
  %.sroa.5.0 = phi i32 [ %i.ab, %bb.s ], [ %.sroa.4.0.i, %bb.ai ] ; 5 uses
  %.sroa.05.0 = phi i64 [ %i.aa, %bb.s ], [ %.sroa.0.0.i, %bb.ai ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %i.be, %bb.s ], [ %i.cq, %bb.ai ] ; 5 uses
  %i.bi = icmp eq i64 %.sroa.05.0, %i.bh
  br i1 %i.bi, label %.split37, label %bb.u

.split37:                                         ; preds = %bb.t
  %i.bj = icmp ult i32 %.sroa.5.0, 1000000000
  call void @llvm.assume(i1 %i.bj)
  %i.bk = load i32, ptr %i.bf, align 8, !range !11, !noundef !3
  %i.bl = icmp samesign ugt i32 %.sroa.5.0, %i.bk
  br i1 %i.bl, label %bb.z, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp ugt i64 %.sroa.05.0, %i.bh
  br i1 %i.bm, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.split37, %bb.u
  store i64 %.sroa.0.0, ptr %i.am, align 8
  store i64 %i.s, ptr %i.v, align 8
  store i32 %i.t, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.p, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i27, label %bb.w

end_hunk_0
