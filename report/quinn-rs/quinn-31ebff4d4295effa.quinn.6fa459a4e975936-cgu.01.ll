Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn-31ebff4d4295effa.quinn.6fa459a4e975936-cgu.01?download=true
inline.NumInlined: 423
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsB8MOEg02Qk_5quinn10connectionNtB2_10Connecting14remote_address:bb.a
    #dbg_value(i64 14, !11785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11789)
    #dbg_value(ptr %1, !11790, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11794)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11802
  %i.d = load ptr, ptr %i.c, align 8, !dbg !11802, !noundef !1777 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11802
  br i1 %.not, label %bb.l, label %bb.b, !dbg !11803, !prof !5709

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !11780, !DIExpression(), !11784)
    #dbg_value(ptr %i.c, !11773, !DIExpression(), !11795)
    #dbg_value(ptr %i.d, !11786, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11804
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11804
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsB8MOEg02Qk_5quinn10connection5StateE4lockB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 16 %i.e), !dbg !11805
  call void @llvm.experimental.noalias.scope.decl(metadata !11797), !dbg !11806
    #dbg_declare(ptr %i.b, !6564, !DIExpression(), !11739)
    #dbg_declare(ptr %i.a, !6580, !DIExpression(), !11740)
  %i.f = load i64, ptr %i.b, align 8, !dbg !11807, !range !4964, !alias.scope !11797, !noundef !1777
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11808
  br i1 %i.g, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit, !dbg !11808, !prof !5709

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11809, !noalias !11797
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11809
  %i.i = load ptr, ptr %i.h, align 8, !dbg !11809, !alias.scope !11797, !nonnull !1777, !align !5939, !noundef !1777
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11809
  %i.k = load i8, ptr %i.j, align 8, !dbg !11809, !range !5940, !alias.scope !11797, !noundef !1777
  store ptr %i.i, ptr %i.a, align 8, !dbg !11809, !noalias !11797
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11809
  store i8 %i.k, ptr %i.l, align 8, !dbg !11809, !noalias !11797
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %bb.e unwind label %bb.d, !dbg !11810, !noalias !11797

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %bb.g unwind label %bb.f, !dbg !11811, !noalias !11797

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !11812, !noalias !11797
  unreachable, !dbg !11812

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m, !dbg !11812

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11813
  %i.p = load ptr, ptr %i.o, align 8, !dbg !11813, !alias.scope !11797, !nonnull !1777, !align !5939, !noundef !1777 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11813
  %i.r = load i8, ptr %i.q, align 8, !dbg !11813, !range !5940, !alias.scope !11797, !noundef !1777
  %i.s = trunc nuw i8 %i.r to i1, !dbg !11813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11814
    #dbg_value(ptr %i.p, !11798, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !11801)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 464, !dbg !11815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !11815
    #dbg_value(ptr poison, !5629, !DIExpression(), !11743)
    #dbg_value(ptr poison, !5634, !DIExpression(), !11745)
    #dbg_value(ptr poison, !5639, !DIExpression(), !11747)
    #dbg_value(i32 0, !5642, !DIExpression(), !11750)
    #dbg_value(i8 1, !5648, !DIExpression(), !11750)
    #dbg_value(i32 0, !5657, !DIExpression(), !11752)
    #dbg_value(i8 1, !5662, !DIExpression(), !11752)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !11816
    #dbg_value(ptr %i.u, !5666, !DIExpression(), !11754)
    #dbg_value(ptr poison, !5672, !DIExpression(), !11754)
    #dbg_value(i8 0, !5674, !DIExpression(), !11759)
    #dbg_value(i8 1, !5688, !DIExpression(), !11761)
    #dbg_value(i8 0, !5694, !DIExpression(), !11761)
  br i1 %i.s, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !dbg !11817

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !5678, !DIExpression(), !11759)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !5697, !DIExpression(), !11763)
    #dbg_value(i8 0, !5700, !DIExpression(), !11763)
  %i.v = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !11818
  %i.w = and i64 %i.v, 9223372036854775807, !dbg !11819
  %i.x = icmp eq i64 %i.w, 0, !dbg !11819
  br i1 %i.x, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !dbg !11819, !prof !5702

bb.i:                                             ; preds = %bb.h
  %i.y = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24, !dbg !11820
  br i1 %i.y, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j, !dbg !11821

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.u, !5693, !DIExpression(), !11764)
    #dbg_value(ptr %i.u, !5703, !DIExpression(), !11766)
    #dbg_value(i8 1, !5706, !DIExpression(), !11766)
    #dbg_value(i8 0, !5707, !DIExpression(), !11766)
  store atomic i8 1, ptr %i.u monotonic, align 4, !dbg !11822
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !11823

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
    #dbg_value(ptr %i.p, !5655, !DIExpression(), !11767)
    #dbg_value(ptr %i.p, !5647, !DIExpression(), !11768)
    #dbg_value(ptr %i.p, !5661, !DIExpression(), !11752)
  %i.z = atomicrmw xchg ptr %i.p, i32 0 release, align 4, !dbg !11824
  %i.aa = icmp eq i32 %i.z, 2, !dbg !11825
  br i1 %i.aa, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit, !dbg !11825, !prof !5709

bb.k:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p), !dbg !11826
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit, !dbg !11826

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.k
  ret void, !dbg !11827

bb.l:                                             ; preds = %bb.a
    #dbg_value(ptr null, !11780, !DIExpression(), !11784)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27, !dbg !11828
  unreachable, !dbg !11828
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsB8MOEg02Qk_5quinn10connectionNtB2_10Connecting3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(6320) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %8) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11833 {
bb.a:
  %i.a = alloca [7008 x i8], align 16             ; 12 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.11.i = alloca [36 x i8], align 4         ; 4 uses
  %.sroa.513.sroa.0.i = alloca [6331 x i8], align 1 ; 4 uses
  %.sroa.052.i = alloca [128 x i8], align 8       ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [6320 x i8], align 16             ; 4 uses
    #dbg_declare(ptr poison, !12085, !DIExpression(DW_OP_LLVM_fragment, 0, 50560), !11840)
    #dbg_declare(ptr %.sroa.11.i, !12085, !DIExpression(DW_OP_LLVM_fragment, 51552, 288), !11840)
    #dbg_declare(ptr poison, !12085, !DIExpression(DW_OP_LLVM_fragment, 51840, 256), !11840)
    #dbg_declare(ptr poison, !12085, !DIExpression(DW_OP_LLVM_fragment, 52096, 256), !11840)
    #dbg_declare(ptr poison, !12085, !DIExpression(DW_OP_LLVM_fragment, 52992, 448), !11840)
    #dbg_declare(ptr poison, !12093, !DIExpression(DW_OP_LLVM_fragment, 0, 50560), !11841)
    #dbg_declare(ptr %.sroa.11.i, !12093, !DIExpression(DW_OP_LLVM_fragment, 51552, 288), !11841)
    #dbg_declare(ptr poison, !12093, !DIExpression(DW_OP_LLVM_fragment, 51840, 256), !11841)
    #dbg_declare(ptr poison, !12093, !DIExpression(DW_OP_LLVM_fragment, 52096, 256), !11841)
    #dbg_declare(ptr poison, !12093, !DIExpression(DW_OP_LLVM_fragment, 52992, 448), !11841)
  %i.l = alloca [6752 x i8], align 16             ; 32 uses
  %.sroa.060.i = alloca [6880 x i8], align 16     ; 5 uses
    #dbg_declare(ptr %.sroa.060.i, !12112, !DIExpression(DW_OP_LLVM_fragment, 0, 55040), !11845)
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.y, align 8
  store ptr %4, ptr %i.x, align 8
  store ptr %5, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %6, ptr %i.z, align 8
  store ptr %7, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %8, ptr %i.aa, align 8
    #dbg_value(i64 %1, !12071, !DIExpression(), !12119)
    #dbg_declare(ptr %2, !12072, !DIExpression(), !12120)
    #dbg_declare(ptr %i.y, !12073, !DIExpression(), !12121)
    #dbg_declare(ptr %i.x, !12074, !DIExpression(), !12122)
    #dbg_declare(ptr %i.w, !12075, !DIExpression(), !12123)
    #dbg_declare(ptr %i.v, !12076, !DIExpression(), !12124)
    #dbg_declare(ptr %i.u, !12077, !DIExpression(), !12125)
    #dbg_declare(ptr %i.t, !12078, !DIExpression(), !12126)
    #dbg_declare(ptr %i.s, !12080, !DIExpression(), !12127)
    #dbg_declare(ptr %i.r, !12081, !DIExpression(), !12128)
    #dbg_declare(ptr %i.q, !12129, !DIExpression(), !12140)
    #dbg_declare(ptr %i.p, !12142, !DIExpression(), !12151)
    #dbg_declare(ptr %i.p, !12153, !DIExpression(), !12159)
    #dbg_declare(ptr %i.o, !12146, !DIExpression(), !12160)
    #dbg_value(i64 1, !12161, !DIExpression(), !12167)
    #dbg_value(i8 0, !12163, !DIExpression(), !12167)
    #dbg_value(i64 1, !12173, !DIExpression(), !12178)
    #dbg_value(i8 0, !12175, !DIExpression(), !12178)
    #dbg_value(i64 1, !12161, !DIExpression(), !12181)
    #dbg_value(i8 0, !12163, !DIExpression(), !12181)
    #dbg_value(i64 1, !12173, !DIExpression(), !12186)
    #dbg_value(i8 0, !12175, !DIExpression(), !12186)
    #dbg_value(i64 1, !12161, !DIExpression(), !12190)
    #dbg_value(i8 0, !12163, !DIExpression(), !12190)
    #dbg_value(i64 1, !12173, !DIExpression(), !12196)
    #dbg_value(i8 0, !12175, !DIExpression(), !12196)
  %i.ab = invoke { ptr, ptr } @_RINvNtNtCsar2VadbF9t7_5tokio4sync7oneshot7channeluECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
          to label %bb.e unwind label %bb.d, !dbg !12402 ; 2 uses

bb.b:                                             ; preds = %bb.ao, %bb.an, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %.pn.pn.pn, %bb.an ], [ %i.af, %bb.d ]
  %cond = phi i1 [ false, %bb.ao ], [ true, %bb.an ], [ false, %bb.d ], !dbg !12119
  call void @llvm.experimental.noalias.scope.decl(metadata !12197), !dbg !12403
    #dbg_value(ptr %i.v, !5910, !DIExpression(), !11860)
  call void @llvm.experimental.noalias.scope.decl(metadata !12198), !dbg !12404
    #dbg_value(ptr %i.v, !5916, !DIExpression(), !11864)
    #dbg_value(ptr %i.v, !5918, !DIExpression(), !11866)
    #dbg_value(i64 1, !5927, !DIExpression(), !11868)
    #dbg_value(i8 1, !5929, !DIExpression(), !11868)
    #dbg_value(i64 1, !5931, !DIExpression(), !11870)
    #dbg_value(i8 1, !5933, !DIExpression(), !11870)
  %i.ac = load ptr, ptr %i.v, align 8, !dbg !12405, !alias.scope !12199, !nonnull !1777, !noundef !1777
    #dbg_value(ptr %i.ac, !5928, !DIExpression(), !11872)
    #dbg_value(ptr %i.ac, !5932, !DIExpression(), !11870)
  %i.ad = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !dbg !12406, !noalias !12199
  %i.ae = icmp eq i64 %i.ad, 1, !dbg !12407
  br i1 %i.ae, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit, !dbg !12407

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !5004, !DIExpression(), !11874)
  fence acquire, !dbg !12408
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit unwind label %bb.am, !dbg !12409

bb.d:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.ag = extractvalue { ptr, ptr } %i.ab, 0, !dbg !12402 ; 3 uses
  %i.ah = extractvalue { ptr, ptr } %i.ab, 1, !dbg !12402 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12410
  store ptr %i.ag, ptr %i.u, align 8, !dbg !12410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !12411
  store ptr %i.ah, ptr %i.t, align 8, !dbg !12411
  %i.ai = invoke { ptr, ptr } @_RINvNtNtCsar2VadbF9t7_5tokio4sync7oneshot7channelbECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %bb.h unwind label %bb.g, !dbg !12412 ; 2 uses

bb.f:                                             ; preds = %.body37, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body37 ], [ %i.aj, %bb.g ] ; 2 uses
  %.sroa.0.0.a = phi i1 [ false, %.body37 ], [ true, %bb.g ], !dbg !12119
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8) %i.t) #21
          to label %bb.an unwind label %bb.am, !dbg !12403

bb.g:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1, !dbg !12412 ; 2 uses
    #dbg_value(ptr poison, !12079, !DIExpression(), !12200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !12413
  store ptr %i.ak, ptr %i.s, align 8, !dbg !12413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !12414
    #dbg_value(ptr %i.v, !12170, !DIExpression(), !12201)
    #dbg_value(ptr %i.v, !12202, !DIExpression(), !12205)
  %i.al = load ptr, ptr %i.v, align 8, !dbg !12415, !nonnull !1777, !noundef !1777
    #dbg_value(ptr %i.al, !12162, !DIExpression(), !12207)
    #dbg_value(ptr %i.al, !12208, !DIExpression(), !12211)
    #dbg_value(ptr %i.al, !12174, !DIExpression(), !12178)
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !dbg !12416
    #dbg_value(i64 %i.am, !12171, !DIExpression(), !12212)
  %i.an = icmp slt i64 %i.am, 0, !dbg !12417
  br i1 %i.an, label %bb.z, label %bb.i, !dbg !12417

bb.i:                                             ; preds = %bb.h
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0, !dbg !12412 ; 2 uses
    #dbg_value(ptr %i.ao, !12079, !DIExpression(), !12200)
  %i.ap = load ptr, ptr %i.v, align 8, !dbg !12418, !nonnull !1777, !noundef !1777 ; 3 uses
  %i.aq = load ptr, ptr %i.aa, align 8, !dbg !12418, !nonnull !1777, !align !5121, !noundef !1777 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12213), !dbg !12419
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %5, ptr %i.n, align 8, !noalias !12214
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %6, ptr %i.ar, align 8, !noalias !12214
  store ptr %i.ap, ptr %i.m, align 8, !noalias !12214
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.aq, ptr %i.as, align 8, !noalias !12214
    #dbg_value(i64 %1, !12098, !DIExpression(), !11882)
    #dbg_value(ptr %3, !12100, !DIExpression(), !11882)
    #dbg_value(ptr %4, !12101, !DIExpression(), !11882)
    #dbg_value(ptr %i.ag, !12102, !DIExpression(), !11882)
    #dbg_value(ptr %i.ao, !12103, !DIExpression(), !11882)
    #dbg_declare(ptr %i.n, !12104, !DIExpression(), !11883)
    #dbg_declare(ptr %i.m, !12105, !DIExpression(), !11884)
    #dbg_declare(ptr poison, !12215, !DIExpression(), !11889)
    #dbg_declare(ptr poison, !12215, !DIExpression(), !11892)
    #dbg_declare(ptr poison, !12225, !DIExpression(), !11897)
    #dbg_value(i64 1, !12234, !DIExpression(), !11903)
    #dbg_value(i8 0, !12236, !DIExpression(), !11903)
    #dbg_value(i64 1, !12241, !DIExpression(), !11906)
    #dbg_value(i8 0, !12243, !DIExpression(), !11906)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060.i), !dbg !12420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12421, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12422, !noalias !12214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6320) %i.k, ptr noundef nonnull align 16 dereferenceable(6320) %2, i64 6320, i1 false), !dbg !12422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12423, !noalias !12214
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !12423
  store ptr %i.ag, ptr %i.at, align 8, !dbg !12423, !noalias !12214
  store i64 1, ptr %i.j, align 8, !dbg !12423, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12424, !noalias !12214
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !12424
  store ptr %i.ao, ptr %i.au, align 8, !dbg !12424, !noalias !12214
  store i64 1, ptr %i.i, align 8, !dbg !12424, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12425, !noalias !12214
  store ptr %4, ptr %i.h, align 8, !dbg !12425, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12426, !noalias !12214
  store ptr %3, ptr %i.g, align 8, !dbg !12426, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12427, !noalias !12214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12428, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12429, !noalias !12214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12430, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12431, !noalias !12214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12432, !noalias !12214
    #dbg_value(ptr %i.n, !12238, !DIExpression(), !11907)
    #dbg_value(ptr %5, !12235, !DIExpression(), !11908)
    #dbg_value(ptr %5, !12242, !DIExpression(), !11906)
  %i.av = atomicrmw add ptr %5, i64 1 monotonic, align 8, !dbg !12433, !noalias !12214
    #dbg_value(i64 %i.av, !12239, !DIExpression(), !11909)
  %i.aw = icmp slt i64 %i.av, 0, !dbg !12434
  br i1 %i.aw, label %bb.k, label %bb.j, !dbg !12434

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !12435
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !12435, !invariant.load !1777, !alias.scope !12213, !nonnull !1777
  %i.az = invoke { ptr, ptr } %i.ay(ptr noundef nonnull %5)
          to label %bb.l unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto10connection15ConnectionErrorEECsB8MOEg02Qk_5quinn.exit.i, !dbg !12436, !noalias !12245 ; 2 uses

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap(), !dbg !12437
  unreachable, !dbg !12437

bb.l:                                             ; preds = %bb.j
  %i.ba = extractvalue { ptr, ptr } %i.az, 0, !dbg !12435
  %i.bb = extractvalue { ptr, ptr } %i.az, 1, !dbg !12435
    #dbg_value(ptr null, !12093, !DIExpression(DW_OP_LLVM_fragment, 52736, 64), !11910)
    #dbg_value(ptr null, !12085, !DIExpression(DW_OP_LLVM_fragment, 52736, 64), !11911)
    #dbg_value(ptr undef, !12093, !DIExpression(DW_OP_LLVM_fragment, 52800, 64), !11910)
    #dbg_value(ptr undef, !12085, !DIExpression(DW_OP_LLVM_fragment, 52800, 64), !11911)
    #dbg_value(i64 %1, !12093, !DIExpression(DW_OP_LLVM_fragment, 53760, 64), !11910)
    #dbg_value(i64 %1, !12085, !DIExpression(DW_OP_LLVM_fragment, 53760, 64), !11911)
    #dbg_value(i64 1, !12093, !DIExpression(DW_OP_LLVM_fragment, 50560, 64), !11910)
    #dbg_value(i64 1, !12085, !DIExpression(DW_OP_LLVM_fragment, 50560, 64), !11911)
    #dbg_value(ptr %i.ag, !12093, !DIExpression(DW_OP_LLVM_fragment, 50624, 64), !11910)
    #dbg_value(ptr %i.ag, !12085, !DIExpression(DW_OP_LLVM_fragment, 50624, 64), !11911)
    #dbg_value(i64 1, !12093, !DIExpression(DW_OP_LLVM_fragment, 50688, 64), !11910)
    #dbg_value(i64 1, !12085, !DIExpression(DW_OP_LLVM_fragment, 50688, 64), !11911)
    #dbg_value(ptr %i.ao, !12093, !DIExpression(DW_OP_LLVM_fragment, 50752, 64), !11910)
    #dbg_value(ptr %i.ao, !12085, !DIExpression(DW_OP_LLVM_fragment, 50752, 64), !11911)
    #dbg_value(i8 0, !12093, !DIExpression(DW_OP_LLVM_fragment, 53824, 8), !11910)
    #dbg_value(i8 0, !12085, !DIExpression(DW_OP_LLVM_fragment, 53824, 8), !11911)
    #dbg_value(ptr null, !12093, !DIExpression(DW_OP_LLVM_fragment, 52864, 64), !11910)
    #dbg_value(ptr null, !12085, !DIExpression(DW_OP_LLVM_fragment, 52864, 64), !11911)
    #dbg_value(ptr undef, !12093, !DIExpression(DW_OP_LLVM_fragment, 52928, 64), !11910)
    #dbg_value(ptr undef, !12085, !DIExpression(DW_OP_LLVM_fragment, 52928, 64), !11911)
    #dbg_value(i64 undef, !12093, !DIExpression(DW_OP_LLVM_fragment, 51456, 64), !11910)
    #dbg_value(i64 undef, !12085, !DIExpression(DW_OP_LLVM_fragment, 51456, 64), !11911)
    #dbg_value(i32 -1, !12093, !DIExpression(DW_OP_LLVM_fragment, 51520, 32), !11910)
    #dbg_value(i32 -1, !12085, !DIExpression(DW_OP_LLVM_fragment, 51520, 32), !11911)
    #dbg_value(ptr %4, !12093, !DIExpression(DW_OP_LLVM_fragment, 53632, 64), !11910)
    #dbg_value(ptr %4, !12085, !DIExpression(DW_OP_LLVM_fragment, 53632, 64), !11911)
    #dbg_value(ptr %3, !12093, !DIExpression(DW_OP_LLVM_fragment, 53696, 64), !11910)
    #dbg_value(ptr %3, !12085, !DIExpression(DW_OP_LLVM_fragment, 53696, 64), !11911)
  %.sroa.11.6448..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.11.i, i64 4, !dbg !12438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.11.6448..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12438, !noalias !12214
  %.sroa.513.sroa.13.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6496, !dbg !12439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.513.sroa.13.0..sroa.513.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12438, !noalias !12214
  %.sroa.513.sroa.14.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6528, !dbg !12439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.513.sroa.14.0..sroa.513.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !dbg !12438, !noalias !12214
  %.sroa.513.sroa.25.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6640, !dbg !12439
  store i64 -1, ptr %.sroa.513.sroa.25.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12438, !noalias !12214
    #dbg_value(ptr %5, !12093, !DIExpression(DW_OP_LLVM_fragment, 52352, 64), !11910)
    #dbg_value(ptr %5, !12085, !DIExpression(DW_OP_LLVM_fragment, 52352, 64), !11911)
    #dbg_value(ptr %6, !12093, !DIExpression(DW_OP_LLVM_fragment, 52416, 64), !11910)
    #dbg_value(ptr %6, !12085, !DIExpression(DW_OP_LLVM_fragment, 52416, 64), !11911)
    #dbg_value(ptr %i.ba, !12093, !DIExpression(DW_OP_LLVM_fragment, 52480, 64), !11910)
    #dbg_value(ptr %i.ba, !12085, !DIExpression(DW_OP_LLVM_fragment, 52480, 64), !11911)
    #dbg_value(ptr %i.bb, !12093, !DIExpression(DW_OP_LLVM_fragment, 52544, 64), !11910)
    #dbg_value(ptr %i.bb, !12085, !DIExpression(DW_OP_LLVM_fragment, 52544, 64), !11911)
    #dbg_value(ptr %i.ap, !12093, !DIExpression(DW_OP_LLVM_fragment, 52608, 64), !11910)
    #dbg_value(ptr %i.ap, !12085, !DIExpression(DW_OP_LLVM_fragment, 52608, 64), !11911)
    #dbg_value(ptr %i.aq, !12093, !DIExpression(DW_OP_LLVM_fragment, 52672, 64), !11910)
    #dbg_value(ptr %i.aq, !12085, !DIExpression(DW_OP_LLVM_fragment, 52672, 64), !11911)
    #dbg_value(i64 0, !12085, !DIExpression(DW_OP_LLVM_fragment, 53440, 64), !11911)
    #dbg_value(i64 0, !12093, !DIExpression(DW_OP_LLVM_fragment, 53440, 64), !11910)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12085, !DIExpression(DW_OP_LLVM_fragment, 53504, 64), !11911)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12093, !DIExpression(DW_OP_LLVM_fragment, 53504, 64), !11910)
    #dbg_value(i64 0, !12085, !DIExpression(DW_OP_LLVM_fragment, 53568, 64), !11911)
    #dbg_value(i64 0, !12093, !DIExpression(DW_OP_LLVM_fragment, 53568, 64), !11910)
    #dbg_value(i64 2, !12085, !DIExpression(DW_OP_LLVM_fragment, 50816, 64), !11911)
    #dbg_value(i64 2, !12093, !DIExpression(DW_OP_LLVM_fragment, 50816, 64), !11910)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12440, !noalias !12214
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513.sroa.0.i), !dbg !12441
  %.sroa.513.sroa.0.11..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.513.sroa.0.i, i64 11, !dbg !12442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6320) %.sroa.513.sroa.0.11..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(6320) %2, i64 6320, i1 false), !dbg !12442
  store i32 0, ptr %i.l, align 16, !dbg !12439, !noalias !12214
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !12439
  store i8 0, ptr %.sroa.412.0..sroa_idx.i, align 4, !dbg !12439, !noalias !12214
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 5, !dbg !12439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6331) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(6331) %.sroa.513.sroa.0.i, i64 6331, i1 false), !dbg !12439, !noalias !12214
  %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6336, !dbg !12439
  store i64 1, ptr %.sroa.513.sroa.4.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6344, !dbg !12439
  store ptr %i.ag, ptr %.sroa.513.sroa.5.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6352, !dbg !12439
  store i64 1, ptr %.sroa.513.sroa.6.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6360, !dbg !12439
  store ptr %i.ao, ptr %.sroa.513.sroa.7.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.8.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6368, !dbg !12439
  store i64 2, ptr %.sroa.513.sroa.8.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.11.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6456, !dbg !12439
  store i32 -1, ptr %.sroa.513.sroa.11.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.12.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6460, !dbg !12439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.513.sroa.12.0..sroa.513.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.11.i, i64 36, i1 false), !dbg !12439, !noalias !12214
  %.sroa.513.sroa.15.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6560, !dbg !12439
  store ptr %5, ptr %.sroa.513.sroa.15.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.16.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6568, !dbg !12439
  store ptr %6, ptr %.sroa.513.sroa.16.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.17.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6576, !dbg !12439
  store ptr %i.ba, ptr %.sroa.513.sroa.17.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.18.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6584, !dbg !12439
  store ptr %i.bb, ptr %.sroa.513.sroa.18.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.19.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6592, !dbg !12439
  store ptr %i.ap, ptr %.sroa.513.sroa.19.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.20.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6600, !dbg !12439
  store ptr %i.aq, ptr %.sroa.513.sroa.20.0..sroa.513.0..sroa_idx.sroa_idx.i, align 8, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.21.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6608, !dbg !12439
  store ptr null, ptr %.sroa.513.sroa.21.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.23.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6624, !dbg !12439
  store ptr null, ptr %.sroa.513.sroa.23.0..sroa.513.0..sroa_idx.sroa_idx.i, align 16, !dbg !12439, !noalias !12214
  %.sroa.513.sroa.26.0..sroa.513.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 6696, !dbg !12439
end_hunk_0
begin_hunk_1_@_RNvMNtCsB8MOEg02Qk_5quinn10connectionNtB2_10Connecting3new:bb.a
    #dbg_value(i8 1, !5933, !DIExpression(), !11984)
    #dbg_value(ptr %i.ap, !5928, !DIExpression(), !11985)
    #dbg_value(ptr %i.ap, !5932, !DIExpression(), !11984)
  %i.bl = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !dbg !12459, !noalias !12358
  %i.bm = icmp eq i64 %i.bl, 1, !dbg !12460
  br i1 %i.bm, label %bb.x, label %.noexc143.i, !dbg !12460

bb.x:                                             ; preds = %bb.w
    #dbg_value(i8 2, !5004, !DIExpression(), !11991)
  fence acquire, !dbg !12461
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #24
          to label %.noexc143.i unwind label %bb.s, !dbg !12462, !noalias !12245

.noexc143.i:                                      ; preds = %bb.x, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !12359), !dbg !12463
    #dbg_value(ptr %i.n, !5880, !DIExpression(), !11995)
  call void @llvm.experimental.noalias.scope.decl(metadata !12360), !dbg !12464
    #dbg_value(ptr %i.n, !5886, !DIExpression(), !11999)
    #dbg_value(ptr %i.n, !5888, !DIExpression(), !12001)
    #dbg_value(i64 1, !5897, !DIExpression(), !12003)
    #dbg_value(i8 1, !5899, !DIExpression(), !12003)
    #dbg_value(i64 1, !5901, !DIExpression(), !12005)
    #dbg_value(i8 1, !5903, !DIExpression(), !12005)
  %i.bn = load ptr, ptr %i.n, align 8, !dbg !12465, !alias.scope !12361, !noalias !12214, !nonnull !1777, !noundef !1777
    #dbg_value(ptr %i.bn, !5898, !DIExpression(), !12007)
    #dbg_value(ptr %i.bn, !5902, !DIExpression(), !12005)
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 release, align 8, !dbg !12466, !noalias !12362
  %i.bp = icmp eq i64 %i.bo, 1, !dbg !12467
  br i1 %i.bp, label %bb.y, label %.body37, !dbg !12467

bb.y:                                             ; preds = %.noexc143.i
    #dbg_value(i8 2, !5004, !DIExpression(), !12009)
  fence acquire, !dbg !12468
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime14AsyncUdpSocketEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #24
          to label %.body37 unwind label %bb.s, !dbg !12469, !noalias !12245

bb.z:                                             ; preds = %bb.h
  tail call void @llvm.trap(), !dbg !12470
  unreachable, !dbg !12470

.body37:                                          ; preds = %bb.y, %.noexc143.i, %bb.q, %bb.m, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bh, %bb.q ], [ %i.bk, %.noexc143.i ], [ %i.bk, %bb.y ], [ %i.bc, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8) %i.s) #21
          to label %bb.f unwind label %bb.am, !dbg !12471

bb.aa:                                            ; preds = %bb.o
    #dbg_value(ptr %i.bf, !12292, !DIExpression(), !12010)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7008) %i.bf, ptr noundef nonnull align 16 dereferenceable(7008) %i.a, i64 7008, i1 false), !dbg !12472, !noalias !12245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12473, !noalias !12214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060.i), !dbg !12474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i), !dbg !12475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !12475
  store ptr %i.bf, ptr %i.r, align 8, !dbg !12419
    #dbg_value(ptr %i.r, !12182, !DIExpression(), !12363)
    #dbg_value(ptr %i.bf, !12162, !DIExpression(DW_OP_plus_uconst, 6992, DW_OP_stack_value), !12364)
    #dbg_value(ptr %i.bf, !12208, !DIExpression(DW_OP_plus_uconst, 6992, DW_OP_stack_value), !12366)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 6992, !dbg !12476
    #dbg_value(ptr %i.bq, !12174, !DIExpression(), !12186)
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !dbg !12477 ; 0 uses
    #dbg_value(ptr %i.r, !12191, !DIExpression(), !12369)
    #dbg_value(ptr %i.bf, !12162, !DIExpression(), !12370)
    #dbg_value(ptr %i.bf, !12208, !DIExpression(), !12372)
    #dbg_value(ptr %i.bf, !12174, !DIExpression(), !12196)
  %i.bs = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !dbg !12478
    #dbg_value(i64 %i.bs, !12192, !DIExpression(), !12373)
  %i.bt = icmp slt i64 %i.bs, 0, !dbg !12479
  br i1 %i.bt, label %bb.ac, label %bb.ab, !dbg !12479

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.bf, !12082, !DIExpression(), !12374)
    #dbg_value(ptr %i.v, !12375, !DIExpression(), !12378)
    #dbg_value(ptr %i.v, !12202, !DIExpression(), !12381)
  %i.bu = load ptr, ptr %i.v, align 8, !dbg !12480, !nonnull !1777, !noundef !1777
  %i.bv = load ptr, ptr %i.aa, align 8, !dbg !12480, !nonnull !1777, !align !5121, !noundef !1777 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16, !dbg !12481
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !12481, !range !4879, !invariant.load !1777
  %i.by = add nsw i64 %i.bx, -1, !dbg !12481
  %i.bz = and i64 %i.by, -16, !dbg !12481
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz, !dbg !12481
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !12481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !12482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !12482
  store ptr %i.bf, ptr %i.p, align 8, !dbg !12482
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !12482
  store i8 0, ptr %i.cc, align 8, !dbg !12482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !12483
  invoke void @_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span7current(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.ae unwind label %bb.ad, !dbg !12483

bb.ac:                                            ; preds = %bb.aa
  tail call void @llvm.trap(), !dbg !12484
  unreachable, !dbg !12484

bb.ad:                                            ; preds = %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsB8MOEg02Qk_5quinn10connectionNtBG_10Connecting3new0EBI_(ptr noundef nonnull align 8 %i.p) #21
          to label %.body unwind label %bb.am, !dbg !12485

bb.ae:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !12486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !12487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !dbg !12486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !12485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !12485
    #dbg_declare(ptr %i.q, !12389, !DIExpression(), !12017)
    #dbg_value(i64 8, !12294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12019)
    #dbg_value(i64 8, !12301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12021)
    #dbg_value(i64 8, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12023)
    #dbg_value(i64 64, !12294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12019)
    #dbg_value(i64 64, !12301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12021)
    #dbg_value(i64 64, !12318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12023)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12316, !DIExpression(), !12021)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !12322, !DIExpression(), !12023)
    #dbg_value(i8 0, !12323, !DIExpression(), !12023)
    #dbg_value(i64 8, !12325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12025)
    #dbg_value(i64 8, !12345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12027)
    #dbg_value(i64 64, !12325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12025)
    #dbg_value(i64 64, !12345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12027)
    #dbg_value(i1 false, !12329, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12025)
    #dbg_value(i64 64, !12330, !DIExpression(), !12028)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !12488, !noalias !12395
  %i.cf = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 7009) 64, i64 noundef range(i64 8, 17) 8) #23, !dbg !12489, !noalias !12395 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null, !dbg !12490
  br i1 %i.cg, label %bb.af, label %bb.aj, !dbg !12491, !prof !5709

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #26
          to label %.noexc39 unwind label %bb.ag, !dbg !12492

.noexc39:                                         ; preds = %bb.af
  unreachable, !dbg !12492

bb.ag:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs44jvQwX3bAX_7tracing10instrument12InstrumentedNCNvMNtCsB8MOEg02Qk_5quinn10connectionNtB1x_10Connecting3new0EEB1z_(ptr noundef nonnull align 8 dereferenceable(64) %i.q) #21
          to label %.body unwind label %bb.ah, !dbg !12493

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !12494
  unreachable, !dbg !12494

.body:                                            ; preds = %bb.ai, %bb.ag, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ad ], [ %i.cj, %bb.ai ], [ %i.ch, %bb.ag ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEBF_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.r) #21
          to label %.body37 unwind label %bb.am, !dbg !12495

bb.ai:                                            ; preds = %bb.aj
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ae
    #dbg_value(ptr %i.cf, !12393, !DIExpression(), !12031)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !dbg !12496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !12497
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 40, !dbg !12377
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !12377, !invariant.load !1777, !nonnull !1777
  invoke void %i.cl(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
          to label %bb.ak unwind label %bb.ai, !dbg !12498

bb.ak:                                            ; preds = %bb.aj
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12499
  store ptr %i.bf, ptr %i.cm, align 8, !dbg !12499
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !12499
  store ptr %i.ak, ptr %i.cn, align 8, !dbg !12499
  store i64 1, ptr %0, align 8, !dbg !12499
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12499
  store ptr %i.ah, ptr %i.co, align 8, !dbg !12499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !12495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !12471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !12403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12403
  call void @llvm.experimental.noalias.scope.decl(metadata !12396), !dbg !12403
    #dbg_value(ptr %i.v, !5910, !DIExpression(), !12035)
  call void @llvm.experimental.noalias.scope.decl(metadata !12397), !dbg !12500
    #dbg_value(ptr %i.v, !5916, !DIExpression(), !12039)
    #dbg_value(ptr %i.v, !5918, !DIExpression(), !12041)
    #dbg_value(i64 1, !5927, !DIExpression(), !12043)
    #dbg_value(i8 1, !5929, !DIExpression(), !12043)
    #dbg_value(i64 1, !5931, !DIExpression(), !12045)
    #dbg_value(i8 1, !5933, !DIExpression(), !12045)
  %i.cp = load ptr, ptr %i.v, align 8, !dbg !12501, !alias.scope !12398, !nonnull !1777, !noundef !1777
    #dbg_value(ptr %i.cp, !5928, !DIExpression(), !12047)
    #dbg_value(ptr %i.cp, !5932, !DIExpression(), !12045)
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !dbg !12502, !noalias !12398
  %i.cr = icmp eq i64 %i.cq, 1, !dbg !12503
  br i1 %i.cr, label %bb.al, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit41, !dbg !12503

bb.al:                                            ; preds = %bb.ak
    #dbg_value(i8 2, !5004, !DIExpression(), !12049)
  fence acquire, !dbg !12504
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #24, !dbg !12505
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit41, !dbg !12505

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit: ; preds = %bb.b, %bb.c
  br i1 %cond, label %bb.as, label %bb.ap, !dbg !12403

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit41: ; preds = %bb.al, %bb.ak
  ret void, !dbg !12506

bb.am:                                            ; preds = %bb.aq, %bb.c, %bb.at, %bb.ar, %.noexc42, %bb.ao, %.body, %bb.ad, %.body37, %bb.f
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !12507
  unreachable, !dbg !12507

bb.an:                                            ; preds = %bb.f
  br i1 %.sroa.0.0.a, label %bb.ao, label %bb.b, !dbg !12403

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot6SenderuEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8) %i.u) #21
          to label %bb.b unwind label %bb.am, !dbg !12403

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !12399), !dbg !12403
    #dbg_value(ptr %i.w, !5880, !DIExpression(), !12053)
  call void @llvm.experimental.noalias.scope.decl(metadata !12400), !dbg !12508
    #dbg_value(ptr %i.w, !5886, !DIExpression(), !12057)
    #dbg_value(ptr %i.w, !5888, !DIExpression(), !12059)
    #dbg_value(i64 1, !5897, !DIExpression(), !12061)
    #dbg_value(i8 1, !5899, !DIExpression(), !12061)
    #dbg_value(i64 1, !5901, !DIExpression(), !12063)
    #dbg_value(i8 1, !5903, !DIExpression(), !12063)
  %i.ct = load ptr, ptr %i.w, align 8, !dbg !12509, !alias.scope !12401, !nonnull !1777, !noundef !1777
    #dbg_value(ptr %i.ct, !5898, !DIExpression(), !12065)
    #dbg_value(ptr %i.ct, !5902, !DIExpression(), !12063)
  %i.cu = atomicrmw add ptr %i.ct, i64 -1 release, align 8, !dbg !12510, !noalias !12401
  %i.cv = icmp eq i64 %i.cu, 1, !dbg !12511
  br i1 %i.cv, label %bb.aq, label %.noexc42, !dbg !12511

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 2, !5004, !DIExpression(), !12067)
  fence acquire, !dbg !12512
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime14AsyncUdpSocketEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #24
          to label %.noexc42 unwind label %bb.am, !dbg !12513

.noexc42:                                         ; preds = %bb.aq, %bb.ap
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4sync4mpsc9unbounded17UnboundedReceiverNtCsB8MOEg02Qk_5quinn15ConnectionEventEEB1J_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.x) #21
          to label %bb.ar unwind label %bb.am, !dbg !12403

bb.ar:                                            ; preds = %.noexc42
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4sync4mpsc9unbounded15UnboundedSenderTNtNtCshovLROGBtMy_11quinn_proto8endpoint16ConnectionHandleNtNtB1K_6shared13EndpointEventEEECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8) %i.y) #21
          to label %bb.at unwind label %bb.am, !dbg !12403

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCsB8MOEg02Qk_5quinn7runtime7RuntimeEL_EEB1e_.exit, %bb.at
  resume { ptr, i32 } %.pn.pn.pn.pn, !dbg !12507

bb.at:                                            ; preds = %bb.ar
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto10connection10ConnectionECsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %2) #21
          to label %bb.as unwind label %bb.am, !dbg !12403
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsB8MOEg02Qk_5quinn10connectionNtB2_10Connecting8local_ip(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([17 x i8]) align 1 captures(none) dereferenceable(17) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12516 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !12560, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !12562)
    #dbg_value(ptr %1, !12558, !DIExpression(), !12563)
    #dbg_value(ptr poison, !12564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12568)
    #dbg_value(i64 8, !12564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12568)
    #dbg_value(ptr %1, !12569, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12573)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12590
  %i.d = load ptr, ptr %i.c, align 8, !dbg !12590, !noundef !1777 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !12590
  br i1 %.not, label %bb.l, label %bb.b, !dbg !12591, !prof !5709

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !12574, !DIExpression(), !12581)
    #dbg_value(ptr %i.c, !12559, !DIExpression(), !12582)
    #dbg_value(ptr %i.d, !12565, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12592
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !12592
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtCsB8MOEg02Qk_5quinn10connection5StateE4lockB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 16 %i.e), !dbg !12593
  call void @llvm.experimental.noalias.scope.decl(metadata !12584), !dbg !12594
    #dbg_declare(ptr %i.b, !6564, !DIExpression(), !12525)
    #dbg_declare(ptr %i.a, !6580, !DIExpression(), !12526)
  %i.f = load i64, ptr %i.b, align 8, !dbg !12595, !range !4964, !alias.scope !12584, !noundef !1777
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12596
  br i1 %i.g, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit, !dbg !12596, !prof !5709

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12597, !noalias !12584
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12597
  %i.i = load ptr, ptr %i.h, align 8, !dbg !12597, !alias.scope !12584, !nonnull !1777, !align !5939, !noundef !1777
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12597
  %i.k = load i8, ptr %i.j, align 8, !dbg !12597, !range !5940, !alias.scope !12584, !noundef !1777
  store ptr %i.i, ptr %i.a, align 8, !dbg !12597, !noalias !12584
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12597
  store i8 %i.k, ptr %i.l, align 8, !dbg !12597, !noalias !12584
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %bb.e unwind label %bb.d, !dbg !12598, !noalias !12584

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %bb.g unwind label %bb.f, !dbg !12599, !noalias !12584

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !12600, !noalias !12584
  unreachable, !dbg !12600

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m, !dbg !12600

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12601
  %i.p = load ptr, ptr %i.o, align 8, !dbg !12601, !alias.scope !12584, !nonnull !1777, !align !5939, !noundef !1777 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12601
  %i.r = load i8, ptr %i.q, align 8, !dbg !12601, !range !5940, !alias.scope !12584, !noundef !1777
  %i.s = trunc nuw i8 %i.r to i1, !dbg !12601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12602
    #dbg_value(ptr %i.p, !12560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12585)
    #dbg_value(i8 %i.r, !12560, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !12585)
    #dbg_value(ptr %i.p, !12586, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12589)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6232, !dbg !12603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %i.t, i64 17, i1 false), !dbg !12603
    #dbg_value(ptr poison, !5629, !DIExpression(), !12529)
    #dbg_value(ptr poison, !5634, !DIExpression(), !12531)
    #dbg_value(ptr poison, !5639, !DIExpression(), !12533)
    #dbg_value(i32 0, !5642, !DIExpression(), !12536)
    #dbg_value(i8 1, !5648, !DIExpression(), !12536)
    #dbg_value(i32 0, !5657, !DIExpression(), !12538)
    #dbg_value(i8 1, !5662, !DIExpression(), !12538)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !12604
    #dbg_value(ptr %i.u, !5666, !DIExpression(), !12540)
    #dbg_value(ptr poison, !5672, !DIExpression(), !12540)
    #dbg_value(i8 0, !5674, !DIExpression(), !12545)
    #dbg_value(i8 1, !5688, !DIExpression(), !12547)
    #dbg_value(i8 0, !5694, !DIExpression(), !12547)
  br i1 %i.s, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h, !dbg !12605

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !5678, !DIExpression(), !12545)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !5697, !DIExpression(), !12549)
    #dbg_value(i8 0, !5700, !DIExpression(), !12549)
  %i.v = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !12606
  %i.w = and i64 %i.v, 9223372036854775807, !dbg !12607
  %i.x = icmp eq i64 %i.w, 0, !dbg !12607
  br i1 %i.x, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !dbg !12607, !prof !5702

bb.i:                                             ; preds = %bb.h
  %i.y = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24, !dbg !12608
  br i1 %i.y, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j, !dbg !12609

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.u, !5693, !DIExpression(), !12550)
    #dbg_value(ptr %i.u, !5703, !DIExpression(), !12552)
    #dbg_value(i8 1, !5706, !DIExpression(), !12552)
    #dbg_value(i8 0, !5707, !DIExpression(), !12552)
  store atomic i8 1, ptr %i.u monotonic, align 4, !dbg !12610
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !12611

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCsB8MOEg02Qk_5quinn10connection5StateEINtBM_11PoisonErrorBH_EE6unwrapB1F_.exit
    #dbg_value(ptr %i.p, !5655, !DIExpression(), !12553)
    #dbg_value(ptr %i.p, !5647, !DIExpression(), !12554)
    #dbg_value(ptr %i.p, !5661, !DIExpression(), !12538)
  %i.z = atomicrmw xchg ptr %i.p, i32 0 release, align 4, !dbg !12612
  %i.aa = icmp eq i32 %i.z, 2, !dbg !12613
  br i1 %i.aa, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit, !dbg !12613, !prof !5709

bb.k:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p), !dbg !12614
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit, !dbg !12614

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsB8MOEg02Qk_5quinn5mutex12non_tracking10MutexGuardNtNtBI_10connection5StateEEBI_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.k
  ret void, !dbg !12615

bb.l:                                             ; preds = %bb.a
    #dbg_value(ptr null, !12574, !DIExpression(), !12581)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27, !dbg !12616
  unreachable, !dbg !12616
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsB8MOEg02Qk_5quinn10connectionNtB2_10Connecting9into_0rtt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12625 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
    #dbg_declare(ptr poison, !12771, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !12774)
    #dbg_declare(ptr %1, !12766, !DIExpression(), !12775)
    #dbg_value(ptr poison, !12776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12780)
    #dbg_value(i64 9, !12776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12780)
    #dbg_value(ptr %1, !12781, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12797)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12846 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !12846, !noundef !1777 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !12846
  br i1 %.not, label %.invoke, label %bb.b, !dbg !12847, !prof !5709

end_hunk_1
