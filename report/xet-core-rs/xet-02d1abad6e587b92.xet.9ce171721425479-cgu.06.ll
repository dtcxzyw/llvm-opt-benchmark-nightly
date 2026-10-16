Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.06?download=true
inline.NumInlined: 1295
inline.NumDeleted: 534
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs1_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_8BtreeMutReNtNtB7_15table_tree_base23InternalTableDefinitionE6insertCsQbU2fm3lSD_3xet:bb.a
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit34

bb.cf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsQbU2fm3lSD_3xet.exit.i29
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit34 unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body26:                                          ; preds = %bb.bx, %bb.bw, %bb.cd, %bb.ce, %bb.ch, %.body
  %.pn11 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.eu, %bb.bw ], [ %i.eu, %bb.bx ], [ %i.fp, %bb.ch ], [ %i.fh, %bb.ce ], [ %i.fh, %bb.cd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet(ptr nonnull %i.al, i8 %i.an) #24
          to label %common.resume unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %bb.by
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit34: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsQbU2fm3lSD_3xet.exit.i29, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit34
  %i.fr = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fs = and i64 %i.fr, 9223372036854775807
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.cj, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.fu = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store atomic i8 1, ptr %i.fq monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ck, %bb.cj, %bb.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit34
  %i.fv = atomicrmw xchg ptr %i.al, i32 0 release, align 4
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.cl:                                            ; preds = %.body26, %bb.cb, %.body
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsQbU2fm3lSD_3xet.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit
  %i.fz = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ga = and i64 %i.fz, 9223372036854775807
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.cn, !prof !10

bb.cn:                                            ; preds = %bb.cm
  %i.gc = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.gc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store atomic i8 1, ptr %i.fy monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35: ; preds = %bb.co, %bb.cn, %bb.cm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsQbU2fm3lSD_3xet.exit
  %i.gd = atomicrmw xchg ptr %i.al, i32 0 release, align 4
  %i.ge = icmp eq i32 %i.gd, 2
  br i1 %i.ge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsQbU2fm3lSD_3xet.exit, !prof !9
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsUrhh0HcRih_5tokio4sync7oneshotINtB5_8ReceiverNtNtCslc8SwK8fohf_5bytes5bytes5BytesE8try_recvCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !noundef !7   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = tail call noundef i64 @_RNvMs9_NtNtCsUrhh0HcRih_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8 %i.c, i8 noundef 2) ; 2 uses
  %i.e = and i64 %i.d, 2
  %.not9 = icmp eq i64 %i.e, 0
  br i1 %.not9, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.f, align 8
  store ptr null, ptr %i.a, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsQbU2fm3lSD_3xet.exit

bb.d:                                             ; preds = %bb.k, %bb.l, %bb.i
  %storemerge = phi ptr [ null, %bb.i ], [ %.sroa.01.0.copyload, %bb.l ], [ %.sroa.01.0.copyload, %bb.k ]
  store ptr %storemerge, ptr %i.a, align 8
  %i.g = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2487
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsQbU2fm3lSD_3xet.exit unwind label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.i = and i64 %i.d, 4
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.j, align 8 ; 3 uses
  store ptr null, ptr %i.j, align 8
  %.not11 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not11, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.k, align 8
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.l, align 8
  br label %bb.d

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsQbU2fm3lSD_3xet.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  br label %bb.d

bb.l:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.m, align 8
  br label %bb.d

bb.m:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !2488, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2491, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2491, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2491, !noundef !7
  invoke void %i.q(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit unwind label %bb.o, !inline_history !2486

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InnerNtNtCslc8SwK8fohf_5bytes5bytes5BytesEEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.c, %bb.d, %bb.e
  store ptr null, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.j

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslc8SwK8fohf_5bytes5bytes5BytesNtNtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5error12TryRecvErrorEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %i.n
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE8get_slowCsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !12, !alias.scope !2500, !noundef !7
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.d, %bb.e
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsQbU2fm3lSD_3xet.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit
  ret void

common.resume:                                    ; preds = %10, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #26
  unreachable

bb.h:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %4
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !6, !noundef !7
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %5, align 8, !nonnull !7, !align !21, !noundef !7 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load i8, ptr %6, align 8, !range !18, !noundef !7 ; 2 uses
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
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !10

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit, !prof !9

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit

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
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !7, !align !21, !noundef !7
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
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22, !prof !9

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2501
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 1400, i64 noundef 8) #29, !noalias !2501 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !9

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #23
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #24
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i25 = load ptr, ptr %7, align 8, !alias.scope !2502 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i26 = load i8, ptr %8, align 8, !range !15, !alias.scope !2502, !noundef !7 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2502
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !2502
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !2502
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !2502
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !2502
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !2503
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 1400, i64 noundef 8) #29, !noalias !2503 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %9, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsQbU2fm3lSD_3xet.exit9, !prof !9

9:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #23
          to label %.noexc31 unwind label %10

.noexc31:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #24
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsQbU2fm3lSD_3xet.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit22
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE9put_valueCsQbU2fm3lSD_3xet(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !18, !noalias !2533, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCNKNvNtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_jEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i, !prof !10

_RNvYNCNKNvNtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_jEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %bb.a
  %i.f = invoke noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsQbU2fm3lSD_3xet(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_jEEEE9call_onceCsQbU2fm3lSD_3xet.exit.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #26
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.h, %bb.d
  unreachable

common.resume:                                    ; preds = %bb.ci, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.ab, %.body ], [ %lpad.phi, %bb.ci ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.9
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #29
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.q, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet.exit
  ret void

bb.g:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !7
  %i.m = urem i64 %.val.i.i, %i.i                 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.q, i64 %i.m
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.r)
          to label %bb.i unwind label %.loopexit

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28
  %.lcssa = phi i64 [ %i.fg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.8 ], [ %i.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28 ], [ %i.bm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.1 ], [ %i.ca, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.2 ], [ %i.co, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.3 ], [ %i.dc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.4 ], [ %i.dq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.5 ], [ %i.ee, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.6 ], [ %i.es, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28.7 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #23
          to label %bb.e unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !range !6, !noundef !7
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.cc, %bb.bv, %bb.bo, %bb.bh, %bb.ba, %bb.at, %bb.am, %bb.af, %bb.y, %bb.i
  %i.u = load ptr, ptr %i.o, align 8, !nonnull !7, !align !21, !noundef !7 ; 7 uses
  %i.v = load i8, ptr %i.p, align 8, !range !18, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2534, !noundef !7 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !22, !alias.scope !2534, !noundef !7
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.n unwind label %bb.l, !noalias !2535

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsQbU2fm3lSD_3xet(ptr nonnull align 8 %1) #24
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet(ptr nonnull %i.u, i8 %i.v) #24
          to label %common.resume unwind label %bb.r

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2534, !nonnull !7, !noundef !7
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.y
  store ptr %1, ptr %i.af, align 8, !noalias !2535
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !2534
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ai = trunc nuw i8 %i.v to i1
  br i1 %i.ai, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc16, !prof !10

.noexc16:                                         ; preds = %bb.o
  %i.am = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc16
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %.noexc16, %bb.o, %bb.n
  %i.an = atomicrmw xchg ptr %i.u, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit, !prof !9

bb.q:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.u)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit

bb.r:                                             ; preds = %bb.ci, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  %.val.i18 = load ptr, ptr %i.o, align 8, !alias.scope !2536 ; 4 uses
  %.val3.i19 = load i8, ptr %i.p, align 8, !range !15, !alias.scope !2536, !noundef !7 ; 2 uses
  %.not.i.i20 = icmp eq i8 %.val3.i19, 2
  br i1 %.not.i.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i18, i64 4
  %i.ar = trunc nuw i8 %.val3.i19 to i1
  br i1 %i.ar, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2536
  %i.at = and i64 %i.as, 9223372036854775807
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.av = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.v
  br i1 %i.av, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21, label %bb.w

bb.w:                                             ; preds = %.noexc26
  store atomic i8 1, ptr %i.aq monotonic, align 1, !noalias !2536
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21: ; preds = %bb.w, %.noexc26, %bb.u, %bb.t
  %i.aw = atomicrmw xchg ptr %.val.i18, i32 0 release, align 4, !noalias !2536
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i22, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i22: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i18)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28 unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i21, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsQbU2fm3lSD_3xet.exit.sink.split.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.az = icmp ult i64 %i.m, %i.ay
  br i1 %i.az, label %bb.x, label %bb.h

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsQbU2fm3lSD_3xet.exit28
end_hunk_0
