Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.074?download=true
inline.NumInlined: 1012
inline.NumDeleted: 453
begin_hunk_0_@_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus38abort_shard_transfer_confirm_and_retry0Csl8OoimOLbh_6qdrant:bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38abort_shard_transfer_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit: ; preds = %.thread, %.noexc32, %bb.t
  %i.br = phi ptr [ %i.bd, %.noexc32 ], [ %i.bd, %bb.t ], [ %i.bc, %.thread ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload39, %.noexc32 ], [ -1, %bb.t ], [ -1, %.thread ]
  store i8 0, ptr %i.br, align 1
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, i64 40, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.af, %bb.ai, %bb.aq, %bb.as, %bb.ad, %bb.v, %bb.au, %bb.q, %bb.p, %bb.i, %bb.ax, %bb.s, %bb.z
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.au ], [ %i.ap, %bb.p ], [ %i.bj, %bb.z ], [ %i.ay, %bb.s ], [ %i.ap, %bb.q ], [ %i.ae, %bb.i ], [ %i.bf, %bb.v ], [ %i.db, %bb.ax ], [ %i.bq, %bb.ad ], [ %i.bv, %bb.af ], [ %i.bz, %bb.ai ], [ %i.cn, %bb.as ], [ %i.cj, %bb.aq ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.bt = load i8, ptr %i.bs, align 1, !range !362, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit38

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtNtCsjZG7hsAZr3B_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.m, i64 noundef 1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.by = invoke noundef zeroext i1 @_RNvXs_NtNtCsjZG7hsAZr3B_5tokio4time5sleepNtB4_5SleepNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bx) #19
          to label %.body unwind label %bb.az

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.by, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.ca = load i64, ptr %i.bx, align 8, !range !35, !alias.scope !1526, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.cd = load ptr, ptr %i.cb, align 8, !alias.scope !1535, !nonnull !8, !noundef !8
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1535
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.cg = load ptr, ptr %i.cb, align 8, !alias.scope !1542, !nonnull !8, !noundef !8
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !1542
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ck) #19
          to label %.body unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit, %bb.aw
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !8, !align !9, !noundef !8
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit unwind label %bb.ax

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  %i.ct = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 6
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp samesign ugt i64 %i.ct, 4
  br i1 %i.cv, label %bb.av, label %bb.at

bb.au:                                            ; preds = %bb.av
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @55, ptr %i.l, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 28, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @55, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 28, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @65, ptr %i.da, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @64, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.ax:                                            ; preds = %bb.at, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.body

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !8, !noundef !8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.df = load i64, ptr %i.de, align 8, !noundef !8
  %i.dg = invoke { ptr, ptr } @_RNvXNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc8transferNtNtB4_10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus20abort_shard_transfer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.df)
          to label %bb.ay unwind label %bb.ax     ; 2 uses

bb.ay:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0
  %i.di = extractvalue { ptr, ptr } %i.dg, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.dh, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.di, ptr %i.dk, align 8
  br label %bb.h

bb.az:                                            ; preds = %bb.bb, %bb.i, %bb.ai
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ba:                                            ; preds = %.body
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !844, !alias.scope !1543, !noundef !8
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit38, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit38 unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [112 x i8], align 8               ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !range !280, !noundef !8
  switch i8 %i.p, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.ah
    i8 4, label %bb.h
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !align !9, !noundef !8
  store ptr %i.t, ptr %i.r, align 8, !captures !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 102)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 3, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %i.x = phi i64 [ %.pre64, %bb.x ], [ 3, %bb.d ]
  %i.y = phi i64 [ %.pre, %bb.x ], [ 0, %bb.d ]   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.ac, label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44: ; preds = %bb.bk, %bb.bl, %.body, %bb.c
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn15.pn.pn.pn, %.body ], [ %.pn15.pn.pn.pn, %bb.bl ], [ %.pn15.pn.pn.pn, %bb.bk ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 0, ptr %i.aa, align 8
  store i8 2, ptr %i.o, align 1
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22
  unreachable

bb.h:                                             ; preds = %bb.bh, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val31 = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %1, i64 112
  %.val32 = load ptr, ptr %i.ad, align 8, !nonnull !8, !align !9, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val31, ptr nonnull %.val32) #19
          to label %.body unwind label %bb.bj

bb.j:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.i, align 8, !range !1504, !noundef !8
  %i.af = icmp eq i64 %i.ae, -2
  br i1 %i.af, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.ak, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, %bb.k
  %.sink = phi i8 [ 3, %bb.ak ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit ], [ 4, %bb.k ]
  store i8 %.sink, ptr %i.o, align 1
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val29 = load ptr, ptr %i.ab, align 8          ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 112
  %.val30 = load ptr, ptr %i.ag, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.ah = load ptr, ptr %.val30, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  invoke void %i.ah(ptr noundef nonnull %.val29)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !11, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !11, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #18
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.n
  %i.at = load i64, ptr %1, align 8, !range !844, !alias.scope !1551, !noundef !8
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit, %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store i8 1, ptr %i.ax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.ay = load i64, ptr %1, align 8
  %.not14 = icmp eq i64 %i.ay, -1
  br i1 %.not14, label %.thread, label %bb.y

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit
  store i8 0, ptr %i.ax, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.e
  %.sroa.052.0.copyload.pr = load i64, ptr %1, align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store i8 0, ptr %i.az, align 8
  %.not.i = icmp eq i64 %.sroa.052.0.copyload.pr, -1
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1554
  store i64 %.sroa.052.0.copyload.pr, ptr %i.c, align 8, !noalias !1558
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1559
  store ptr @27, ptr %i.a, align 8, !noalias !1559
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1559
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus38commit_read_hashring_confirm_and_retry0Csl8OoimOLbh_6qdrant:bb.a
  br i1 %i.bq, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtNtCsjZG7hsAZr3B_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.m, i64 noundef 1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.bu = invoke noundef zeroext i1 @_RNvXs_NtNtCsjZG7hsAZr3B_5tokio4time5sleepNtB4_5SleepNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bt) #19
          to label %.body unwind label %bb.bj

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.bu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.bw = load i64, ptr %i.bt, align 8, !range !35, !alias.scope !1572, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.experimental.noalias.scope.decl(metadata !1578)
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !1581, !nonnull !8, !noundef !8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !1581
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.cc = load ptr, ptr %i.bx, align 8, !alias.scope !1588, !nonnull !8, !noundef !8
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1588
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cg) #19
          to label %.body unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !8, !align !9, !noundef !8
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  %i.co = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 6
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cq, label %bb.av, label %bb.at

bb.au:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @55, ptr %i.l, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 28, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @55, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 28, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @72, ptr %i.cv, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @71, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.ax:                                            ; preds = %bb.bf, %bb.bi, %bb.ay
  %.pn10 = phi { ptr, i32 } [ %i.ea, %bb.bi ], [ %i.dp, %bb.bf ], [ %i.cw, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.body

bb.ay:                                            ; preds = %bb.at
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !8, !align !9, !noundef !8 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  %i.da = load i8, ptr %i.cz, align 4, !range !362, !alias.scope !1592, !noalias !1589, !noundef !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1592, !noalias !1589, !noundef !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !1592, !noalias !1589, !noundef !8
  %i.df = load i64, ptr %i.cy, align 8, !range !31, !alias.scope !1592, !noalias !1589, !noundef !8 ; 2 uses
  %.not.i40 = icmp eq i64 %i.df, 2
  br i1 %.not.i40, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  br i1 %i.dg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1599, !noalias !1600, !noundef !8
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 23
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !1599, !noalias !1600, !noundef !8
  %.not.i.i41 = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1599, !noalias !1600 ; 5 uses
  %.val21.i.i = load i64, ptr %i.dl, align 8, !alias.scope !1599, !noalias !1600 ; 2 uses
  br i1 %.not.i.i41, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1601
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.be, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !80

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i, i64 noundef %.val21.i.i) #23
          to label %.noexc42 unwind label %bb.bi

.noexc42:                                         ; preds = %bb.be
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.bb, %bb.bd, %bb.bc
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.bd ], [ inttoptr (i64 16 to ptr), %bb.bc ], [ %.val.i.i, %bb.bb ]
  store ptr %.sroa.06.0.i.i, ptr %.sroa.4.i, align 8, !alias.scope !1594, !noalias !1602
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ba
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.ba ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.di, %bb.ba ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ba ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1594, !noalias !1602
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1603
  %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i = load i64, ptr %.sroa.7.i, align 8, !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  %.sroa.5.sroa.4.0.i = phi i64 [ undef, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.5.sroa.0.0.i = phi i64 [ undef, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0.i = phi i64 [ 2, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %storemerge.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !alias.scope !1603
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i8 %i.da, ptr %i.ds, align 4, !alias.scope !1589, !noalias !1592
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.dc, ptr %i.dt, align 8, !alias.scope !1589, !noalias !1592
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %i.de, ptr %i.du, align 8, !alias.scope !1589, !noalias !1592
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !alias.scope !1589, !noalias !1592
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !1589, !noalias !1592
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !1589, !noalias !1592
  %i.dv = invoke { ptr, ptr } @_RNvXNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc8transferNtNtB4_10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus20commit_read_hashring(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j)
          to label %bb.bh unwind label %bb.bf     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dw, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.dx, ptr %i.dz, align 8
  br label %bb.h

bb.bi:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #19
          to label %bb.ax unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.i, %bb.bi, %bb.ai
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bk:                                            ; preds = %.body
  %i.ec = load i64, ptr %1, align 8, !range !844, !alias.scope !1604, !noundef !8
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44 unwind label %bb.bj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus38start_shard_transfer_confirm_and_retry0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [136 x i8], align 8               ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [112 x i8], align 8               ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !range !280, !noundef !8
  switch i8 %i.q, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.ah
    i8 4, label %bb.h
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !align !9, !noundef !8
  store ptr %i.u, ptr %i.s, align 8, !captures !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 102)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 3, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %i.y = phi i64 [ %.pre64, %bb.x ], [ 3, %bb.d ]
  %i.z = phi i64 [ %.pre, %bb.x ], [ 0, %bb.d ]   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.ac, label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42: ; preds = %bb.bh, %bb.bi, %.body, %bb.c
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn15.pn.pn.pn, %.body ], [ %.pn15.pn.pn.pn, %bb.bi ], [ %.pn15.pn.pn.pn, %bb.bh ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %i.ab, align 8
  store i8 2, ptr %i.p, align 1
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22
  unreachable

bb.h:                                             ; preds = %bb.be, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val31 = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %1, i64 120
  %.val32 = load ptr, ptr %i.ae, align 8, !nonnull !8, !align !9, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val31, ptr nonnull %.val32) #19
          to label %.body unwind label %bb.bg

bb.j:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.j, align 8, !range !1504, !noundef !8
  %i.ag = icmp eq i64 %i.af, -2
  br i1 %i.ag, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.ak, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38start_shard_transfer_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, %bb.k
  %.sink = phi i8 [ 3, %bb.ak ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus38start_shard_transfer_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit ], [ 4, %bb.k ]
  store i8 %.sink, ptr %i.p, align 1
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val29 = load ptr, ptr %i.ac, align 8          ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 120
  %.val30 = load ptr, ptr %i.ah, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.ai = load ptr, ptr %.val30, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  invoke void %i.ai(ptr noundef nonnull %.val29)
end_hunk_1
begin_hunk_2_@_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus38start_shard_transfer_confirm_and_retry0Csl8OoimOLbh_6qdrant:bb.a
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.bx = load i64, ptr %i.bu, align 8, !range !35, !alias.scope !1633, !noundef !8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %i.ca = load ptr, ptr %i.by, align 8, !alias.scope !1642, !nonnull !8, !noundef !8
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !1642
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.cd = load ptr, ptr %i.by, align 8, !alias.scope !1649, !nonnull !8, !noundef !8
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1649
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ch) #19
          to label %.body unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit, %bb.aw
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !8, !align !9, !noundef !8
  invoke fastcc void @_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.co)
          to label %bb.az unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  %i.cp = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 6
  call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ugt i64 %i.cp, 4
  br i1 %i.cr, label %bb.av, label %bb.at

bb.au:                                            ; preds = %bb.av
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @55, ptr %i.m, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 28, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @55, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 28, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @79, ptr %i.cw, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @78, ptr noundef nonnull inttoptr (i64 101 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.ax:                                            ; preds = %bb.bc, %bb.bf, %bb.ay
  %.pn10 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bf ], [ %lpad.thr_comm.split-lp, %bb.bc ], [ %i.cx, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.ay:                                            ; preds = %bb.at
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !8, !noundef !8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.db = load i64, ptr %i.da, align 8, !noundef !8 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1656
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.db, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc39 unwind label %bb.bf

.noexc39:                                         ; preds = %bb.az
  %i.dc = load i64, ptr %i.a, align 8, !range !35, !noalias !1656, !noundef !8
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !1483, !noalias !1656, !noundef !8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dd, label %bb.ba, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !80

bb.ba:                                            ; preds = %.noexc39
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !1656
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dh) #23
          to label %.noexc40 unwind label %bb.bf

.noexc40:                                         ; preds = %bb.ba
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %.noexc39
  %i.di = load ptr, ptr %i.dg, align 8, !noalias !1656, !nonnull !8, !noundef !8 ; 2 uses
  %i.dj = icmp ule i64 %i.db, %i.df
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1656
  %.not.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %i.cz, i64 range(i64 0, -9223372036854775808) %i.db, i1 false), !noalias !1662
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ax

bb.bd:                                            ; preds = %bb.bb, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  store i64 %i.df, ptr %i.k, align 8, !alias.scope !1663, !noalias !1664
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.di, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1663, !noalias !1664
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.db, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1663, !noalias !1664
  %i.dk = invoke { ptr, ptr } @_RNvXNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc8transferNtNtB4_10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus20start_shard_transfer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.be unwind label %bb.bc     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.dm, ptr %i.do, align 8
  br label %bb.h

bb.bf:                                            ; preds = %bb.ba, %bb.az
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %i.l) #19
          to label %bb.ax unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.i, %bb.bf, %bb.ai
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bh:                                            ; preds = %.body
  %i.dq = load i64, ptr %1, align 8, !range !844, !alias.scope !1665, !noundef !8
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42 unwind label %bb.bg
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [112 x i8], align 8               ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !range !280, !noundef !8
  switch i8 %i.p, label %default.unreachable69 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.ah
    i8 4, label %bb.h
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !align !9, !noundef !8
  store ptr %i.t, ptr %i.r, align 8, !captures !1498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 103)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 3, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %i.x = phi i64 [ %.pre64, %bb.x ], [ 3, %bb.d ]
  %i.y = phi i64 [ %.pre, %bb.x ], [ 0, %bb.d ]   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.ac, label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44: ; preds = %bb.bk, %bb.bl, %.body, %bb.c
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn15.pn.pn.pn, %.body ], [ %.pn15.pn.pn.pn, %bb.bl ], [ %.pn15.pn.pn.pn, %bb.bk ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 0, ptr %i.aa, align 8
  store i8 2, ptr %i.o, align 1
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22
  unreachable

bb.h:                                             ; preds = %bb.bh, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val31 = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %1, i64 112
  %.val32 = load ptr, ptr %i.ad, align 8, !nonnull !8, !align !9, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val31, ptr nonnull %.val32) #19
          to label %.body unwind label %bb.bj

bb.j:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.i, align 8, !range !1504, !noundef !8
  %i.af = icmp eq i64 %i.ae, -2
  br i1 %i.af, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.ak, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, %bb.k
  %.sink = phi i8 [ 3, %bb.ak ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit ], [ 4, %bb.k ]
  store i8 %.sink, ptr %i.o, align 1
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val29 = load ptr, ptr %i.ab, align 8          ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 112
  %.val30 = load ptr, ptr %i.ag, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.ah = load ptr, ptr %.val30, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  invoke void %i.ah(ptr noundef nonnull %.val29)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !11, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !10, !invariant.load !8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !11, !invariant.load !8
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #18
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.n
  %i.at = load i64, ptr %1, align 8, !range !844, !alias.scope !1673, !noundef !8
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit, %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store i8 1, ptr %i.ax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.ay = load i64, ptr %1, align 8
  %.not14 = icmp eq i64 %i.ay, -1
  br i1 %.not14, label %.thread, label %bb.y

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit
  store i8 0, ptr %i.ax, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %bb.e
  %.sroa.052.0.copyload.pr = load i64, ptr %1, align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store i8 0, ptr %i.az, align 8
  %.not.i = icmp eq i64 %.sroa.052.0.copyload.pr, -1
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1676
  store i64 %.sroa.052.0.copyload.pr, ptr %i.c, align 8, !noalias !1680
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1681
  store ptr @27, ptr %i.a, align 8, !noalias !1681
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1681
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_2
begin_hunk_3_@_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus39commit_write_hashring_confirm_and_retry0Csl8OoimOLbh_6qdrant:bb.a
  br i1 %i.bq, label %bb.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvNtNtCsjZG7hsAZr3B_5tokio4time5sleep5sleep(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.m, i64 noundef 1, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.bu = invoke noundef zeroext i1 @_RNvXs_NtNtCsjZG7hsAZr3B_5tokio4time5sleepNtB4_5SleepNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bt) #19
          to label %.body unwind label %bb.bj

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.bu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  %i.bw = load i64, ptr %i.bt, align 8, !range !35, !alias.scope !1694, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !1703, !nonnull !8, !noundef !8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !1703
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  %i.cc = load ptr, ptr %i.bx, align 8, !alias.scope !1710, !nonnull !8, !noundef !8
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1710
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cg) #19
          to label %.body unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjZG7hsAZr3B_5tokio7runtime5TimerEECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit, %bb.aw
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !8, !align !9, !noundef !8
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime9scheduler6HandleECsl8OoimOLbh_6qdrant.exit.i, %bb.ac
  %i.co = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 6
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cq, label %bb.av, label %bb.at

bb.au:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.body

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4time5sleep5SleepECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @55, ptr %i.l, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 28, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @55, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 28, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @86, ptr %i.cv, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @85, ptr noundef nonnull inttoptr (i64 103 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.ax:                                            ; preds = %bb.bf, %bb.bi, %bb.ay
  %.pn10 = phi { ptr, i32 } [ %i.ea, %bb.bi ], [ %i.dp, %bb.bf ], [ %i.cw, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.body

bb.ay:                                            ; preds = %bb.at
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !8, !align !9, !noundef !8 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  %i.da = load i8, ptr %i.cz, align 4, !range !362, !alias.scope !1714, !noalias !1711, !noundef !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1714, !noalias !1711, !noundef !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !1714, !noalias !1711, !noundef !8
  %i.df = load i64, ptr %i.cy, align 8, !range !31, !alias.scope !1714, !noalias !1711, !noundef !8 ; 2 uses
  %.not.i40 = icmp eq i64 %i.df, 2
  br i1 %.not.i40, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  br i1 %i.dg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1721, !noalias !1722, !noundef !8
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 23
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !1721, !noalias !1722, !noundef !8
  %.not.i.i41 = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1721, !noalias !1722 ; 5 uses
  %.val21.i.i = load i64, ptr %i.dl, align 8, !alias.scope !1721, !noalias !1722 ; 2 uses
  br i1 %.not.i.i41, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1723
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.be, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !80

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i, i64 noundef %.val21.i.i) #23
          to label %.noexc42 unwind label %bb.bi

.noexc42:                                         ; preds = %bb.be
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.bb, %bb.bd, %bb.bc
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.bd ], [ inttoptr (i64 16 to ptr), %bb.bc ], [ %.val.i.i, %bb.bb ]
  store ptr %.sroa.06.0.i.i, ptr %.sroa.4.i, align 8, !alias.scope !1716, !noalias !1724
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ba
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.ba ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.di, %bb.ba ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ba ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1716, !noalias !1724
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1725
  %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i = load i64, ptr %.sroa.7.i, align 8, !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ax

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  %.sroa.5.sroa.4.0.i = phi i64 [ undef, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.5.sroa.0.0.i = phi i64 [ undef, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %.sroa.0.0.i = phi i64 [ 2, %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit ], [ %storemerge.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !alias.scope !1725
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i8 %i.da, ptr %i.ds, align 4, !alias.scope !1711, !noalias !1714
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.dc, ptr %i.dt, align 8, !alias.scope !1711, !noalias !1714
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 %i.de, ptr %i.du, align 8, !alias.scope !1711, !noalias !1714
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !alias.scope !1711, !noalias !1714
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !1711, !noalias !1714
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !1711, !noalias !1714
  %i.dv = invoke { ptr, ptr } @_RNvXNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc8transferNtNtB4_10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus21commit_write_hashring(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j)
          to label %bb.bh unwind label %bb.bf     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dw = extractvalue { ptr, ptr } %i.dv, 0
  %i.dx = extractvalue { ptr, ptr } %i.dv, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dw, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.dx, ptr %i.dz, align 8
  br label %bb.h

bb.bi:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #19
          to label %bb.ax unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.i, %bb.bi, %bb.ai
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bk:                                            ; preds = %.body
  %i.ec = load i64, ptr %1, align 8, !range !844, !alias.scope !1726, !noundef !8
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit44 unwind label %bb.bj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer22ShardTransferConsensus40restart_shard_transfer_confirm_and_retry0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [136 x i8], align 8               ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [112 x i8], align 8               ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 98 ; 3 uses
  %i.p = load i8, ptr %i.o, align 2, !range !280, !noundef !8
  switch i8 %i.p, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.ah
    i8 4, label %bb.h
  ]

default.unreachable68:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 2 uses
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !align !9, !noundef !8
  store ptr %i.t, ptr %i.r, align 8, !captures !1498
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.w = load i8, ptr %i.v, align 1, !range !279, !noundef !8
  store i8 %i.w, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 104)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.q, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 3, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %i.aa = phi i64 [ %.pre64, %bb.x ], [ 3, %bb.d ]
  %i.ab = phi i64 [ %.pre, %bb.x ], [ 0, %bb.d ]  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %i.ac = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.ac, label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit42: ; preds = %bb.be, %bb.bf, %.body, %bb.c
  %.pn16.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.c ], [ %.pn16.pn.pn.pn, %.body ], [ %.pn16.pn.pn.pn, %bb.bf ], [ %.pn16.pn.pn.pn, %bb.be ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 0, ptr %i.ad, align 1
  store i8 2, ptr %i.o, align 2
  resume { ptr, i32 } %.pn16.pn.pn.pn.pn

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #22
  unreachable

bb.h:                                             ; preds = %bb.bb, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val32 = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %1, i64 112
  %.val33 = load ptr, ptr %i.ag, align 8, !nonnull !8, !align !9, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val32, ptr nonnull %.val33) #19
          to label %.body unwind label %bb.bd

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.i, align 8, !range !1504, !noundef !8
  %i.ai = icmp eq i64 %i.ah, -2
  br i1 %i.ai, label %bb.k, label %bb.l

common.ret:                                       ; preds = %bb.ak, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus40restart_shard_transfer_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit, %bb.k
  %.sink = phi i8 [ 3, %bb.ak ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE7map_errBJ_NCNCNvYNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc10dispatcher13TocDispatcherNtNtNtBP_6shards8transfer22ShardTransferConsensus40restart_shard_transfer_confirm_and_retry00ECsl8OoimOLbh_6qdrant.exit ], [ 4, %bb.k ]
  store i8 %.sink, ptr %i.o, align 2
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.val30 = load ptr, ptr %i.ae, align 8          ; 5 uses
  %i.aj = getelementptr i8, ptr %1, i64 112
  %.val31 = load ptr, ptr %i.aj, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.ak = load ptr, ptr %.val31, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

end_hunk_3
