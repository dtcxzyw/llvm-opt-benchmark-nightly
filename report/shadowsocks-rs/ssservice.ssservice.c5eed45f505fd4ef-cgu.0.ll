Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.e
  %i.am = phi ptr [ %i.ad, %.thread ], [ %i.al, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !43429, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !43429, !nonnull !177, !align !303, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !43429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !43429
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.84.i, i64 noundef 8192) #52, !noalias !43430
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.9.i, i64 noundef 8192) #52, !noalias !43430
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ao, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !43429
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.aq, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !43429
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !43429
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !43429
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !43429
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !43429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !43429
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !231, !noalias !43431
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge237
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge237:                                   ; preds = %bb.g
  %.phi.trans.insert238 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre239 = load ptr, ptr %.phi.trans.insert238, align 8, !noalias !43431
  %.phi.trans.insert240 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre241 = load ptr, ptr %.phi.trans.insert240, align 8, !noalias !43431
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge237, %.thread.i
  %i.at = phi ptr [ %i.am, %.thread.i ], [ %i.al, %._crit_edge237 ]
  %i.au = phi ptr [ %i.aq, %.thread.i ], [ %.pre241, %._crit_edge237 ] ; 2 uses
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %.pre239, %._crit_edge237 ] ; 2 uses
  %i.aw = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge237 ]
  %i.ax = phi ptr [ %i.ar, %.thread.i ], [ %i.as, %._crit_edge237 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !43431
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !43431
  store ptr %i.az, ptr %i.ax, align 8, !noalias !43431
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.av, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !43431
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.au, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !43431
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bb, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !43431
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.as, align 8, !alias.scope !43432, !noalias !43431
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre157.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !43432, !noalias !43431
  %.phi.trans.insert158.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre159.i.i = load ptr, ptr %.phi.trans.insert158.i.i, align 8, !alias.scope !43432, !noalias !43431
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = phi ptr [ %i.al, %bb.j ], [ %i.at, %bb.i ] ; 2 uses
  %i.bd = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %i.be = phi ptr [ %i.as, %bb.j ], [ %i.ax, %bb.i ]
  %i.bf = phi ptr [ %.pre159.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.bg = phi ptr [ %.pre157.i.i, %bb.j ], [ %i.av, %bb.i ] ; 6 uses
  %i.bh = phi ptr [ %.pre.i.i, %bb.j ], [ %i.az, %bb.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43433)
  call void @llvm.experimental.noalias.scope.decl(metadata !43434)
  call void @llvm.experimental.noalias.scope.decl(metadata !43435)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 41 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 68 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 69 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  %.pre.i.i.i.i.i = load i8, ptr %i.bi, align 1, !range !231, !alias.scope !43435, !noalias !43436
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i.i.i.i, %bb.k
  %i.bu = phi i8 [ %storemerge.i.i.i.i.i, %.backedge.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.bv = icmp samesign ugt i8 %i.bu, 1
  %i.bw = zext nneg i8 %i.bu to i64
  %i.bx = add nsw i64 %i.bw, -1
  %i.by = select i1 %i.bv, i64 %i.bx, i64 0
  switch i64 %i.by, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.ak
    i64 2, label %bb.aq
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !43437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !43438
  %i.bz = load i8, ptr %i.bl, align 8, !range !198, !noalias !43438, !noundef !177
  switch i8 %i.bz, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !305

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.at, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bk, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43439
  store i8 0, ptr %i.bl, align 8, !noalias !43438
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ca = load i8, ptr %i.bm, align 4, !range !180, !noalias !43438, !noundef !177 ; 2 uses
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i8, ptr %i.bn, align 1, !noalias !43438 ; 4 uses
  br i1 %i.cb, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43438
  store i24 0, ptr %i.i, align 4, !noalias !43438
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bo) #52, !noalias !43440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43438
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cd = add i8 %i.cc, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cd, %bb.r ], [ %i.cc, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 1, !noalias !43438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43438
  store i24 0, ptr %i.i, align 4, !noalias !43438
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bo) #52, !noalias !43440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43438
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.03.06.i42.off8.i.i.i.i.i.i = phi i8 [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i42.off16.i.i.i.i.i.i = phi i8 [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i42.off8.i.i.i.i.i.i, ptr %i.j, align 1, !noalias !43438
  store i8 %.sroa.03.06.i42.off16.i.i.i.i.i.i, ptr %i.bp, align 1, !noalias !43438
  %.pre.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !43441, !noalias !43442
  %.pre115.i.i.i.i.i.i = load i8, ptr %i.br, align 8, !range !180, !alias.scope !43441, !noalias !43442
  %i.ce = trunc nuw i8 %.pre115.i.i.i.i.i.i to i1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
  %i.cf = phi i1 [ false, %._crit_edge.i.i.i.i.i.i ], [ %i.ce, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ]
  %i.cg = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ch = load i64, ptr %i.bj, align 8, !alias.scope !43441, !noalias !43442, !noundef !177
  %i.ci = icmp uge i64 %i.cg, %i.ch
  %or.cond.i.i.i.i.i.i = select i1 %i.ci, i1 true, i1 %i.cf
  br i1 %or.cond.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.s
  %i.cj = phi i64 [ %.pre116.i.i.i.i.i.i, %bb.x ], [ %i.cr, %bb.v ], [ %i.cg, %bb.s ] ; 6 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !43441, !noalias !43442 ; 3 uses
  %i.ck = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t
  %i.cl = load i64, ptr %i.bj, align 8, !alias.scope !43443, !noalias !43442, !noundef !177 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cj, %i.cl
  %i.cm = load ptr, ptr %i.bh, align 8, !alias.scope !43441, !noalias !43442, !nonnull !177
  br i1 %.not.i.i.i.i.i.i.i, label %2, label %.lr.ph.split.preheader.i.i.i.i.i.i, !prof !206

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.promoted80.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !43441, !noalias !43442
  br label %.lr.ph.split.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cn = call fastcc { i64, ptr } @_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg) #52, !noalias !43442 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cq = load i64, ptr %i.bs, align 8, !alias.scope !43441, !noalias !43442, !noundef !177
  %i.cr = load i64, ptr %i.bq, align 8, !alias.scope !43441, !noalias !43442, !noundef !177 ; 2 uses
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.y, label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.ct = extractvalue { i64, ptr } %i.cn, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  store i8 0, ptr %i.j, align 1, !noalias !43438
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %.loopexit37.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %.pre116.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !43441, !noalias !43442
  br label %bb.t

bb.y:                                             ; preds = %bb.v
  %i.cu = load i8, ptr %i.bi, align 1, !range !180, !alias.scope !43441, !noalias !43442, !noundef !177
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.z, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cw = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43444 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ab, label %.loopexit37.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.j, align 1, !noalias !43438
  store i8 0, ptr %i.bi, align 1, !alias.scope !43441, !noalias !43442
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.aj, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false), !alias.scope !43441, !noalias !43442
  %i.da = load i8, ptr %i.br, align 8, !range !180, !alias.scope !43441, !noalias !43442, !noundef !177
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.aj, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.dc = phi i64 [ %i.ea, %bb.aj ], [ %.promoted80.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i ]
  %i.dd = phi i64 [ %i.dz, %bb.aj ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43445)
  %i.de = sub nuw i64 %i.cj, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dd
  %i.dg = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.de) #52, !noalias !43446 ; 2 uses
  %i.dh = extractvalue { i64, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 3 uses
  %i.dj = icmp eq i64 %i.dh, 2
  br i1 %i.dj, label %bb.ac, label %bb.ag

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted.i.i.i.i.i.i, i64 noundef %i.cj, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43447
  unreachable

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.dk = load i8, ptr %i.br, align 8, !range !180, !alias.scope !43443, !noalias !43442, !noundef !177
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = icmp uge i64 %i.cj, %i.cl
  %or.cond17.not.i.i.i.i.i.i.i = or i1 %i.dm, %i.dl
  br i1 %or.cond17.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = call fastcc { i64, ptr } @_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg) #52, !noalias !43442 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = extractvalue { i64, ptr } %i.dn, 1      ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  %or.cond48.i.i.i.i.i.i = select i1 %i.dp, i1 true, i1 %.not8.i.i.i.i.i.i.i
  br i1 %or.cond48.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread.i.i.i.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dr = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43444 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = extractvalue { i64, ptr } %i.dr, 1      ; 2 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not40.i.i.i.i.i.i, label %bb.al, label %.loopexit37.i.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.dv = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dw = trunc nuw i64 %i.dh to i1
  br i1 %i.dw, label %.thread.i.i.i.i.i.i, label %bb.ah

.thread.i.i.i.i.i.i:                              ; preds = %bb.ag, %bb.ad
  %.sroa.5.1.i47.i.i.i.i.i.i = phi ptr [ %i.dq, %bb.ad ], [ %i.di, %bb.ag ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i47.i.i.i.i.i.i) ]
  br label %.loopexit37.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.j, align 1, !noalias !43438
  %i.dx = icmp eq ptr %i.di, null
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dy = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43444
  br label %.loopexit37.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dz = add i64 %i.dd, %i.dv                    ; 3 uses
  store i64 %i.dz, ptr %i.bs, align 8, !alias.scope !43441, !noalias !43442
  %i.ea = add i64 %i.dc, %i.dv                    ; 2 uses
  store i64 %i.ea, ptr %i.bt, align 8, !alias.scope !43441, !noalias !43442
  store i8 1, ptr %i.bi, align 1, !alias.scope !43441, !noalias !43442
  %i.eb = icmp ult i64 %i.dz, %i.cj
  br i1 %i.eb, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !43444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43438
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.ak:                                            ; preds = %bb.l
  %i.ec = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43448 ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.ec, 0
  %i.ee = trunc nuw i64 %i.ed to i1
  br i1 %i.ee, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, label %bb.an

.loopexit37.i.i.i.i.i:                            ; preds = %bb.af, %bb.w, %bb.ai, %.thread.i.i.i.i.i.i, %bb.aa
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.ct, %bb.w ], [ %.sroa.5.1.i47.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.cz, %bb.aa ], [ %i.dy, %bb.ai ], [ %i.du, %bb.af ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !43444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43438
  br label %.loopexit75.i.i.i.i

bb.al:                                            ; preds = %bb.af
  store i8 0, ptr %i.j, align 1, !noalias !43438
  %i.ef = load i64, ptr %i.bt, align 8, !alias.scope !43441, !noalias !43442, !noundef !177
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !43444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43438
  call void @llvm.experimental.noalias.scope.decl(metadata !43449)
  %i.eg = load i8, ptr %i.bi, align 1, !range !231, !alias.scope !43450, !noalias !43442, !noundef !177
  %i.eh = icmp samesign ult i8 %i.eg, 2
  br i1 %i.eh, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !43451, !noalias !43442, !noundef !177 ; 2 uses
  %i.ei = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !43450, !noalias !43442, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #52, !noalias !43452
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.am, %bb.al
  store i64 %i.ef, ptr %i.bh, align 8, !alias.scope !43435, !noalias !43442
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.ap, %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ 3, %bb.ao ], [ 3, %bb.ap ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  store i8 %storemerge.i.i.i.i.i, ptr %i.bi, align 1, !alias.scope !43435, !noalias !43442
  br label %bb.l

bb.an:                                            ; preds = %bb.ak
  %i.ej = extractvalue { i64, ptr } %i.ec, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %.loopexit75.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !43453)
  %i.ek = icmp samesign ult i8 %i.bu, 2
  br i1 %i.ek, label %bb.ap, label %.backedge.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !43454, !noalias !43442, !noundef !177 ; 2 uses
  %i.el = icmp eq i64 %.val1.i21.i.i.i.i.i, 0
  br i1 %i.el, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.ap
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !43455, !noalias !43442, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !43456
  br label %.backedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.l
  %i.em = load i64, ptr %i.bh, align 8, !alias.scope !43435, !noalias !43442, !noundef !177
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

.loopexit75.i.i.i.i:                              ; preds = %bb.an, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.ej, %bb.an ]
  %i.en = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.ak, %bb.aq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  %i.eo = phi i1 [ false, %bb.aq ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ true, %bb.ak ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.em, %bb.aq ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ undef, %bb.ak ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !43432, !noalias !43431, !nonnull !177, !align !185, !noundef !177 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43457)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.er, align 1, !alias.scope !43457, !noalias !43442
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.val1.i21.i38.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !43457, !noalias !43442 ; 11 uses
  %i.et = icmp eq i64 %.val1.i21.i38.i.i.i.i, 0   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %.promoted117.i.i.i.i.i = load i8, ptr %i.ex, align 8, !alias.scope !43457, !noalias !43442
  %.promoted118.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !43457, !noalias !43442
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge.i44.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  %i.fd = phi i64 [ %i.im, %.backedge.i44.i.i.i.i ], [ %.promoted118.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 4 uses
  %i.fe = phi i8 [ %i.in, %.backedge.i44.i.i.i.i ], [ %.promoted117.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 5 uses
  %i.ff = phi i8 [ %storemerge.i45.i.i.i.i, %.backedge.i44.i.i.i.i ], [ %.promoted.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 3 uses
  %i.fg = icmp samesign ugt i8 %i.ff, 1           ; 2 uses
  %i.fh = zext nneg i8 %i.ff to i64
  %i.fi = add nsw i64 %i.fh, -1
  %i.fj = select i1 %i.fg, i64 %i.fi, i64 0
  switch i64 %i.fj, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.bv
    i64 2, label %bb.bz
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !43458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43459
  %i.fk = load i8, ptr %i.bl, align 8, !range !198, !noalias !43459, !noundef !177
  switch i8 %i.fk, label %default.unreachable [
    i8 0, label %bb.av
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i
    i8 1, label %bb.au
  ], !prof !225

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bk, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43460
  store i8 0, ptr %i.bl, align 8, !noalias !43459
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fl = load i8, ptr %i.bm, align 4, !range !180, !noalias !43459, !noundef !177 ; 2 uses
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = load i8, ptr %i.bn, align 1, !noalias !43459 ; 4 uses
  br i1 %i.fm, label %bb.aw, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i.i.i61.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i61.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.ax

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.aw
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43459
  store i24 0, ptr %i.g, align 4, !noalias !43459
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.eu) #52, !noalias !43460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43459
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.fo = add i8 %i.fn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i: ; preds = %bb.ax, %bb.av
  %.sroa.33.0.i.i.i.i.i47.i.i.i.i = phi i8 [ %i.fo, %bb.ax ], [ %i.fn, %bb.av ]
  store i8 %.sroa.33.0.i.i.i.i.i47.i.i.i.i, ptr %i.bn, align 1, !noalias !43459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43459
  store i24 0, ptr %i.g, align 4, !noalias !43459
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.eu) #52, !noalias !43460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43459
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i, %bb.at
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.fl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i ], [ 0, %bb.at ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.fn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i46.i.i.i.i ], [ 0, %bb.at ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !43459
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.ev, align 1, !noalias !43459
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !43461, !noalias !43442
  %i.fp = load ptr, ptr %i.eq, align 8, !alias.scope !43461, !noalias !43442, !nonnull !177 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !43461, !noalias !43442
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i51.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i
  %i.fq = phi i64 [ %i.gw, %._crit_edge.i.i51.i.i.i.i ], [ %i.fd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ]
  %i.fr = phi i8 [ %i.fz, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 3 uses
  %i.fs = phi i8 [ %i.gx, %._crit_edge.i.i51.i.i.i.i ], [ %i.ff, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.ft = phi i8 [ %i.ga, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.gy, %._crit_edge.i.i51.i.i.i.i ], [ %i.fd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.fu = phi i64 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 4 uses
  %i.fv = phi i8 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.fw = phi i64 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i48.i.i.i.i ] ; 7 uses
  %i.fx = icmp uge i64 %i.fw, %.val1.i21.i38.i.i.i.i
  %i.fy = trunc nuw i8 %i.fv to i1
  %or.cond.i.i49.i.i.i.i = select i1 %i.fx, i1 true, i1 %i.fy
  br i1 %or.cond.i.i49.i.i.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.bg, %bb.bd, %bb.ay
  %i.fz = phi i8 [ %i.gn, %bb.bg ], [ %i.fr, %bb.bd ], [ %i.fr, %bb.ay ] ; 2 uses
  %i.ga = phi i8 [ %i.go, %bb.bg ], [ %i.ft, %bb.bd ], [ %i.ft, %bb.ay ] ; 2 uses
  %i.gb = phi i8 [ %i.gp, %bb.bg ], [ 0, %bb.bd ], [ %i.fv, %bb.ay ]
  %i.gc = phi i64 [ %i.gq, %bb.bg ], [ %i.fw, %bb.bd ], [ %i.fw, %bb.ay ] ; 8 uses
  %i.gd = icmp ult i64 %i.fu, %i.gc
  br i1 %i.gd, label %.lr.ph.i.i57.i.i.i.i, label %._crit_edge.i.i51.i.i.i.i

.lr.ph.i.i57.i.i.i.i:                             ; preds = %bb.az
  %.not.i41.i.i.i.i.i.i = icmp ugt i64 %i.gc, %.val1.i21.i38.i.i.i.i
  br i1 %.not.i41.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i58.i.i.i.i, !prof !206

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !43462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43463
  store ptr %i.fp, ptr %i.f, align 8, !noalias !43463
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.ey, align 8, !noalias !43463
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.fa, align 8, !noalias !43463
  store i64 %i.fw, ptr %i.ez, align 8, !noalias !43463
  %i.ge = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !43464 ; 2 uses
  %i.gf = extractvalue { i64, ptr } %i.ge, 0
  %i.gg = trunc nuw i64 %i.gf to i1               ; 2 uses
  %i.gh = extractvalue { i64, ptr } %i.ge, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.gh, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = load i64, ptr %i.ey, align 8, !noalias !43463, !noundef !177 ; 2 uses
  %i.gj = load i64, ptr %i.ez, align 8, !noalias !43463, !noundef !177 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.gj, %i.gi
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.bc, label %.thread.i.i50.i.i.i.i, !prof !206

.thread.i.i50.i.i.i.i:                            ; preds = %bb.bb
  %i.gk = icmp eq i64 %i.fw, %i.gj
  %i.gl = zext i1 %i.gk to i8                     ; 4 uses
  store i8 %i.gl, ptr %i.ex, align 8, !alias.scope !43465, !noalias !43442
  store i64 %i.gj, ptr %i.ew, align 8, !alias.scope !43465, !noalias !43442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43463
  br label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gj, i64 noundef %i.gi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43464
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43463
  br i1 %i.gg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.gm = icmp eq i64 %i.fu, %i.fw
  br i1 %i.gm, label %bb.bh, label %bb.az

bb.be:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i8 0, ptr %i.h, align 1, !noalias !43459
  br label %.loopexit37.i53.i.i.i.i

bb.bg:                                            ; preds = %bb.be, %.thread.i.i50.i.i.i.i
  %i.gn = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ %i.fr, %bb.be ]
  %i.go = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ %i.ft, %bb.be ]
  %i.gp = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ 0, %bb.be ]
  %i.gq = phi i64 [ %i.gj, %.thread.i.i50.i.i.i.i ], [ %i.fw, %bb.be ]
  store i8 0, ptr %i.h, align 1, !noalias !43459
  br label %bb.az

bb.bh:                                            ; preds = %bb.bd
  %i.gr = trunc nuw i8 %i.fs to i1
  br i1 %i.gr, label %bb.bi, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gs = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43460 ; 2 uses
  %i.gt = extractvalue { i64, ptr } %i.gs, 0
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gv = extractvalue { i64, ptr } %i.gs, 1      ; 2 uses
  %.not39.i.i60.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not39.i.i60.i.i.i.i, label %bb.bk, label %.loopexit37.i53.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  store i8 0, ptr %i.h, align 1, !noalias !43459
  store i8 0, ptr %i.er, align 1, !alias.scope !43461, !noalias !43442
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i51.i.i.i.i:                        ; preds = %bb.bu, %bb.az
  %i.gw = phi i64 [ %i.fq, %bb.az ], [ %i.ig, %bb.bu ] ; 2 uses
  %i.gx = phi i8 [ %i.fs, %bb.az ], [ 1, %bb.bu ] ; 2 uses
  %i.gy = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.az ], [ %i.ig, %bb.bu ] ; 2 uses
  %i.gz = trunc nuw i8 %i.gb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !alias.scope !43461, !noalias !43442
  br i1 %i.gz, label %bb.bp, label %bb.ay

.lr.ph.split.i.i58.i.i.i.i:                       ; preds = %.lr.ph.i.i57.i.i.i.i, %bb.bu
  %i.ha = phi i64 [ %i.ig, %bb.bu ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i57.i.i.i.i ]
  %i.hb = phi i64 [ %i.if, %bb.bu ], [ %i.fu, %.lr.ph.i.i57.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43466)
  %i.hc = sub nuw i64 %i.gc, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.hb
  %i.he = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef range(i64 0, -9223372036854775808) %i.hc) #52, !noalias !43467 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0      ; 2 uses
  %i.hg = extractvalue { i64, ptr } %i.he, 1      ; 3 uses
  %i.hh = icmp eq i64 %i.hf, 2
  br i1 %i.hh, label %bb.bl, label %bb.br

3:                                                ; preds = %.lr.ph.i.i57.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef %i.gc, i64 noundef %.val1.i21.i38.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43468
  unreachable

bb.bl:                                            ; preds = %.lr.ph.split.i.i58.i.i.i.i
  %i.hi = trunc nuw i8 %i.ga to i1
  %i.hj = icmp uge i64 %i.gc, %.val1.i21.i38.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.hj, %i.hi
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !43469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43470
  store ptr %i.fp, ptr %i.e, align 8, !noalias !43470
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.hk, align 8, !noalias !43470
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.hm, align 8, !noalias !43470
  store i64 %i.gc, ptr %i.hl, align 8, !noalias !43470
  %i.hn = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !43471 ; 2 uses
  %i.ho = extractvalue { i64, ptr } %i.hn, 0
  %i.hp = trunc nuw i64 %i.ho to i1               ; 2 uses
  %i.hq = extractvalue { i64, ptr } %i.hn, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.hq, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.hp, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hr = load i64, ptr %i.hk, align 8, !noalias !43470, !noundef !177 ; 2 uses
  %i.hs = load i64, ptr %i.hl, align 8, !noalias !43470, !noundef !177 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.hs, %i.hr
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.bo, label %.thread.i.i.i.i.i.i.i, !prof !206

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bn
  %i.ht = icmp eq i64 %i.gc, %i.hs
  %i.hu = zext i1 %i.ht to i8
  store i8 %i.hu, ptr %i.ex, align 8, !alias.scope !43472, !noalias !43442
  store i64 %i.hs, ptr %i.ew, align 8, !alias.scope !43472, !noalias !43442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43470
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hs, i64 noundef %i.hr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43471
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43470
  %i.hv = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.hw = select i1 %i.hp, i1 true, i1 %i.hv
  br i1 %i.hw, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.bp:                                            ; preds = %._crit_edge.i.i51.i.i.i.i
  %i.hx = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43460 ; 2 uses
  %i.hy = extractvalue { i64, ptr } %i.hx, 0
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ia = extractvalue { i64, ptr } %i.hx, 1      ; 2 uses
  %.not40.i.i52.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not40.i.i52.i.i.i.i, label %bb.bw, label %.loopexit37.i53.i.i.i.i

bb.br:                                            ; preds = %.lr.ph.split.i.i58.i.i.i.i
  %i.ib = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.ic = trunc nuw i64 %i.hf to i1
  br i1 %i.ic, label %.thread47.i.i.i.i.i.i, label %bb.bs

.thread47.i.i.i.i.i.i:                            ; preds = %bb.br, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.hq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i ], [ %i.hg, %bb.br ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i53.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  store i8 0, ptr %i.h, align 1, !noalias !43459
  %i.id = icmp eq ptr %i.hg, null
  br i1 %i.id, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ie = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43460
  br label %.loopexit37.i53.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.if = add i64 %i.hb, %i.ib                    ; 3 uses
  store i64 %i.if, ptr %i.fb, align 8, !alias.scope !43461, !noalias !43442
  %i.ig = add i64 %i.ha, %i.ib                    ; 4 uses
  store i64 %i.ig, ptr %i.fc, align 8, !alias.scope !43461, !noalias !43442
  store i8 1, ptr %i.er, align 1, !alias.scope !43461, !noalias !43442
  %i.ih = icmp ult i64 %i.if, %i.gc
  br i1 %i.ih, label %.lr.ph.split.i.i58.i.i.i.i, label %._crit_edge.i.i51.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %bb.bp, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.bl, %bb.bk, %bb.bi, %bb.bh
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43460
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.bv:                                            ; preds = %bb.ar
  %i.ii = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43473 ; 2 uses
  %i.ij = extractvalue { i64, ptr } %i.ii, 0
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %.loopexit, label %bb.bx

.loopexit37.i53.i.i.i.i:                          ; preds = %bb.bq, %bb.bt, %.thread47.i.i.i.i.i.i, %bb.bj, %bb.bf
  %.sroa.12.2.i.ph.i54.i.i.i.i = phi ptr [ %i.gh, %bb.bf ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.gv, %bb.bj ], [ %i.ie, %bb.bt ], [ %i.ia, %bb.bq ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43459
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !43459
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43459
  %i.il = icmp samesign ugt i8 %i.gx, 1
  %brmerge.i.i.i.i.i = select i1 %i.il, i1 true, i1 %i.et
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %.val1.i21.i38.i.i.i.i, i64 noundef 1) #52, !noalias !43474
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i, %bb.bw
  store i64 %i.gy, ptr %i.eq, align 8, !alias.scope !43457, !noalias !43442
  br label %.backedge.i44.i.i.i.i

.backedge.i44.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i
  %storemerge.i45.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ] ; 2 uses
  %i.im = phi i64 [ %i.gw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i ], [ %i.fd, %bb.by ], [ %i.fd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ]
  %i.in = phi i8 [ %i.fz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i56.i.i.i.i ], [ %i.fe, %bb.by ], [ %i.fe, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ]
  store i8 %storemerge.i45.i.i.i.i, ptr %i.er, align 1, !alias.scope !43457, !noalias !43442
  br label %bb.ar

bb.bx:                                            ; preds = %bb.bv
  %i.io = extractvalue { i64, ptr } %i.ii, 1      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i41.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !43475)
  %brmerge128.i.i.i.i.i = select i1 %i.fg, i1 true, i1 %i.et
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i44.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i: ; preds = %bb.by
  %.val.i23.i43.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !43476, !noalias !43442, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i43.i.i.i.i, i64 noundef %.val1.i21.i38.i.i.i.i, i64 noundef 1) #52, !noalias !43477
  br label %.backedge.i44.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %.loopexit37.i53.i.i.i.i
  %.sroa.6.1.i39.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i54.i.i.i.i, %.loopexit37.i53.i.i.i.i ], [ %i.io, %bb.bx ]
  %i.ip = ptrtoint ptr %.sroa.6.1.i39.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.ar
  br i1 %i.eo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = load i64, ptr %i.eq, align 8, !alias.scope !43457, !noalias !43442, !noundef !177
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43459
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748) #62, !noalias !43478
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit75.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit75.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.ip, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.en, %.loopexit75.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.iq, %bb.ca ], [ undef, %.loopexit75.i.i.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !43479)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.it = load i8, ptr %i.is, align 1, !range !231, !alias.scope !43479, !noalias !43431, !noundef !177
  %i.iu = icmp samesign ult i8 %i.it, 2
  br i1 %i.iu, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.iv, align 8, !alias.scope !43480, !noalias !43431, !noundef !177 ; 2 uses
  %i.iw = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.iw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !43479, !noalias !43431, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !43481
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !43482)
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.iz = load i8, ptr %i.iy, align 1, !range !231, !alias.scope !43482, !noalias !43431, !noundef !177
  %i.ja = icmp samesign ult i8 %i.iz, 2
  br i1 %i.ja, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jb, align 8, !alias.scope !43483, !noalias !43431, !noundef !177 ; 2 uses
  %i.jc = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.jc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.ix, align 8, !alias.scope !43482, !noalias !43431, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !43484
end_hunk_0
begin_hunk_1_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtB6_3tun3tcp13TcpConnectionNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !43594
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !43594
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !43594
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !43594
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !43594
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !43594
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !43594
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !231, !noalias !43596
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !43596
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !43596
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge301, %.thread.i
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %i.an, %._crit_edge301 ]
  %i.aw = phi ptr [ %i.as, %.thread.i ], [ %.pre305, %._crit_edge301 ] ; 2 uses
  %i.ax = phi ptr [ %i.aq, %.thread.i ], [ %.pre303, %._crit_edge301 ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge301 ]
  %i.az = phi ptr [ %i.at, %.thread.i ], [ %i.au, %._crit_edge301 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !43596
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !43596
  store ptr %i.bb, ptr %i.az, align 8, !noalias !43596
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !43596
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !43596
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !43596
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !43597, !noalias !43596
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !43597, !noalias !43596
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !43597, !noalias !43596
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43598)
  call void @llvm.experimental.noalias.scope.decl(metadata !43599)
  call void @llvm.experimental.noalias.scope.decl(metadata !43600)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !43600, !noalias !43601
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !43600, !noalias !43601 ; 11 uses
  %i.bm = icmp eq i64 %.val1.i21.i.i.i.i.i, 0     ; 2 uses
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 68 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 69 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %.promoted117.i.i.i.i.i = load i8, ptr %i.bu, align 8, !alias.scope !43600, !noalias !43601
  %.promoted118.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !43600, !noalias !43601
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i.i.i.i, %bb.k
  %i.ca = phi i64 [ %i.fj, %.backedge.i.i.i.i.i ], [ %.promoted118.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.cb = phi i8 [ %i.fk, %.backedge.i.i.i.i.i ], [ %.promoted117.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.cc = phi i8 [ %storemerge.i.i.i.i.i, %.backedge.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.cd = icmp samesign ugt i8 %i.cc, 1           ; 2 uses
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = add nsw i64 %i.ce, -1
  %i.cg = select i1 %i.cd, i64 %i.cf, i64 0
  switch i64 %i.cg, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.ap
    i64 2, label %bb.at
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !43602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43603
  %i.ch = load i8, ptr %i.bo, align 8, !range !198, !noalias !43603, !noundef !177
  switch i8 %i.ch, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !305

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.aw, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43604
  store i8 0, ptr %i.bo, align 8, !noalias !43603
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ci = load i8, ptr %i.bp, align 4, !range !180, !noalias !43603, !noundef !177 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load i8, ptr %i.bq, align 1, !noalias !43603 ; 4 uses
  br i1 %i.cj, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43603
  store i24 0, ptr %i.k, align 4, !noalias !43603
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !43604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43603
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = add i8 %i.ck, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cl, %bb.r ], [ %i.ck, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 1, !noalias !43603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43603
  store i24 0, ptr %i.k, align 4, !noalias !43603
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !43604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43603
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.ci, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.ck, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.l, align 1, !noalias !43603
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.bs, align 1, !noalias !43603
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !43605, !noalias !43606
  %i.cm = load ptr, ptr %i.bj, align 8, !alias.scope !43605, !noalias !43606, !nonnull !177 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !43605, !noalias !43606
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
  %i.cn = phi i64 [ %i.dt, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ]
  %i.co = phi i8 [ %i.cw, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.cp = phi i8 [ %i.du, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i8 [ %i.cx, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %i.cs = phi i8 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %i.cu = icmp uge i64 %i.ct, %.val1.i21.i.i.i.i.i
  %i.cv = trunc nuw i8 %i.cs to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.aa, %bb.x, %bb.s
  %i.cw = phi i8 [ %i.dk, %bb.aa ], [ %i.co, %bb.x ], [ %i.co, %bb.s ] ; 2 uses
  %i.cx = phi i8 [ %i.dl, %bb.aa ], [ %i.cq, %bb.x ], [ %i.cq, %bb.s ] ; 2 uses
  %i.cy = phi i8 [ %i.dm, %bb.aa ], [ 0, %bb.x ], [ %i.cs, %bb.s ]
  %i.cz = phi i64 [ %i.dn, %bb.aa ], [ %i.ct, %bb.x ], [ %i.ct, %bb.s ] ; 8 uses
  %i.da = icmp ult i64 %i.cr, %i.cz
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t
  %.not.i41.i.i.i.i.i.i = icmp ugt i64 %i.cz, %.val1.i21.i.i.i.i.i
  br i1 %.not.i41.i.i.i.i.i.i, label %2, label %.lr.ph.split.i.i.i.i.i.i, !prof !206

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !43607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !43608
  store ptr %i.cm, ptr %i.j, align 8, !noalias !43608
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bv, align 8, !noalias !43608
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bx, align 8, !noalias !43608
  store i64 %i.ct, ptr %i.bw, align 8, !noalias !43608
  %i.db = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #52, !noalias !43609 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1               ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.db, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.de, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.dd, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i64, ptr %i.bv, align 8, !noalias !43608, !noundef !177 ; 2 uses
  %i.dg = load i64, ptr %i.bw, align 8, !noalias !43608, !noundef !177 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.dg, %i.df
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i.i, !prof !206

.thread.i.i.i.i.i.i:                              ; preds = %bb.v
  %i.dh = icmp eq i64 %i.ct, %i.dg
  %i.di = zext i1 %i.dh to i8                     ; 4 uses
  store i8 %i.di, ptr %i.bu, align 8, !alias.scope !43610, !noalias !43606
  store i64 %i.dg, ptr %i.bt, align 8, !alias.scope !43610, !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43608
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dg, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43609
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43608
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.dj = icmp eq i64 %i.cr, %i.ct
  br i1 %i.dj, label %bb.ab, label %bb.t

bb.y:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.l, align 1, !noalias !43603
  br label %.loopexit37.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y, %.thread.i.i.i.i.i.i
  %i.dk = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.co, %bb.y ]
  %i.dl = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.cq, %bb.y ]
  %i.dm = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ 0, %bb.y ]
  %i.dn = phi i64 [ %i.dg, %.thread.i.i.i.i.i.i ], [ %i.ct, %bb.y ]
  store i8 0, ptr %i.l, align 1, !noalias !43603
  br label %bb.t

bb.ab:                                            ; preds = %bb.x
  %i.do = trunc nuw i8 %i.cp to i1
  br i1 %i.do, label %bb.ac, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43604 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractvalue { i64, ptr } %i.dp, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ae, label %.loopexit37.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.l, align 1, !noalias !43603
  store i8 0, ptr %i.bk, align 1, !alias.scope !43605, !noalias !43606
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ao, %bb.t
  %i.dt = phi i64 [ %i.cn, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.du = phi i8 [ %i.cp, %bb.t ], [ 1, %bb.ao ]  ; 2 uses
  %i.dv = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.dw = trunc nuw i8 %i.cy to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !43605, !noalias !43606
  br i1 %i.dw, label %bb.aj, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ao
  %i.dx = phi i64 [ %i.fd, %bb.ao ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dy = phi i64 [ %i.fc, %bb.ao ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43611)
  %i.dz = sub nuw i64 %i.cz, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dy
  %i.eb = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz) #52, !noalias !43612 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0      ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 3 uses
  %i.ee = icmp eq i64 %i.ec, 2
  br i1 %i.ee, label %bb.af, label %bb.al

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cz, i64 noundef %.val1.i21.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43613
  unreachable

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ef = trunc nuw i8 %i.cx to i1
  %i.eg = icmp uge i64 %i.cz, %.val1.i21.i.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.eg, %i.ef
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !43614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43615
  store ptr %i.cm, ptr %i.i, align 8, !noalias !43615
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.eh, align 8, !noalias !43615
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.ej, align 8, !noalias !43615
  store i64 %i.cz, ptr %i.ei, align 8, !noalias !43615
  %i.ek = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !43616 ; 2 uses
  %i.el = extractvalue { i64, ptr } %i.ek, 0
  %i.em = trunc nuw i64 %i.el to i1               ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.ek, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.en, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.em, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i64, ptr %i.eh, align 8, !noalias !43615, !noundef !177 ; 2 uses
  %i.ep = load i64, ptr %i.ei, align 8, !noalias !43615, !noundef !177 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i.i.i.i.i.i, !prof !206

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ah
  %i.eq = icmp eq i64 %i.cz, %i.ep
  %i.er = zext i1 %i.eq to i8
  store i8 %i.er, ptr %i.bu, align 8, !alias.scope !43617, !noalias !43606
  store i64 %i.ep, ptr %i.bt, align 8, !alias.scope !43617, !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43615
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43616
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43615
  %i.es = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.et = select i1 %i.em, i1 true, i1 %i.es
  br i1 %i.et, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43604 ; 2 uses
  %i.ev = extractvalue { i64, ptr } %i.eu, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 2 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not40.i.i.i.i.i.i, label %bb.aq, label %.loopexit37.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ey = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ez = trunc nuw i64 %i.ec to i1
  br i1 %i.ez, label %.thread47.i.i.i.i.i.i, label %bb.am

.thread47.i.i.i.i.i.i:                            ; preds = %bb.al, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.en, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i ], [ %i.ed, %bb.al ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.l, align 1, !noalias !43603
  %i.fa = icmp eq ptr %i.ed, null
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43604
  br label %.loopexit37.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fc = add i64 %i.dy, %i.ey                    ; 3 uses
  store i64 %i.fc, ptr %i.by, align 8, !alias.scope !43605, !noalias !43606
  %i.fd = add i64 %i.dx, %i.ey                    ; 4 uses
  store i64 %i.fd, ptr %i.bz, align 8, !alias.scope !43605, !noalias !43606
  store i8 1, ptr %i.bk, align 1, !alias.scope !43605, !noalias !43606
  %i.fe = icmp ult i64 %i.fc, %i.cz
  br i1 %i.fe, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %bb.aj, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ac, %bb.ab
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43603
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %bb.l
  %i.ff = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43618 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, label %bb.ar

.loopexit37.i.i.i.i.i:                            ; preds = %bb.ak, %bb.an, %.thread47.i.i.i.i.i.i, %bb.ad, %bb.z
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.de, %bb.z ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.ds, %bb.ad ], [ %i.fb, %bb.an ], [ %i.ex, %bb.ak ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43603
  br label %.loopexit83.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  store i8 0, ptr %i.l, align 1, !noalias !43603
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43603
  %i.fi = icmp samesign ugt i8 %i.du, 1
  %brmerge.i.i.i.i.i = select i1 %i.fi, i1 true, i1 %i.bm
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !43619
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.aq
  store i64 %i.dv, ptr %i.bj, align 8, !alias.scope !43600, !noalias !43606
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ 3, %bb.as ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  %i.fj = phi i64 [ %i.dt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ %i.ca, %bb.as ], [ %i.ca, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  %i.fk = phi i8 [ %i.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ %i.cb, %bb.as ], [ %i.cb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.bk, align 1, !alias.scope !43600, !noalias !43606
  br label %bb.l

bb.ar:                                            ; preds = %bb.ap
  %i.fl = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %bb.as, label %.loopexit83.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !43620)
  %brmerge128.i.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.bm
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.as
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !43621, !noalias !43606, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !43622
  br label %.backedge.i.i.i.i.i

bb.at:                                            ; preds = %bb.l
  %i.fm = load i64, ptr %i.bj, align 8, !alias.scope !43600, !noalias !43606, !noundef !177
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

.loopexit83.i.i.i.i:                              ; preds = %bb.ar, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.fl, %bb.ar ]
  %i.fn = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.ap, %bb.at, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  %i.fo = phi i1 [ false, %bb.at ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ true, %bb.ap ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.fm, %bb.at ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ undef, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !43597, !noalias !43596, !nonnull !177, !align !185, !noundef !177 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43623)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 41 ; 4 uses
  %.promoted.i38.i.i.i.i = load i8, ptr %i.fr, align 1, !alias.scope !43623, !noalias !43606
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.val1.i21.i39.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !43623, !noalias !43606 ; 11 uses
  %i.ft = icmp eq i64 %.val1.i21.i39.i.i.i.i, 0   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 40 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 2 uses
  %.promoted105.i.i.i.i.i = load i8, ptr %i.fx, align 8, !alias.scope !43623, !noalias !43606
  %.promoted106.i.i.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !43623, !noalias !43606
  br label %bb.au

bb.au:                                            ; preds = %.backedge.i45.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  %i.gd = phi i64 [ %i.je, %.backedge.i45.i.i.i.i ], [ %.promoted106.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 4 uses
  %i.ge = phi i8 [ %i.jf, %.backedge.i45.i.i.i.i ], [ %.promoted105.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 5 uses
  %i.gf = phi i8 [ %storemerge.i46.i.i.i.i, %.backedge.i45.i.i.i.i ], [ %.promoted.i38.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 3 uses
  %i.gg = icmp samesign ugt i8 %i.gf, 1           ; 2 uses
  %i.gh = zext nneg i8 %i.gf to i64
  %i.gi = add nsw i64 %i.gh, -1
  %i.gj = select i1 %i.gg, i64 %i.gi, i64 0
  switch i64 %i.gj, label %bb.av [
    i64 0, label %bb.aw
    i64 1, label %bb.bu
    i64 2, label %bb.bz
  ]

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !43624)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43625
  %i.gk = load i8, ptr %i.bo, align 8, !range !198, !noalias !43625, !noundef !177
  switch i8 %i.gk, label %default.unreachable [
    i8 0, label %bb.ay
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i
    i8 1, label %bb.ax
  ], !prof !225

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43626
  store i8 0, ptr %i.bo, align 8, !noalias !43625
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = load i8, ptr %i.bp, align 4, !range !180, !noalias !43625, !noundef !177 ; 2 uses
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = load i8, ptr %i.bq, align 1, !noalias !43625 ; 4 uses
  br i1 %i.gm, label %bb.az, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i.i.i69.i.i.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i.i69.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.ba

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.az
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43625
  store i24 0, ptr %i.g, align 4, !noalias !43625
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !43626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43625
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.go = add i8 %i.gn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i: ; preds = %bb.ba, %bb.ay
  %.sroa.33.0.i.i.i.i.i48.i.i.i.i = phi i8 [ %i.go, %bb.ba ], [ %i.gn, %bb.ay ]
  store i8 %.sroa.33.0.i.i.i.i.i48.i.i.i.i, ptr %i.bq, align 1, !noalias !43625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43625
  store i24 0, ptr %i.g, align 4, !noalias !43625
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !43626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43625
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i, %bb.aw
  %.sroa.03.06.i41.off8.i.i.i.i.i.i = phi i8 [ %i.gl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.03.06.i41.off16.i.i.i.i.i.i = phi i8 [ %i.gn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  store i8 %.sroa.03.06.i41.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !43625
  store i8 %.sroa.03.06.i41.off16.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !43625
  %.promoted123.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !43627, !noalias !43606
  %i.gp = load ptr, ptr %i.fq, align 8, !alias.scope !43627, !noalias !43606, !nonnull !177 ; 4 uses
  %.promoted125.i.i50.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !43627, !noalias !43606
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i56.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i
  %i.gq = phi i64 [ %i.hs, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ]
  %i.gr = phi i8 [ %i.gz, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %i.gs = phi i8 [ %i.ht, %._crit_edge.i.i56.i.i.i.i ], [ %i.gf, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gt = phi i8 [ %i.ha, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %.promoted100127.i.i.i.i.i.i = phi i64 [ %i.hu, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gu = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted125.i.i50.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 4 uses
  %i.gv = phi i8 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gw = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted123.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 7 uses
  %i.gx = icmp uge i64 %i.gw, %.val1.i21.i39.i.i.i.i
  %i.gy = trunc nuw i8 %i.gv to i1
  %or.cond.i.i51.i.i.i.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.i.i51.i.i.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bj, %bb.bg, %bb.bb
  %i.gz = phi i8 [ %i.hn, %bb.bj ], [ %i.gr, %bb.bg ], [ %i.gr, %bb.bb ] ; 2 uses
  %i.ha = phi i8 [ %i.ho, %bb.bj ], [ %i.gt, %bb.bg ], [ %i.gt, %bb.bb ] ; 2 uses
  %i.hb = phi i8 [ %i.hp, %bb.bj ], [ 0, %bb.bg ], [ %i.gv, %bb.bb ]
  %i.hc = phi i64 [ %i.hq, %bb.bj ], [ %i.gw, %bb.bg ], [ %i.gw, %bb.bb ] ; 8 uses
  %i.hd = icmp ult i64 %i.gu, %i.hc
  br i1 %i.hd, label %.lr.ph.i.i60.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

.lr.ph.i.i60.i.i.i.i:                             ; preds = %bb.bc
  %.not.i39.i.i.i.i.i.i = icmp ugt i64 %i.hc, %.val1.i21.i39.i.i.i.i
  br i1 %.not.i39.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i61.i.i.i.i, !prof !206

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !43628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43629
  store ptr %i.gp, ptr %i.f, align 8, !noalias !43629
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.fy, align 8, !noalias !43629
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ga, align 8, !noalias !43629
  store i64 %i.gw, ptr %i.fz, align 8, !noalias !43629
  %i.he = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !43630 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0
  %i.hg = trunc nuw i64 %i.hf to i1               ; 2 uses
  %i.hh = extractvalue { i64, ptr } %i.he, 1      ; 2 uses
  %.not6.i.i.i52.i.i.i.i = icmp ne ptr %i.hh, null ; 2 uses
  %or.cond.not.i.i.i53.i.i.i.i = select i1 %i.hg, i1 true, i1 %.not6.i.i.i52.i.i.i.i
  br i1 %or.cond.not.i.i.i53.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i64, ptr %i.fy, align 8, !noalias !43629, !noundef !177 ; 2 uses
  %i.hj = load i64, ptr %i.fz, align 8, !noalias !43629, !noundef !177 ; 5 uses
  %.not7.i.i.i54.i.i.i.i = icmp ugt i64 %i.hj, %i.hi
  br i1 %.not7.i.i.i54.i.i.i.i, label %bb.bf, label %.thread.i.i55.i.i.i.i, !prof !206

.thread.i.i55.i.i.i.i:                            ; preds = %bb.be
  %i.hk = icmp eq i64 %i.gw, %i.hj
  %i.hl = zext i1 %i.hk to i8                     ; 4 uses
  store i8 %i.hl, ptr %i.fx, align 8, !alias.scope !43631, !noalias !43606
  store i64 %i.hj, ptr %i.fw, align 8, !alias.scope !43631, !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43629
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hj, i64 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43630
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43629
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.hm = icmp eq i64 %i.gu, %i.gw
  br i1 %i.hm, label %bb.bk, label %bb.bc

bb.bh:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i52.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %i.h, align 1, !noalias !43625
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bh, %.thread.i.i55.i.i.i.i
  %i.hn = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gr, %bb.bh ]
  %i.ho = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gt, %bb.bh ]
  %i.hp = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ 0, %bb.bh ]
  %i.hq = phi i64 [ %i.hj, %.thread.i.i55.i.i.i.i ], [ %i.gw, %bb.bh ]
  store i8 0, ptr %i.h, align 1, !noalias !43625
  br label %bb.bc

bb.bk:                                            ; preds = %bb.bg
  %i.hr = trunc nuw i8 %i.gs to i1
  br i1 %i.hr, label %bb.bl, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i8 0, ptr %i.h, align 1, !noalias !43625
  store i8 0, ptr %i.fr, align 1, !alias.scope !43627, !noalias !43606
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i56.i.i.i.i:                        ; preds = %bb.bt, %bb.bc
  %i.hs = phi i64 [ %i.gq, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.ht = phi i8 [ %i.gs, %bb.bc ], [ 1, %bb.bt ] ; 2 uses
  %i.hu = phi i64 [ %.promoted100127.i.i.i.i.i.i, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.hv = trunc nuw i8 %i.hb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false), !alias.scope !43627, !noalias !43606
  br i1 %i.hv, label %bb.bw, label %bb.bb

.lr.ph.split.i.i61.i.i.i.i:                       ; preds = %.lr.ph.i.i60.i.i.i.i, %bb.bt
  %i.hw = phi i64 [ %i.iy, %bb.bt ], [ %.promoted100127.i.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ]
  %i.hx = phi i64 [ %i.ix, %bb.bt ], [ %i.gu, %.lr.ph.i.i60.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43632)
  %i.hy = sub nuw i64 %i.hc, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hx
  %i.ia = call { i64, ptr } @_RNvXs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.hy) #52, !noalias !43633 ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { i64, ptr } %i.ia, 1      ; 3 uses
  %i.id = icmp eq i64 %i.ib, 2
  br i1 %i.id, label %bb.bm, label %bb.bq

3:                                                ; preds = %.lr.ph.i.i60.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.hc, i64 noundef %.val1.i21.i39.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43634
  unreachable

bb.bm:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.ie = trunc nuw i8 %i.ha to i1
  %i.if = icmp uge i64 %i.hc, %.val1.i21.i39.i.i.i.i
  %or.cond18.not.i.i.i63.i.i.i.i = or i1 %i.if, %i.ie
  br i1 %or.cond18.not.i.i.i63.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !43635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43636
  store ptr %i.gp, ptr %i.e, align 8, !noalias !43636
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ig, align 8, !noalias !43636
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ii, align 8, !noalias !43636
  store i64 %i.hc, ptr %i.ih, align 8, !noalias !43636
  %i.ij = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !43637 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %i.il = trunc nuw i64 %i.ik to i1               ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.ij, 1      ; 2 uses
  %.not6.i.i.i.i64.i.i.i.i = icmp ne ptr %i.im, null ; 2 uses
  %or.cond.not.i.i.i.i65.i.i.i.i = select i1 %i.il, i1 true, i1 %.not6.i.i.i.i64.i.i.i.i
  br i1 %or.cond.not.i.i.i.i65.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = load i64, ptr %i.ig, align 8, !noalias !43636, !noundef !177 ; 2 uses
  %i.io = load i64, ptr %i.ih, align 8, !noalias !43636, !noundef !177 ; 4 uses
  %.not7.i.i.i.i66.i.i.i.i = icmp ugt i64 %i.io, %i.in
  br i1 %.not7.i.i.i.i66.i.i.i.i, label %bb.bp, label %.thread.i.i.i67.i.i.i.i, !prof !206

.thread.i.i.i67.i.i.i.i:                          ; preds = %bb.bo
  %i.ip = icmp eq i64 %i.hc, %i.io
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.fx, align 8, !alias.scope !43638, !noalias !43606
  store i64 %i.io, ptr %i.fw, align 8, !alias.scope !43638, !noalias !43606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43636
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.io, i64 noundef %i.in, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43637
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43636
  %i.ir = xor i1 %.not6.i.i.i.i64.i.i.i.i, true
  %i.is = select i1 %i.il, i1 true, i1 %i.ir
  br i1 %i.is, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread45.i.i.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.it = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.iu = trunc nuw i64 %i.ib to i1
  br i1 %i.iu, label %.thread45.i.i.i.i.i.i, label %bb.br

.thread45.i.i.i.i.i.i:                            ; preds = %bb.bq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i48.i.i.i.i.i.i = phi ptr [ %i.im, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i ], [ %i.ic, %bb.bq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i48.i.i.i.i.i.i) ]
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !43625
  %i.iv = icmp eq ptr %i.ic, null
  br i1 %i.iv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43639
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ix = add i64 %i.hx, %i.it                    ; 3 uses
  store i64 %i.ix, ptr %i.gb, align 8, !alias.scope !43627, !noalias !43606
  %i.iy = add i64 %i.hw, %i.it                    ; 4 uses
  store i64 %i.iy, ptr %i.gc, align 8, !alias.scope !43627, !noalias !43606
  store i8 1, ptr %i.fr, align 1, !alias.scope !43627, !noalias !43606
  %i.iz = icmp ult i64 %i.ix, %i.hc
  br i1 %i.iz, label %.lr.ph.split.i.i61.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, %.thread.i.i.i67.i.i.i.i, %bb.bm, %bb.bl, %bb.bk
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43639
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.bu:                                            ; preds = %bb.au
  %i.ja = call { i64, ptr } @_RNvXs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43640 ; 2 uses
  %i.jb = extractvalue { i64, ptr } %i.ja, 0
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.loopexit, label %bb.bx

bb.bv:                                            ; preds = %bb.bs, %.thread45.i.i.i.i.i.i, %bb.bi
  %.sroa.12.2.i.ph.i62.i.i.i.i = phi ptr [ %i.hh, %bb.bi ], [ %i.iw, %bb.bs ], [ %.sroa.5.1.i48.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43625
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i56.i.i.i.i
  store i8 0, ptr %i.h, align 1, !noalias !43625
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43625
  %i.jd = icmp samesign ugt i8 %i.ht, 1
  %brmerge.i57.i.i.i.i = select i1 %i.jd, i1 true, i1 %i.ft
  br i1 %brmerge.i57.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !43641
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i, %bb.bw
  store i64 %i.hu, ptr %i.fq, align 8, !alias.scope !43623, !noalias !43606
  br label %.backedge.i45.i.i.i.i

.backedge.i45.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i
  %storemerge.i46.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ] ; 2 uses
  %i.je = phi i64 [ %i.hs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ %i.gd, %bb.by ], [ %i.gd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  %i.jf = phi i8 [ %i.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ %i.ge, %bb.by ], [ %i.ge, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  store i8 %storemerge.i46.i.i.i.i, ptr %i.fr, align 1, !alias.scope !43623, !noalias !43606
  br label %bb.au

bb.bx:                                            ; preds = %bb.bu
  %i.jg = extractvalue { i64, ptr } %i.ja, 1      ; 2 uses
  %.not.i42.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i42.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !43642)
  %brmerge116.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %i.ft
  br i1 %brmerge116.i.i.i.i.i, label %.backedge.i45.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i: ; preds = %bb.by
  %.val.i23.i44.i.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !43643, !noalias !43606, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i44.i.i.i.i, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !43644
  br label %.backedge.i45.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %bb.bv
  %.sroa.6.1.i40.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i62.i.i.i.i, %bb.bv ], [ %i.jg, %bb.bx ]
  %i.jh = ptrtoint ptr %.sroa.6.1.i40.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.au
  br i1 %i.fo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ji = load i64, ptr %i.fq, align 8, !alias.scope !43623, !noalias !43606, !noundef !177
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43625
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748) #62, !noalias !43645
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit83.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit83.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.jh, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.fn, %.loopexit83.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.ji, %bb.ca ], [ undef, %.loopexit83.i.i.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !43646)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.jl = load i8, ptr %i.jk, align 1, !range !231, !alias.scope !43646, !noalias !43596, !noundef !177
  %i.jm = icmp samesign ult i8 %i.jl, 2
  br i1 %i.jm, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.jn, align 8, !alias.scope !43647, !noalias !43596, !noundef !177 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !43646, !noalias !43596, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !43648
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !43649)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.jr = load i8, ptr %i.jq, align 1, !range !231, !alias.scope !43649, !noalias !43596, !noundef !177
  %i.js = icmp samesign ult i8 %i.jr, 2
  br i1 %i.js, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jt, align 8, !alias.scope !43650, !noalias !43596, !noundef !177 ; 2 uses
  %i.ju = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.ju, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !43649, !noalias !43596, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !43651
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #62, !noalias !43595
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #62
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit, %.loopexit
end_hunk_1
begin_hunk_2_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !43761
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !43761
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !43761
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !43761
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !43761
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !43761
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !43761
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !231, !noalias !43763
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !43763
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !43763
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge301, %.thread.i
  %i.av = phi ptr [ %i.ao, %.thread.i ], [ %i.an, %._crit_edge301 ]
  %i.aw = phi ptr [ %i.as, %.thread.i ], [ %.pre305, %._crit_edge301 ] ; 2 uses
  %i.ax = phi ptr [ %i.aq, %.thread.i ], [ %.pre303, %._crit_edge301 ] ; 2 uses
  %i.ay = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge301 ]
  %i.az = phi ptr [ %i.at, %.thread.i ], [ %i.au, %._crit_edge301 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !43763
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !43763
  store ptr %i.bb, ptr %i.az, align 8, !noalias !43763
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !43763
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !43763
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !43763
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !43764, !noalias !43763
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !43764, !noalias !43763
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !43764, !noalias !43763
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43765)
  call void @llvm.experimental.noalias.scope.decl(metadata !43766)
  call void @llvm.experimental.noalias.scope.decl(metadata !43767)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !43767, !noalias !43768
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !43767, !noalias !43768 ; 11 uses
  %i.bm = icmp eq i64 %.val1.i21.i.i.i.i.i, 0     ; 2 uses
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 68 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 69 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %.promoted117.i.i.i.i.i = load i8, ptr %i.bu, align 8, !alias.scope !43767, !noalias !43768
  %.promoted118.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !43767, !noalias !43768
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i.i.i.i, %bb.k
  %i.ca = phi i64 [ %i.fj, %.backedge.i.i.i.i.i ], [ %.promoted118.i.i.i.i.i, %bb.k ] ; 4 uses
  %i.cb = phi i8 [ %i.fk, %.backedge.i.i.i.i.i ], [ %.promoted117.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.cc = phi i8 [ %storemerge.i.i.i.i.i, %.backedge.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.cd = icmp samesign ugt i8 %i.cc, 1           ; 2 uses
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = add nsw i64 %i.ce, -1
  %i.cg = select i1 %i.cd, i64 %i.cf, i64 0
  switch i64 %i.cg, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.ap
    i64 2, label %bb.at
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !43769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43770
  %i.ch = load i8, ptr %i.bo, align 8, !range !198, !noalias !43770, !noundef !177
  switch i8 %i.ch, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !305

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.aw, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43771
  store i8 0, ptr %i.bo, align 8, !noalias !43770
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ci = load i8, ptr %i.bp, align 4, !range !180, !noalias !43770, !noundef !177 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load i8, ptr %i.bq, align 1, !noalias !43770 ; 4 uses
  br i1 %i.cj, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43770
  store i24 0, ptr %i.k, align 4, !noalias !43770
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !43771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43770
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = add i8 %i.ck, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cl, %bb.r ], [ %i.ck, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 1, !noalias !43770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !43770
  store i24 0, ptr %i.k, align 4, !noalias !43770
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !43771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43770
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.ci, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.ck, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.l, align 1, !noalias !43770
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.bs, align 1, !noalias !43770
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !43772, !noalias !43773
  %i.cm = load ptr, ptr %i.bj, align 8, !alias.scope !43772, !noalias !43773, !nonnull !177 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !43772, !noalias !43773
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
  %i.cn = phi i64 [ %i.dt, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ]
  %i.co = phi i8 [ %i.cw, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.cp = phi i8 [ %i.du, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i8 [ %i.cx, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %i.cs = phi i8 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i ] ; 7 uses
  %i.cu = icmp uge i64 %i.ct, %.val1.i21.i.i.i.i.i
  %i.cv = trunc nuw i8 %i.cs to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.aa, %bb.x, %bb.s
  %i.cw = phi i8 [ %i.dk, %bb.aa ], [ %i.co, %bb.x ], [ %i.co, %bb.s ] ; 2 uses
  %i.cx = phi i8 [ %i.dl, %bb.aa ], [ %i.cq, %bb.x ], [ %i.cq, %bb.s ] ; 2 uses
  %i.cy = phi i8 [ %i.dm, %bb.aa ], [ 0, %bb.x ], [ %i.cs, %bb.s ]
  %i.cz = phi i64 [ %i.dn, %bb.aa ], [ %i.ct, %bb.x ], [ %i.ct, %bb.s ] ; 8 uses
  %i.da = icmp ult i64 %i.cr, %i.cz
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t
  %.not.i41.i.i.i.i.i.i = icmp ugt i64 %i.cz, %.val1.i21.i.i.i.i.i
  br i1 %.not.i41.i.i.i.i.i.i, label %2, label %.lr.ph.split.i.i.i.i.i.i, !prof !206

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !43774)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !43775
  store ptr %i.cm, ptr %i.j, align 8, !noalias !43775
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bv, align 8, !noalias !43775
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bx, align 8, !noalias !43775
  store i64 %i.ct, ptr %i.bw, align 8, !noalias !43775
  %i.db = call { i64, ptr } @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #52, !noalias !43776 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1               ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.db, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.de, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.dd, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i64, ptr %i.bv, align 8, !noalias !43775, !noundef !177 ; 2 uses
  %i.dg = load i64, ptr %i.bw, align 8, !noalias !43775, !noundef !177 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.dg, %i.df
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i.i, !prof !206

.thread.i.i.i.i.i.i:                              ; preds = %bb.v
  %i.dh = icmp eq i64 %i.ct, %i.dg
  %i.di = zext i1 %i.dh to i8                     ; 4 uses
  store i8 %i.di, ptr %i.bu, align 8, !alias.scope !43777, !noalias !43773
  store i64 %i.dg, ptr %i.bt, align 8, !alias.scope !43777, !noalias !43773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43775
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dg, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43776
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !43775
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.dj = icmp eq i64 %i.cr, %i.ct
  br i1 %i.dj, label %bb.ab, label %bb.t

bb.y:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.l, align 1, !noalias !43770
  br label %.loopexit37.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y, %.thread.i.i.i.i.i.i
  %i.dk = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.co, %bb.y ]
  %i.dl = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.cq, %bb.y ]
  %i.dm = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ 0, %bb.y ]
  %i.dn = phi i64 [ %i.dg, %.thread.i.i.i.i.i.i ], [ %i.ct, %bb.y ]
  store i8 0, ptr %i.l, align 1, !noalias !43770
  br label %bb.t

bb.ab:                                            ; preds = %bb.x
  %i.do = trunc nuw i8 %i.cp to i1
  br i1 %i.do, label %bb.ac, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43771 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractvalue { i64, ptr } %i.dp, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ae, label %.loopexit37.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.l, align 1, !noalias !43770
  store i8 0, ptr %i.bk, align 1, !alias.scope !43772, !noalias !43773
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ao, %bb.t
  %i.dt = phi i64 [ %i.cn, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.du = phi i8 [ %i.cp, %bb.t ], [ 1, %bb.ao ]  ; 2 uses
  %i.dv = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.dw = trunc nuw i8 %i.cy to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !43772, !noalias !43773
  br i1 %i.dw, label %bb.aj, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ao
  %i.dx = phi i64 [ %i.fd, %bb.ao ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dy = phi i64 [ %i.fc, %bb.ao ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43778)
  %i.dz = sub nuw i64 %i.cz, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dy
  %i.eb = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz) #52, !noalias !43779 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0      ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 3 uses
  %i.ee = icmp eq i64 %i.ec, 2
  br i1 %i.ee, label %bb.af, label %bb.al

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cz, i64 noundef %.val1.i21.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43780
  unreachable

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ef = trunc nuw i8 %i.cx to i1
  %i.eg = icmp uge i64 %i.cz, %.val1.i21.i.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.eg, %i.ef
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !43781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !43782
  store ptr %i.cm, ptr %i.i, align 8, !noalias !43782
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.eh, align 8, !noalias !43782
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.ej, align 8, !noalias !43782
  store i64 %i.cz, ptr %i.ei, align 8, !noalias !43782
  %i.ek = call { i64, ptr } @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !43783 ; 2 uses
  %i.el = extractvalue { i64, ptr } %i.ek, 0
  %i.em = trunc nuw i64 %i.el to i1               ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.ek, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.en, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.em, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i64, ptr %i.eh, align 8, !noalias !43782, !noundef !177 ; 2 uses
  %i.ep = load i64, ptr %i.ei, align 8, !noalias !43782, !noundef !177 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i.i.i.i.i.i, !prof !206

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ah
  %i.eq = icmp eq i64 %i.cz, %i.ep
  %i.er = zext i1 %i.eq to i8
  store i8 %i.er, ptr %i.bu, align 8, !alias.scope !43784, !noalias !43773
  store i64 %i.ep, ptr %i.bt, align 8, !alias.scope !43784, !noalias !43773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43782
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43783
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !43782
  %i.es = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.et = select i1 %i.em, i1 true, i1 %i.es
  br i1 %i.et, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43771 ; 2 uses
  %i.ev = extractvalue { i64, ptr } %i.eu, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 2 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not40.i.i.i.i.i.i, label %bb.aq, label %.loopexit37.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ey = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ez = trunc nuw i64 %i.ec to i1
  br i1 %i.ez, label %.thread47.i.i.i.i.i.i, label %bb.am

.thread47.i.i.i.i.i.i:                            ; preds = %bb.al, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.en, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i ], [ %i.ed, %bb.al ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.l, align 1, !noalias !43770
  %i.fa = icmp eq ptr %i.ed, null
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43771
  br label %.loopexit37.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fc = add i64 %i.dy, %i.ey                    ; 3 uses
  store i64 %i.fc, ptr %i.by, align 8, !alias.scope !43772, !noalias !43773
  %i.fd = add i64 %i.dx, %i.ey                    ; 4 uses
  store i64 %i.fd, ptr %i.bz, align 8, !alias.scope !43772, !noalias !43773
  store i8 1, ptr %i.bk, align 1, !alias.scope !43772, !noalias !43773
  %i.fe = icmp ult i64 %i.fc, %i.cz
  br i1 %i.fe, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %bb.aj, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ac, %bb.ab
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43770
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %bb.l
  %i.ff = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43785 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, label %bb.ar

.loopexit37.i.i.i.i.i:                            ; preds = %bb.ak, %bb.an, %.thread47.i.i.i.i.i.i, %bb.ad, %bb.z
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.de, %bb.z ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.ds, %bb.ad ], [ %i.fb, %bb.an ], [ %i.ex, %bb.ak ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43770
  br label %.loopexit83.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  store i8 0, ptr %i.l, align 1, !noalias !43770
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !43771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !43770
  %i.fi = icmp samesign ugt i8 %i.du, 1
  %brmerge.i.i.i.i.i = select i1 %i.fi, i1 true, i1 %i.bm
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !43786
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.aq
  store i64 %i.dv, ptr %i.bj, align 8, !alias.scope !43767, !noalias !43773
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ 3, %bb.as ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  %i.fj = phi i64 [ %i.dt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ %i.ca, %bb.as ], [ %i.ca, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  %i.fk = phi i8 [ %i.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ %i.cb, %bb.as ], [ %i.cb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.bk, align 1, !alias.scope !43767, !noalias !43773
  br label %bb.l

bb.ar:                                            ; preds = %bb.ap
  %i.fl = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %bb.as, label %.loopexit83.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !43787)
  %brmerge128.i.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.bm
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.as
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !43788, !noalias !43773, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !43789
  br label %.backedge.i.i.i.i.i

bb.at:                                            ; preds = %bb.l
  %i.fm = load i64, ptr %i.bj, align 8, !alias.scope !43767, !noalias !43773, !noundef !177
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

.loopexit83.i.i.i.i:                              ; preds = %bb.ar, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.fl, %bb.ar ]
  %i.fn = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %bb.ap, %bb.at, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  %i.fo = phi i1 [ false, %bb.at ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ true, %bb.ap ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.fm, %bb.at ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ undef, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !43764, !noalias !43763, !nonnull !177, !align !185, !noundef !177 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43790)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 41 ; 4 uses
  %.promoted.i38.i.i.i.i = load i8, ptr %i.fr, align 1, !alias.scope !43790, !noalias !43773
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.val1.i21.i39.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !43790, !noalias !43773 ; 11 uses
  %i.ft = icmp eq i64 %.val1.i21.i39.i.i.i.i, 0   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 40 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 2 uses
  %.promoted105.i.i.i.i.i = load i8, ptr %i.fx, align 8, !alias.scope !43790, !noalias !43773
  %.promoted106.i.i.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !43790, !noalias !43773
  br label %bb.au

bb.au:                                            ; preds = %.backedge.i45.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  %i.gd = phi i64 [ %i.je, %.backedge.i45.i.i.i.i ], [ %.promoted106.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 4 uses
  %i.ge = phi i8 [ %i.jf, %.backedge.i45.i.i.i.i ], [ %.promoted105.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 5 uses
  %i.gf = phi i8 [ %storemerge.i46.i.i.i.i, %.backedge.i45.i.i.i.i ], [ %.promoted.i38.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ] ; 3 uses
  %i.gg = icmp samesign ugt i8 %i.gf, 1           ; 2 uses
  %i.gh = zext nneg i8 %i.gf to i64
  %i.gi = add nsw i64 %i.gh, -1
  %i.gj = select i1 %i.gg, i64 %i.gi, i64 0
  switch i64 %i.gj, label %bb.av [
    i64 0, label %bb.aw
    i64 1, label %bb.bu
    i64 2, label %bb.bz
  ]

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !43791)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43792
  %i.gk = load i8, ptr %i.bo, align 8, !range !198, !noalias !43792, !noundef !177
  switch i8 %i.gk, label %default.unreachable [
    i8 0, label %bb.ay
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i
    i8 1, label %bb.ax
  ], !prof !225

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECsgZAIVb0XKpv_9ssservice) #52, !noalias !43793
  store i8 0, ptr %i.bo, align 8, !noalias !43792
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = load i8, ptr %i.bp, align 4, !range !180, !noalias !43792, !noundef !177 ; 2 uses
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = load i8, ptr %i.bq, align 1, !noalias !43792 ; 4 uses
  br i1 %i.gm, label %bb.az, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i.i.i69.i.i.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i.i69.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %bb.ba

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.az
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43792
  store i24 0, ptr %i.g, align 4, !noalias !43792
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !43793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43792
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.go = add i8 %i.gn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i: ; preds = %bb.ba, %bb.ay
  %.sroa.33.0.i.i.i.i.i48.i.i.i.i = phi i8 [ %i.go, %bb.ba ], [ %i.gn, %bb.ay ]
  store i8 %.sroa.33.0.i.i.i.i.i48.i.i.i.i, ptr %i.bq, align 1, !noalias !43792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !43792
  store i24 0, ptr %i.g, align 4, !noalias !43792
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !43793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !43792
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i, %bb.aw
  %.sroa.03.06.i41.off8.i.i.i.i.i.i = phi i8 [ %i.gl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.03.06.i41.off16.i.i.i.i.i.i = phi i8 [ %i.gn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  store i8 %.sroa.03.06.i41.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !43792
  store i8 %.sroa.03.06.i41.off16.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !43792
  %.promoted123.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !43794, !noalias !43773
  %i.gp = load ptr, ptr %i.fq, align 8, !alias.scope !43794, !noalias !43773, !nonnull !177 ; 4 uses
  %.promoted125.i.i50.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !43794, !noalias !43773
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i56.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i
  %i.gq = phi i64 [ %i.hs, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ]
  %i.gr = phi i8 [ %i.gz, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %i.gs = phi i8 [ %i.ht, %._crit_edge.i.i56.i.i.i.i ], [ %i.gf, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gt = phi i8 [ %i.ha, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %.promoted100127.i.i.i.i.i.i = phi i64 [ %i.hu, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gu = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted125.i.i50.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 4 uses
  %i.gv = phi i8 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gw = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted123.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCsgZAIVb0XKpv_9ssservice.exit.thread.i.i49.i.i.i.i ] ; 7 uses
  %i.gx = icmp uge i64 %i.gw, %.val1.i21.i39.i.i.i.i
  %i.gy = trunc nuw i8 %i.gv to i1
  %or.cond.i.i51.i.i.i.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.i.i51.i.i.i.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bj, %bb.bg, %bb.bb
  %i.gz = phi i8 [ %i.hn, %bb.bj ], [ %i.gr, %bb.bg ], [ %i.gr, %bb.bb ] ; 2 uses
  %i.ha = phi i8 [ %i.ho, %bb.bj ], [ %i.gt, %bb.bg ], [ %i.gt, %bb.bb ] ; 2 uses
  %i.hb = phi i8 [ %i.hp, %bb.bj ], [ 0, %bb.bg ], [ %i.gv, %bb.bb ]
  %i.hc = phi i64 [ %i.hq, %bb.bj ], [ %i.gw, %bb.bg ], [ %i.gw, %bb.bb ] ; 8 uses
  %i.hd = icmp ult i64 %i.gu, %i.hc
  br i1 %i.hd, label %.lr.ph.i.i60.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

.lr.ph.i.i60.i.i.i.i:                             ; preds = %bb.bc
  %.not.i39.i.i.i.i.i.i = icmp ugt i64 %i.hc, %.val1.i21.i39.i.i.i.i
  br i1 %.not.i39.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i61.i.i.i.i, !prof !206

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !43795)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !43796
  store ptr %i.gp, ptr %i.f, align 8, !noalias !43796
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.fy, align 8, !noalias !43796
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ga, align 8, !noalias !43796
  store i64 %i.gw, ptr %i.fz, align 8, !noalias !43796
  %i.he = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !43797 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0
  %i.hg = trunc nuw i64 %i.hf to i1               ; 2 uses
  %i.hh = extractvalue { i64, ptr } %i.he, 1      ; 2 uses
  %.not6.i.i.i52.i.i.i.i = icmp ne ptr %i.hh, null ; 2 uses
  %or.cond.not.i.i.i53.i.i.i.i = select i1 %i.hg, i1 true, i1 %.not6.i.i.i52.i.i.i.i
  br i1 %or.cond.not.i.i.i53.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i64, ptr %i.fy, align 8, !noalias !43796, !noundef !177 ; 2 uses
  %i.hj = load i64, ptr %i.fz, align 8, !noalias !43796, !noundef !177 ; 5 uses
  %.not7.i.i.i54.i.i.i.i = icmp ugt i64 %i.hj, %i.hi
  br i1 %.not7.i.i.i54.i.i.i.i, label %bb.bf, label %.thread.i.i55.i.i.i.i, !prof !206

.thread.i.i55.i.i.i.i:                            ; preds = %bb.be
  %i.hk = icmp eq i64 %i.gw, %i.hj
  %i.hl = zext i1 %i.hk to i8                     ; 4 uses
  store i8 %i.hl, ptr %i.fx, align 8, !alias.scope !43798, !noalias !43773
  store i64 %i.hj, ptr %i.fw, align 8, !alias.scope !43798, !noalias !43773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43796
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hj, i64 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43797
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43796
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.hm = icmp eq i64 %i.gu, %i.gw
  br i1 %i.hm, label %bb.bk, label %bb.bc

bb.bh:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i52.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %i.h, align 1, !noalias !43792
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bh, %.thread.i.i55.i.i.i.i
  %i.hn = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gr, %bb.bh ]
  %i.ho = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gt, %bb.bh ]
  %i.hp = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ 0, %bb.bh ]
  %i.hq = phi i64 [ %i.hj, %.thread.i.i55.i.i.i.i ], [ %i.gw, %bb.bh ]
  store i8 0, ptr %i.h, align 1, !noalias !43792
  br label %bb.bc

bb.bk:                                            ; preds = %bb.bg
  %i.hr = trunc nuw i8 %i.gs to i1
  br i1 %i.hr, label %bb.bl, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i8 0, ptr %i.h, align 1, !noalias !43792
  store i8 0, ptr %i.fr, align 1, !alias.scope !43794, !noalias !43773
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

._crit_edge.i.i56.i.i.i.i:                        ; preds = %bb.bt, %bb.bc
  %i.hs = phi i64 [ %i.gq, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.ht = phi i8 [ %i.gs, %bb.bc ], [ 1, %bb.bt ] ; 2 uses
  %i.hu = phi i64 [ %.promoted100127.i.i.i.i.i.i, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.hv = trunc nuw i8 %i.hb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false), !alias.scope !43794, !noalias !43773
  br i1 %i.hv, label %bb.bw, label %bb.bb

.lr.ph.split.i.i61.i.i.i.i:                       ; preds = %.lr.ph.i.i60.i.i.i.i, %bb.bt
  %i.hw = phi i64 [ %i.iy, %bb.bt ], [ %.promoted100127.i.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ]
  %i.hx = phi i64 [ %i.ix, %bb.bt ], [ %i.gu, %.lr.ph.i.i60.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43799)
  %i.hy = sub nuw i64 %i.hc, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hx
  %i.ia = call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.hy) #52, !noalias !43800 ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { i64, ptr } %i.ia, 1      ; 3 uses
  %i.id = icmp eq i64 %i.ib, 2
  br i1 %i.id, label %bb.bm, label %bb.bq

3:                                                ; preds = %.lr.ph.i.i60.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.hc, i64 noundef %.val1.i21.i39.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !43801
  unreachable

bb.bm:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.ie = trunc nuw i8 %i.ha to i1
  %i.if = icmp uge i64 %i.hc, %.val1.i21.i39.i.i.i.i
  %or.cond18.not.i.i.i63.i.i.i.i = or i1 %i.if, %i.ie
  br i1 %or.cond18.not.i.i.i63.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !43802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43803
  store ptr %i.gp, ptr %i.e, align 8, !noalias !43803
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ig, align 8, !noalias !43803
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ii, align 8, !noalias !43803
  store i64 %i.hc, ptr %i.ih, align 8, !noalias !43803
  %i.ij = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !43804 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %i.il = trunc nuw i64 %i.ik to i1               ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.ij, 1      ; 2 uses
  %.not6.i.i.i.i64.i.i.i.i = icmp ne ptr %i.im, null ; 2 uses
  %or.cond.not.i.i.i.i65.i.i.i.i = select i1 %i.il, i1 true, i1 %.not6.i.i.i.i64.i.i.i.i
  br i1 %or.cond.not.i.i.i.i65.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = load i64, ptr %i.ig, align 8, !noalias !43803, !noundef !177 ; 2 uses
  %i.io = load i64, ptr %i.ih, align 8, !noalias !43803, !noundef !177 ; 4 uses
  %.not7.i.i.i.i66.i.i.i.i = icmp ugt i64 %i.io, %i.in
  br i1 %.not7.i.i.i.i66.i.i.i.i, label %bb.bp, label %.thread.i.i.i67.i.i.i.i, !prof !206

.thread.i.i.i67.i.i.i.i:                          ; preds = %bb.bo
  %i.ip = icmp eq i64 %i.hc, %i.io
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.fx, align 8, !alias.scope !43805, !noalias !43773
  store i64 %i.io, ptr %i.fw, align 8, !alias.scope !43805, !noalias !43773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43803
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.io, i64 noundef %i.in, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !43804
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43803
  %i.ir = xor i1 %.not6.i.i.i.i64.i.i.i.i, true
  %i.is = select i1 %i.il, i1 true, i1 %i.ir
  br i1 %i.is, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, label %.thread45.i.i.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.it = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.iu = trunc nuw i64 %i.ib to i1
  br i1 %i.iu, label %.thread45.i.i.i.i.i.i, label %bb.br

.thread45.i.i.i.i.i.i:                            ; preds = %bb.bq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i48.i.i.i.i.i.i = phi ptr [ %i.im, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i ], [ %i.ic, %bb.bq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i48.i.i.i.i.i.i) ]
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !43792
  %i.iv = icmp eq ptr %i.ic, null
  br i1 %i.iv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !43806
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ix = add i64 %i.hx, %i.it                    ; 3 uses
  store i64 %i.ix, ptr %i.gb, align 8, !alias.scope !43794, !noalias !43773
  %i.iy = add i64 %i.hw, %i.it                    ; 4 uses
  store i64 %i.iy, ptr %i.gc, align 8, !alias.scope !43794, !noalias !43773
  store i8 1, ptr %i.fr, align 1, !alias.scope !43794, !noalias !43773
  %i.iz = icmp ult i64 %i.ix, %i.hc
  br i1 %i.iz, label %.lr.ph.split.i.i61.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i, %.thread.i.i.i67.i.i.i.i, %bb.bm, %bb.bl, %bb.bk
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43806
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i

bb.bu:                                            ; preds = %bb.au
  %i.ja = call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !43807 ; 2 uses
  %i.jb = extractvalue { i64, ptr } %i.ja, 0
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.loopexit, label %bb.bx

bb.bv:                                            ; preds = %bb.bs, %.thread45.i.i.i.i.i.i, %bb.bi
  %.sroa.12.2.i.ph.i62.i.i.i.i = phi ptr [ %i.hh, %bb.bi ], [ %i.iw, %bb.bs ], [ %.sroa.5.1.i48.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43792
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i56.i.i.i.i
  store i8 0, ptr %i.h, align 1, !noalias !43792
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !43806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43792
  %i.jd = icmp samesign ugt i8 %i.ht, 1
  %brmerge.i57.i.i.i.i = select i1 %i.jd, i1 true, i1 %i.ft
  br i1 %brmerge.i57.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !43808
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i, %bb.bw
  store i64 %i.hu, ptr %i.fq, align 8, !alias.scope !43790, !noalias !43773
  br label %.backedge.i45.i.i.i.i

.backedge.i45.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i
  %storemerge.i46.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ] ; 2 uses
  %i.je = phi i64 [ %i.hs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ %i.gd, %bb.by ], [ %i.gd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  %i.jf = phi i8 [ %i.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i59.i.i.i.i ], [ %i.ge, %bb.by ], [ %i.ge, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  store i8 %storemerge.i46.i.i.i.i, ptr %i.fr, align 1, !alias.scope !43790, !noalias !43773
  br label %bb.au

bb.bx:                                            ; preds = %bb.bu
  %i.jg = extractvalue { i64, ptr } %i.ja, 1      ; 2 uses
  %.not.i42.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i42.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !43809)
  %brmerge116.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %i.ft
  br i1 %brmerge116.i.i.i.i.i, label %.backedge.i45.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i: ; preds = %bb.by
  %.val.i23.i44.i.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !43810, !noalias !43773, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i44.i.i.i.i, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !43811
  br label %.backedge.i45.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %bb.bv
  %.sroa.6.1.i40.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i62.i.i.i.i, %bb.bv ], [ %i.jg, %bb.bx ]
  %i.jh = ptrtoint ptr %.sroa.6.1.i40.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.au
  br i1 %i.fo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ji = load i64, ptr %i.fq, align 8, !alias.scope !43790, !noalias !43773, !noundef !177
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43792
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @748) #62, !noalias !43812
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit83.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit83.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.jh, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.fn, %.loopexit83.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.ji, %bb.ca ], [ undef, %.loopexit83.i.i.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !43813)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.jl = load i8, ptr %i.jk, align 1, !range !231, !alias.scope !43813, !noalias !43763, !noundef !177
  %i.jm = icmp samesign ult i8 %i.jl, 2
  br i1 %i.jm, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.jn, align 8, !alias.scope !43814, !noalias !43763, !noundef !177 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !43813, !noalias !43763, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !43815
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !43816)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.jr = load i8, ptr %i.jq, align 1, !range !231, !alias.scope !43816, !noalias !43763, !noundef !177
  %i.js = icmp samesign ult i8 %i.jr, 2
  br i1 %i.js, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jt, align 8, !alias.scope !43817, !noalias !43763, !noundef !177 ; 2 uses
  %i.ju = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.ju, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !43816, !noalias !43763, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !43818
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #62, !noalias !43762
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #62
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit, %.loopexit
end_hunk_2
begin_hunk_3_@llvm.ucmp.i32.i32
!43158 = !{!43032, !43030}
!43159 = !{!43034, !43030}
!43160 = !{!43030}
!43161 = !{!43038, !43036, !43030}
!43162 = !{!43040, !43038, !43036, !43030}
!43163 = !{!43042, !43040, !43038, !43036, !43030}
!43164 = !{!43044}
!43165 = !{!43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43166 = !{!43047}
!43167 = !{!43047, !43044}
!43168 = !{!43050, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43169 = !{!43057, !43055, !43054, !43052, !43050, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43170 = !{!43059, !43057, !43055, !43054, !43052, !43050, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43171 = !{!43052, !43050, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43172 = !{!43061}
!43173 = !{!43061, !43047, !43044}
!43174 = !{!43061, !43062, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43175 = !{!43069, !43067, !43066, !43064, !43061, !43062, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43176 = !{!43071, !43069, !43067, !43066, !43064, !43061, !43062, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43177 = !{!43064, !43061, !43062, !43047, !43048, !43045, !43044, !43042, !43040, !43038, !43036, !43030}
!43178 = !{!43062, !43048, !43045, !43042, !43040, !43038, !43036, !43030}
!43179 = !{!43073}
!43180 = !{!43075}
!43181 = !{!43077}
!43182 = !{!43077, !43075, !43073}
!43183 = !{!43079}
!43184 = !{!43081}
!43185 = !{!43083}
!43186 = !{!43085}
!43187 = !{!43085, !43083, !43081, !43079}
!43188 = !{!43087, !43079}
!43189 = !{!43093, !43091, !43089}
!43190 = !{!43095}
!43191 = !{!43097, !43095}
!43192 = !{!43099}
!43193 = !{!43101, !43099}
!43194 = distinct !{!43194, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43195 = distinct !{!43195, !43194, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43196 = distinct !{!43196, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43197 = distinct !{!43197, !43196, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43198 = distinct !{!43198, i1 true, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!43199 = distinct !{!43199, !43198, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43200 = distinct !{!43200, !43198, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43201 = distinct !{!43201, i1 true, !"_RNvMsb_NtCslxdWNweD0x2_11shadowsocks6configNtB5_12ServerConfig17tcp_external_addr"}
!43202 = distinct !{!43202, !43201, !"_RNvMsb_NtCslxdWNweD0x2_11shadowsocks6configNtB5_12ServerConfig17tcp_external_addr: argument 0"}
!43203 = distinct !{!43203, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43204 = distinct !{!43204, !43203, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43205 = distinct !{!43205, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43206 = distinct !{!43206, !43205, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43207 = distinct !{!43207, i1 true, !"_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtB8_2io4util4read4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43208 = distinct !{!43208, !43207, !"_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtB8_2io4util4read4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43209 = distinct !{!43209, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43210 = distinct !{!43210, !43209, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43211 = distinct !{!43211, i1 true, !"_RNvXsd_NtCsf3Ta7LF998c_4core5arrayAhj2000_INtNtNtB7_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsgZAIVb0XKpv_9ssservice"}
!43212 = distinct !{!43212, !43211, !"_RNvXsd_NtCsf3Ta7LF998c_4core5arrayAhj2000_INtNtNtB7_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCsgZAIVb0XKpv_9ssservice: argument 0"}
!43213 = distinct !{!43213, i1 true, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsgZAIVb0XKpv_9ssservice"}
!43214 = distinct !{!43214, !43213, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsgZAIVb0XKpv_9ssservice: argument 0"}
!43215 = distinct !{!43215, i1 true, !"_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsgZAIVb0XKpv_9ssservice"}
!43216 = distinct !{!43216, !43215, !"_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsgZAIVb0XKpv_9ssservice: argument 0"}
!43217 = distinct !{!43217, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice"}
!43218 = distinct !{!43218, !43217, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice: argument 1"}
!43219 = distinct !{!43219, !43217, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice: argument 0"}
!43220 = distinct !{!43220, i1 true, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0CsgZAIVb0XKpv_9ssservice"}
!43221 = distinct !{!43221, !43220, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43222 = distinct !{!43222, !43220, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43223 = distinct !{!43223, i1 true, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43224 = distinct !{!43224, !43223, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!43225 = distinct !{!43225, i1 true, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43226 = distinct !{!43226, !43225, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43227 = distinct !{!43227, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43228 = distinct !{!43228, !43227, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43229 = distinct !{!43229, !43223, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 2"}
!43230 = distinct !{!43230, !43223, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43231 = distinct !{!43231, !43225, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43232 = distinct !{!43232, !43227, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43233 = distinct !{!43233, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43234 = distinct !{!43234, !43233, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43235 = distinct !{!43235, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43236 = distinct !{!43236, !43235, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43237 = distinct !{!43237, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43238 = distinct !{!43238, !43237, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43239 = distinct !{!43239, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43240 = distinct !{!43240, !43239, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43241 = distinct !{!43241, i1 true, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43242 = distinct !{!43242, !43241, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43243 = distinct !{!43243, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43244 = distinct !{!43244, !43243, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43245 = distinct !{!43245, !43241, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43246 = distinct !{!43246, !43243, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43247 = distinct !{!43247, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43248 = distinct !{!43248, !43247, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43249 = distinct !{!43249, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43250 = distinct !{!43250, !43249, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43251 = distinct !{!43251, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43252 = distinct !{!43252, !43251, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43253 = distinct !{!43253, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43254 = distinct !{!43254, !43253, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43255 = distinct !{!43255, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43256 = distinct !{!43256, !43255, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43257 = distinct !{!43257, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43258 = distinct !{!43258, !43257, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43259 = distinct !{!43259, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!43260 = distinct !{!43260, !43259, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43261 = distinct !{!43261, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43262 = distinct !{!43262, !43261, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43263 = distinct !{!43263, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43264 = distinct !{!43264, !43263, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43265 = distinct !{!43265, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43266 = distinct !{!43266, !43265, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43267 = distinct !{!43267, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43268 = distinct !{!43268, !43267, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43269 = distinct !{!43269, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43270 = distinct !{!43270, !43269, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43271 = distinct !{!43271, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43272 = distinct !{!43272, !43271, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43273 = distinct !{!43273, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43274 = distinct !{!43274, !43273, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43275 = distinct !{!43275, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43276 = distinct !{!43276, !43275, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43277 = !{!43195}
!43278 = !{!43197}
!43279 = !{!43200, !43199}
!43280 = !{!43202}
!43281 = !{!43206, !43204}
!43282 = !{!43208}
!43283 = !{!43210, !43208}
!43284 = !{!43216, !43214, !43212}
!43285 = !{!43219, !43218}
!43286 = !{!43222, !43221}
!43287 = !{!43222}
!43288 = !{!43224}
!43289 = !{!43226}
!43290 = !{!43226, !43224}
!43291 = !{!43228}
!43292 = !{!43228, !43226, !43224}
!43293 = !{!43228, !43232, !43231, !43226, !43230, !43224, !43229, !43222, !43221}
!43294 = !{!43228, !43226, !43230, !43224, !43222}
!43295 = !{!43226, !43230, !43224, !43222}
!43296 = !{!43236, !43234, !43226, !43230, !43224, !43222}
!43297 = !{!43238}
!43298 = !{!43238, !43226, !43224}
!43299 = !{!43240, !43238, !43226, !43230, !43224, !43222}
!43300 = !{!43242}
!43301 = !{!43242, !43224}
!43302 = !{!43244}
!43303 = !{!43244, !43242, !43224}
!43304 = !{!43244, !43246, !43245, !43242, !43230, !43224, !43229, !43222, !43221}
!43305 = !{!43244, !43242, !43230, !43224, !43222}
!43306 = !{!43242, !43230, !43224, !43222}
!43307 = !{!43250, !43248, !43242, !43230, !43224, !43222}
!43308 = !{!43252}
!43309 = !{!43252, !43242, !43224}
!43310 = !{!43254, !43252, !43242, !43230, !43224, !43222}
!43311 = !{!43230, !43224, !43229, !43222, !43221}
!43312 = !{!43224, !43229, !43221}
!43313 = !{!43256, !43230, !43224, !43229, !43222, !43221}
!43314 = !{!43256, !43230, !43222}
!43315 = !{!43258, !43230, !43224, !43229, !43222, !43221}
!43316 = !{!43258, !43230, !43222}
!43317 = !{!43260}
!43318 = !{!43262}
!43319 = !{!43262, !43260}
!43320 = !{!43264, !43262, !43260}
!43321 = !{!43266, !43262, !43260, !43222}
!43322 = !{!43268}
!43323 = !{!43268, !43260}
!43324 = !{!43270, !43268, !43260}
!43325 = !{!43272, !43268, !43260, !43222}
!43326 = !{!43274}
!43327 = !{!43276}
!43328 = distinct !{!43328, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43329 = distinct !{!43329, !43328, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43330 = distinct !{!43330, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43331 = distinct !{!43331, !43330, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43332 = distinct !{!43332, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43333 = distinct !{!43333, !43332, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43334 = distinct !{!43334, !43332, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43335 = distinct !{!43335, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43336 = distinct !{!43336, !43335, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43337 = distinct !{!43337, !43335, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43338 = distinct !{!43338, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43339 = distinct !{!43339, !43338, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!43340 = distinct !{!43340, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice"}
!43341 = distinct !{!43341, !43340, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 1"}
!43342 = distinct !{!43342, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43343 = distinct !{!43343, !43342, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43344 = distinct !{!43344, !43338, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 2"}
!43345 = distinct !{!43345, !43338, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43346 = distinct !{!43346, !43340, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 2"}
!43347 = distinct !{!43347, !43340, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 0"}
!43348 = distinct !{!43348, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43349 = distinct !{!43349, !43348, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43350 = distinct !{!43350, !43342, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43351 = distinct !{!43351, !43342, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43352 = distinct !{!43352, !43342, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43353 = distinct !{!43353, !43348, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43354 = distinct !{!43354, !43348, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43355 = distinct !{!43355, !43348, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43356 = distinct !{!43356, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43357 = distinct !{!43357, !43356, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43358 = distinct !{!43358, !43356, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43359 = distinct !{!43359, !43356, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43360 = distinct !{!43360, !43356, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43361 = distinct !{!43361, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43362 = distinct !{!43362, !43361, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43363 = distinct !{!43363, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43364 = distinct !{!43364, !43363, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43365 = distinct !{!43365, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43366 = distinct !{!43366, !43365, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43367 = distinct !{!43367, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43368 = distinct !{!43368, !43367, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43369 = distinct !{!43369, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43370 = distinct !{!43370, !43369, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43371 = distinct !{!43371, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43372 = distinct !{!43372, !43371, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43373 = distinct !{!43373, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice"}
!43374 = distinct !{!43374, !43373, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43375 = distinct !{!43375, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice"}
!43376 = distinct !{!43376, !43375, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43377 = distinct !{!43377, !43373, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 3"}
!43378 = distinct !{!43378, !43373, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 2"}
!43379 = distinct !{!43379, !43373, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43380 = distinct !{!43380, !43375, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 3"}
!43381 = distinct !{!43381, !43375, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 2"}
!43382 = distinct !{!43382, !43375, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43383 = distinct !{!43383, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43384 = distinct !{!43384, !43383, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43385 = distinct !{!43385, !43383, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43386 = distinct !{!43386, !43383, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43387 = distinct !{!43387, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice"}
!43388 = distinct !{!43388, !43387, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43389 = distinct !{!43389, !43387, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 2"}
!43390 = distinct !{!43390, !43387, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 3"}
!43391 = distinct !{!43391, !43387, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43392 = distinct !{!43392, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43393 = distinct !{!43393, !43392, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43394 = distinct !{!43394, !43392, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43395 = distinct !{!43395, !43392, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43396 = distinct !{!43396, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43397 = distinct !{!43397, !43396, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43398 = distinct !{!43398, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43399 = distinct !{!43399, !43398, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43400 = distinct !{!43400, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43401 = distinct !{!43401, !43400, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43402 = distinct !{!43402, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43403 = distinct !{!43403, !43402, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43404 = distinct !{!43404, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43405 = distinct !{!43405, !43404, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43406 = distinct !{!43406, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43407 = distinct !{!43407, !43406, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43408 = distinct !{!43408, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43409 = distinct !{!43409, !43408, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43410 = distinct !{!43410, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43411 = distinct !{!43411, !43410, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43412 = distinct !{!43412, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43413 = distinct !{!43413, !43412, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43414 = distinct !{!43414, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43415 = distinct !{!43415, !43414, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43416 = distinct !{!43416, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43417 = distinct !{!43417, !43416, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43418 = distinct !{!43418, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43419 = distinct !{!43419, !43418, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43420 = distinct !{!43420, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43421 = distinct !{!43421, !43420, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43422 = distinct !{!43422, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43423 = distinct !{!43423, !43422, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43424 = distinct !{!43424, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43425 = distinct !{!43425, !43424, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43426 = distinct !{!43426, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43427 = distinct !{!43427, !43426, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43428 = !{!43331, !43329}
!43429 = !{!43334, !43333}
!43430 = !{!43334}
!43431 = !{!43337, !43336, !43334, !43333}
!43432 = !{!43341, !43339}
!43433 = !{!43339}
!43434 = !{!43341}
!43435 = !{!43343}
!43436 = !{!43347, !43341, !43346, !43345, !43339, !43344, !43337, !43334}
!43437 = !{!43349}
!43438 = !{!43349, !43355, !43354, !43353, !43352, !43343, !43351, !43350, !43347, !43341, !43346, !43345, !43339, !43344, !43337, !43336, !43334, !43333}
!43439 = !{!43349, !43355, !43354, !43353, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43440 = !{!43349, !43354, !43353, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43441 = !{!43349, !43343}
!43442 = !{!43347, !43341, !43345, !43339, !43337, !43334}
!43443 = !{!43357, !43349, !43343}
!43444 = !{!43349, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43445 = !{!43357}
!43446 = !{!43357, !43358, !43349, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43447 = !{!43357, !43360, !43358, !43359, !43349, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43448 = !{!43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43449 = !{!43362}
!43450 = !{!43362, !43343}
!43451 = !{!43364, !43362, !43343}
!43452 = !{!43366, !43362, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43453 = !{!43368}
!43454 = !{!43370, !43368, !43343}
!43455 = !{!43368, !43343}
!43456 = !{!43372, !43368, !43343, !43347, !43341, !43345, !43339, !43337, !43334}
!43457 = !{!43374}
!43458 = !{!43376}
!43459 = !{!43376, !43382, !43381, !43380, !43379, !43374, !43378, !43377, !43347, !43341, !43346, !43345, !43339, !43344, !43337, !43336, !43334, !43333}
!43460 = !{!43376, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43461 = !{!43376, !43374}
!43462 = !{!43384}
!43463 = !{!43384, !43386, !43385, !43376, !43382, !43381, !43380, !43379, !43374, !43378, !43377, !43347, !43341, !43346, !43345, !43339, !43344, !43337, !43336, !43334, !43333}
!43464 = !{!43384, !43376, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43465 = !{!43384, !43376, !43374}
!43466 = !{!43388}
!43467 = !{!43388, !43389, !43376, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43468 = !{!43388, !43391, !43389, !43390, !43376, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43469 = !{!43393}
!43470 = !{!43393, !43395, !43394, !43388, !43391, !43389, !43390, !43376, !43382, !43381, !43380, !43379, !43374, !43378, !43377, !43347, !43341, !43346, !43345, !43339, !43344, !43337, !43336, !43334, !43333}
!43471 = !{!43393, !43388, !43376, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43472 = !{!43393, !43388, !43376, !43374}
!43473 = !{!43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43474 = !{!43399, !43397, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43475 = !{!43401}
!43476 = !{!43401, !43374}
!43477 = !{!43403, !43401, !43374, !43347, !43341, !43345, !43339, !43337, !43334}
!43478 = !{!43337, !43334}
!43479 = !{!43405}
!43480 = !{!43407, !43405}
!43481 = !{!43409, !43405, !43337, !43334}
!43482 = !{!43411}
!43483 = !{!43413, !43411}
!43484 = !{!43415, !43411, !43337, !43334}
!43485 = !{!43419, !43417}
!43486 = !{!43421}
!43487 = !{!43423}
!43488 = !{!43427, !43425}
!43489 = distinct !{!43489, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43490 = distinct !{!43490, !43489, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43491 = distinct !{!43491, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43492 = distinct !{!43492, !43491, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43493 = distinct !{!43493, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43494 = distinct !{!43494, !43493, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43495 = distinct !{!43495, !43493, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43496 = distinct !{!43496, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43497 = distinct !{!43497, !43496, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43498 = distinct !{!43498, !43496, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43499 = distinct !{!43499, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43500 = distinct !{!43500, !43499, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!43501 = distinct !{!43501, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice"}
!43502 = distinct !{!43502, !43501, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 1"}
!43503 = distinct !{!43503, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43504 = distinct !{!43504, !43503, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43505 = distinct !{!43505, !43499, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 2"}
!43506 = distinct !{!43506, !43499, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43507 = distinct !{!43507, !43501, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 2"}
!43508 = distinct !{!43508, !43501, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 0"}
!43509 = distinct !{!43509, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43510 = distinct !{!43510, !43509, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43511 = distinct !{!43511, !43503, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43512 = distinct !{!43512, !43503, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43513 = distinct !{!43513, !43503, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43514 = distinct !{!43514, !43509, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43515 = distinct !{!43515, !43509, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43516 = distinct !{!43516, !43509, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43517 = distinct !{!43517, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice"}
!43518 = distinct !{!43518, !43517, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 0"}
!43519 = distinct !{!43519, !43517, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 2"}
!43520 = distinct !{!43520, !43517, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 1"}
!43521 = distinct !{!43521, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43522 = distinct !{!43522, !43521, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43523 = distinct !{!43523, !43521, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43524 = distinct !{!43524, !43521, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43525 = distinct !{!43525, !43521, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43526 = distinct !{!43526, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice"}
!43527 = distinct !{!43527, !43526, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 0"}
!43528 = distinct !{!43528, !43526, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 2"}
!43529 = distinct !{!43529, !43526, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 1"}
!43530 = distinct !{!43530, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43531 = distinct !{!43531, !43530, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43532 = distinct !{!43532, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43533 = distinct !{!43533, !43532, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43534 = distinct !{!43534, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43535 = distinct !{!43535, !43534, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43536 = distinct !{!43536, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43537 = distinct !{!43537, !43536, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43538 = distinct !{!43538, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice"}
!43539 = distinct !{!43539, !43538, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 1"}
!43540 = distinct !{!43540, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice"}
!43541 = distinct !{!43541, !43540, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 0"}
!43542 = distinct !{!43542, !43538, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 3"}
!43543 = distinct !{!43543, !43538, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 2"}
!43544 = distinct !{!43544, !43538, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 0"}
!43545 = distinct !{!43545, !43540, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 3"}
!43546 = distinct !{!43546, !43540, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 2"}
!43547 = distinct !{!43547, !43540, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 1"}
!43548 = distinct !{!43548, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43549 = distinct !{!43549, !43548, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43550 = distinct !{!43550, !43548, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43551 = distinct !{!43551, !43548, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43552 = distinct !{!43552, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice"}
!43553 = distinct !{!43553, !43552, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 0"}
!43554 = distinct !{!43554, !43552, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 2"}
!43555 = distinct !{!43555, !43552, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 3"}
!43556 = distinct !{!43556, !43552, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECsgZAIVb0XKpv_9ssservice: argument 1"}
!43557 = distinct !{!43557, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43558 = distinct !{!43558, !43557, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43559 = distinct !{!43559, !43557, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43560 = distinct !{!43560, !43557, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43561 = distinct !{!43561, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43562 = distinct !{!43562, !43561, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43563 = distinct !{!43563, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43564 = distinct !{!43564, !43563, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43565 = distinct !{!43565, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43566 = distinct !{!43566, !43565, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43567 = distinct !{!43567, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43568 = distinct !{!43568, !43567, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43569 = distinct !{!43569, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43570 = distinct !{!43570, !43569, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43571 = distinct !{!43571, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43572 = distinct !{!43572, !43571, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43573 = distinct !{!43573, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43574 = distinct !{!43574, !43573, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43575 = distinct !{!43575, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43576 = distinct !{!43576, !43575, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43577 = distinct !{!43577, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43578 = distinct !{!43578, !43577, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43579 = distinct !{!43579, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43580 = distinct !{!43580, !43579, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43581 = distinct !{!43581, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43582 = distinct !{!43582, !43581, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43583 = distinct !{!43583, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43584 = distinct !{!43584, !43583, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43585 = distinct !{!43585, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43586 = distinct !{!43586, !43585, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43587 = distinct !{!43587, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43588 = distinct !{!43588, !43587, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43589 = distinct !{!43589, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43590 = distinct !{!43590, !43589, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43591 = distinct !{!43591, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43592 = distinct !{!43592, !43591, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43593 = !{!43492, !43490}
!43594 = !{!43495, !43494}
!43595 = !{!43495}
!43596 = !{!43498, !43497, !43495, !43494}
!43597 = !{!43502, !43500}
!43598 = !{!43500}
!43599 = !{!43502}
!43600 = !{!43504}
!43601 = !{!43508, !43502, !43507, !43506, !43500, !43505, !43498, !43495}
!43602 = !{!43510}
!43603 = !{!43510, !43516, !43515, !43514, !43513, !43504, !43512, !43511, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43604 = !{!43510, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43605 = !{!43510, !43504}
!43606 = !{!43508, !43502, !43506, !43500, !43498, !43495}
!43607 = !{!43518}
!43608 = !{!43518, !43520, !43519, !43510, !43516, !43515, !43514, !43513, !43504, !43512, !43511, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43609 = !{!43518, !43510, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43610 = !{!43518, !43510, !43504}
!43611 = !{!43522}
!43612 = !{!43522, !43523, !43510, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43613 = !{!43522, !43525, !43523, !43524, !43510, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43614 = !{!43527}
!43615 = !{!43527, !43529, !43528, !43522, !43525, !43523, !43524, !43510, !43516, !43515, !43514, !43513, !43504, !43512, !43511, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43616 = !{!43527, !43522, !43510, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43617 = !{!43527, !43522, !43510, !43504}
!43618 = !{!43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43619 = !{!43533, !43531, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43620 = !{!43535}
!43621 = !{!43535, !43504}
!43622 = !{!43537, !43535, !43504, !43508, !43502, !43506, !43500, !43498, !43495}
!43623 = !{!43539}
!43624 = !{!43541}
!43625 = !{!43541, !43547, !43546, !43545, !43544, !43539, !43543, !43542, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43626 = !{!43541, !43546, !43545, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43627 = !{!43541, !43539}
!43628 = !{!43549}
!43629 = !{!43549, !43551, !43550, !43541, !43547, !43546, !43545, !43544, !43539, !43543, !43542, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43630 = !{!43549, !43541, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43631 = !{!43549, !43541, !43539}
!43632 = !{!43553}
!43633 = !{!43553, !43554, !43541, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43634 = !{!43553, !43556, !43554, !43555, !43541, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43635 = !{!43558}
!43636 = !{!43558, !43560, !43559, !43553, !43556, !43554, !43555, !43541, !43547, !43546, !43545, !43544, !43539, !43543, !43542, !43508, !43502, !43507, !43506, !43500, !43505, !43498, !43497, !43495, !43494}
!43637 = !{!43558, !43553, !43541, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43638 = !{!43558, !43553, !43541, !43539}
!43639 = !{!43541, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43640 = !{!43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43641 = !{!43564, !43562, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43642 = !{!43566}
!43643 = !{!43566, !43539}
!43644 = !{!43568, !43566, !43539, !43508, !43502, !43506, !43500, !43498, !43495}
!43645 = !{!43498, !43495}
!43646 = !{!43570}
!43647 = !{!43572, !43570}
!43648 = !{!43574, !43570, !43498, !43495}
!43649 = !{!43576}
!43650 = !{!43578, !43576}
!43651 = !{!43580, !43576, !43498, !43495}
!43652 = !{!43584, !43582}
!43653 = !{!43586}
!43654 = !{!43588}
!43655 = !{!43592, !43590}
!43656 = distinct !{!43656, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43657 = distinct !{!43657, !43656, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43658 = distinct !{!43658, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43659 = distinct !{!43659, !43658, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43660 = distinct !{!43660, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43661 = distinct !{!43661, !43660, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43662 = distinct !{!43662, !43660, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43663 = distinct !{!43663, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice"}
!43664 = distinct !{!43664, !43663, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 1"}
!43665 = distinct !{!43665, !43663, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice: argument 0"}
!43666 = distinct !{!43666, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43667 = distinct !{!43667, !43666, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!43668 = distinct !{!43668, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice"}
!43669 = distinct !{!43669, !43668, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 1"}
!43670 = distinct !{!43670, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43671 = distinct !{!43671, !43670, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43672 = distinct !{!43672, !43666, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 2"}
!43673 = distinct !{!43673, !43666, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43674 = distinct !{!43674, !43668, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 2"}
!43675 = distinct !{!43675, !43668, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00CsgZAIVb0XKpv_9ssservice: argument 0"}
!43676 = distinct !{!43676, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43677 = distinct !{!43677, !43676, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43678 = distinct !{!43678, !43670, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43679 = distinct !{!43679, !43670, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43680 = distinct !{!43680, !43670, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43681 = distinct !{!43681, !43676, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43682 = distinct !{!43682, !43676, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43683 = distinct !{!43683, !43676, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43684 = distinct !{!43684, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43685 = distinct !{!43685, !43684, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43686 = distinct !{!43686, !43684, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43687 = distinct !{!43687, !43684, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43688 = distinct !{!43688, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43689 = distinct !{!43689, !43688, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43690 = distinct !{!43690, !43688, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43691 = distinct !{!43691, !43688, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43692 = distinct !{!43692, !43688, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43693 = distinct !{!43693, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43694 = distinct !{!43694, !43693, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43695 = distinct !{!43695, !43693, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43696 = distinct !{!43696, !43693, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43697 = distinct !{!43697, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43698 = distinct !{!43698, !43697, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43699 = distinct !{!43699, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43700 = distinct !{!43700, !43699, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43701 = distinct !{!43701, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43702 = distinct !{!43702, !43701, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43703 = distinct !{!43703, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43704 = distinct !{!43704, !43703, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43705 = distinct !{!43705, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43706 = distinct !{!43706, !43705, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43707 = distinct !{!43707, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43708 = distinct !{!43708, !43707, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43709 = distinct !{!43709, !43705, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43710 = distinct !{!43710, !43705, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43711 = distinct !{!43711, !43705, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43712 = distinct !{!43712, !43707, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43713 = distinct !{!43713, !43707, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43714 = distinct !{!43714, !43707, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43715 = distinct !{!43715, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43716 = distinct !{!43716, !43715, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43717 = distinct !{!43717, !43715, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43718 = distinct !{!43718, !43715, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43719 = distinct !{!43719, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!43720 = distinct !{!43720, !43719, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43721 = distinct !{!43721, !43719, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43722 = distinct !{!43722, !43719, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!43723 = distinct !{!43723, !43719, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43724 = distinct !{!43724, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice"}
!43725 = distinct !{!43725, !43724, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!43726 = distinct !{!43726, !43724, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!43727 = distinct !{!43727, !43724, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!43728 = distinct !{!43728, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43729 = distinct !{!43729, !43728, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43730 = distinct !{!43730, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43731 = distinct !{!43731, !43730, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43732 = distinct !{!43732, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43733 = distinct !{!43733, !43732, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43734 = distinct !{!43734, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43735 = distinct !{!43735, !43734, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43736 = distinct !{!43736, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43737 = distinct !{!43737, !43736, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43738 = distinct !{!43738, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43739 = distinct !{!43739, !43738, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43740 = distinct !{!43740, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43741 = distinct !{!43741, !43740, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43742 = distinct !{!43742, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice"}
!43743 = distinct !{!43743, !43742, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!43744 = distinct !{!43744, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43745 = distinct !{!43745, !43744, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43746 = distinct !{!43746, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice"}
!43747 = distinct !{!43747, !43746, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43748 = distinct !{!43748, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43749 = distinct !{!43749, !43748, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43750 = distinct !{!43750, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43751 = distinct !{!43751, !43750, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43752 = distinct !{!43752, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43753 = distinct !{!43753, !43752, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43754 = distinct !{!43754, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43755 = distinct !{!43755, !43754, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43756 = distinct !{!43756, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43757 = distinct !{!43757, !43756, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43758 = distinct !{!43758, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!43759 = distinct !{!43759, !43758, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!43760 = !{!43659, !43657}
!43761 = !{!43662, !43661}
!43762 = !{!43662}
!43763 = !{!43665, !43664, !43662, !43661}
!43764 = !{!43669, !43667}
!43765 = !{!43667}
!43766 = !{!43669}
!43767 = !{!43671}
!43768 = !{!43675, !43669, !43674, !43673, !43667, !43672, !43665, !43662}
!43769 = !{!43677}
!43770 = !{!43677, !43683, !43682, !43681, !43680, !43671, !43679, !43678, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43771 = !{!43677, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43772 = !{!43677, !43671}
!43773 = !{!43675, !43669, !43673, !43667, !43665, !43662}
!43774 = !{!43685}
!43775 = !{!43685, !43687, !43686, !43677, !43683, !43682, !43681, !43680, !43671, !43679, !43678, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43776 = !{!43685, !43677, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43777 = !{!43685, !43677, !43671}
!43778 = !{!43689}
!43779 = !{!43689, !43690, !43677, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43780 = !{!43689, !43692, !43690, !43691, !43677, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43781 = !{!43694}
!43782 = !{!43694, !43696, !43695, !43689, !43692, !43690, !43691, !43677, !43683, !43682, !43681, !43680, !43671, !43679, !43678, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43783 = !{!43694, !43689, !43677, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43784 = !{!43694, !43689, !43677, !43671}
!43785 = !{!43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43786 = !{!43700, !43698, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43787 = !{!43702}
!43788 = !{!43702, !43671}
!43789 = !{!43704, !43702, !43671, !43675, !43669, !43673, !43667, !43665, !43662}
!43790 = !{!43706}
!43791 = !{!43708}
!43792 = !{!43708, !43714, !43713, !43712, !43711, !43706, !43710, !43709, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43793 = !{!43708, !43713, !43712, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43794 = !{!43708, !43706}
!43795 = !{!43716}
!43796 = !{!43716, !43718, !43717, !43708, !43714, !43713, !43712, !43711, !43706, !43710, !43709, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43797 = !{!43716, !43708, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43798 = !{!43716, !43708, !43706}
!43799 = !{!43720}
!43800 = !{!43720, !43721, !43708, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43801 = !{!43720, !43723, !43721, !43722, !43708, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43802 = !{!43725}
!43803 = !{!43725, !43727, !43726, !43720, !43723, !43721, !43722, !43708, !43714, !43713, !43712, !43711, !43706, !43710, !43709, !43675, !43669, !43674, !43673, !43667, !43672, !43665, !43664, !43662, !43661}
!43804 = !{!43725, !43720, !43708, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43805 = !{!43725, !43720, !43708, !43706}
!43806 = !{!43708, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43807 = !{!43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43808 = !{!43731, !43729, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43809 = !{!43733}
!43810 = !{!43733, !43706}
!43811 = !{!43735, !43733, !43706, !43675, !43669, !43673, !43667, !43665, !43662}
!43812 = !{!43665, !43662}
!43813 = !{!43737}
!43814 = !{!43739, !43737}
!43815 = !{!43741, !43737, !43665, !43662}
!43816 = !{!43743}
!43817 = !{!43745, !43743}
!43818 = !{!43747, !43743, !43665, !43662}
!43819 = !{!43751, !43749}
!43820 = !{!43753}
!43821 = !{!43755}
!43822 = !{!43759, !43757}
!43823 = distinct !{!43823, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice"}
!43824 = distinct !{!43824, !43823, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43825 = distinct !{!43825, i1 true, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice"}
!43826 = distinct !{!43826, !43825, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 1"}
!43827 = distinct !{!43827, !43825, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice: argument 0"}
!43828 = distinct !{!43828, i1 true, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice"}
!43829 = distinct !{!43829, !43828, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice: argument 1"}
!43830 = distinct !{!43830, !43828, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCsgZAIVb0XKpv_9ssservice: argument 0"}
!43831 = distinct !{!43831, i1 true, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice"}
!43832 = distinct !{!43832, !43831, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice: argument 0"}
!43833 = distinct !{!43833, !43831, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCsgZAIVb0XKpv_9ssservice: argument 1"}
!43834 = distinct !{!43834, i1 true, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCsgZAIVb0XKpv_9ssservice"}
!43835 = distinct !{!43835, !43834, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCsgZAIVb0XKpv_9ssservice: argument 0"}
!43836 = distinct !{!43836, i1 true, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsgZAIVb0XKpv_9ssservice"}
!43837 = distinct !{!43837, !43836, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCsgZAIVb0XKpv_9ssservice: argument 0"}
!43838 = distinct !{!43838, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice"}
!43839 = distinct !{!43839, !43838, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice: argument 0"}
!43840 = distinct !{!43840, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice"}
!43841 = distinct !{!43841, !43840, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice: argument 0"}
!43842 = distinct !{!43842, !43834, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCsgZAIVb0XKpv_9ssservice: argument 1"}
!43843 = distinct !{!43843, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!43844 = distinct !{!43844, !43843, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!43845 = distinct !{!43845, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!43846 = distinct !{!43846, !43845, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!43847 = distinct !{!43847, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!43848 = distinct !{!43848, !43847, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43849 = distinct !{!43849, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCsgZAIVb0XKpv_9ssservice"}
!43850 = distinct !{!43850, !43849, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43851 = distinct !{!43851, !43849, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCsgZAIVb0XKpv_9ssservice: argument 1"}
!43852 = distinct !{!43852, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice"}
!43853 = distinct !{!43853, !43852, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice: argument 0"}
!43854 = distinct !{!43854, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!43855 = distinct !{!43855, !43854, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!43856 = distinct !{!43856, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCsgZAIVb0XKpv_9ssservice"}
!43857 = distinct !{!43857, !43856, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCsgZAIVb0XKpv_9ssservice: argument 2"}
!43858 = distinct !{!43858, !43856, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCsgZAIVb0XKpv_9ssservice: argument 1"}
!43859 = distinct !{!43859, !43856, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCsgZAIVb0XKpv_9ssservice: argument 0"}
!43860 = distinct !{!43860, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice"}
!43861 = distinct !{!43861, !43860, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43862 = distinct !{!43862, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice"}
!43863 = distinct !{!43863, !43862, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice: argument 0"}
!43864 = distinct !{!43864, !43862, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice: argument 1"}
!43865 = distinct !{!43865, i1 true, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECsgZAIVb0XKpv_9ssservice"}
!43866 = distinct !{!43866, !43865, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43867 = distinct !{!43867, !43865, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43868 = distinct !{!43868, i1 true, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice"}
!43869 = distinct !{!43869, !43868, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice: argument 0"}
!43870 = distinct !{!43870, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgZAIVb0XKpv_9ssservice"}
!43871 = distinct !{!43871, !43870, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgZAIVb0XKpv_9ssservice: argument 0"}
!43872 = distinct !{!43872, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice"}
!43873 = distinct !{!43873, !43872, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice: argument 0"}
!43874 = distinct !{!43874, i1 true, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsgZAIVb0XKpv_9ssservice"}
!43875 = distinct !{!43875, !43874, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsgZAIVb0XKpv_9ssservice: argument 0"}
!43876 = distinct !{!43876, !43874, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsgZAIVb0XKpv_9ssservice: argument 1"}
!43877 = distinct !{!43877, i1 true, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCsgZAIVb0XKpv_9ssservice"}
!43878 = distinct !{!43878, !43877, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCsgZAIVb0XKpv_9ssservice: argument 1"}
!43879 = distinct !{!43879, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!43880 = distinct !{!43880, !43879, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!43881 = distinct !{!43881, !43879, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!43882 = distinct !{!43882, !43877, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCsgZAIVb0XKpv_9ssservice: argument 0"}
!43883 = distinct !{!43883, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!43884 = distinct !{!43884, !43883, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!43885 = distinct !{!43885, !43883, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!43886 = distinct !{!43886, i1 true, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead7consumeCsgZAIVb0XKpv_9ssservice"}
!43887 = distinct !{!43887, !43886, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead7consumeCsgZAIVb0XKpv_9ssservice: argument 0"}
!43888 = distinct !{!43888, i1 true, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice"}
!43889 = distinct !{!43889, !43888, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice: argument 0"}
!43890 = distinct !{null, null, null}
!43891 = distinct !{!43891, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43892 = distinct !{!43892, !43891, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0:thread"}
!43893 = distinct !{!43893, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43894 = distinct !{!43894, !43893, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0:thread"}
!43895 = distinct !{!43895, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43896 = distinct !{!43896, !43895, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43897 = distinct !{!43897, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43898 = distinct !{!43898, !43897, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43899 = distinct !{!43899, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCsgZAIVb0XKpv_9ssservice"}
!43900 = distinct !{!43900, !43899, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43901 = distinct !{!43901, !43899, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCsgZAIVb0XKpv_9ssservice: argument 1"}
!43902 = distinct !{!43902, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice"}
!43903 = distinct !{!43903, !43902, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice: argument 0"}
!43904 = distinct !{!43904, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!43905 = distinct !{!43905, !43904, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!43906 = distinct !{!43906, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCsgZAIVb0XKpv_9ssservice"}
!43907 = distinct !{!43907, !43906, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCsgZAIVb0XKpv_9ssservice: argument 1"}
!43908 = distinct !{!43908, !43906, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43909 = distinct !{null, null, ptr @_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind}
!43910 = distinct !{!43910, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43911 = distinct !{!43911, !43910, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43912 = distinct !{!43912, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43913 = distinct !{!43913, !43912, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43914 = distinct !{!43914, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice"}
!43915 = distinct !{!43915, !43914, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43916 = distinct !{!43916, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice"}
!43917 = distinct !{!43917, !43916, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice: argument 1"}
!43918 = distinct !{!43918, i1 true, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice"}
!43919 = distinct !{!43919, !43918, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43920 = distinct !{!43920, i1 true, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice"}
!43921 = distinct !{!43921, !43920, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice: argument 0"}
!43922 = distinct !{!43922, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgZAIVb0XKpv_9ssservice"}
!43923 = distinct !{!43923, !43922, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgZAIVb0XKpv_9ssservice: argument 0"}
!43924 = distinct !{!43924, !43916, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice: argument 0"}
!43925 = distinct !{!43925, !43918, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43926 = distinct !{!43926, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice"}
!43927 = distinct !{!43927, !43926, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice: argument 0"}
!43928 = distinct !{!43928, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43929 = distinct !{!43929, !43928, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43930 = distinct !{!43930, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43931 = distinct !{!43931, !43930, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43932 = distinct !{!43932, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43933 = distinct !{!43933, !43932, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0:thread"}
!43934 = distinct !{null, null, null}
!43935 = distinct !{!43935, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43936 = distinct !{!43936, !43935, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0:thread"}
!43937 = distinct !{!43937, i1 true, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice"}
!43938 = distinct !{!43938, !43937, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice: argument 0"}
!43939 = distinct !{!43939, !292}
!43940 = distinct !{!43940, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice"}
!43941 = distinct !{!43941, !43940, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCsgZAIVb0XKpv_9ssservice: argument 0"}
!43942 = distinct !{!43942, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!43943 = distinct !{!43943, !43942, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 1"}
!43944 = distinct !{!43944, !43942, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!43945 = distinct !{!43945, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECsgZAIVb0XKpv_9ssservice"}
!43946 = distinct !{!43946, !43945, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!43947 = distinct !{!43947, !43945, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECsgZAIVb0XKpv_9ssservice: argument 2"}
!43948 = distinct !{!43948, !43945, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECsgZAIVb0XKpv_9ssservice: argument 3"}
!43949 = distinct !{!43949, !43945, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43950 = distinct !{!43950, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECsgZAIVb0XKpv_9ssservice"}
!43951 = distinct !{!43951, !43950, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43952 = distinct !{!43952, !43950, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECsgZAIVb0XKpv_9ssservice: argument 2"}
!43953 = distinct !{!43953, !43950, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!43954 = distinct !{!43954, i1 true, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice"}
!43955 = distinct !{!43955, !43954, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice: argument 0"}
!43956 = distinct !{!43956, !43954, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCsgZAIVb0XKpv_9ssservice: argument 1"}
!43957 = distinct !{!43957, i1 true, !"_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgZAIVb0XKpv_9ssservice"}
!43958 = distinct !{!43958, !43957, !"_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgZAIVb0XKpv_9ssservice: argument 0"}
!43959 = distinct !{!43959, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!43960 = distinct !{!43960, !43959, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!43961 = distinct !{!43961, i1 true, !"_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE11extend_withCsgZAIVb0XKpv_9ssservice"}
!43962 = distinct !{!43962, !43961, !"_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE11extend_withCsgZAIVb0XKpv_9ssservice: argument 0"}
!43963 = distinct !{!43963, i1 true, !"_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice"}
!43964 = distinct !{!43964, !43963, !"_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCsgZAIVb0XKpv_9ssservice: argument 0:Peel0"}
!43965 = distinct !{!43965, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsgZAIVb0XKpv_9ssservice"}
!43966 = distinct !{!43966, !43965, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsgZAIVb0XKpv_9ssservice: argument 1:Peel0"}
!43967 = distinct !{!43967, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!43968 = distinct !{!43968, !43967, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1:Peel0"}
!43969 = distinct !{!43969, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!43970 = distinct !{!43970, !43969, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!43971 = distinct !{!43971, !43969, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!43972 = distinct !{!43972, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsgZAIVb0XKpv_9ssservice"}
!43973 = distinct !{!43973, !43972, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsgZAIVb0XKpv_9ssservice: argument 0"}
!43974 = distinct !{!43974, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!43975 = distinct !{!43975, !43974, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!43976 = distinct !{!43976, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice"}
!43977 = distinct !{!43977, !43976, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 7:Peel0"}
!43978 = distinct !{!43978, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice"}
!43979 = distinct !{!43979, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 6"}
!43980 = distinct !{!43980, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 5"}
!43981 = distinct !{!43981, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 4"}
!43982 = distinct !{!43982, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 3"}
!43983 = distinct !{!43983, !43976, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 2:Peel0"}
!43984 = distinct !{!43984, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 1"}
!43985 = distinct !{!43985, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43986 = distinct !{!43986, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice"}
!43987 = distinct !{!43987, !43986, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice: argument 0"}
!43988 = distinct !{!43988, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice"}
!43989 = distinct !{!43989, !43988, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgZAIVb0XKpv_9ssservice: argument 0"}
!43990 = distinct !{!43990, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 7"}
!43991 = distinct !{!43991, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!43992 = distinct !{!43992, !43991, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!43993 = distinct !{!43993, !43991, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!43994 = distinct !{!43994, !43978, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsgZAIVb0XKpv_9ssservice: argument 2"}
!43995 = distinct !{!43995, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!43996 = distinct !{!43996, !43995, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!43997 = distinct !{!43997, !43995, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!43998 = distinct !{!43998, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!43999 = distinct !{!43999, !43998, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!44000 = distinct !{!44000, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeWindowBits"}
!44001 = distinct !{!44001, !44000, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeWindowBits: argument 2"}
!44002 = distinct !{!44002, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!44003 = distinct !{!44003, !44002, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!44004 = distinct !{!44004, !44002, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!44005 = distinct !{!44005, !44002, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
end_hunk_3
