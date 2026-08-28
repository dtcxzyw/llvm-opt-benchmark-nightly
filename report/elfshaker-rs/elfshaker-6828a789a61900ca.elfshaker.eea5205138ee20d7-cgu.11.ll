Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.11?download=true
inline.NumInlined: 637
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs1_NtNtCskuiImRAV2ip_9elfshaker4repo6remoteINtNtCs3oUPovFnLWP_4core6result6ResultNtB6_11RemoteIndexNtNtB8_5error5ErrorENtB6_17ReifyRemoteResult5reifyNtNtCsaL1QbXo9JQH_3std4path7DisplayEBa_:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc2io4copy7genericNtNtNtCs3oUPovFnLWP_4core2io4util4SinkNtB6_18BufferedWriterSpec9copy_fromINtBO_4TakeQINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtBa_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB6_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtB14_4SinkECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callB20_NCINvMsk_NtB1b_3vecINtB48_3VecB20_E14extend_trustedBP_E0E0EB24_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.val6.i = phi i64 [ %i.e, %bb.d ], [ %.sroa.4.0.copyload, %bb.a ] ; 4 uses
  %i.b = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.e, !noalias !557 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %.val6.i
  %i.d = load <2 x i64>, ptr %i.b, align 8, !noalias !557
  store <2 x i64> %i.d, ptr %i.c, align 8, !noalias !560
  %i.e = add i64 %.val6.i, 1
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.04.0.copyload, align 8, !noalias !557
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.04.0.copyload, align 8, !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB14_4LazyINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCskuiImRAV2ip_9elfshaker3log6LoggerEE3getNvNvXs2_B2p_NtB2p_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !align !65, !noundef !5 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.b, !prof !567

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !568, !nonnull !5, !align !65, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !571
  store ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.c, align 8, !noalias !571
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 24) acquire, align 8, !noalias !574
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i, label %bb.c, !prof !518

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !574
  store ptr %i.c, ptr %i.b, align 8, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  store ptr %i.b, ptr %i.a, align 8, !noalias !574
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 24), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !574
  br label %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i

_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !571
  %i.l = load atomic i32, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY monotonic, align 8, !noalias !571 ; 3 uses
  %or.cond3.i.i.i.i = icmp ult i32 %i.l, 1073741822
  br i1 %or.cond3.i.i.i.i, label %bb.d, label %bb.e, !prof !577

bb.d:                                             ; preds = %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i
  %i.m = add nuw nsw i32 %i.l, 1
  %i.n = cmpxchg weak ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i32 %i.l, i32 %i.m acquire monotonic, align 4, !noalias !571
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i, label %bb.e, !prof !518

bb.e:                                             ; preds = %bb.d, %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY), !noalias !571
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelE3newCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY), !noalias !571
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.p = load i64, ptr %i.e, align 8, !range !24, !alias.scope !578, !noalias !571, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit.i.i.i, !prof !567

bb.f:                                             ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !581
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !alias.scope !578, !noalias !571
  store <2 x ptr> %i.s, ptr %i.d, align 16, !noalias !581
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #32
          to label %bb.h unwind label %bb.g, !noalias !581

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !571

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !581
  unreachable

common.resume.i.i.i:                              ; preds = %bb.j, %bb.g
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.aa, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !alias.scope !578, !noalias !571
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !578, !noalias !571, !nonnull !5, !noundef !5
  store <2 x ptr> %i.w, ptr %i.f, align 16, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !571
  %i.y = load i64, ptr %i.x, align 8, !range !582, !noalias !571, !noundef !5
  %i.z = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger11static_init.exit.i.i unwind label %bb.j, !noalias !571 ; 2 uses

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %common.resume.i.i.i unwind label %bb.k, !noalias !571

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !571
  unreachable

_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger11static_init.exit.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !571
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !583
  %i.ac = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #28, !noalias !583 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %_RNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB5_4LazyINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCskuiImRAV2ip_9elfshaker3log6LoggerEE3getNvNvXs2_B1p_NtB1p_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1r_.exit, !prof !567

bb.l:                                             ; preds = %_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger11static_init.exit.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32, !noalias !583
  unreachable

_RNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB5_4LazyINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCskuiImRAV2ip_9elfshaker3log6LoggerEE3getNvNvXs2_B1p_NtB1p_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0B1r_.exit: ; preds = %_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger11static_init.exit.i.i
  %i.ae = extractvalue { i64, i32 } %i.z, 1
  %i.af = extractvalue { i64, i32 } %i.z, 0
  store i64 %i.y, ptr %i.ac, align 8, !noalias !568
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !568
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.ae, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !568
  store ptr %i.ac, ptr %i.i, align 8, !noalias !568
  ret void

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB14_4LazyINtNtNtBa_6poison6rwlock6RwLockNtCse7cAXHj51Pq_3log5LevelEE3getNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB2X_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !65, !noundef !5 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !567

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.val, i8 0, i64 9, i1 false)
  %.sroa.612.0..0.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store i64 1, ptr %.sroa.612.0..0.val.sroa_idx.i, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB19_4LazyINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCskuiImRAV2ip_9elfshaker3log6LoggerEE3getNvNvXs2_B2u_NtB2u_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0INtNtB3E_8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2w_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !65, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !586
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB14_4LazyINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCskuiImRAV2ip_9elfshaker3log6LoggerEE3getNvNvXs2_B2p_NtB2p_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0B2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB19_4LazyINtNtNtBf_6poison6rwlock6RwLockNtCse7cAXHj51Pq_3log5LevelEE3getNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB32_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0INtNtB3W_8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB34_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !589, !noalias !592, !align !65, !noundef !5 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !589, !noalias !592
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB17_4LazyINtNtNtBd_6poison6rwlock6RwLockNtCse7cAXHj51Pq_3log5LevelEE3getNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB30_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0INtNtB3U_8function6FnOnceTRNtBb_9OnceStateEE9call_onceB32_.exit, !prof !567

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !595
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvMNtCs4oabfA5r5hf_11lazy_static4lazyINtB17_4LazyINtNtNtBd_6poison6rwlock6RwLockNtCse7cAXHj51Pq_3log5LevelEE3getNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB30_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref23___static_ref_initializeE0E0INtNtB3U_8function6FnOnceTRNtBb_9OnceStateEE9call_onceB32_.exit: ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !595, !nonnull !5, !align !65, !noundef !5 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.val.i.i, i8 0, i64 9, i1 false), !noalias !595
  %.sroa.612.0..0.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  store i64 1, ptr %.sroa.612.0..0.val.sroa_idx.i.i.i, align 8, !noalias !595
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskuiImRAV2ip_9elfshaker3logNtB2_6Logger4init(i64 noundef range(i64 1, 6) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.g, align 8
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 24) acquire, align 8, !noalias !596
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, label %bb.b, !prof !518

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !596
  store ptr %i.g, ptr %i.f, align 8, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !596
  store ptr %i.f, ptr %i.e, align 8, !noalias !596
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 24), i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !596
  br label %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit

_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.l = cmpxchg weak ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !599
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.c, !prof !518

bb.c:                                             ; preds = %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4 @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY), !noalias !599
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB5_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  %i.n = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !599
  %i.o = and i64 %i.n, 9223372036854775807
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtCse7cAXHj51Pq_3log5LevelE5writeCskuiImRAV2ip_9elfshaker.exit, label %bb.e, !prof !518

bb.e:                                             ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #29, !noalias !599
  %i.r = xor i1 %i.q, true
  %i.s = zext i1 %i.r to i8
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtCse7cAXHj51Pq_3log5LevelE5writeCskuiImRAV2ip_9elfshaker.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtCse7cAXHj51Pq_3log5LevelE5writeCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.s, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 8) monotonic, align 8, !noalias !599
  %.not.i.i.not = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit, label %bb.f, !prof !518

bb.f:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtCse7cAXHj51Pq_3log5LevelE5writeCskuiImRAV2ip_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !602
  store ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.h, align 8, !noalias !602
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.u, align 8, !noalias !602
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #32
          to label %bb.h unwind label %bb.g, !noalias !602

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !602
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.v

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtCse7cAXHj51Pq_3log5LevelE5writeCskuiImRAV2ip_9elfshaker.exit
  store ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.x, align 8
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NtCskuiImRAV2ip_9elfshaker3logNtB9_14INIT_LOG_LEVELNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 16), align 8
  call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB9_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, ptr %i.d, align 8
  %i.y = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB9_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 8) acquire, align 8, !noalias !605
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB5_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit, label %bb.j, !prof !518

bb.j:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !605
  store ptr %i.d, ptr %i.c, align 8, !noalias !605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !605
  store ptr %i.c, ptr %i.b, align 8, !noalias !605
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB9_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !605
  br label %_RNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB5_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit

_RNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB5_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtCse7cAXHj51Pq_3log5LevelEINtBM_11PoisonErrorBH_EE6unwrapCskuiImRAV2ip_9elfshaker.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = load ptr, ptr @_RNvNvNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB9_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref11___stability4LAZY, align 8, !nonnull !5, !noundef !5
  %i.ab = call noundef zeroext i1 @_RNvCse7cAXHj51Pq_3log10set_logger(ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @22)
  br i1 %i.ab, label %bb.k, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtCse7cAXHj51Pq_3log14SetLoggerErrorE6unwrapCskuiImRAV2ip_9elfshaker.exit, !prof !567

bb.k:                                             ; preds = %_RNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB5_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #31
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtCse7cAXHj51Pq_3log14SetLoggerErrorE6unwrapCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvXs2_NtCskuiImRAV2ip_9elfshaker3logNtB5_6LOGGERNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit
  store atomic i64 3, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE10take_frontB1O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !608

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
end_hunk_0
