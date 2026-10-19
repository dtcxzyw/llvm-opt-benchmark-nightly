Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.02?download=true
inline.NumInlined: 2867
inline.NumDeleted: 558
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4760)
  call void @llvm.experimental.noalias.scope.decl(metadata !4761)
  call void @llvm.experimental.noalias.scope.decl(metadata !4762)
  %i.dc = load ptr, ptr %i.ap, align 8, !alias.scope !4763, !nonnull !4, !noundef !4
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !4763
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !4764)
  call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  call void @llvm.experimental.noalias.scope.decl(metadata !4766)
  call void @llvm.experimental.noalias.scope.decl(metadata !4767)
  %i.df = load ptr, ptr %i.av, align 8, !alias.scope !4768, !nonnull !4, !noundef !4
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !4768
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !4769)
  call void @llvm.experimental.noalias.scope.decl(metadata !4770)
  call void @llvm.experimental.noalias.scope.decl(metadata !4771)
  call void @llvm.experimental.noalias.scope.decl(metadata !4772)
  %i.di = load ptr, ptr %i.ay, align 8, !alias.scope !4773, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !4773
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.p:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service14ipc_threadsafe7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_14ipc_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void

bb.q:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service14ipc_threadsafe7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service14ipc_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.08.067 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service14ipc_threadsafe7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.dl, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service14ipc_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.08.067, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs8_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service14ipc_threadsafe7ServicejuE4loanCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4774)
  call void @llvm.experimental.noalias.scope.decl(metadata !4775)
  %i.dm = load ptr, ptr %i.ad, align 8, !alias.scope !4775, !noundef !4
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.r, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service14ipc_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4776
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !range !13, !alias.scope !4775, !noundef !4
  store i8 %i.dp, ptr %i.g, align 1, !noalias !4776
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #16, !noalias !4777
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service14ipc_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !alias.scope !4777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.dq = load ptr, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.dr = mul nuw nsw i64 %.sroa.08.067, 1920     ; 3 uses
  store i64 %i.dr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dt = and i64 %i.ds, 511                      ; 2 uses
  store i64 %i.dt, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @188, ptr %i.aa, align 8, !captures !11
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.s, label %bb.v, !prof !10

bb.s:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service14ipc_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service14ipc_threadsafe7ServicejuE4sendCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4778)
  %i.dv = load i8, ptr %i.w, align 8, !range !6, !alias.scope !4778, !noundef !4
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4779
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.dy = load i16, ptr %i.dx, align 1, !alias.scope !4778
  store i16 %i.dy, ptr %i.a, align 2, !noalias !4779
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #16, !noalias !4778
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service14ipc_threadsafe7ServicejuE7receiveCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4780)
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  %i.dz = load i8, ptr %i.v, align 16, !range !6, !alias.scope !4781, !noundef !4
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.u, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service14ipc_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.u:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4782
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !8, !alias.scope !4781, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !alias.scope !4781
  store i8 %i.ec, ptr %i.h, align 1, !noalias !4782
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ee, ptr %i.ef, align 1, !noalias !4782
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1125, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #16, !noalias !4783
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service14ipc_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, ptr noundef nonnull align 16 dereferenceable(48) %i.ct, i64 48, i1 false), !alias.scope !4783
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 16, !alias.scope !4783 ; 4 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !4783 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not = icmp eq i64 %.sroa.566.0.copyload, 0
  br i1 %.not, label %bb.x, label %bb.w, !prof !7

bb.v:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service14ipc_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.eg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select = select i1 %i.eg, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select79 = select i1 %i.eg, i64 9, i64 0
  store ptr %spec.select, ptr %i.z, align 8, !captures !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select79, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ei = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink78 = select i1 %i.ei, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink77 = select i1 %i.ei, i64 4, i64 0
  store ptr %.sink78, ptr %i.y, align 8, !captures !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sink77, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.ek, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aa, ptr %i.el, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.em, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @310, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #16
  unreachable

bb.w:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service14ipc_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  %i.en = ptrtoint ptr %.sroa.465.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eo = and i64 %i.en, 511                      ; 2 uses
  store i64 %i.eo, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @188, ptr %i.s, align 8, !captures !11
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.y, label %bb.z, !prof !10

bb.x:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service14ipc_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.465.0.copyload, ptr %i.o, align 8, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dr, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.eq = load i64, ptr %.sroa.465.0.copyload, align 512, !noundef !4
  %i.er = icmp eq i64 %i.eq, %i.dr
  br i1 %i.er, label %bb.ab, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.es = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select80 = select i1 %i.es, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select81 = select i1 %i.es, i64 9, i64 0
  store ptr %spec.select80, ptr %i.r, align 8, !captures !11
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select81, ptr %i.et, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eu = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink76 = select i1 %i.eu, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink75 = select i1 %i.eu, i64 4, i64 0
  store ptr %.sink76, ptr %i.q, align 8, !captures !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink75, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.ew, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.ex, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.ey, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @308, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ez = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select82 = select i1 %i.ez, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select83 = select i1 %i.ez, i64 9, i64 0
  store ptr %spec.select82, ptr %i.l, align 8, !captures !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select83, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink74 = select i1 %i.fb, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.fb, i64 4, i64 0
  store ptr %.sink74, ptr %i.k, align 8, !captures !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink73, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.fd, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.fe, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.ff, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @306, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #16
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fg = load i64, ptr %i.cr, align 8, !alias.scope !4784, !noundef !4 ; 3 uses
  %i.fh = load i64, ptr %i.af, align 8, !range !9, !alias.scope !4784, !noundef !4
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ac, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service14ipc_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBR_7service14ipc_threadsafe7ServicejuEE8grow_oneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #15, !noalias !4785
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service14ipc_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service14ipc_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.ab, %bb.ac
  %i.fj = load ptr, ptr %i.cq, align 8, !alias.scope !4784, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.fg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fk, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %.sroa.465.0.copyload, ptr %.sroa.4.0..sroa_idx59, align 16
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store i64 %.sroa.566.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8
  %i.fl = add i64 %i.fg, 1
  store i64 %i.fl, ptr %i.cr, align 8, !alias.scope !4784
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %exitcond.not = icmp eq i64 %i.dl, 100
  br i1 %exitcond.not, label %bb.k, label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [2 x i8], align 1                 ; 4 uses
  %i.i = alloca [4528 x i8], align 8              ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [80 x i8], align 16               ; 9 uses
  %.sroa.064 = alloca [48 x i8], align 16         ; 4 uses
  %.sroa.0 = alloca [48 x i8], align 16           ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [192 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [80 x i8], align 16              ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [272 x i8], align 8              ; 5 uses
  %i.an = alloca [5656 x i8], align 8             ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 6 uses
  %i.aq = alloca [272 x i8], align 8              ; 5 uses
  %i.ar = alloca [5656 x i8], align 8             ; 6 uses
  %i.as = alloca [5656 x i8], align 8             ; 6 uses
  %i.at = alloca [5656 x i8], align 8             ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [4688 x i8], align 8             ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.az) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4680
  store i8 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.bb, ptr noundef nonnull align 8 dereferenceable(4528) %i.i, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aw) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4857)
  %i.bc = load i8, ptr %i.ax, align 8, !range !6, !alias.scope !4857, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4858
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !8, !alias.scope !4857, !noundef !4
  store i8 %i.bf, ptr %i.f, align 1, !noalias !4858
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #16, !noalias !4857
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !4857, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.bh, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, ptr noundef nonnull align 8 dereferenceable(264) %i.az, i64 264, i1 false)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4882)
  call void @llvm.experimental.noalias.scope.decl(metadata !4883)
  call void @llvm.experimental.noalias.scope.decl(metadata !4884)
  %i.dc = load ptr, ptr %i.ap, align 8, !alias.scope !4885, !nonnull !4, !noundef !4
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !4885
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !4886)
  call void @llvm.experimental.noalias.scope.decl(metadata !4887)
  call void @llvm.experimental.noalias.scope.decl(metadata !4888)
  call void @llvm.experimental.noalias.scope.decl(metadata !4889)
  %i.df = load ptr, ptr %i.av, align 8, !alias.scope !4890, !nonnull !4, !noundef !4
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !4890
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !4891)
  call void @llvm.experimental.noalias.scope.decl(metadata !4892)
  call void @llvm.experimental.noalias.scope.decl(metadata !4893)
  call void @llvm.experimental.noalias.scope.decl(metadata !4894)
  %i.di = load ptr, ptr %i.ay, align 8, !alias.scope !4895, !nonnull !4, !noundef !4
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !4895
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.p:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service16local_threadsafe7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_16local_threadsafe7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void

bb.q:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service16local_threadsafe7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service16local_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.08.067 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service16local_threadsafe7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.dl, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service16local_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.08.067, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs8_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service16local_threadsafe7ServicejuE4loanCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4896)
  call void @llvm.experimental.noalias.scope.decl(metadata !4897)
  %i.dm = load ptr, ptr %i.ad, align 8, !alias.scope !4897, !noundef !4
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.r, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service16local_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4898
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !range !13, !alias.scope !4897, !noundef !4
  store i8 %i.dp, ptr %i.g, align 1, !noalias !4898
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #16, !noalias !4899
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service16local_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !alias.scope !4899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.dq = load ptr, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.dr = mul nuw nsw i64 %.sroa.08.067, 1920     ; 3 uses
  store i64 %i.dr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dt = and i64 %i.ds, 511                      ; 2 uses
  store i64 %i.dt, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @188, ptr %i.aa, align 8, !captures !11
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.s, label %bb.v, !prof !10

bb.s:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service16local_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service16local_threadsafe7ServicejuE4sendCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4900)
  %i.dv = load i8, ptr %i.w, align 8, !range !6, !alias.scope !4900, !noundef !4
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4901
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.dy = load i16, ptr %i.dx, align 1, !alias.scope !4900
  store i16 %i.dy, ptr %i.a, align 2, !noalias !4901
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #16, !noalias !4900
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service16local_threadsafe7ServicejuE7receiveCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  call void @llvm.experimental.noalias.scope.decl(metadata !4903)
  %i.dz = load i8, ptr %i.v, align 16, !range !6, !alias.scope !4903, !noundef !4
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.u, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service16local_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.u:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4904
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !8, !alias.scope !4903, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !alias.scope !4903
  store i8 %i.ec, ptr %i.h, align 1, !noalias !4904
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ee, ptr %i.ef, align 1, !noalias !4904
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1125, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #16, !noalias !4905
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service16local_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, ptr noundef nonnull align 16 dereferenceable(48) %i.ct, i64 48, i1 false), !alias.scope !4905
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 16, !alias.scope !4905 ; 4 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !4905 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not = icmp eq i64 %.sroa.566.0.copyload, 0
  br i1 %.not, label %bb.x, label %bb.w, !prof !7

bb.v:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service16local_threadsafe7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.eg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select = select i1 %i.eg, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select79 = select i1 %i.eg, i64 9, i64 0
  store ptr %spec.select, ptr %i.z, align 8, !captures !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select79, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ei = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink78 = select i1 %i.ei, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink77 = select i1 %i.ei, i64 4, i64 0
  store ptr %.sink78, ptr %i.y, align 8, !captures !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sink77, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.ek, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aa, ptr %i.el, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.em, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @310, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #16
  unreachable

bb.w:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service16local_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  %i.en = ptrtoint ptr %.sroa.465.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eo = and i64 %i.en, 511                      ; 2 uses
  store i64 %i.eo, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @188, ptr %i.s, align 8, !captures !11
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.y, label %bb.z, !prof !10

bb.x:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service16local_threadsafe7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.465.0.copyload, ptr %i.o, align 8, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dr, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.eq = load i64, ptr %.sroa.465.0.copyload, align 512, !noundef !4
  %i.er = icmp eq i64 %i.eq, %i.dr
  br i1 %i.er, label %bb.ab, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.es = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select80 = select i1 %i.es, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select81 = select i1 %i.es, i64 9, i64 0
  store ptr %spec.select80, ptr %i.r, align 8, !captures !11
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select81, ptr %i.et, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eu = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink76 = select i1 %i.eu, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink75 = select i1 %i.eu, i64 4, i64 0
  store ptr %.sink76, ptr %i.q, align 8, !captures !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink75, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.ew, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.ex, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.ey, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @308, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ez = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select82 = select i1 %i.ez, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select83 = select i1 %i.ez, i64 9, i64 0
  store ptr %spec.select82, ptr %i.l, align 8, !captures !11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select83, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink74 = select i1 %i.fb, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.fb, i64 4, i64 0
  store ptr %.sink74, ptr %i.k, align 8, !captures !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink73, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.fd, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.fe, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.ff, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @306, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #16
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fg = load i64, ptr %i.cr, align 8, !alias.scope !4906, !noundef !4 ; 3 uses
  %i.fh = load i64, ptr %i.af, align 8, !range !9, !alias.scope !4906, !noundef !4
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ac, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service16local_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBR_7service16local_threadsafe7ServicejuEE8grow_oneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #15, !noalias !4907
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service16local_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service16local_threadsafe7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.ab, %bb.ac
  %i.fj = load ptr, ptr %i.cq, align 8, !alias.scope !4906, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.fj, i64 %i.fg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fk, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %.sroa.465.0.copyload, ptr %.sroa.4.0..sroa_idx59, align 16
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store i64 %.sroa.566.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8
  %i.fl = add i64 %i.fg, 1
  store i64 %i.fl, ptr %i.cr, align 8, !alias.scope !4906
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %exitcond.not = icmp eq i64 %i.dl, 100
  br i1 %exitcond.not, label %bb.k, label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [2 x i8], align 1                 ; 4 uses
  %i.i = alloca [4528 x i8], align 8              ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [80 x i8], align 16               ; 9 uses
  %.sroa.064 = alloca [48 x i8], align 16         ; 4 uses
  %.sroa.0 = alloca [48 x i8], align 16           ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [192 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [80 x i8], align 16              ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [272 x i8], align 8              ; 5 uses
  %i.an = alloca [5656 x i8], align 8             ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 6 uses
  %i.aq = alloca [272 x i8], align 8              ; 5 uses
  %i.ar = alloca [5656 x i8], align 8             ; 6 uses
  %i.as = alloca [5656 x i8], align 8             ; 6 uses
  %i.at = alloca [5656 x i8], align 8             ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [4688 x i8], align 8             ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.az) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4680
  store i8 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.bb, ptr noundef nonnull align 8 dereferenceable(4528) %i.i, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aw) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  %i.bc = load i8, ptr %i.ax, align 8, !range !6, !alias.scope !4979, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4980
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !8, !alias.scope !4979, !noundef !4
  store i8 %i.bf, ptr %i.f, align 1, !noalias !4980
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #16, !noalias !4979
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !4979, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.bh, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, ptr noundef nonnull align 8 dereferenceable(264) %i.az, i64 264, i1 false)
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5004)
  call void @llvm.experimental.noalias.scope.decl(metadata !5005)
  call void @llvm.experimental.noalias.scope.decl(metadata !5006)
  %i.de = load ptr, ptr %i.ap, align 8, !alias.scope !5007, !nonnull !4, !noundef !4
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !5007
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsiSQMAyN9m0A_26iceoryx2_conformance_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !5008)
  call void @llvm.experimental.noalias.scope.decl(metadata !5009)
  call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  %i.dh = load ptr, ptr %i.av, align 8, !alias.scope !5012, !nonnull !4, !noundef !4
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !5012
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsiSQMAyN9m0A_26iceoryx2_conformance_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !5013)
  call void @llvm.experimental.noalias.scope.decl(metadata !5014)
  call void @llvm.experimental.noalias.scope.decl(metadata !5015)
  call void @llvm.experimental.noalias.scope.decl(metadata !5016)
  %i.dk = load ptr, ptr %i.ay, align 8, !alias.scope !5017, !nonnull !4, !noundef !4
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !5017
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.p:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsiSQMAyN9m0A_26iceoryx2_conformance_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void

bb.q:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service3ipc7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service3ipc7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.08.067 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service3ipc7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.dn, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service3ipc7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 2 uses
  %i.dn = add nuw nsw i64 %.sroa.08.067, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs8_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServicejuE4loanCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  call void @llvm.experimental.noalias.scope.decl(metadata !5019)
  %i.do = load ptr, ptr %i.ad, align 8, !alias.scope !5019, !noundef !4
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.r, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service3ipc7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5020
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !range !13, !alias.scope !5019, !noundef !4
  store i8 %i.dr, ptr %i.g, align 1, !noalias !5020
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #16, !noalias !5021
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service3ipc7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !alias.scope !5021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ds = load ptr, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.dt = mul nuw nsw i64 %.sroa.08.067, 1920     ; 3 uses
  store i64 %i.dt, ptr %i.ds, align 8
  %i.du = ptrtoint ptr %i.ds to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dv = and i64 %i.du, 511                      ; 2 uses
  store i64 %i.dv, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @188, ptr %i.aa, align 8, !captures !11
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.s, label %bb.v, !prof !10

bb.s:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service3ipc7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServicejuE4sendCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5022)
  %i.dx = load i8, ptr %i.w, align 8, !range !6, !alias.scope !5022, !noundef !4
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.t, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5023
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ea = load i16, ptr %i.dz, align 1, !alias.scope !5022
  store i16 %i.ea, ptr %i.a, align 2, !noalias !5023
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #16, !noalias !5022
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service3ipc7ServicejuE7receiveCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  call void @llvm.experimental.noalias.scope.decl(metadata !5025)
  %i.eb = load i8, ptr %i.v, align 16, !range !6, !alias.scope !5025, !noundef !4
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.u, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service3ipc7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.u:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5026
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !8, !alias.scope !5025, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.eg = load i8, ptr %i.ef, align 2, !alias.scope !5025
  store i8 %i.ee, ptr %i.h, align 1, !noalias !5026
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !noalias !5026
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1125, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #16, !noalias !5027
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service3ipc7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, ptr noundef nonnull align 16 dereferenceable(48) %i.ct, i64 48, i1 false), !alias.scope !5027
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 16, !alias.scope !5027 ; 4 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !5027 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not = icmp eq i64 %.sroa.566.0.copyload, 0
  br i1 %.not, label %bb.x, label %bb.w, !prof !7

bb.v:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service3ipc7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ei = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select = select i1 %i.ei, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select79 = select i1 %i.ei, i64 9, i64 0
  store ptr %spec.select, ptr %i.z, align 8, !captures !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select79, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ek = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink78 = select i1 %i.ek, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink77 = select i1 %i.ek, i64 4, i64 0
  store ptr %.sink78, ptr %i.y, align 8, !captures !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sink77, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.em, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aa, ptr %i.en, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.eo, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @310, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #16
  unreachable

bb.w:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service3ipc7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  %i.ep = ptrtoint ptr %.sroa.465.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eq = and i64 %i.ep, 511                      ; 2 uses
  store i64 %i.eq, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @188, ptr %i.s, align 8, !captures !11
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.y, label %bb.z, !prof !10

bb.x:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service3ipc7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.465.0.copyload, ptr %i.o, align 8, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dt, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.es = load i64, ptr %.sroa.465.0.copyload, align 512, !noundef !4
  %i.et = icmp eq i64 %i.es, %i.dt
  br i1 %i.et, label %bb.ab, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.eu = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select80 = select i1 %i.eu, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select81 = select i1 %i.eu, i64 9, i64 0
  store ptr %spec.select80, ptr %i.r, align 8, !captures !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select81, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ew = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink76 = select i1 %i.ew, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink75 = select i1 %i.ew, i64 4, i64 0
  store ptr %.sink76, ptr %i.q, align 8, !captures !11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink75, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.ey, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.ez, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.fa, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @308, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select82 = select i1 %i.fb, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select83 = select i1 %i.fb, i64 9, i64 0
  store ptr %spec.select82, ptr %i.l, align 8, !captures !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select83, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink74 = select i1 %i.fd, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.fd, i64 4, i64 0
  store ptr %.sink74, ptr %i.k, align 8, !captures !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink73, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.ff, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.fg, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.fh, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @306, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #16
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fi = load i64, ptr %i.cr, align 8, !alias.scope !5028, !noundef !4 ; 3 uses
  %i.fj = load i64, ptr %i.af, align 8, !range !9, !alias.scope !5028, !noundef !4
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ac, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service3ipc7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBR_7service3ipc7ServicejuEE8grow_oneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #15, !noalias !5029
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service3ipc7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service3ipc7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.ab, %bb.ac
  %i.fl = load ptr, ptr %i.cq, align 8, !alias.scope !5028, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fi ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fm, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %.sroa.465.0.copyload, ptr %.sroa.4.0..sroa_idx59, align 16
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  store i64 %.sroa.566.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8
  %i.fn = add i64 %i.fi, 1
  store i64 %i.fn, ptr %i.cr, align 8, !alias.scope !5028
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %exitcond.not = icmp eq i64 %i.dn, 100
  br i1 %exitcond.not, label %bb.k, label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [2 x i8], align 1                 ; 4 uses
  %i.i = alloca [4528 x i8], align 8              ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 10 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [80 x i8], align 16               ; 9 uses
  %.sroa.064 = alloca [48 x i8], align 16         ; 4 uses
  %.sroa.0 = alloca [48 x i8], align 16           ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [192 x i8], align 16             ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 6 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [80 x i8], align 16              ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 6 uses
  %i.al = alloca [40 x i8], align 8               ; 6 uses
  %i.am = alloca [272 x i8], align 8              ; 5 uses
  %i.an = alloca [5656 x i8], align 8             ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 6 uses
  %i.aq = alloca [272 x i8], align 8              ; 5 uses
  %i.ar = alloca [5656 x i8], align 8             ; 6 uses
  %i.as = alloca [5656 x i8], align 8             ; 6 uses
  %i.at = alloca [5656 x i8], align 8             ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 6 uses
  %i.aw = alloca [4688 x i8], align 8             ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [8 x i8], align 8                ; 5 uses
  %i.az = alloca [264 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.az) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4680
  store i8 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.bb, ptr noundef nonnull align 8 dereferenceable(4528) %i.i, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aw) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5101)
  %i.bc = load i8, ptr %i.ax, align 8, !range !6, !alias.scope !5101, !noundef !4
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5102
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !8, !alias.scope !5101, !noundef !4
  store i8 %i.bf, ptr %i.f, align 1, !noalias !5102
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #16, !noalias !5101
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !5101, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.bh, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.bk, ptr noundef nonnull align 8 dereferenceable(264) %i.az, i64 264, i1 false)
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33all_samples_are_correctly_alignedNtNtNtCsg6ZEkMtNi4J_8iceoryx27service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5126)
  call void @llvm.experimental.noalias.scope.decl(metadata !5127)
  call void @llvm.experimental.noalias.scope.decl(metadata !5128)
  %i.de = load ptr, ptr %i.ap, align 8, !alias.scope !5129, !nonnull !4, !noundef !4
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !5129
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_5local7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.experimental.noalias.scope.decl(metadata !5130)
  call void @llvm.experimental.noalias.scope.decl(metadata !5131)
  call void @llvm.experimental.noalias.scope.decl(metadata !5132)
  call void @llvm.experimental.noalias.scope.decl(metadata !5133)
  %i.dh = load ptr, ptr %i.av, align 8, !alias.scope !5134, !nonnull !4, !noundef !4
  %i.di = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !5134
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_5local7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !5135)
  call void @llvm.experimental.noalias.scope.decl(metadata !5136)
  call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  call void @llvm.experimental.noalias.scope.decl(metadata !5138)
  %i.dk = load ptr, ptr %i.ay, align 8, !alias.scope !5139, !nonnull !4, !noundef !4
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !5139
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.p, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.p:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_5local7ServicejuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit58, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  ret void

bb.q:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service5local7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service5local7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.sroa.08.067 = phi i64 [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBO_7service5local7ServicejuENtBK_20PublisherCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.dn, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service5local7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 2 uses
  %i.dn = add nuw nsw i64 %.sroa.08.067, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs8_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service5local7ServicejuE4loanCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ai) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5140)
  call void @llvm.experimental.noalias.scope.decl(metadata !5141)
  %i.do = load ptr, ptr %i.ad, align 8, !alias.scope !5141, !noundef !4
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.r, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service5local7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5142
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !range !13, !alias.scope !5141, !noundef !4
  store i8 %i.dr, ptr %i.g, align 1, !noalias !5142
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #16, !noalias !5143
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service5local7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !alias.scope !5143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ds = load ptr, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %i.dt = mul nuw nsw i64 %.sroa.08.067, 1920     ; 3 uses
  store i64 %i.dt, ptr %i.ds, align 8
  %i.du = ptrtoint ptr %i.ds to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dv = and i64 %i.du, 511                      ; 2 uses
  store i64 %i.dv, ptr %i.ab, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @188, ptr %i.aa, align 8, !captures !11
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.s, label %bb.v, !prof !10

bb.s:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service5local7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service5local7ServicejuE4sendCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5144)
  %i.dx = load i8, ptr %i.w, align 8, !range !6, !alias.scope !5144, !noundef !4
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.t, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5145
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ea = load i16, ptr %i.dz, align 1, !alias.scope !5144
  store i16 %i.ea, ptr %i.a, align 2, !noalias !5145
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #16, !noalias !5144
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs7_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service5local7ServicejuE7receiveCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5146)
  call void @llvm.experimental.noalias.scope.decl(metadata !5147)
  %i.eb = load i8, ptr %i.v, align 16, !range !6, !alias.scope !5147, !noundef !4
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.u, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service5local7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.u:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5148
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !range !8, !alias.scope !5147, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.eg = load i8, ptr %i.ef, align 2, !alias.scope !5147
  store i8 %i.ee, ptr %i.h, align 1, !noalias !5148
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !noalias !5148
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1125, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #16, !noalias !5149
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service5local7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultjNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, ptr noundef nonnull align 16 dereferenceable(48) %i.ct, i64 48, i1 false), !alias.scope !5149
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 16, !alias.scope !5149 ; 4 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !5149 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not = icmp eq i64 %.sroa.566.0.copyload, 0
  br i1 %.not, label %bb.x, label %bb.w, !prof !7

bb.v:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx210sample_mut9SampleMutNtNtNtBM_7service5local7ServicejuENtNtBM_4port9LoanErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ei = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select = select i1 %i.ei, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select79 = select i1 %i.ei, i64 9, i64 0
  store ptr %spec.select, ptr %i.z, align 8, !captures !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %spec.select79, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ek = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink78 = select i1 %i.ek, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink77 = select i1 %i.ek, i64 4, i64 0
  store ptr %.sink78, ptr %i.y, align 8, !captures !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.sink77, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.413.0..sroa_idx, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.ac, ptr %i.em, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.aa, ptr %i.en, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr %i.y, ptr %i.eo, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @310, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #16
  unreachable

bb.w:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service5local7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.064, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.064)
  %i.ep = ptrtoint ptr %.sroa.465.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.eq = and i64 %i.ep, 511                      ; 2 uses
  store i64 %i.eq, ptr %i.t, align 8
  store ptr %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @188, ptr %i.s, align 8, !captures !11
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.y, label %bb.z, !prof !10

bb.x:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtB18_7service5local7ServicejuEENtNtB18_4port12ReceiveErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #16
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.465.0.copyload, ptr %i.o, align 8, !captures !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dt, ptr %i.m, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.es = load i64, ptr %.sroa.465.0.copyload, align 512, !noundef !4
  %i.et = icmp eq i64 %i.es, %i.dt
  br i1 %i.et, label %bb.ab, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.eu = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select80 = select i1 %i.eu, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select81 = select i1 %i.eu, i64 9, i64 0
  store ptr %spec.select80, ptr %i.r, align 8, !captures !11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select81, ptr %i.ev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ew = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink76 = select i1 %i.ew, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink75 = select i1 %i.ew, i64 4, i64 0
  store ptr %.sink76, ptr %i.q, align 8, !captures !11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink75, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.u, ptr %i.ey, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.ez, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.fa, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @308, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select82 = select i1 %i.fb, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select83 = select i1 %i.fb, i64 9, i64 0
  store ptr %spec.select82, ptr %i.l, align 8, !captures !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %spec.select83, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink74 = select i1 %i.fd, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink73 = select i1 %i.fd, i64 4, i64 0
  store ptr %.sink74, ptr %i.k, align 8, !captures !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sink73, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.o, ptr %i.ff, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.fg, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.k, ptr %i.fh, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @306, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #16
  unreachable

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fi = load i64, ptr %i.cr, align 8, !alias.scope !5150, !noundef !4 ; 3 uses
  %i.fj = load i64, ptr %i.af, align 8, !range !9, !alias.scope !5150, !noundef !4
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ac, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service5local7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBR_7service5local7ServicejuEE8grow_oneCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #15, !noalias !5151
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service5local7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBK_7service5local7ServicejuEE8push_mutCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.ab, %bb.ac
  %i.fl = load ptr, ptr %i.cq, align 8, !alias.scope !5150, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %i.fi ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fm, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr %.sroa.465.0.copyload, ptr %.sroa.4.0..sroa_idx59, align 16
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  store i64 %.sroa.566.0.copyload, ptr %.sroa.561.0..sroa_idx62, align 8
  %i.fn = add i64 %i.fi, 1
  store i64 %i.fn, ptr %i.cr, align 8, !alias.scope !5150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %exitcond.not = icmp eq i64 %i.dn, 100
  br i1 %exitcond.not, label %bb.k, label %bb.q
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests25service_publish_subscribe25service_publish_subscribe33creating_same_service_twice_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [4528 x i8], align 8              ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [272 x i8], align 8               ; 5 uses
  %i.n = alloca [5656 x i8], align 8              ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [272 x i8], align 8               ; 5 uses
  %i.t = alloca [5656 x i8], align 8              ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [4688 x i8], align 8              ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [264 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.y) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4680
  store i8 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.aa, ptr noundef nonnull align 8 dereferenceable(4528) %i.b, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.v) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !5173)
  %i.ab = load i8, ptr %i.w, align 8, !range !6, !alias.scope !5173, !noundef !4
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5174
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !8, !alias.scope !5173, !noundef !4
  store i8 %i.ae, ptr %i.a, align 1, !noalias !5174
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1126, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #16, !noalias !5173
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5173, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.ag, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.aj, ptr noundef nonnull align 8 dereferenceable(264) %i.y, i64 264, i1 false)
  store ptr %i.ag, ptr %i.s, align 8
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB3_7BuilderNtNtB5_14ipc_threadsafe7ServiceE17publish_subscribeyECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5656 x i8]) align 8 captures(none) dereferenceable(5656) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(272) %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @_RNvMsd_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribeINtB5_7BuilderyuNtNtB9_14ipc_threadsafe7ServiceE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(5656) %i.t) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ak = load i8, ptr %i.u, align 8, !range !6, !noundef !4
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.e, !prof !10

bb.d:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.am = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %spec.select = select i1 %i.am, ptr @3, ptr inttoptr (i64 1 to ptr)
  %spec.select49 = select i1 %i.am, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select49, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ao = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #14 ; 2 uses
  %.sink40 = select i1 %i.ao, ptr @4, ptr inttoptr (i64 1 to ptr)
  %.sink39 = select i1 %i.ao, i64 4, i64 0
  store ptr %.sink40, ptr %i.q, align 8, !captures !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink39, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_3
