Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.14?download=true
inline.NumInlined: 819
inline.NumDeleted: 185
begin_hunk_0_@_RNvMs1_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_8BtreeMutReNtNtB7_15table_tree_base23InternalTableDefinitionE6insertCsiAynQAjgDuT_10xet_client:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.es = load ptr, ptr %i.bb, align 8, !alias.scope !2453, !nonnull !6, !noundef !6
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !noalias !2453
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  %i.ew = load ptr, ptr %i.bd, align 8, !alias.scope !2456, !nonnull !6, !noundef !6
  %i.ex = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !2457
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.bx, label %.body26

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #31
          to label %.body26 unwind label %bb.bz

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  %i.ez = load ptr, ptr %i.bd, align 8, !alias.scope !2460, !nonnull !6, !noundef !6
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !2461
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.by, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.ch

bb.bz:                                            ; preds = %bb.bx
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ca:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.10.32..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %.sroa.040.0.i, ptr %i.u, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  store i64 %.sroa.3.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store i64 %.sroa.435.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %i.u, i64 96, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base7PageMutECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base21AccessGuardMutInPlaceNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base11AccessGuardNtNtB12_15table_tree_base23InternalTableDefinitionEEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(96) %i.v) #30
          to label %.body unwind label %bb.cl

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base21AccessGuardMutInPlaceNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  %i.ff = load ptr, ptr %i.bb, align 8, !alias.scope !2465, !nonnull !6, !noundef !6
  %i.fg = atomicrmw sub ptr %i.ff, i64 1 release, align 8, !noalias !2465
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i29

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base21AccessGuardMutInPlaceNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i29 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.fj = load ptr, ptr %i.bd, align 8, !alias.scope !2468, !nonnull !6, !noundef !6
  %i.fk = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !2469
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.ce, label %.body26

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #31
          to label %.body26 unwind label %bb.cg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i29: ; preds = %bb.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store10btree_base21AccessGuardMutInPlaceNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  %i.fm = load ptr, ptr %i.bd, align 8, !alias.scope !2472, !nonnull !6, !noundef !6
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !2473
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit34

bb.cf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i29
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit34 unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body26:                                          ; preds = %bb.bx, %bb.bw, %bb.cd, %bb.ce, %bb.ch, %.body
  %.pn11 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ev, %bb.bw ], [ %i.ev, %bb.bx ], [ %i.fq, %bb.ch ], [ %i.fi, %bb.ce ], [ %i.fi, %bb.cd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client(ptr nonnull %i.al, i8 %i.an) #30
          to label %common.resume unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cf, %bb.by
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit34: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i29, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit34
  %i.fs = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ft = and i64 %i.fs, 9223372036854775807
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.cj, !prof !14

bb.cj:                                            ; preds = %bb.ci
  %i.fv = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.fv, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store atomic i8 1, ptr %i.fr monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ck, %bb.cj, %bb.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit34
  %i.fw = atomicrmw xchg ptr %i.al, i32 0 release, align 4
  %i.fx = icmp eq i32 %i.fw, 2
  br i1 %i.fx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit, !prof !5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit.sink.split: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit.sink.split, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret void

bb.cl:                                            ; preds = %.body26, %bb.cb, %.body
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryEECsiAynQAjgDuT_10xet_client.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.ao, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit
  %i.ga = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.gb = and i64 %i.ga, 9223372036854775807
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.cn, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.gd = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.gd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store atomic i8 1, ptr %i.fz monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i35: ; preds = %bb.co, %bb.cn, %bb.cm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs7SkU8gPisFf_4redb10tree_store13btree_mutator12MutateHelperReNtNtBG_15table_tree_base23InternalTableDefinitionEECsiAynQAjgDuT_10xet_client.exit
  %i.ge = atomicrmw xchg ptr %i.al, i32 0 release, align 4
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEECsiAynQAjgDuT_10xet_client.exit, !prof !5
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE8get_slowCsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
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
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !13, !alias.scope !2482, !noundef !6
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsiAynQAjgDuT_10xet_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsiAynQAjgDuT_10xet_client.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.d, %bb.e
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
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsiAynQAjgDuT_10xet_client.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECsiAynQAjgDuT_10xet_client.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #27
  unreachable

4:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #29
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #30
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsiAynQAjgDuT_10xet_client.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %14
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %12, align 8, !nonnull !6, !align !8, !noundef !6 ; 9 uses
  %i.ab = load i8, ptr %13, align 8, !range !9, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 3 uses
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
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !14

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit, !prof !5

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !20, !noundef !6
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !6, !align !8, !noundef !6
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
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22, !prof !5

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2483
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 1400, i64 noundef 8) #32, !noalias !2483 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !5

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #29
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #30
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !2484 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !24, !alias.scope !2484, !noundef !6 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2484
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !2484
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !2484
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !2484
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32, !prof !5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !2484
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECsiAynQAjgDuT_10xet_client.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECsiAynQAjgDuT_10xet_client.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB37_4SyncNtB2q_10UnwindSafeEL_EIBJ_uE4callCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2485
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 1400, i64 noundef 8) #32, !noalias !2485 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %4, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheE3newCsiAynQAjgDuT_10xet_client.exit9, !prof !5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemINtB5_16VerificationCellNtB5_9CacheItemE11is_verifiedBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load atomic i8, ptr %i.b monotonic, align 1
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemINtB5_16VerificationCellNtB5_9CacheItemE12new_verifiedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2493
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 1401) 24, i64 noundef 8) #32, !noalias !2493 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemINtB5_16VerificationCellNtB5_9CacheItemE3newBb_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29, !noalias !2493
  unreachable

_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemINtB5_16VerificationCellNtB5_9CacheItemE3newBb_.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !noalias !2494
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2494
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2494
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !2494
  store ptr %i.a, ptr %0, align 8, !alias.scope !2491
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs3_NtNtNtCsiAynQAjgDuT_10xet_client11chunk_cache4disk10cache_itemINtB5_16VerificationCellNtB5_9CacheItemE6verifyBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store atomic i8 1, ptr %i.b release, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs7SkU8gPisFf_4redb10tree_store5btreeINtB5_5BtreeNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashBW_E10get_helperB14_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !noundef !6
  switch i8 %i.m, label %bb.e [
    i8 1, label %bb.f
    i8 2, label %bb.p
  ], !prof !16

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #29
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.o, %bb.e, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #29
          to label %bb.d unwind label %bb.x

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.j, i64 noundef 1, i64 32, i64 noundef 1, i64 32)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.n = invoke { i64, i1 } @_RINvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB6_12LeafAccessor8positionNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashEB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 32)
          to label %bb.h unwind label %bb.x       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, i1 } %i.n, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs7_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseNtB5_12LeafAccessor11value_range(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, i64 noundef %i.p)
          to label %bb.m unwind label %bb.x

bb.k:                                             ; preds = %bb.w, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  %i.q = load ptr, ptr %2, align 8, !alias.scope !2516, !nonnull !6, !noundef !6
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !2516
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit

bb.m:                                             ; preds = %bb.j
  %i.t = load i64, ptr %i.g, align 8, !range !7, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvMs0_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_11AccessGuardNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashE9with_pageB1h_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, i64 noundef %i.w, i64 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #29
          to label %bb.d unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.u, %bb.t, %bb.l, %bb.k, %bb.n
  ret void

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB5_14BranchAccessorNtNtNtB7_10page_store4base8PageImplE3newCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef 1, i64 32)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMsc_NtNtCs7SkU8gPisFf_4redb10tree_store10btree_baseINtB6_14BranchAccessorNtNtNtB8_10page_store4base8PageImplE13child_for_keyNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client8RedbHashEB2a_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 32)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load ptr, ptr %i.aa, align 16, !nonnull !6, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ae = load i8, ptr %i.ad, align 16, !range !9, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  invoke void @_RNvMs_NtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_managerNtB4_19TransactionalMemory17get_page_extended(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 16 %i.ac, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i1 noundef zeroext %i.af)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ah, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.ak = load ptr, ptr %2, align 8, !alias.scope !2520, !nonnull !6, !noundef !6
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2520
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #31
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base8PageImplECsiAynQAjgDuT_10xet_client.exit
end_hunk_0
