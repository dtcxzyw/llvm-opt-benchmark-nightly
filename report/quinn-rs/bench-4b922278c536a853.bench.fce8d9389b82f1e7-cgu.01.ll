Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/bench-4b922278c536a853.bench.fce8d9389b82f1e7-cgu.01?download=true
inline.NumInlined: 402
inline.NumDeleted: 152
begin_hunk_0_@_RNvCslIemzedAtQF_5bench15server_endpoint:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !11593
  unreachable, !dbg !11593

.thread78:                                        ; preds = %bb.j, %.thread85, %.thread73
  %.pn76 = phi { ptr, i32 } [ %i.ai, %.thread73 ], [ %lpad.thr_comm, %.thread85 ], [ %i.ac, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 96, !dbg !11341 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11594), !dbg !11341
    #dbg_value(ptr %i.bo, !3479, !DIExpression(), !11597)
  call void @llvm.experimental.noalias.scope.decl(metadata !11599), !dbg !11602
    #dbg_value(ptr %i.bo, !3489, !DIExpression(), !11603)
    #dbg_value(ptr %i.bo, !11390, !DIExpression(), !11605)
    #dbg_value(i64 1, !3496, !DIExpression(), !11607)
    #dbg_value(i8 1, !3505, !DIExpression(), !11607)
    #dbg_value(i64 1, !3508, !DIExpression(), !11609)
    #dbg_value(i8 1, !3515, !DIExpression(), !11609)
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !11611, !alias.scope !11613, !nonnull !32, !noundef !32
    #dbg_value(ptr %i.bp, !3504, !DIExpression(), !11614)
    #dbg_value(ptr %i.bp, !3514, !DIExpression(), !11609)
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !dbg !11615, !noalias !11613
  %i.br = icmp eq i64 %i.bq, 1, !dbg !11616
  br i1 %i.br, label %bb.ak, label %.noexc55, !dbg !11616

bb.ak:                                            ; preds = %.thread78
    #dbg_value(i8 2, !3528, !DIExpression(), !11617)
  fence acquire, !dbg !11619
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto6config9transport15TransportConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #22
          to label %.noexc55 unwind label %bb.aj, !dbg !11620

.noexc55:                                         ; preds = %bb.ak, %.thread78
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 104, !dbg !11341 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11621), !dbg !11341
    #dbg_value(ptr %i.bs, !11624, !DIExpression(), !11632)
  call void @llvm.experimental.noalias.scope.decl(metadata !11634), !dbg !11637
    #dbg_value(ptr %i.bs, !11638, !DIExpression(), !11641)
    #dbg_value(ptr %i.bs, !11643, !DIExpression(), !11654)
    #dbg_value(i64 1, !11656, !DIExpression(), !11661)
    #dbg_value(i8 1, !11660, !DIExpression(), !11661)
    #dbg_value(i64 1, !11663, !DIExpression(), !11668)
    #dbg_value(i8 1, !11667, !DIExpression(), !11668)
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !11670, !alias.scope !11677, !nonnull !32, !noundef !32
    #dbg_value(ptr %i.bt, !11659, !DIExpression(), !11678)
    #dbg_value(ptr %i.bt, !11666, !DIExpression(), !11668)
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !dbg !11679, !noalias !11677
  %i.bv = icmp eq i64 %i.bu, 1, !dbg !11680
  br i1 %i.bv, label %bb.al, label %.critedge, !dbg !11680

bb.al:                                            ; preds = %.noexc55
    #dbg_value(i8 2, !3528, !DIExpression(), !11681)
  fence acquire, !dbg !11683
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto12ServerConfigEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs) #22
          to label %.critedge unwind label %bb.aj, !dbg !11684

.critedge:                                        ; preds = %bb.al, %.noexc55
  call void @llvm.experimental.noalias.scope.decl(metadata !11685), !dbg !11341
    #dbg_value(ptr %i.n, !11688, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !11696)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !11698 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11699), !dbg !11698
    #dbg_value(ptr %i.bw, !11702, !DIExpression(), !11710)
  call void @llvm.experimental.noalias.scope.decl(metadata !11712), !dbg !11715
    #dbg_value(ptr %i.bw, !11716, !DIExpression(), !11719)
    #dbg_value(ptr %i.bw, !11721, !DIExpression(), !11732)
    #dbg_value(i64 1, !11734, !DIExpression(), !11739)
    #dbg_value(i8 1, !11738, !DIExpression(), !11739)
    #dbg_value(i64 1, !11741, !DIExpression(), !11746)
    #dbg_value(i8 1, !11745, !DIExpression(), !11746)
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !11748, !alias.scope !11755, !nonnull !32, !noundef !32
    #dbg_value(ptr %i.bx, !11737, !DIExpression(), !11756)
    #dbg_value(ptr %i.bx, !11744, !DIExpression(), !11746)
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !dbg !11757, !noalias !11755
  %i.bz = icmp eq i64 %i.by, 1, !dbg !11758
  br i1 %i.bz, label %bb.am, label %.critedge37, !dbg !11758

bb.am:                                            ; preds = %.critedge
    #dbg_value(i8 2, !3528, !DIExpression(), !11759)
  fence acquire, !dbg !11761
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto5token8TokenLogEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bw) #22
          to label %.critedge37 unwind label %bb.aj, !dbg !11762

.critedge37:                                      ; preds = %bb.am, %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 120, !dbg !11341 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11763), !dbg !11341
    #dbg_value(ptr %i.ca, !11766, !DIExpression(), !11774)
  call void @llvm.experimental.noalias.scope.decl(metadata !11776), !dbg !11779
    #dbg_value(ptr %i.ca, !11780, !DIExpression(), !11783)
    #dbg_value(ptr %i.ca, !11785, !DIExpression(), !11796)
    #dbg_value(i64 1, !11798, !DIExpression(), !11803)
    #dbg_value(i8 1, !11802, !DIExpression(), !11803)
    #dbg_value(i64 1, !11805, !DIExpression(), !11810)
    #dbg_value(i8 1, !11809, !DIExpression(), !11810)
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !11812, !alias.scope !11819, !nonnull !32, !noundef !32
    #dbg_value(ptr %i.cb, !11801, !DIExpression(), !11820)
    #dbg_value(ptr %i.cb, !11808, !DIExpression(), !11810)
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !dbg !11821, !noalias !11819
  %i.cd = icmp eq i64 %i.cc, 1, !dbg !11822
  br i1 %i.cd, label %bb.an, label %.critedge38, !dbg !11822

bb.an:                                            ; preds = %.critedge37
    #dbg_value(i8 2, !3528, !DIExpression(), !11823)
  fence acquire, !dbg !11825
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6crypto17HandshakeTokenKeyEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ca) #22
          to label %.critedge38 unwind label %bb.aj, !dbg !11826

.critedge38:                                      ; preds = %bb.an, %.critedge37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 136, !dbg !11341 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11827), !dbg !11341
    #dbg_value(ptr %i.ce, !11830, !DIExpression(), !11838)
  call void @llvm.experimental.noalias.scope.decl(metadata !11840), !dbg !11843
    #dbg_value(ptr %i.ce, !11844, !DIExpression(), !11847)
    #dbg_value(ptr %i.ce, !11849, !DIExpression(), !11860)
    #dbg_value(i64 1, !11862, !DIExpression(), !11867)
    #dbg_value(i8 1, !11866, !DIExpression(), !11867)
    #dbg_value(i64 1, !11869, !DIExpression(), !11874)
    #dbg_value(i8 1, !11873, !DIExpression(), !11874)
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !11876, !alias.scope !11883, !nonnull !32, !noundef !32
    #dbg_value(ptr %i.cf, !11865, !DIExpression(), !11884)
    #dbg_value(ptr %i.cf, !11872, !DIExpression(), !11874)
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !11885, !noalias !11883
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !11886
  br i1 %i.ch, label %bb.ao, label %.critedge41, !dbg !11886

bb.ao:                                            ; preds = %.critedge38
    #dbg_value(i8 2, !3528, !DIExpression(), !11887)
  fence acquire, !dbg !11889
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCshovLROGBtMy_11quinn_proto6config10TimeSourceEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ce) #22
          to label %.critedge41 unwind label %bb.aj, !dbg !11890

bb.ap:                                            ; preds = %bb.b
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseEeXhZwqjpo_16rustls_pki_types13PrivateKeyDerECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #20
          to label %bb.aq unwind label %bb.aj, !dbg !11591

.critedge41:                                      ; preds = %.body42, %.body46, %.critedge38, %bb.ao, %bb.x, %bb.w, %bb.v, %bb.d, %bb.aq
  %.pn.pn63 = phi { ptr, i32 } [ %i.w, %bb.d ], [ %eh.lpad-body47, %.body46 ], [ %i.ci, %bb.aq ], [ %.pn76, %.critedge38 ], [ %eh.lpad-body43, %.body42 ], [ %i.av, %bb.x ], [ %i.av, %bb.w ], [ %i.av, %bb.v ], [ %.pn76, %bb.ao ]
  resume { ptr, i32 } %.pn.pn63, !dbg !11593

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #20
          to label %.critedge41 unwind label %bb.aj, !dbg !11591
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCslIemzedAtQF_5bench16transport_config(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11891 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [240 x i8], align 8               ; 10 uses
    #dbg_value(ptr %1, !11895, !DIExpression(), !11900)
    #dbg_declare(ptr %i.b, !11896, !DIExpression(), !11901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11902
  call void @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto6config9transportNtB4_15TransportConfigNtNtCskKLDkoKarTP_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.b), !dbg !11903
    #dbg_value(ptr %i.b, !11904, !DIExpression(), !11912)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11914
  %i.d = load i64, ptr %i.c, align 8, !dbg !11914, !noundef !32
    #dbg_value(i64 %i.d, !11915, !DIExpression(), !11940)
  %i.e = invoke { i64, i64 } @_RNvXs5_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntINtNtCskKLDkoKarTP_4core7convert7TryFromjE8try_from(i64 noundef %i.d)
          to label %bb.c unwind label %bb.b, !dbg !11942 ; 2 uses

bb.b:                                             ; preds = %bb.d, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapCslIemzedAtQF_5bench.exit, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto6config9transport15TransportConfigECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(240) %i.b) #20
          to label %bb.g unwind label %bb.f, !dbg !11943

bb.c:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.e, 0, !dbg !11942
    #dbg_value(i64 %i.g, !11944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11954)
    #dbg_value(i64 poison, !11944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11954)
    #dbg_declare(ptr %i.a, !11952, !DIExpression(), !11956)
  %i.h = trunc nuw i64 %i.g to i1, !dbg !11957
  br i1 %i.h, label %bb.d, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapCslIemzedAtQF_5bench.exit, !dbg !11957, !prof !11332

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #25
          to label %.noexc unwind label %bb.b, !dbg !11958

.noexc:                                           ; preds = %bb.d
  unreachable, !dbg !11958

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapCslIemzedAtQF_5bench.exit: ; preds = %bb.c
  %i.i = extractvalue { i64, i64 } %i.e, 1, !dbg !11942
    #dbg_value(i64 %i.i, !11944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11954)
    #dbg_value(i64 %i.i, !11911, !DIExpression(), !11959)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !11960
  store i64 %i.i, ptr %i.j, align 8, !dbg !11960
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !11961
  %i.l = load i16, ptr %i.k, align 8, !dbg !11961, !noundef !32
  %i.m = invoke noundef nonnull align 8 ptr @_RNvMNtNtCshovLROGBtMy_11quinn_proto6config9transportNtB2_15TransportConfig11initial_mtu(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.b, i16 noundef %i.l)
          to label %bb.e unwind label %bb.b, !dbg !11962 ; 0 uses

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapCslIemzedAtQF_5bench.exit
    #dbg_value(i64 undef, !11898, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11963)
    #dbg_value(i32 -1, !11898, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !11963)
    #dbg_value(i64 2, !11898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11963)
    #dbg_value(i64 10, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11963)
    #dbg_value(ptr %i.b, !11964, !DIExpression(), !11971)
    #dbg_value(i64 10, !11970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11973)
    #dbg_value(i64 2, !11970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11973)
    #dbg_value(i64 undef, !11970, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11973)
    #dbg_value(i32 -1, !11970, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !11973)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !11974
  store i64 10, ptr %i.n, align 8, !dbg !11974
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !11974
  store i64 2, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !11974
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !11974
  store i32 -1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !11974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %i.b, i64 240, i1 false), !dbg !11975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11943
  ret void, !dbg !11976

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !11977
  unreachable, !dbg !11977

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f, !dbg !11977
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCslIemzedAtQF_5bench28configure_tracing_subscriber() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11978 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [712 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [736 x i8], align 8               ; 4 uses
  %i.f = alloca [1296 x i8], align 8              ; 4 uses
    #dbg_declare(ptr %i.f, !11981, !DIExpression(), !13019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13021
  call void @_RNvMNtCs7n8GKOt6esj_18tracing_subscriber3fmtNtB2_10Subscriber7builder(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d), !dbg !13021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13022
  call void @_RNvMs_NtNtCs7n8GKOt6esj_18tracing_subscriber6filter3envNtB4_9EnvFilter16from_default_env(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.c), !dbg !13022
  call void @_RINvMs8_NtCs7n8GKOt6esj_18tracing_subscriber3fmtNtB6_17SubscriberBuilder15with_env_filterNtNtNtB8_6filter3env9EnvFilterECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([736 x i8]) align 8 captures(none) dereferenceable(736) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.c), !dbg !13023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13024
  call void @_RNvMs3_NtCs7n8GKOt6esj_18tracing_subscriber3fmtINtB5_17SubscriberBuilderNtNtB5_6format13DefaultFieldsNtB1a_6FormatNtNtNtB7_6filter3env9EnvFilterE6finishCslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([1296 x i8]) align 8 captures(none) dereferenceable(1296) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(736) %i.e), !dbg !13025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13027
  call void @_RINvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB6_8Dispatch3newINtNtCs7n8GKOt6esj_18tracing_subscriber3fmt10SubscriberNtNtB17_6format13DefaultFieldsNtB1Z_6FormatNtNtNtB19_6filter3env9EnvFilterEECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1296) %i.f), !dbg !13027
  %i.g = call noundef zeroext i1 @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher18set_global_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !13028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13030
    #dbg_value(i1 %i.g, !13031, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13041)
    #dbg_declare(ptr %i.a, !13039, !DIExpression(), !13043)
  br i1 %i.g, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorE6unwrapCslIemzedAtQF_5bench.exit, !dbg !13044, !prof !11332

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25, !dbg !13045
  unreachable, !dbg !13045

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsgb4gPAseikh_12tracing_core10dispatcher21SetGlobalDefaultErrorE6unwrapCslIemzedAtQF_5bench.exit: ; preds = %bb.a
  ret void, !dbg !13046
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCslIemzedAtQF_5bench2rt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13047 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [240 x i8], align 8               ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13050
  call void @_RNvMNtNtCsar2VadbF9t7_5tokio7runtime7builderNtB2_7Builder18new_current_thread(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.b), !dbg !13050
    #dbg_value(ptr %i.b, !13051, !DIExpression(), !13058)
    #dbg_value(ptr %i.b, !13060, !DIExpression(), !13064)
    #dbg_value(ptr %i.b, !13066, !DIExpression(), !13070)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 228, !dbg !13072
  store i8 1, ptr %i.d, align 4, !dbg !13072
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 229, !dbg !13073
  store i8 1, ptr %i.e, align 1, !dbg !13073
  invoke void @_RNvMNtNtCsar2VadbF9t7_5tokio7runtime7builderNtB2_7Builder5build(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !13074

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !13075

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.k, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime7builder7BuilderECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(240) %i.b) #20
          to label %bb.j unwind label %bb.i, !dbg !13075

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !13076), !dbg !13079
  call void @llvm.experimental.noalias.scope.decl(metadata !13080), !dbg !13079
    #dbg_declare(ptr %i.c, !13082, !DIExpression(), !13107)
    #dbg_declare(ptr %i.a, !13105, !DIExpression(), !13109)
  %i.g = load ptr, ptr %i.c, align 8, !dbg !13110, !alias.scope !13080, !noalias !13076, !noundef !32
  %i.h = icmp eq ptr %i.g, null, !dbg !13110
  br i1 %i.h, label %bb.d, label %bb.h, !dbg !13111, !prof !11332

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13112, !noalias !13113
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13112
  %i.j = load ptr, ptr %i.i, align 8, !dbg !13112, !alias.scope !13080, !noalias !13076, !nonnull !32, !noundef !32
  store ptr %i.j, ptr %i.a, align 8, !dbg !13112, !noalias !13113
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #24
          to label %bb.f unwind label %bb.e, !dbg !13114, !noalias !13113

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #20
          to label %.body unwind label %bb.g, !dbg !13115, !noalias !13113

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !13116, !noalias !13113
  unreachable, !dbg !13116

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !13117, !alias.scope !13113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13118
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime7builder7BuilderECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(240) %i.b), !dbg !13075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13075
  ret void, !dbg !13119

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !13120
  unreachable, !dbg !13120

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !13120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCskKLDkoKarTP_4core3anyyNtB2_3Any7type_idCslIemzedAtQF_5bench(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 !dbg !13121 {
bb.a:
    #dbg_value(ptr poison, !13128, !DIExpression(), !13129)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false), !dbg !13130
  ret void, !dbg !13136
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive14CommandFactory18command_for_update(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 !dbg !13137 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 4 uses
    #dbg_declare(ptr %i.a, !13142, !DIExpression(), !13144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13145
  call void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder7builder7commandNtB3_7Command3newReECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4), !dbg !13145
  call void @_RNvXs3_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive4Args23augment_args_for_update(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.a), !dbg !13144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13146
  ret void, !dbg !13147
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive14CommandFactory7command(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 !dbg !13148 {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 4 uses
    #dbg_declare(ptr %i.a, !13150, !DIExpression(), !13152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13153
  call void @_RINvMNtNtCs172jLVBUT4Z_12clap_builder7builder7commandNtB3_7Command3newReECslIemzedAtQF_5bench(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4), !dbg !13153
  call void @_RNvXs3_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive4Args12augment_args(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %i.a), !dbg !13152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13154
  ret void, !dbg !13155
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive14FromArgMatches16from_arg_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8), (44, 45)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !13156 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !13429, !DIExpression(), !13430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13431
  call fastcc void @_RNvXsH_NtNtNtCs172jLVBUT4Z_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) #26, !dbg !13431
  invoke void @_RNvXs2_CslIemzedAtQF_5benchNtB5_3OptNtNtCs172jLVBUT4Z_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !13431

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs172jLVBUT4Z_12clap_builder6parser7matches11arg_matches10ArgMatchesECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #20
          to label %bb.e unwind label %bb.d, !dbg !13432

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs172jLVBUT4Z_12clap_builder6parser7matches11arg_matches10ArgMatchesECslIemzedAtQF_5bench(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a), !dbg !13432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13432
  ret void, !dbg !13433

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !13431
  unreachable, !dbg !13431

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !13431
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
