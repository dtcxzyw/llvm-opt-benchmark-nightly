Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.08?download=true
inline.NumInlined: 1693
inline.NumDeleted: 788
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB5_17JsonOutputHandlerNtB5_13OutputHandler15on_file_scanned:bb.a
bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2418
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !2417, !nonnull !9, !align !10, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !13, !alias.scope !2417, !noundef !9
  store ptr %i.ba, ptr %i.c, align 8, !noalias !2418
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.bc, ptr %i.bd, align 8, !noalias !2418
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #28
          to label %bb.v unwind label %bb.u, !noalias !2417

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEEB2t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #23
          to label %.body unwind label %bb.w, !noalias !2417

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2417
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2417, !nonnull !9, !align !10, !noundef !9 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !range !13, !alias.scope !2417, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB27_6filter6FilterQDNtNtNtB29_6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_NCNvXs3_BI_NtBI_17JsonOutputHandlerNtBI_13OutputHandler15on_file_scanneds0_0ENCB4N_s1_0EEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_(ptr nonnull %i.bh, i8 %i.bj) #23
          to label %.body unwind label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.bm = trunc nuw i8 %i.bj to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !9 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 64051194700380388
  call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  br i1 %i.bm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ab, !prof !30

bb.ab:                                            ; preds = %bb.aa
  %i.bu = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc22 unwind label %bb.r

.noexc22:                                         ; preds = %bb.ab
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc22
  store atomic i8 1, ptr %i.bq monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ac, %.noexc22, %bb.aa, %bb.z
  %i.bv = atomicrmw xchg ptr %i.bh, i32 0 release, align 4
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit, !prof !7

bb.ad:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.h, %.body, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.ae ], [ %.pn, %.body ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit
  %i.bz = icmp ne i64 %i.bo, 0
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i1 %i.bz

bb.ag:                                            ; preds = %bb.y, %.body, %bb.h
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB5_17JsonOutputHandlerNtB5_13OutputHandler7on_done(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 28 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.0115 = alloca [32 x i8], align 8         ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [2 x i8], align 1                 ; 5 uses
  %i.h = alloca [6 x i8], align 4                 ; 6 uses
  %i.i = alloca [2 x i8], align 1                 ; 5 uses
  %i.j = alloca [6 x i8], align 4                 ; 6 uses
  %i.k = alloca [2 x i8], align 1                 ; 5 uses
  %i.l = alloca [6 x i8], align 4                 ; 6 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca [6 x i8], align 4                 ; 6 uses
  %i.o = alloca [2 x i8], align 1                 ; 5 uses
  %i.p = alloca [6 x i8], align 4                 ; 6 uses
  %i.q = alloca [40 x i8], align 1                ; 8 uses
  %i.r = alloca [2 x i8], align 1                 ; 5 uses
  %i.s = alloca [6 x i8], align 4                 ; 6 uses
  %i.t = alloca [2 x i8], align 1                 ; 5 uses
  %i.u = alloca [6 x i8], align 4                 ; 6 uses
  %i.v = alloca [2 x i8], align 1                 ; 5 uses
  %i.w = alloca [6 x i8], align 4                 ; 6 uses
  %i.x = alloca [2 x i8], align 1                 ; 5 uses
  %i.y = alloca [6 x i8], align 4                 ; 6 uses
  %i.z = alloca [2 x i8], align 1                 ; 5 uses
  %i.aa = alloca [6 x i8], align 4                ; 6 uses
  %i.ab = alloca [40 x i8], align 1               ; 6 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 60 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 25 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 6 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.082 = alloca [32 x i8], align 8          ; 5 uses
  %i.ao = alloca [64 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 9 uses
  %i.aq = alloca [24 x i8], align 8               ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !9, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEE4lockB1B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noundef nonnull align 8 %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.aw = load i64, ptr %i.ar, align 8, !range !14, !alias.scope !2855, !noundef !9
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEINtBM_11PoisonErrorBH_EE6unwrapB2g_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2856
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !2855, !nonnull !9, !align !10, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !range !13, !alias.scope !2855, !noundef !9
  store ptr %i.az, ptr %i.ah, align 8, !noalias !2856
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 %i.bb, ptr %i.bc, align 8, !noalias !2856
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 43, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #28
          to label %bb.d unwind label %bb.c, !noalias !2855

bb.c:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEEB2t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah) #23
          to label %common.resume unwind label %bb.e, !noalias !2855

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2855
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i, %bb.ew, %.body21, %.body18, %bb.et, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.yn, %bb.et ], [ %i.bd, %bb.c ], [ %.pn12125, %bb.ew ], [ %eh.lpad-body59, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i ], [ %eh.lpad-body, %.body21 ], [ %eh.lpad-body19, %.body18 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEINtBM_11PoisonErrorBH_EE6unwrapB2g_.exit: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !2855, !nonnull !9, !align !10, !noundef !9 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !13, !alias.scope !2855, !noundef !9
  %i.bj = trunc nuw i8 %i.bi to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  store i64 0, ptr %i.bk, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br i1 %i.bj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEINtBM_11PoisonErrorBH_EE6unwrapB2g_.exit
  %i.bm = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.bp = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.bp, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEINtBM_11PoisonErrorBH_EE6unwrapB2g_.exit
  %i.bq = atomicrmw xchg ptr %i.bg, i32 0 release, align 4
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit, !prof !7

bb.i:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.ep, %bb.j
  %.sroa.02.1.lpad-body = phi i8 [ %.sroa.02.1, %bb.j ], [ %.sroa.0.2, %bb.ep ]
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %i.yl, %bb.ep ] ; 2 uses
  %2 = trunc nuw i8 %.sroa.02.1.lpad-body to i1
  br i1 %2, label %bb.ew, label %common.resume

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i57, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit
  %.sroa.02.1 = phi i8 [ 1, %bb.l ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i57 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEEB2a_.exit
  %i.bt = load i64, ptr %i.ak, align 8, !range !14, !noundef !9
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !41, !noundef !9 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.bx, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #28
          to label %bb.ev unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.bx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, 5
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bz, ptr noundef nonnull align 1 dereferenceable(6) @236, i64 6, i1 false)
  store i64 %i.bw, ptr %i.aq, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.bz, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 6, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load i8, ptr %i.cb, align 8, !range !13, !noundef !9
  %i.cd = trunc nuw i8 %i.cc to i1                ; 2 uses
  br i1 %i.cd, label %bb.cy, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2858
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.cz

.noexc:                                           ; preds = %bb.n
  %i.cf = load i64, ptr %i.ae, align 8, !range !14, !noalias !2858, !noundef !9
  %i.cg = trunc nuw i64 %i.cf to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !41, !noalias !2858, !noundef !9 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.cg, label %bb.o, label %bb.p, !prof !7

bb.o:                                             ; preds = %.noexc
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !2858
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ci, i64 %i.ck) #28
          to label %.noexc17 unwind label %bb.cz

.noexc17:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.noexc
  %i.cl = load ptr, ptr %i.cj, align 8, !noalias !2858, !nonnull !9, !noundef !9
  %i.cm = icmp samesign ugt i64 %i.ci, 127
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2858
  store i64 %i.ci, ptr %i.af, align 8, !noalias !2858
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cn, align 8, !noalias !2858
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store i64 0, ptr %i.co, align 8, !noalias !2858
  call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2860
  store ptr %i.af, ptr %i.ad, align 8, !noalias !2860
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 21 uses
  store ptr @26, ptr %i.cp, align 8, !noalias !2860
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 21 uses
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2860
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 36 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 22 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  call void @llvm.experimental.noalias.scope.decl(metadata !2862)
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc.i:                                         ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !2863 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.val10.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !2863
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc3.i:                                        ; preds = %.noexc.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc4.i:                                        ; preds = %.noexc3.i
  invoke fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef range(i64 4, 11) 7) #29
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524

.noexc5.i:                                        ; preds = %.noexc4.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc6.i:                                        ; preds = %.noexc5.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val10.i.i.i) #29
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.val11.i.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !2863 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.val12.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !2863 ; 2 uses
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc9.i:                                        ; preds = %.noexc8.i
  invoke fastcc void @_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr(ptr nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef range(i64 4, 11) 7) #29
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524

.noexc10.i:                                       ; preds = %.noexc9.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc11.i:                                       ; preds = %.noexc10.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val12.i.i.i, 144
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i) ]
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2866, !noalias !2867
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2866, !noalias !2867
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc12.i:                                       ; preds = %.noexc11.i
  %cond.i.i.i.i.i.i.i.i = icmp eq i64 %.val12.i.i.i, 0
  br i1 %cond.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc12.i
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2868, !noalias !2867
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc12.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %.sroa.09.124.i.sroa.gep1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  br label %.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i

.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i:       ; preds = %.noexc158.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i = phi i1 [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ false, %.noexc158.i ] ; 2 uses
  %i.eb = phi ptr [ %.val11.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %.noexc158.i ] ; 12 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  call void @llvm.experimental.noalias.scope.decl(metadata !2870)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !2871, !noalias !2872, !nonnull !9, !noundef !9 ; 2 uses
  %..i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i, ptr @127, ptr @131
  %.634.i = select i1 %.sroa.6.0.i.i.i.i.i.i.i.i, i64 1, i64 2
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %..i, i64 noundef range(i64 0, -9223372036854775808) %.634.i)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc14.i:                                       ; preds = %.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i
  %i.ed = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2873, !noalias !2874, !noundef !9 ; 2 uses
  %i.ee = load ptr, ptr %i.cp, align 8, !alias.scope !2873, !noalias !2874, !nonnull !9, !noundef !9 ; 2 uses
  %i.ef = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2873, !noalias !2874, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc14.i, %.noexc16.i
  %.sroa.05.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eg, %.noexc16.i ], [ 0, %.noexc14.i ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ef)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc16.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = add nuw i64 %.sroa.05.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eg, %i.ed
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2875, !noalias !2874
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !2876, !noalias !2877
  %.pre93.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2876, !noalias !2877
  br label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc14.i
  %i.eh = phi i64 [ %.pre93.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ef, %.noexc14.i ]
  %i.ei = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.noexc14.i ]
  %i.ej = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.noexc14.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 96 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !2881, !noalias !2882, !noundef !9
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.el, null
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB5_17JsonOutputHandlerNtB5_13OutputHandler7on_done:bb.a
_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionIBT_NtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler10StringJsonEEEB3I_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3067, !noalias !2950
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionIBT_NtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler10StringJsonEEEB3I_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  %.val.i.i113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !3068, !noalias !2874, !nonnull !9, !noundef !9 ; 3 uses
  %i.tz = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3069, !noalias !2874, !noundef !9
  %i.ua = add i64 %i.tz, -1                       ; 3 uses
  store i64 %i.ua, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3069, !noalias !2874
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc156.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc156.i:                                      ; preds = %bb.cs
  %i.ub = load ptr, ptr %i.cp, align 8, !alias.scope !3069, !noalias !2874, !nonnull !9, !noundef !9
  %i.uc = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3069, !noalias !2874, !noundef !9
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ua, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2P_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3C_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB40_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.noexc156.i, %.noexc157.i
  %.sroa.06.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ud, %.noexc157.i ], [ 0, %.noexc156.i ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ub, i64 noundef range(i64 0, -9223372036854775808) %i.uc)
          to label %.noexc157.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc157.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ud = add nuw i64 %.sroa.06.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ud, %i.ua
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2P_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3C_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB40_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2P_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3C_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB40_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc157.i, %.noexc156.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i113.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc158.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc158.i:                                      ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2P_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3C_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB40_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3070, !noalias !2874
  %i.ue = icmp eq ptr %i.ec, %i.cu
  br i1 %i.ue, label %bb.ct, label %.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i

bb.ct:                                            ; preds = %.noexc158.i
  %.val.i11.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !3071, !noalias !2867, !nonnull !9, !noundef !9 ; 3 uses
  %i.uf = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3072, !noalias !2867, !noundef !9
  %i.ug = add i64 %i.uf, -1                       ; 3 uses
  store i64 %i.ug, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3072, !noalias !2867
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc159.i:                                      ; preds = %bb.ct
  %i.uh = load ptr, ptr %i.cp, align 8, !alias.scope !3072, !noalias !2867, !nonnull !9, !noundef !9
  %i.ui = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3072, !noalias !2867, !noundef !9
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ug, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i13.i.i.i.i.i.i.i.i

.lr.ph.i.i13.i.i.i.i.i.i.i.i:                     ; preds = %.noexc159.i, %.noexc160.i
  %.sroa.06.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uj, %.noexc160.i ], [ 0, %.noexc159.i ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uh, i64 noundef range(i64 0, -9223372036854775808) %i.ui)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc160.i:                                      ; preds = %.lr.ph.i.i13.i.i.i.i.i.i.i.i
  %i.uj = add nuw i64 %.sroa.06.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.uj, %i.ug
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i13.i.i.i.i.i.i.i.i

_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i.i.i.i.i: ; preds = %.noexc160.i, %.noexc159.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i11.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc161.i:                                      ; preds = %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i.i.i.i.i
  %.val.i.i22.i.pre.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !3073, !noalias !2860
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3074, !noalias !2860
  %.pre78.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !3074, !noalias !2860
  %.pre79.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3074, !noalias !2860
  %i.uk = add i64 %.pre.i.i, -1
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %.noexc161.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i
  %i.ul = phi i64 [ %.pre79.i.i, %.noexc161.i ], [ 2, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i ]
  %i.um = phi ptr [ %.pre78.i.i, %.noexc161.i ], [ @26, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i ]
  %i.un = phi i64 [ %i.uk, %.noexc161.i ], [ 0, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i22.i.i.i = phi ptr [ %.val.i.i22.i.pre.i.i, %.noexc161.i ], [ %i.af, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !3075, !noalias !2867
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc162.i:                                      ; preds = %.noexc13.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.un, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs7_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct3endCskIqAKC4t9Ft_2yr.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc162.i, %.noexc163.i
  %.sroa.06.01.i.i.i.i.i.i = phi i64 [ %i.uo, %.noexc163.i ], [ 0, %.noexc162.i ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.um, i64 noundef range(i64 0, -9223372036854775808) %i.ul)
          to label %.noexc163.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.noexc163.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.uo = add nuw i64 %.sroa.06.01.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.uo, %i.un
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs7_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct3endCskIqAKC4t9Ft_2yr.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs7_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct3endCskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %.noexc163.i, %.noexc162.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i22.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, !noalias !2858

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyRNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit77.i.i.i.i.i.i.i.i.i.i, %.noexc45.i, %.noexc46.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsbbTh99npV2h_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYQINtNtB23_3ser10SerializerQINtNtB1q_3vec3VechENtB3y_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapB1m_B1Z_EE0E0CskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc60.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechENtB3b_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i.i105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad, %bb.ae, %bb.af, %bb.am, %bb.an, %bb.ao, %bb.as, %bb.at, %bb.au, %.lr.ph.i.i.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bj, %bb.bk, %bb.bl, %bb.bw, %bb.bx, %bb.by, %.lr.ph.i.i.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %bb.cn, %bb.co, %bb.cp, %bb.ch, %bb.ci, %bb.cj, %.lr.ph.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bq, %bb.br, %bb.ay, %bb.az, %bb.ba, %.lr.ph.i.i.i.i42.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i99.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u, %bb.v, %bb.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i96.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc84.i, %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit61.i.i.i.i.i.i.i.i.i.i, %.noexc92.i, %.noexc93.i, %bb.aq, %.noexc95.i, %.noexc99.i, %_RINvXs6_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap13serialize_keyeECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit85.i.i.i.i.i.i.i.i.i.i, %.noexc107.i, %bb.bf, %.noexc109.i, %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit38.i.i.i.i.i.i.i.i.i.i, %.noexc117.i, %.noexc118.i, %bb.bn, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit30.i.i.i.i.i.i.i.i.i.i, %bb.bs, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bu, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit22.i.i.i.i.i.i.i.i.i.i, %.noexc132.i, %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionhEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cd, %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtBX_6string6StringEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit14.i.i.i.i.i.i.i.i.i.i, %.noexc142.i, %.noexc143.i, %bb.cl, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i, %bb.cq, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler10StringJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2R_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3E_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB42_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i84.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechENtB3b_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.i.i.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_strCskIqAKC4t9Ft_2yr.exit69.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i64.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i56.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit130.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i, %_RINvXs7_NtCsbbTh99npV2h_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECskIqAKC4t9Ft_2yr.exit52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc26.i, %.loopexit129.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit128.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc58.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2P_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB3C_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB40_B1l_EE0E0B1t_.exit.i.i.i.i.i.i.i.i.i.i, %bb.cs, %bb.cr, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i, %.noexc78.i, %.noexc77.i, %bb.ai, %bb.ag, %.thread.i.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBe_6result6ResultuNtNtCsbbTh99npV2h_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechENtB3b_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0CskIqAKC4t9Ft_2yr.exit.i.i.us.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i, %.noexc55.i, %.noexc54.i, %bb.z, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x, %.noexc35.i, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_mapCskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc32.i, %.noexc31.i, %.noexc30.i, %bb.q, %.noexc25.i, %.noexc22.i, %.noexc20.i, %.noexc17.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i.i.i.i.i.invoke.i, %.noexc4.i, %.noexc6.i, %.noexc9.i, %_RNvXs7_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct3endCskIqAKC4t9Ft_2yr.exit.i.i.i, %.noexc13.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i.i.i.i.i, %bb.ct, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i.i.i.i.i, %.noexc11.i, %.noexc10.i, %.noexc8.i, %.noexc7.i, %.noexc5.i, %.noexc3.i, %.noexc.i, %bb.p
  %lpad.loopexit.split-lp1526 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #23
          to label %.body18 unwind label %bb.cx, !noalias !2858

bb.cu:                                            ; preds = %.noexc47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2860
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.cv, !noalias !2858

bb.cv:                                            ; preds = %bb.cu
  %i.up = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body18 unwind label %bb.cw, !noalias !2858

bb.cw:                                            ; preds = %bb.cv
  %i.uq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2858
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.thread126 unwind label %bb.cz

.thread126:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2858
  br label %bb.db

bb.cx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524
  %i.ur = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2858
  unreachable

bb.cy:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.082)
  %i.us = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !nonnull !9, !noundef !9
  %i.uu = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !noundef !9 ; 2 uses
  %i.uw = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @237)
          to label %bb.dl unwind label %bb.dd     ; 2 uses

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i, %bb.o, %bb.n
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524, %bb.cv, %bb.cz
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.ux, %bb.cz ], [ %i.up, %bb.cv ], [ %lpad.loopexit.split-lp1526, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1524 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler10OutputJsonEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an) #23
          to label %common.resume unwind label %bb.dk

bb.da:                                            ; preds = %_RNvXs7_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct3endCskIqAKC4t9Ft_2yr.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2860
  %.sroa.089.0.copyload90 = load i64, ptr %i.af, align 8, !noalias !2857 ; 2 uses
  %.sroa.7.0.copyload92 = load ptr, ptr %i.cn, align 8, !noalias !2857 ; 2 uses
  %.sroa.9.0.copyload94 = load i64, ptr %i.co, align 8, !noalias !2857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2858
  %i.uy = icmp eq i64 %.sroa.089.0.copyload90, -1
  br i1 %i.uy, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.thread126, %bb.da
  %.sroa.7.0130 = phi ptr [ %i.gq, %.thread126 ], [ %.sroa.7.0.copyload92, %bb.da ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0130) ]
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.db
  %.sroa.7.0131 = phi ptr [ %.sroa.7.0130, %bb.db ], [ %.sroa.7.0.copyload92, %bb.da ]
  %.sroa.11.0 = phi i64 [ undef, %bb.db ], [ %.sroa.9.0.copyload94, %bb.da ]
  %.sroa.061.0 = phi i64 [ -1, %bb.db ], [ %.sroa.089.0.copyload90, %bb.da ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler10OutputJsonEBJ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an)
          to label %bb.de unwind label %bb.dd

.body21:                                          ; preds = %bb.el, %bb.dh, %bb.dd
  %.sroa.0.1.lpad-body = phi i8 [ %.sroa.0.1, %bb.dd ], [ %.sroa.0.2, %bb.el ], [ %.sroa.0.2, %bb.dh ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.va, %bb.dd ], [ %i.yj, %bb.el ], [ %i.vc, %bb.dh ] ; 2 uses
  %i.uz = trunc nuw i8 %.sroa.0.1.lpad-body to i1
  br i1 %i.uz, label %.thread132, label %common.resume

bb.dd:                                            ; preds = %bb.eh, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5error5ErrorE6expectCskIqAKC4t9Ft_2yr.exit, %bb.dv, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit, %bb.dc, %bb.cy
  %.sroa.0.1 = phi i8 [ 0, %bb.dc ], [ %.sroa.0.2, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5error5ErrorE6expectCskIqAKC4t9Ft_2yr.exit ], [ 1, %bb.cy ], [ 1, %bb.eh ], [ 1, %bb.dv ], [ 1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit ]
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.de:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.df

bb.df:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit, %bb.de
  %.sroa.11.1 = phi i64 [ %spec.select, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit ], [ %.sroa.11.0, %bb.de ]
  %.sroa.8.1 = phi ptr [ %.sroa.6103.0.copyload105, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit ], [ %.sroa.7.0131, %bb.de ] ; 2 uses
  %.sroa.061.1 = phi i64 [ %.sroa.0101.0.copyload102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit ], [ %.sroa.061.0, %bb.de ] ; 2 uses
  %.sroa.0.2 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit ], [ 0, %bb.de ] ; 5 uses
  %i.vb = icmp eq i64 %.sroa.061.1, -1
  br i1 %i.vb, label %bb.dg, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5error5ErrorE6expectCskIqAKC4t9Ft_2yr.exit, !prof !7

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3076
  store ptr %.sroa.8.1, ptr %i.f, align 8, !noalias !3076
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 40, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #28
          to label %bb.di unwind label %bb.dh, !noalias !3076

bb.dh:                                            ; preds = %bb.dg
  %i.vc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #23
          to label %.body21 unwind label %bb.dj, !noalias !3076

bb.di:                                            ; preds = %bb.dg
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.vd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3076
  unreachable

bb.dk:                                            ; preds = %bb.ew, %.thread132, %.body51, %.body18
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dl:                                            ; preds = %bb.cy
  %i.vf = extractvalue { i64, i64 } %i.uw, 0      ; 2 uses
  %i.vg = extractvalue { i64, i64 } %i.uw, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.vh = icmp eq i64 %i.uv, 0
  br i1 %i.vh, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0115)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0115, ptr noundef nonnull align 8 dereferenceable(32) @239, i64 32, i1 false), !noalias !3077
  %i.vi = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.vj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.8119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.082, ptr noundef nonnull align 8 dereferenceable(32) @239, i64 32, i1 false), !alias.scope !3079
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit

bb.do:                                            ; preds = %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i, %bb.dm
  %.sroa.6116.0 = phi i64 [ %i.vf, %bb.dm ], [ %.sroa.6116.0.copyload118, %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i ]
  %.sroa.8119.0 = phi i64 [ %i.vg, %bb.dm ], [ %.sroa.8119.0.copyload121, %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.dm ], [ %i.vt, %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0115, i64 32, i1 false), !noalias !3079
  store i64 %.sroa.6116.0, ptr %.sroa.6116.0..sroa_idx, align 8, !noalias !3079
  store i64 %.sroa.8119.0, ptr %.sroa.8119.0..sroa_idx, align 8, !noalias !3079
  %i.vk = getelementptr inbounds nuw [144 x i8], ptr %i.ut, i64 %.sroa.01.0.i ; 2 uses
  store ptr %i.vk, ptr %i.vi, align 8, !noalias !3079
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3080
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vl)
          to label %bb.dq unwind label %bb.dp, !noalias !3081

bb.dp:                                            ; preds = %bb.dr, %bb.do
  %i.vm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.thread132 unwind label %bb.dt, !noalias !3081

bb.dq:                                            ; preds = %bb.do
  %i.vn = load ptr, ptr %i.d, align 8, !noalias !3080, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.vn, null
  %i.vo = load ptr, ptr %i.vj, align 8, !noalias !3080 ; 2 uses
  br i1 %.not.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !3080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3080
  %i.vp = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCsexYYUdYSQU6_5alloc6string6StringjEE14insert_no_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.vo, i64 noundef %.sroa.56.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vn, i64 noundef 0)
          to label %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i unwind label %bb.dp, !noalias !3081

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3080
  br label %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i

bb.dt:                                            ; preds = %bb.dp
  %i.vq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3081
  unreachable

_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i: ; preds = %bb.ds, %bb.dr
  %.pn.i.i.i = phi ptr [ %i.vo, %bb.ds ], [ %i.vp, %bb.dr ]
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -8 ; 2 uses
  %i.vr = load i64, ptr %.sroa.0.0.i.i.i, align 8, !noalias !3081, !noundef !9
  %i.vs = add i64 %i.vr, 1
  store i64 %i.vs, ptr %.sroa.0.0.i.i.i, align 8, !noalias !3081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0115, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3079
  %.sroa.6116.0.copyload118 = load i64, ptr %.sroa.6116.0..sroa_idx, align 8, !noalias !3079 ; 2 uses
  %.sroa.8119.0.copyload121 = load i64, ptr %.sroa.8119.0..sroa_idx, align 8, !noalias !3079 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3079
  %i.vt = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.vu = icmp eq i64 %i.vt, %i.uv
  br i1 %i.vu, label %bb.du, label %bb.do

bb.du:                                            ; preds = %_RNCNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB7_17JsonOutputHandlerNtB7_13OutputHandler7on_done0Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.082, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0115, i64 32, i1 false), !noalias !3078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0115)
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit: ; preds = %bb.du, %bb.dn
  %.sroa.686.0 = phi i64 [ %i.vg, %bb.dn ], [ %.sroa.8119.0.copyload121, %bb.du ]
  %.sroa.583.0 = phi i64 [ %i.vf, %bb.dn ], [ %.sroa.6116.0.copyload118, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.082, i64 32, i1 false)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 %.sroa.583.0, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 %.sroa.686.0, ptr %.sroa.686.0..sroa_idx, align 8
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.dv unwind label %bb.dd

bb.dv:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapRNtNtCsexYYUdYSQU6_5alloc6string6StringjENCNvXs3_BS_NtBS_17JsonOutputHandlerNtBS_13OutputHandler7on_done0EBY_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.082)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterRNtNtB6_6string6StringjENCNvXs3_B13_NtB13_17JsonOutputHandlerNtB13_13OutputHandler7on_dones_0EE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ao)
          to label %bb.dw unwind label %bb.dd

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val15 = load ptr, ptr %i.vv, align 8          ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.val16 = load i64, ptr %i.vw, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3082
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc49 unwind label %bb.ee

.noexc49:                                         ; preds = %bb.dw
  %i.vx = load i64, ptr %i.b, align 8, !range !14, !noalias !3082, !noundef !9
  %i.vy = trunc nuw i64 %i.vx to i1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.wa = load i64, ptr %i.vz, align 8, !range !41, !noalias !3082, !noundef !9 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.vy, label %bb.dx, label %bb.dy, !prof !7

bb.dx:                                            ; preds = %.noexc49
  %i.wc = load i64, ptr %i.wb, align 8, !noalias !3082
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.wa, i64 %i.wc) #28
          to label %.noexc50 unwind label %bb.ee

.noexc50:                                         ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %.noexc49
  %i.wd = load ptr, ptr %i.wb, align 8, !noalias !3082, !nonnull !9, !noundef !9
  %i.we = icmp samesign ugt i64 %i.wa, 127
  call void @llvm.assume(i1 %i.we)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3082
  store i64 %i.wa, ptr %i.c, align 8, !noalias !3082
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.wd, ptr %i.wf, align 8, !noalias !3082
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.wg, align 8, !noalias !3082
  %.idx.i.i.i.i = mul nuw nsw i64 %.val16, 24
  %i.wh = getelementptr inbounds nuw i8, ptr %.val15, i64 %.idx.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc.i27 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc.i27:                                       ; preds = %bb.dy
  %cond.i.i.i.i = icmp eq i64 %.val16, 0
  br i1 %cond.i.i.i.i, label %.noexc24.invoke.i, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.noexc.i27, %.noexc23.i47
  %i.wi = phi i1 [ false, %.noexc23.i47 ], [ true, %.noexc.i27 ] ; 2 uses
  %i.wj = phi ptr [ %i.wk, %.noexc23.i47 ], [ %.val15, %.noexc.i27 ] ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  %..i29 = select i1 %i.wi, ptr @127, ptr @131
  %.5.i = select i1 %i.wi, i64 1, i64 2
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %..i29, i64 noundef range(i64 0, -9223372036854775808) %.5.i)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i30 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.lr.ph.i.i.i.i.i.i.i.i.i.i30:                     ; preds = %.lr.ph.i.i.i.i.i.i28
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc7.i31 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc7.i31:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i30
  call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1)
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handlerNtB5_17JsonOutputHandlerNtB5_13OutputHandler7on_done:bb.a
  %i.wn = icmp ugt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 9999
  br i1 %i.wn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48, %.noexc19.i42
  %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 20, %.noexc19.i42 ], [ %i.wx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i.i.i.i.i.i.i, %.noexc19.i42 ], [ %i.wq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 ] ; 3 uses
  %i.wo = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99
  br i1 %i.wo, label %bb.dz, label %bb.ea

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48:     ; preds = %.noexc19.i42, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48
  %.sroa.0.131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %.noexc19.i42 ] ; 3 uses
  %.sroa.011.030.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 ], [ 20, %.noexc19.i42 ] ; 2 uses
  %i.wp = urem i64 %.sroa.0.131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000
  %i.wq = udiv i64 %.sroa.0.131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %i.wp to i16 ; 2 uses
  %i.wr = udiv i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.ws = shl nuw nsw i16 %i.wr, 1
  %i.wt = zext nneg i16 %i.ws to i64
  %i.wu = urem i16 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.wv = shl nuw nsw i16 %i.wu, 1
  %i.ww = zext nneg i16 %i.wv to i64
  %i.wx = add i64 %.sroa.011.030.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -4 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr @251, i64 %i.wt
  %i.wz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wx
  %i.xa = load i16, ptr %i.wy, align 1, !noalias !3090
  store i16 %i.xa, ptr %i.wz, align 1, !alias.scope !3089, !noalias !3088
  %i.xb = getelementptr inbounds nuw i8, ptr @251, i64 %i.ww
  %i.xc = getelementptr i8, ptr %i.a, i64 %.sroa.011.030.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xd = getelementptr i8, ptr %i.xc, i64 -2
  %i.xe = load i16, ptr %i.xb, align 1, !noalias !3090
  store i16 %i.xe, ptr %i.xd, align 1, !alias.scope !3089, !noalias !3088
  %i.xf = icmp ugt i64 %.sroa.0.131.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 99999999
  br i1 %i.xf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i48, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lhs.trunc26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i16 ; 2 uses
  %i.xg = urem i16 %.lhs.trunc26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %i.xh = shl nuw nsw i16 %i.xg, 1
  %i.xi = zext nneg i16 %i.xh to i64
  %i.xj = udiv i16 %.lhs.trunc26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100
  %.zext29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext nneg i16 %i.xj to i64
  %i.xk = add i64 %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr @251, i64 %i.xi
  %i.xm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xk
  %i.xn = load i16, ptr %i.xl, align 1, !noalias !3090
  store i16 %i.xn, ptr %i.xm, align 1, !alias.scope !3089, !noalias !3088
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xk, %bb.dz ], [ %.sroa.011.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.zext29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dz ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.xo = icmp samesign ult i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.xo, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xp = shl nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.xq = add i64 %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr @251, i64 %i.xp
  %i.xs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xq
  %i.xt = load i16, ptr %i.xr, align 1, !noalias !3090
  store i16 %i.xt, ptr %i.xs, align 1, !alias.scope !3089, !noalias !3088
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i43

bb.ec:                                            ; preds = %bb.ea
  %i.xu = add i64 %.sroa.011.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.xv = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xu
  %i.xx = or disjoint i8 %i.xv, 48
  store i8 %i.xx, ptr %i.xw, align 1, !alias.scope !3089, !noalias !3088
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i43:             ; preds = %bb.ec, %bb.eb
  %.sroa.011.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xu, %bb.ec ], [ %i.xq, %bb.eb ] ; 2 uses
  %i.xy = sub i64 20, %.sroa.011.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.011.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ya = icmp ult i64 %i.xy, 21
  call void @llvm.assume(i1 %i.ya)
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xz, i64 noundef range(i64 0, -9223372036854775808) %i.xy)
          to label %.noexc20.i44 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc20.i44:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3088
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc21.i45 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc21.i45:                                     ; preds = %.noexc20.i44
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 2)
          to label %.noexc22.i46 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc22.i46:                                     ; preds = %.noexc21.i45
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc23.i47 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc23.i47:                                     ; preds = %.noexc22.i46
  %i.yb = icmp eq ptr %i.wk, %i.wh
  br i1 %i.yb, label %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i, label %.lr.ph.i.i.i.i.i.i28

_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i: ; preds = %.noexc23.i47
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %.noexc24.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.noexc24.invoke.i:                                ; preds = %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i, %.noexc.i27
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3082

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc11.i35, %.noexc13.i37, %.noexc17.i40, %.noexc22.i46, %.noexc21.i45, %.noexc20.i44, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i43, %.noexc18.i41, %.noexc16.i39, %.noexc15.i, %.noexc14.i38, %.noexc12.i36, %.noexc10.i34, %.noexc9.i33, %.noexc8.i32, %.noexc7.i31, %.lr.ph.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i.i.i.i28, %.noexc24.invoke.i, %_RINvXsd_NtCsbbTh99npV2h_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i12.i.i.i.i, %bb.dy
  %lpad.loopexit.split-lp1280 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %.body51 unwind label %bb.ed, !noalias !3082

bb.ed:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.yc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3082
  unreachable

bb.ee:                                            ; preds = %bb.dx, %bb.dw
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ee
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.yd, %bb.ee ], [ %lpad.loopexit.split-lp1280, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #23
          to label %.thread132 unwind label %bb.dk

bb.ef:                                            ; preds = %.noexc24.invoke.i
  %.sroa.0101.0.copyload102 = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.6103.0.copyload105 = load ptr, ptr %i.wf, align 8
  %.sroa.7106.0.copyload108 = load i64, ptr %i.wg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3082
  %i.ye = icmp eq i64 %.sroa.0101.0.copyload102, -1
  %spec.select = select i1 %i.ye, i64 undef, i64 %.sroa.7106.0.copyload108
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.eh unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.yf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread132 unwind label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit unwind label %bb.dd

bb.ei:                                            ; preds = %bb.eg
  %i.yg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler15JsonCountOutputEEB1g_.exit: ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.df

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5error5ErrorE6expectCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.yh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.061.1, ptr %i.yh, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.8.1, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %.sroa.11.1, ptr %.sroa.5.0..sroa_idx74, align 8
  store i64 0, ptr %i.al, align 8
  invoke void @_RNvMs2_NtCsgqCuqWkNCVj_17crossbeam_channel7channelINtB5_6SenderNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4sendB13_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
          to label %bb.ej unwind label %bb.dd

bb.ej:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsbbTh99npV2h_10serde_json5error5ErrorE6expectCskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.yi = load i64, ptr %i.am, align 8, !range !11, !alias.scope !3091, !noundef !9
  %.not.i = icmp eq i64 %i.yi, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE6unwrapB1C_.exit, label %bb.ek, !prof !30

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !3093
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 43, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #28
          to label %bb.em unwind label %bb.el, !noalias !3091

bb.el:                                            ; preds = %bb.ek
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag) #23
          to label %.body21 unwind label %bb.en, !noalias !3091

bb.em:                                            ; preds = %bb.ek
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.yk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3091
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE6unwrapB1C_.exit: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br i1 %i.cd, label %bb.eo, label %.critedge

bb.eo:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE6unwrapB1C_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i57 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.yl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i57: ; preds = %bb.eo
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.es unwind label %bb.j

.critedge:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE6unwrapB1C_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.er

bb.er:                                            ; preds = %.critedge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEB1g_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.es:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEB1g_.exit unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.yn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEB1g_.exit: ; preds = %bb.es
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %bb.er

.thread132:                                       ; preds = %bb.dp, %bb.eg, %.body51, %.body21
  %.pn135 = phi { ptr, i32 } [ %eh.lpad-body, %.body21 ], [ %eh.lpad-body52, %.body51 ], [ %i.vm, %bb.dp ], [ %i.yf, %bb.eg ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #23
          to label %bb.ew unwind label %bb.dk

bb.ev:                                            ; preds = %bb.l
  unreachable

bb.ew:                                            ; preds = %.thread132, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i
  %.pn12125 = phi { ptr, i32 } [ %eh.lpad-body59, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i ], [ %.pn135, %.thread132 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler9MatchJsonEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.as) #23
          to label %common.resume unwind label %bb.dk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_Cs6fABDMljrgZ_8globwalkNtB5_9GlobErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18InvalidWarningCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @252, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCslcwApyVHiOd_7bincode5errorNtB5_11IntegerTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !45, !noundef !9
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXs8_NtCslcwApyVHiOd_7bincode5errorNtB7_11IntegerTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !9, !noundef !9
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_NtCslcwApyVHiOd_7bincode5errorNtB7_11IntegerTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs8_NtCslcwApyVHiOd_7bincode5errorNtB7_11IntegerTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 14, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3096, !noundef !9 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3096, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3096, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !3096
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !3102
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3103, !noundef !9 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3103, !nonnull !9, !noundef !9
end_hunk_2
