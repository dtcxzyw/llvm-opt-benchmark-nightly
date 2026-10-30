Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.234?download=true
inline.NumInlined: 148
inline.NumDeleted: 83
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtBG_6WorkerNtNtBI_7rolling19RollingFileAppenderE13worker_thread0ECsgGgPqgSfnMH_7storage:bb.a
  ]

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !209, !nonnull !4, !noundef !4
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !210
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs53Il55UEVRz_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsgGgPqgSfnMH_7storage.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskcJWR6YR3xk_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs53Il55UEVRz_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsgGgPqgSfnMH_7storage.exit

bb.ah:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.be = load ptr, ptr %i.ba, align 8, !alias.scope !213, !nonnull !4, !noundef !4
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !214
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs53Il55UEVRz_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsgGgPqgSfnMH_7storage.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskcJWR6YR3xk_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs53Il55UEVRz_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsgGgPqgSfnMH_7storage.exit

bb.aj:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume.i:                                  ; preds = %bb.ad, %.body3.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ay, %bb.ad ], [ %.pn.i, %.body3.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ak:                                            ; preds = %.body3.i, %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs53Il55UEVRz_16tracing_appender6worker6WorkerNtNtBG_7rolling19RollingFileAppenderEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types13SegmentConfigECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16VectorDataConfigEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16VectorDataConfigEECsgGgPqgSfnMH_7storage.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types22SparseVectorDataConfigEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types22SparseVectorDataConfigEECsgGgPqgSfnMH_7storage.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types16VectorDataConfigEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types22SparseVectorDataConfigEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types22SparseVectorDataConfigEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsgGgPqgSfnMH_7storage.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsgGgPqgSfnMH_7storage.exit
    i64 1, label %bb.c
  ], !prof !6

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsgGgPqgSfnMH_7storage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !217
  store i8 3, ptr %i.a, align 8, !alias.scope !217
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsgGgPqgSfnMH_7storage.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB21_10LocalShard5build0s0_0INtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs607s0NAIaWN_7segment7segment7SegmentNtNtNtNtB3Y_19segment_constructor24segment_constructor_base7segment15NewSegmentTokenENtNtNtB3Y_6common15operation_error14OperationErrorEEs_000uECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsG258MDvU3F_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB1Z_6WorkerNtNtB21_7rolling19RollingFileAppenderE13worker_thread0uEs_000uECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsG258MDvU3F_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB1d_10LocalShard5build0s0_0INtNtCskKLDkoKarTP_4core6result6ResultTNtNtCs607s0NAIaWN_7segment7segment7SegmentNtNtNtNtB3a_19segment_constructor24segment_constructor_base7segment15NewSegmentTokenENtNtNtB3a_6common15operation_error14OperationErrorEECsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef writable sret([576 x i8]) align 8 captures(none) dereferenceable(576) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !227, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !227, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !range !228, !alias.scope !227, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !227
  invoke void @_RNvNtNtNtCs607s0NAIaWN_7segment19segment_constructor24segment_constructor_base7segment13build_segment(ptr noalias nofree noundef nonnull sret([576 x i8]) align 8 captures(none) dereferenceable(576) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.e, i32 noundef %i.g, i32 %i.i, i1 noundef zeroext true)
          to label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB6_10LocalShard5build0s0_0CsgGgPqgSfnMH_7storage.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBI_10LocalShard5build0s0_0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1) #16
          to label %bb.d unwind label %bb.c, !noalias !229

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !229
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB6_10LocalShard5build0s0_0CsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBI_10LocalShard5build0s0_0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1), !noalias !229
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB1b_6WorkerNtNtB1d_7rolling19RollingFileAppenderE13worker_thread0uECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs53Il55UEVRz_16tracing_appender6worker11WorkerStateNtNtNtB4_2io5error5ErrorEECsgGgPqgSfnMH_7storage.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !240
  invoke void @_RNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE4workCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtBG_6WorkerNtNtBI_7rolling19RollingFileAppenderE13worker_thread0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) #16
          to label %bb.r unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 8, !range !241, !noalias !240, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.val11.i = load ptr, ptr %i.g, align 8, !noalias !240, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !242
  %i.k = ptrtoint ptr %.val11.i to i64            ; 2 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %.unreachabledefault [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i
    i64 1, label %bb.f
  ], !prof !6

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.g, %bb.m
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ult ptr %.val11.i, inttoptr (i64 188978561024 to ptr)
  %i.n = and i64 %i.k, 1095216660480
  %i.o = icmp ne i64 %i.n, 1095216660480
  call void @llvm.assume(i1 %i.m)
  call void @llvm.assume(i1 %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.val11.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  store ptr %i.p, ptr %i.h, align 8, !alias.scope !243, !noalias !242
  store i8 3, ptr %i.b, align 8, !alias.scope !243, !noalias !242
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs53Il55UEVRz_16tracing_appender6worker11WorkerStateNtNtNtB4_2io5error5ErrorEECsgGgPqgSfnMH_7storage.exit.i

bb.g:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.f, align 1, !range !244, !noalias !240, !noundef !4
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs53Il55UEVRz_16tracing_appender6worker11WorkerStateNtNtNtB4_2io5error5ErrorEECsgGgPqgSfnMH_7storage.exit.i
    i8 1, label %bb.h
    i8 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs53Il55UEVRz_16tracing_appender6worker11WorkerStateNtNtNtB4_2io5error5ErrorEECsgGgPqgSfnMH_7storage.exit.i
    i8 3, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = invoke noundef zeroext i1 @_RNvMsa_NtCskcJWR6YR3xk_17crossbeam_channel7channelINtB5_8ReceiveruE4recvCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.f, %bb.i, %bb.o, %bb.h
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !240
  %i.t = invoke noundef ptr @_RNvXs_NtCs53Il55UEVRz_16tracing_appender7rollingNtB4_19RollingFileAppenderNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_RNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB4_6WorkerNtNtB6_7rolling19RollingFileAppenderE13worker_thread0CsgGgPqgSfnMH_7storage.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !240
  store ptr %i.t, ptr %i.d, align 8, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !240
  store ptr %i.d, ptr %i.c, align 8, !noalias !240
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !240
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @7, ptr noundef nonnull %i.c)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #16
          to label %.loopexit.split-lp.i unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !240
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !245, !noalias !240, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246
  %i.v = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.w = and i64 %i.v, 3
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %bb.p
    i64 3, label %bb.n
    i64 0, label %bb.p
    i64 1, label %bb.o
  ], !prof !6

bb.n:                                             ; preds = %bb.m
  %i.x = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.y = and i64 %i.v, 1095216660480
  %i.z = icmp ne i64 %i.y, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.z)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !alias.scope !247, !noalias !246
  store i8 3, ptr %i.a, align 8, !alias.scope !247, !noalias !246
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !240
  br label %_RNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB4_6WorkerNtNtB6_7rolling19RollingFileAppenderE13worker_thread0CsgGgPqgSfnMH_7storage.exit

bb.q:                                             ; preds = %bb.l, %.loopexit.split-lp.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs53Il55UEVRz_16tracing_appender6worker11WorkerStateNtNtNtB4_2io5error5ErrorEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.g, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgGgPqgSfnMH_7storage.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !240
  br label %bb.b

bb.r:                                             ; preds = %.loopexit.split-lp.i
  resume { ptr, i32 } %.pn.i

_RNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtB4_6WorkerNtNtB6_7rolling19RollingFileAppenderE13worker_thread0CsgGgPqgSfnMH_7storage.exit: ; preds = %bb.j, %bb.p
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs53Il55UEVRz_16tracing_appender6workerINtBG_6WorkerNtNtBI_7rolling19RollingFileAppenderE13worker_thread0ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !10
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded7channelINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2Y_6future6future6Futurep6OutputINtNtB2Y_6result6ResultINtNtB1L_8response8ResponseB2k_EIB3q_DNtNtB2Y_5error5ErrorNtNtB2Y_6marker4SendNtB5X_4SyncEL_EEB5V_EL_EEEECsgGgPqgSfnMH_7storage(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %0, ptr %i.b, align 8
  %i.c = call { ptr, ptr } @_RINvNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan7channelINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2V_6future6future6Futurep6OutputINtNtB2V_6result6ResultINtNtB1I_8response8ResponseB2h_EIB3n_DNtNtB2V_5error5ErrorNtNtB2V_6marker4SendNtB5U_4SyncEL_EEB5S_EL_EEENtNtB4_7bounded9SemaphoreECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded7channelNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalECsgGgPqgSfnMH_7storage(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %0, ptr %i.b, align 8
  %i.c = call { ptr, ptr } @_RINvNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chan7channelNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalNtNtB4_7bounded9SemaphoreECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs1_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtB5_6SenderNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE8capacityCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = tail call noundef i64 @_RNvMNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB2_9Semaphore17available_permits(ptr noundef nonnull align 8 %i.b)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtB5_6PermitNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalE4sendCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvMs6_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanINtB5_2TxNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalNtNtB7_7bounded9SemaphoreE4sendCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7bounded6PermitNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalEECsgGgPqgSfnMH_7storage(ptr nonnull %0) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNCNvMs1_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtNtCs5TwP8AC98I6_5tower6buffer7message7MessageINtNtCs577yCKf7gy3_4http7request7RequestNtNtCsgOCJwUSa4vG_5tonic4body4BodyEINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3T_6future6future6Futurep6OutputINtNtB3T_6result6ResultINtNtB2G_8response8ResponseB3f_EIB4l_DNtNtB3T_5error5ErrorNtNtB3T_6marker4SendNtB6S_4SyncEL_EEB6Q_EL_EEEENtNtNtB3T_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.c)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.c)
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_RNvMs0_NtNtNtCsjZG7hsAZr3B_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNCNvMs1_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropNtNtCsPYQCUnoTxQ_10collection14update_handler12UpdateSignalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.c)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsjZG7hsAZr3B_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.c)
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_RNvMs0_NtNtNtCsjZG7hsAZr3B_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsgwvynAR9gqy_2h25proto7streams5state5StateNtB6_5Debug3fmtCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsgwvynAR9gqy_2h25proto7streams5stateNtB5_5StateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core5error5Error6sourceCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #21
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core5error5Error7provideCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl7provide(ptr noundef nonnull %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCskKLDkoKarTP_4core5error5Error6sourceCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #21
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCskKLDkoKarTP_4core5error5Error7provideCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl7provide(ptr noundef nonnull %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error6sourceCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !nonnull !4
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #21
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCscxI0zlRnmiB_6anyhow5errorINtB5_9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBU_5error5Error7provideCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs6_NtCscxI0zlRnmiB_6anyhow5errorNtB5_9ErrorImpl7provide(ptr noundef nonnull %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
