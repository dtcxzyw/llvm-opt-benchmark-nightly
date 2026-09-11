Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.02?download=true
inline.NumInlined: 1917
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB4_8BufferedINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB12_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtB6_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_flushCs2Bxje7pdMIr_13libp2p_server:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !8
  %i.r = sub i64 %i.o, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE4iterCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  %i.t = call noundef i64 @_RINvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2M_8adapters3map8map_foldRB19_jjNCNvXs_NtNtB1i_6common3bufINtB4u_7BufListB19_ENtNtNtB28_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2K_5accumjNtB5S_3Sum3sumINtB3M_3MapBY_B4n_EE0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = sub i64 0, %i.t
  %i.v = icmp eq i64 %i.r, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write10poll_flushCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i8, ptr %i.z, align 8, !range !9, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.ab, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.sroa.011.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.011.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.011.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sink1.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink1.i.i.sroa.gep11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sink.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sink.i.i.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sink7.i.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink5.i.i.i.sroa.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val3.i.pre.i = load i64, ptr %i.n, align 8, !alias.scope !2634, !noalias !2635
  %.pre.i = load i64, ptr %i.p, align 8, !alias.scope !2634, !noalias !2635
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.bn = phi i64 [ %i.bx, %bb.l ], [ %.pre.i, %bb.f ] ; 4 uses
  %.val3.i.i = phi i64 [ %i.by, %bb.l ], [ %.val3.i.pre.i, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  %i.bo = icmp ugt i64 %i.bn, %.val3.i.i
  br i1 %i.bo, label %bb.h, label %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %.val3.i.i, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30, !noalias !2636
  unreachable

_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !2634, !noalias !2635, !nonnull !8, !noundef !8
  %i.bp = sub nuw i64 %.val3.i.i, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bn
  %i.br = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write10poll_writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bp) ; 2 uses
  %i.bs = extractvalue { i64, ptr } %i.br, 0
  %i.bt = extractvalue { i64, ptr } %i.br, 1      ; 4 uses
  switch i64 %i.bs, label %bb.i [
    i64 2, label %.loopexit.loopexit.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.bu = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bt, 1
  br label %_RNvMs_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB4_8BufferedINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB12_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtB6_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE20poll_flush_flattenedCs2Bxje7pdMIr_13libp2p_server.exit

bb.j:                                             ; preds = %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = load i64, ptr %i.p, align 8, !alias.scope !2637, !noalias !2635, !noundef !8
  %i.bx = add i64 %i.bw, %i.bv                    ; 3 uses
  store i64 %i.bx, ptr %i.p, align 8, !alias.scope !2637, !noalias !2635
  %i.by = load i64, ptr %i.n, align 8, !alias.scope !2637, !noalias !2635, !noundef !8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.bx
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !alias.scope !2637, !noalias !2635
  %i.ca = tail call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write10poll_flushCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNvMs_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB4_8BufferedINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB12_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtB6_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE20poll_flush_flattenedCs2Bxje7pdMIr_13libp2p_server.exit

bb.l:                                             ; preds = %bb.j
  %i.cb = icmp eq ptr %i.bt, null
  br i1 %i.cb, label %.loopexit.loopexit.i, label %bb.g

.loopexit.loopexit.i:                             ; preds = %bb.l, %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i
  %.sroa.0.0.ph.i = phi i64 [ 0, %bb.l ], [ 1, %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %i.cc = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.ph.i, 0
  %i.cd = insertvalue { i64, ptr } %i.cc, ptr inttoptr (i64 98784247811 to ptr), 1
  br label %_RNvMs_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB4_8BufferedINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB12_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtB6_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE20poll_flush_flattenedCs2Bxje7pdMIr_13libp2p_server.exit

_RNvMs_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB4_8BufferedINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB12_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEINtNtB6_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE20poll_flush_flattenedCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.i, %bb.k, %.loopexit.loopexit.i
  %.merged.i = phi { i64, ptr } [ %i.bu, %bb.i ], [ %i.ca, %bb.k ], [ %i.cd, %.loopexit.loopexit.i ] ; 2 uses
  %i.ce = extractvalue { i64, ptr } %.merged.i, 0
  %i.cf = extractvalue { i64, ptr } %.merged.i, 1
  br label %.loopexit

bb.m:                                             ; preds = %bb.m, %bb.e
  %i.cg = phi i64 [ 0, %bb.e ], [ %i.cs, %bb.m ]  ; 5 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i64 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  store i64 0, ptr %i.cr, align 8
  %i.cs = add nuw nsw i64 %i.cg, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cs, 64
  br i1 %exitcond.not.3, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  %.val.i.i13 = load i64, ptr %i.n, align 8, !alias.scope !2642, !noalias !2643, !noundef !8 ; 5 uses
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !2642, !noalias !2643, !noundef !8 ; 5 uses
  %.not.i.i = icmp eq i64 %.val.i.i13, %.val1.i.i
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.ct = icmp ugt i64 %.val1.i.i, %.val.i.i13
  br i1 %i.ct, label %bb.p, label %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i.i, !prof !28

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.val1.i.i, i64 noundef %.val.i.i13, i64 noundef %.val.i.i13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30, !noalias !2645
  unreachable

_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.o
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !2646, !noalias !2643, !nonnull !8, !noundef !8
  %i.cu = sub nuw i64 %.val.i.i13, %.val1.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val1.i.i
  store ptr %i.cv, ptr %i.g, align 8, !alias.scope !2643, !noalias !2647
  store i64 %i.cu, ptr %i.ad, align 8, !alias.scope !2643, !noalias !2647
  br label %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i

_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i.i, %bb.n
  %.sroa.0.0.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.sroa.gep, %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %i.g, %bb.n ]
  %.sroa.0.0.i.i = phi i64 [ 1, %_RNvXs7_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf5chunkCs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.cw = sub nuw nsw i64 64, %.sroa.0.0.i.i      ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2649
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE4iterCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  %.sroa.0.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !noalias !2649
  %.sroa.0.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2649
  %.sroa.9.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2649
  %.sroa.9.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2649
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i
  %.sroa.0.sroa.7.0.i.i = phi ptr [ %.sroa.0.sroa.7.0.copyload.i.i, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %.sroa.0.sroa.7.1.i.i, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ] ; 3 uses
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i.i, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %i.cz, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ] ; 3 uses
  %.sroa.9.sroa.5.0.i.i = phi ptr [ %.sroa.9.sroa.5.0.copyload.i.i, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %.sroa.9.sroa.5.1.i.i, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ] ; 3 uses
  %.sroa.9.sroa.0.0.i.i = phi ptr [ %.sroa.9.sroa.0.0.copyload.i.i, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %.sroa.9.sroa.0.1.i.i, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ 0, %_RNvYINtNtNtNtCse0yMYRRwETY_5hyper5proto2h12io6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %i.fi, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ] ; 9 uses
  %i.cx = icmp eq ptr %.sroa.0.sroa.0.0.i.i, %.sroa.0.sroa.7.0.i.i
  br i1 %i.cx, label %bb.r, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.cy = icmp eq ptr %.sroa.9.sroa.0.0.i.i, %.sroa.9.sroa.5.0.i.i
  br i1 %i.cy, label %_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.sroa.7.1.i.i = phi ptr [ %.sroa.9.sroa.5.0.i.i, %bb.r ], [ %.sroa.0.sroa.7.0.i.i, %bb.q ]
  %.sroa.9.sroa.5.1.i.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.r ], [ %.sroa.9.sroa.5.0.i.i, %bb.q ]
  %.sroa.9.sroa.0.1.i.i = phi ptr [ %.sroa.0.sroa.0.0.i.i, %bb.r ], [ %.sroa.9.sroa.0.0.i.i, %bb.q ]
  %.sink6.i.i.i = phi ptr [ %.sroa.9.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.sroa.0.0.i.i, %bb.q ] ; 17 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 80
  %.not.i3.i = icmp eq ptr %.sink6.i.i.i, null
  br i1 %.not.i3.i, label %_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.s

bb.s:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %i.da = icmp ugt i64 %.sroa.0.1.i.i, %i.cw
  br i1 %i.da, label %bb.an, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  %i.db = sub nuw nsw i64 %i.cw, %.sroa.0.1.i.i   ; 18 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.sroa.phi, i64 %.sroa.0.1.i.i ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.dd = load i64, ptr %.sink6.i.i.i, align 8, !range !11, !noalias !2650, !noundef !8
  switch i64 %i.dd, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.ab
    i64 3, label %bb.ag
    i64 4, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.t, %bb.ax
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.df = call noundef i64 @_RNvYNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.de, ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef range(i64 0, 65) %i.db)
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 40 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !2651, !noundef !8
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8, !noalias !2652
  store i64 0, ptr %i.ae, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !noalias !2652
  store i64 0, ptr %i.ag, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8, !noalias !2652
  store i64 0, ptr %i.ai, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8, !noalias !2652
  store i64 0, ptr %i.ak, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.al, align 8, !noalias !2652
  store i64 0, ptr %i.am, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.an, align 8, !noalias !2652
  store i64 0, ptr %i.ao, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !noalias !2652
  store i64 0, ptr %i.aq, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !2652
  store i64 0, ptr %i.as, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8, !noalias !2652
  store i64 0, ptr %i.au, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8, !noalias !2652
  store i64 0, ptr %i.aw, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.ax, align 8, !noalias !2652
  store i64 0, ptr %i.ay, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !2652
  store i64 0, ptr %i.ba, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8, !noalias !2652
  store i64 0, ptr %i.bc, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.bd, align 8, !noalias !2652
  store i64 0, ptr %i.be, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.bf, align 8, !noalias !2652
  store i64 0, ptr %i.bg, align 8, !noalias !2652
  store ptr inttoptr (i64 1 to ptr), ptr %i.bh, align 8, !noalias !2652
  store i64 0, ptr %i.bi, align 8, !noalias !2652
  %..i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 65) %i.db, i64 16)
  %i.dk = call noundef i64 @_RNvYNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.dj, ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef %..i.i.i.i.i), !noalias !2651 ; 5 uses
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !2651, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2652
  %.not.i.i.i.i = icmp ugt i64 %i.dk, %i.db
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.y, !prof !26

.sink.split.i.i.i.i:                              ; preds = %bb.z, %bb.aa, %bb.y
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.ea, %bb.aa ], [ %i.dk, %bb.y ], [ %i.dk, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2652
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dk, i64 noundef range(i64 0, 65) %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #30, !noalias !2651
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dk
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1T_E3newCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.dc, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bj)
  %.sroa.011.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !2652 ; 2 uses
  %.sroa.011.sroa.3.0.copyload.i.i.i.i = load ptr, ptr %.sroa.011.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !2652 ; 2 uses
  %.sroa.011.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.011.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2652 ; 3 uses
  %.sroa.011.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.011.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2652 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2652
  %i.dn = icmp ult i64 %.sroa.011.sroa.5.0.copyload.i.i.i.i, %.sroa.011.sroa.6.0.copyload.i.i.i.i
  br i1 %i.dn, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i: ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.sroa.0.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.sroa.3.0.copyload.i.i.i.i) ]
  %i.do = sub nuw i64 %.sroa.011.sroa.6.0.copyload.i.i.i.i, %.sroa.011.sroa.5.0.copyload.i.i.i.i
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.z, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i
  %.sroa.09.036.i.i.i.i = phi i64 [ %i.dl, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i ], [ %i.dy, %bb.z ] ; 3 uses
  %.sroa.621.035.i.i.i.i = phi i64 [ %.sroa.011.sroa.5.0.copyload.i.i.i.i, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i ], [ %i.dv, %bb.z ] ; 3 uses
  %.sroa.9.034.i.i.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.lr.ph.i.i.i.i ], [ %i.du, %bb.z ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.621.035.i.i.i.i ; 4 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.sroa.3.0.copyload.i.i.i.i, i64 %.sroa.621.035.i.i.i.i ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !noundef !8 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !8 ; 2 uses
  %.not19.i.i.i.i = icmp ugt i64 %.sroa.09.036.i.i.i.i, %i.dt
  br i1 %.not19.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.du = add nuw i64 %.sroa.9.034.i.i.i.i, 1     ; 2 uses
  %i.dv = add nuw i64 %.sroa.621.035.i.i.i.i, 1
  store ptr %i.dr, ptr %i.dp, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.dt, ptr %i.dw, align 8
  %i.dx = load i64, ptr %i.ds, align 8, !noundef !8
  %i.dy = sub i64 %.sroa.09.036.i.i.i.i, %i.dx
  %exitcond.not.i.i.i.i = icmp eq i64 %i.du, %i.do
  br i1 %exitcond.not.i.i.i.i, label %.sink.split.i.i.i.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

bb.aa:                                            ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceEINtB1q_4IterB1Q_EEENtNtNtB8_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  store ptr %i.dr, ptr %i.dp, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %.sroa.09.036.i.i.i.i, ptr %i.dz, align 8
  %i.ea = add i64 %.sroa.9.034.i.i.i.i, 1
  br label %.sink.split.i.i.i.i

bb.ab:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 40
  %i.ec = call noundef i64 @_RNvYNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtNtCs1eA6bChxBZF_5bytes3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.eb, ptr noalias nofree noundef nonnull align 8 %i.dc, i64 noundef range(i64 0, 65) %i.db) ; 5 uses
  %i.ed = icmp ugt i64 %i.ec, %i.db
  br i1 %i.ed, label %bb.ac, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, !prof !28

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ec, i64 noundef range(i64 0, 65) %i.db, i64 noundef range(i64 0, 65) %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #30
  unreachable

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.ef = sub nuw nsw i64 %i.db, %i.ec
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ec
  %i.eh = call noundef i64 @_RNvYNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.ee, ptr noalias nofree noundef nonnull align 8 %i.eg, i64 noundef %i.ef)
  %i.ei = add i64 %i.eh, %i.ec                    ; 5 uses
  %i.ej = icmp ugt i64 %i.ei, %i.db
  br i1 %i.ej, label %bb.af, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.ek = getelementptr i8, ptr %.sink6.i.i.i, i64 72
  %.val5.i.i.i.i = load i64, ptr %i.ek, align 8, !noalias !2654 ; 2 uses
  %i.el = icmp eq i64 %i.db, %i.ei
  %.not.i.i.i.i.i = icmp eq i64 %.val5.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.el, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_NtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !2654, !nonnull !8, !noundef !8
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ei ; 2 uses
  store ptr %.val.i.i.i.i, ptr %i.en, align 8, !alias.scope !2655, !noalias !2656
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.val5.i.i.i.i, ptr %i.eo, align 8, !alias.scope !2655, !noalias !2656
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_NtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

bb.af:                                            ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ei, i64 noundef range(i64 0, 65) %i.db, i64 noundef range(i64 0, 65) %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #30
  unreachable

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_NtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ]
  %i.ep = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %i.ei
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.ag:                                            ; preds = %bb.t
  %i.eq = getelementptr i8, ptr %.sink6.i.i.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.eq, align 8, !noalias !2650 ; 2 uses
  %2 = icmp eq i64 %i.cw, %.sroa.0.1.i.i
  %.not.i2.i.i.i = icmp eq i64 %.val1.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %2, i1 true, i1 %.not.i2.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %.val.i.i5.i = load ptr, ptr %i.er, align 8, !noalias !2650, !nonnull !8, !noundef !8
  store ptr %.val.i.i5.i, ptr %i.dc, align 8, !alias.scope !2657, !noalias !2656
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.val1.i.i.i, ptr %i.es, align 8, !alias.scope !2657, !noalias !2656
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.ai:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.et = getelementptr i8, ptr %.sink6.i.i.i, i64 16
  %.val5.i.i.i.i.i = load i64, ptr %i.et, align 8, !noalias !2660 ; 2 uses
  %3 = icmp eq i64 %i.cw, %.sroa.0.1.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.val5.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %3, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.eu, align 8, !noalias !2660, !nonnull !8, !noundef !8
  store ptr %.val.i.i.i.i.i, ptr %i.dc, align 8, !alias.scope !2661, !noalias !2656
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.val5.i.i.i.i.i, ptr %i.ev, align 8, !alias.scope !2661, !noalias !2656
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ai ], [ 1, %bb.aj ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 24
  %i.ex = sub nuw nsw i64 %i.db, %.sroa.0.0.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.ez = call noundef i64 @_RNvYNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.ew, ptr noalias nofree noundef nonnull align 8 %i.ey, i64 noundef %i.ex)
  %i.fa = add i64 %i.ez, %.sroa.0.0.i.i.i.i.i.i   ; 5 uses
  %i.fb = icmp ugt i64 %i.fa, %i.db
  br i1 %i.fb, label %bb.am, label %bb.ak, !prof !28

bb.ak:                                            ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  %i.fc = getelementptr i8, ptr %.sink6.i.i.i, i64 64
  %.val5.i4.i.i.i = load i64, ptr %i.fc, align 8, !noalias !2662 ; 2 uses
  %i.fd = icmp eq i64 %i.db, %i.fa
  %.not.i.i5.i.i.i = icmp eq i64 %.val5.i4.i.i.i, 0
  %or.cond.i.i6.i.i.i = select i1 %i.fd, i1 true, i1 %.not.i.i5.i.i.i
  br i1 %or.cond.i.i6.i.i.i, label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 56
  %.val.i7.i.i.i = load ptr, ptr %i.fe, align 8, !noalias !2662, !nonnull !8, !noundef !8
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.fa ; 2 uses
  store ptr %.val.i7.i.i.i, ptr %i.ff, align 8, !alias.scope !2663, !noalias !2656
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.val5.i4.i.i.i, ptr %i.fg, align 8, !alias.scope !2663, !noalias !2656
  br label %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i

bb.am:                                            ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainRShNtNtB8_5bytes5BytesENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fa, i64 noundef range(i64 0, 65) %i.db, i64 noundef range(i64 0, 65) %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #30
  unreachable

_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i.i8.i.i.i = phi i64 [ 0, %bb.ak ], [ 1, %bb.al ]
  %i.fh = add nuw nsw i64 %.sroa.0.0.i.i8.i.i.i, %i.fa
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %bb.ah, %bb.ag, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_NtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %.sink.split.i.i.i.i, %bb.v, %bb.u
  %.sroa.0.0.i7.i.i = phi i64 [ %i.df, %bb.u ], [ %i.fh, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %i.ep, %_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainIBD_NtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode9ChunkSizeNtNtB8_5bytes5BytesERShENtNtB6_8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i, %.sink.split.i.i.i.i ], [ 0, %bb.v ], [ 0, %bb.ag ], [ 1, %bb.ah ]
  %i.fi = add i64 %.sroa.0.0.i7.i.i, %.sroa.0.1.i.i ; 2 uses
  %i.fj = icmp eq i64 %i.fi, %i.cw
  br i1 %i.fj, label %_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.q

bb.an:                                            ; preds = %bb.s
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.1.i.i, i64 noundef range(i64 0, 65) %i.cw, i64 noundef range(i64 0, 65) %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #30
  unreachable

_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.r, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %.sroa.0.2.i.i = phi i64 [ %i.cw, %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %.sroa.0.1.i.i, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %.sroa.0.1.i.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2649
  %i.fk = add i64 %.sroa.0.2.i.i, %.sroa.0.0.i.i  ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 65
  br i1 %i.fl, label %bb.ap, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fk, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #30
  unreachable

bb.ap:                                            ; preds = %_RNvXsb_NtNtNtCse0yMYRRwETY_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1r_3buf8buf_impl3Buf15chunks_vectoredCs2Bxje7pdMIr_13libp2p_server.exit
  %i.fm = call { i64, ptr } @_RNvXs0_NtNtCs5IbPN03UQpS_10hyper_util6common6rewindINtB5_6RewindINtNtNtB9_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEENtNtNtCse0yMYRRwETY_5hyper2rt2io5Write19poll_write_vectoredCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.fk) ; 2 uses
  %i.fn = extractvalue { i64, ptr } %i.fm, 0      ; 2 uses
  %i.fo = extractvalue { i64, ptr } %i.fm, 1      ; 4 uses
  %i.fp = icmp eq i64 %i.fn, 2
  br i1 %i.fp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap
  %i.fq = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fr = trunc nuw i64 %i.fn to i1
  br i1 %i.fr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fo) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fs = load i64, ptr %i.n, align 8, !noundef !8
  %i.ft = load i64, ptr %i.p, align 8, !noundef !8 ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = call i8 @llvm.ucmp.i8.i64(i64 %i.fu, i64 %i.fq)
  switch i8 %i.fv, label %bb.au [
    i8 -1, label %bb.av
    i8 0, label %bb.bh
    i8 1, label %bb.bi
  ]

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fw = sub i64 %i.fq, %i.fu                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  %.not19.i = icmp eq i64 %i.fw, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br i1 %.not19.i, label %_RNvXs_NtNtCse0yMYRRwETY_5hyper6common3bufINtB4_7BufListINtNtNtNtB8_5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB1z_3buf8buf_impl3Buf7advanceCs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs2Bxje7pdMIr_13libp2p_server.exit.i
  %.sroa.0.020.i = phi i64 [ %i.gy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %i.fw, %bb.av ] ; 3 uses
  %i.fx = load i64, ptr %i.bk, align 8, !alias.scope !2664, !noundef !8
  %.not9.i = icmp eq i64 %i.fx, 0
  br i1 %.not9.i, label %bb.aw, label %bb.ax, !prof !28

bb.aw:                                            ; preds = %.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #30
  unreachable

bb.ax:                                            ; preds = %.lr.ph.i
  %i.fy = load i64, ptr %i.bl, align 8, !alias.scope !2664, !noundef !8 ; 2 uses
  %i.fz = load i64, ptr %i.s, align 8, !range !19, !alias.scope !2664, !noundef !8 ; 2 uses
  %.not10.i = icmp ult i64 %i.fy, %i.fz
  %i.ga = select i1 %.not10.i, i64 0, i64 %i.fz
  %.sroa.06.0.i = sub nuw i64 %i.fy, %i.ga
  %i.gb = load ptr, ptr %i.bm, align 8, !alias.scope !2664, !nonnull !8, !noundef !8
  %i.gc = getelementptr inbounds nuw [80 x i8], ptr %i.gb, i64 %.sroa.06.0.i ; 14 uses
  %i.gd = load i64, ptr %i.gc, align 8, !range !11, !noundef !8
  switch i64 %i.gd, label %default.unreachable [
    i64 0, label %bb.ay
    i64 1, label %bb.az
    i64 2, label %bb.ba
    i64 3, label %bb.bb
    i64 4, label %bb.bc
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr i8, ptr %i.gc, i64 24
  %.val1.i.i20 = load i64, ptr %i.ge, align 8, !noundef !8
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gf = getelementptr i8, ptr %i.gc, i64 24
  %.val.i.i19 = load i64, ptr %i.gf, align 8, !noundef !8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !8
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.gh, i64 %.val.i.i19)
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i

bb.ba:                                            ; preds = %bb.ax
  %i.gi = getelementptr i8, ptr %i.gc, i64 58
  %.val1.i.i.i.i = load i8, ptr %i.gi, align 2, !noundef !8
  %i.gj = getelementptr i8, ptr %i.gc, i64 59
  %.val2.i.i.i.i = load i8, ptr %i.gj, align 1, !noundef !8
  %i.gk = sub i8 %.val2.i.i.i.i, %.val1.i.i.i.i
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr i8, ptr %i.gc, i64 24
  %.val.i.i.i.i17 = load i64, ptr %i.gm, align 8, !noundef !8
  %i.gn = call noundef i64 @llvm.uadd.sat.i64(i64 %i.gl, i64 %.val.i.i.i.i17)
  %i.go = getelementptr i8, ptr %i.gc, i64 72
  %.val.i.i.i18 = load i64, ptr %i.go, align 8, !noundef !8
  %i.gp = call noundef i64 @llvm.uadd.sat.i64(i64 %i.gn, i64 %.val.i.i.i18)
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i

bb.bb:                                            ; preds = %bb.ax
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !8
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i

bb.bc:                                            ; preds = %bb.ax
  %i.gs = getelementptr i8, ptr %i.gc, i64 16
  %.val1.i.i.i14 = load i64, ptr %i.gs, align 8, !noundef !8
  %i.gt = getelementptr i8, ptr %i.gc, i64 40
  %.val2.i.i.i = load i64, ptr %i.gt, align 8, !noundef !8
  %i.gu = call noundef i64 @llvm.uadd.sat.i64(i64 %.val1.i.i.i14, i64 %.val2.i.i.i)
  %i.gv = getelementptr i8, ptr %i.gc, i64 64
  %.val.i2.i.i = load i64, ptr %i.gv, align 8, !noundef !8
  %i.gw = call noundef i64 @llvm.uadd.sat.i64(i64 %i.gu, i64 %.val.i2.i.i)
  br label %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i

_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sroa.0.0.i.i15 = phi i64 [ %.val1.i.i20, %bb.ay ], [ %..i.i.i, %bb.az ], [ %i.gp, %bb.ba ], [ %i.gr, %bb.bb ], [ %i.gw, %bb.bc ] ; 3 uses
  %i.gx = icmp ugt i64 %.sroa.0.0.i.i15, %.sroa.0.020.i
  br i1 %i.gx, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf9remainingCs2Bxje7pdMIr_13libp2p_server.exit.i
  call fastcc void @_RNvXs_NtNtNtCse0yMYRRwETY_5hyper5proto2h16encodeINtB4_10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtNtB16_3buf8buf_impl3Buf7advanceCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(80) %i.gc, i64 noundef %.sroa.0.0.i.i15) #31
  %i.gy = sub nuw i64 %.sroa.0.020.i, %.sroa.0.0.i.i15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2664
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE9pop_frontCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.gz = load i64, ptr %i.a, align 8, !range !16, !alias.scope !2665, !noalias !2664, !noundef !8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, -1
  br i1 %i.ha, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCse0yMYRRwETY_5hyper5proto2h16encode10EncodedBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  switch i64 %i.gz, label %.sink.split.i.i.i.i16 [
    i64 0, label %bb.bf
end_hunk_0
