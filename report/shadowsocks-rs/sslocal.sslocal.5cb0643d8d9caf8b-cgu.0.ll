Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal:bb.a
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

.thread.i:                                        ; preds = %.thread, %bb.e
  %i.am = phi ptr [ %i.ad, %.thread ], [ %i.al, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !38529, !nonnull !145, !align !153, !noundef !145 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !38529, !nonnull !145, !align !268, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !38529
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !38529
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.84.i, i64 noundef 8192) #52, !noalias !38530
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB2_10CopyBuffer3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.9.i, i64 noundef 8192) #52, !noalias !38530
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ao, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !38529
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.aq, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !38529
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !38529
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !38529
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !38529
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !38529
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !38529
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !197, !noalias !38531
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge237
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge237:                                   ; preds = %bb.g
  %.phi.trans.insert238 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre239 = load ptr, ptr %.phi.trans.insert238, align 8, !noalias !38531
  %.phi.trans.insert240 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre241 = load ptr, ptr %.phi.trans.insert240, align 8, !noalias !38531
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false), !noalias !38531
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !38531
  store ptr %i.az, ptr %i.ax, align 8, !noalias !38531
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.av, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !38531
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.au, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38531
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bb, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !38531
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.as, align 8, !alias.scope !38532, !noalias !38531
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre157.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !38532, !noalias !38531
  %.phi.trans.insert158.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre159.i.i = load ptr, ptr %.phi.trans.insert158.i.i, align 8, !alias.scope !38532, !noalias !38531
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bc = phi ptr [ %i.al, %bb.j ], [ %i.at, %bb.i ] ; 2 uses
  %i.bd = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.aw, %bb.i ] ; 2 uses
  %i.be = phi ptr [ %i.as, %bb.j ], [ %i.ax, %bb.i ]
  %i.bf = phi ptr [ %.pre159.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.bg = phi ptr [ %.pre157.i.i, %bb.j ], [ %i.av, %bb.i ] ; 6 uses
  %i.bh = phi ptr [ %.pre.i.i, %bb.j ], [ %i.az, %bb.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38533)
  call void @llvm.experimental.noalias.scope.decl(metadata !38534)
  call void @llvm.experimental.noalias.scope.decl(metadata !38535)
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
  %.pre.i.i.i.i.i = load i8, ptr %i.bi, align 1, !range !197, !alias.scope !38535, !noalias !38536
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38537)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38538
  %i.bz = load i8, ptr %i.bl, align 8, !range !164, !noalias !38538, !noundef !145
  switch i8 %i.bz, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !269

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.at, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bk, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38539
  store i8 0, ptr %i.bl, align 8, !noalias !38538
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ca = load i8, ptr %i.bm, align 4, !range !148, !noalias !38538, !noundef !145 ; 2 uses
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i8, ptr %i.bn, align 1, !noalias !38538 ; 4 uses
  br i1 %i.cb, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38538
  store i24 0, ptr %i.i, align 4, !noalias !38538
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bo) #52, !noalias !38540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38538
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cd = add i8 %i.cc, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cd, %bb.r ], [ %i.cc, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 1, !noalias !38538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38538
  store i24 0, ptr %i.i, align 4, !noalias !38538
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bo) #52, !noalias !38540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38538
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.sroa.03.06.i42.off8.i.i.i.i.i.i = phi i8 [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i42.off16.i.i.i.i.i.i = phi i8 [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i42.off8.i.i.i.i.i.i, ptr %i.j, align 1, !noalias !38538
  store i8 %.sroa.03.06.i42.off16.i.i.i.i.i.i, ptr %i.bp, align 1, !noalias !38538
  %.pre.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !38541, !noalias !38542
  %.pre115.i.i.i.i.i.i = load i8, ptr %i.br, align 8, !range !148, !alias.scope !38541, !noalias !38542
  %i.ce = trunc nuw i8 %.pre115.i.i.i.i.i.i to i1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
  %i.cf = phi i1 [ false, %._crit_edge.i.i.i.i.i.i ], [ %i.ce, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ]
  %i.cg = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ch = load i64, ptr %i.bj, align 8, !alias.scope !38541, !noalias !38542, !noundef !145
  %i.ci = icmp uge i64 %i.cg, %i.ch
  %or.cond.i.i.i.i.i.i = select i1 %i.ci, i1 true, i1 %i.cf
  br i1 %or.cond.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.x, %bb.v, %bb.s
  %i.cj = phi i64 [ %.pre116.i.i.i.i.i.i, %bb.x ], [ %i.cr, %bb.v ], [ %i.cg, %bb.s ] ; 6 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !38541, !noalias !38542 ; 3 uses
  %i.ck = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t
  %i.cl = load i64, ptr %i.bj, align 8, !alias.scope !38543, !noalias !38542, !noundef !145 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cj, %i.cl
  %i.cm = load ptr, ptr %i.bh, align 8, !alias.scope !38541, !noalias !38542, !nonnull !145
  br i1 %.not.i.i.i.i.i.i.i, label %2, label %.lr.ph.split.preheader.i.i.i.i.i.i, !prof !172

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.promoted80.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !38541, !noalias !38542
  br label %.lr.ph.split.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cn = call fastcc { i64, ptr } @_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg) #52, !noalias !38542 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cq = load i64, ptr %i.bs, align 8, !alias.scope !38541, !noalias !38542, !noundef !145
  %i.cr = load i64, ptr %i.bq, align 8, !alias.scope !38541, !noalias !38542, !noundef !145 ; 2 uses
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.y, label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.ct = extractvalue { i64, ptr } %i.cn, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  store i8 0, ptr %i.j, align 1, !noalias !38538
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %.loopexit37.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %.pre116.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !38541, !noalias !38542
  br label %bb.t

bb.y:                                             ; preds = %bb.v
  %i.cu = load i8, ptr %i.bi, align 1, !range !148, !alias.scope !38541, !noalias !38542, !noundef !145
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.z, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cw = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38544 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ab, label %.loopexit37.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.j, align 1, !noalias !38538
  store i8 0, ptr %i.bi, align 1, !alias.scope !38541, !noalias !38542
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.aj, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false), !alias.scope !38541, !noalias !38542
  %i.da = load i8, ptr %i.br, align 8, !range !148, !alias.scope !38541, !noalias !38542, !noundef !145
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.aj, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.dc = phi i64 [ %i.ea, %bb.aj ], [ %.promoted80.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i ]
  %i.dd = phi i64 [ %i.dz, %bb.aj ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38545)
  %i.de = sub nuw i64 %i.cj, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dd
  %i.dg = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef %i.de) #52, !noalias !38546 ; 2 uses
  %i.dh = extractvalue { i64, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { i64, ptr } %i.dg, 1      ; 3 uses
  %i.dj = icmp eq i64 %i.dh, 2
  br i1 %i.dj, label %bb.ac, label %bb.ag

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted.i.i.i.i.i.i, i64 noundef %i.cj, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38547
  unreachable

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.dk = load i8, ptr %i.br, align 8, !range !148, !alias.scope !38543, !noalias !38542, !noundef !145
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = icmp uge i64 %i.cj, %i.cl
  %or.cond17.not.i.i.i.i.i.i.i = or i1 %i.dm, %i.dl
  br i1 %or.cond17.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = call fastcc { i64, ptr } @_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg) #52, !noalias !38542 ; 2 uses
  %i.do = extractvalue { i64, ptr } %i.dn, 0
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = extractvalue { i64, ptr } %i.dn, 1      ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.dq, null
  %or.cond48.i.i.i.i.i.i = select i1 %i.dp, i1 true, i1 %.not8.i.i.i.i.i.i.i
  br i1 %or.cond48.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread.i.i.i.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dr = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38544 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.af

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
  store i8 0, ptr %i.j, align 1, !noalias !38538
  %i.dx = icmp eq ptr %i.di, null
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dy = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38544
  br label %.loopexit37.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dz = add i64 %i.dd, %i.dv                    ; 3 uses
  store i64 %i.dz, ptr %i.bs, align 8, !alias.scope !38541, !noalias !38542
  %i.ea = add i64 %i.dc, %i.dv                    ; 2 uses
  store i64 %i.ea, ptr %i.bt, align 8, !alias.scope !38541, !noalias !38542
  store i8 1, ptr %i.bi, align 1, !alias.scope !38541, !noalias !38542
  %i.eb = icmp ult i64 %i.dz, %i.cj
  br i1 %i.eb, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !38544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38538
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.ak:                                            ; preds = %bb.l
  %i.ec = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38548 ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.ec, 0
  %i.ee = trunc nuw i64 %i.ed to i1
  br i1 %i.ee, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, label %bb.an

.loopexit37.i.i.i.i.i:                            ; preds = %bb.af, %bb.w, %bb.ai, %.thread.i.i.i.i.i.i, %bb.aa
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.ct, %bb.w ], [ %.sroa.5.1.i47.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.cz, %bb.aa ], [ %i.dy, %bb.ai ], [ %i.du, %bb.af ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !38544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38538
  br label %.loopexit75.i.i.i.i

bb.al:                                            ; preds = %bb.af
  store i8 0, ptr %i.j, align 1, !noalias !38538
  %i.ef = load i64, ptr %i.bt, align 8, !alias.scope !38541, !noalias !38542, !noundef !145
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.j) #52, !noalias !38544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38538
  call void @llvm.experimental.noalias.scope.decl(metadata !38549)
  %i.eg = load i8, ptr %i.bi, align 1, !range !197, !alias.scope !38550, !noalias !38542, !noundef !145
  %i.eh = icmp samesign ult i8 %i.eg, 2
  br i1 %i.eh, label %bb.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !38551, !noalias !38542, !noundef !145 ; 2 uses
  %i.ei = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !38550, !noalias !38542, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #52, !noalias !38552
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.am, %bb.al
  store i64 %i.ef, ptr %i.bh, align 8, !alias.scope !38535, !noalias !38542
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.ap, %bb.ao, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ 3, %bb.ao ], [ 3, %bb.ap ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  store i8 %storemerge.i.i.i.i.i, ptr %i.bi, align 1, !alias.scope !38535, !noalias !38542
  br label %bb.l

bb.an:                                            ; preds = %bb.ak
  %i.ej = extractvalue { i64, ptr } %i.ec, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %.loopexit75.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !38553)
  %i.ek = icmp samesign ult i8 %i.bu, 2
  br i1 %i.ek, label %bb.ap, label %.backedge.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !38554, !noalias !38542, !noundef !145 ; 2 uses
  %i.el = icmp eq i64 %.val1.i21.i.i.i.i.i, 0
  br i1 %i.el, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.ap
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !38555, !noalias !38542, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !38556
  br label %.backedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.l
  %i.em = load i64, ptr %i.bh, align 8, !alias.scope !38535, !noalias !38542, !noundef !145
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

.loopexit75.i.i.i.i:                              ; preds = %bb.an, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.ej, %bb.an ]
  %i.en = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %bb.ak, %bb.aq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  %i.eo = phi i1 [ false, %bb.aq ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ true, %bb.ak ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.em, %bb.aq ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ undef, %bb.ak ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !38532, !noalias !38531, !nonnull !145, !align !153, !noundef !145 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38557)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.er, align 1, !alias.scope !38557, !noalias !38542
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.val1.i21.i38.i.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !38557, !noalias !38542 ; 11 uses
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
  %.promoted117.i.i.i.i.i = load i8, ptr %i.ex, align 8, !alias.scope !38557, !noalias !38542
  %.promoted118.i.i.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !38557, !noalias !38542
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge.i44.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  %i.fd = phi i64 [ %i.im, %.backedge.i44.i.i.i.i ], [ %.promoted118.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 4 uses
  %i.fe = phi i8 [ %i.in, %.backedge.i44.i.i.i.i ], [ %.promoted117.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 5 uses
  %i.ff = phi i8 [ %storemerge.i45.i.i.i.i, %.backedge.i44.i.i.i.i ], [ %.promoted.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38559
  %i.fk = load i8, ptr %i.bl, align 8, !range !164, !noalias !38559, !noundef !145
  switch i8 %i.fk, label %default.unreachable [
    i8 0, label %bb.av
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i
    i8 1, label %bb.au
  ], !prof !191

bb.au:                                            ; preds = %bb.at
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bk, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38560
  store i8 0, ptr %i.bl, align 8, !noalias !38559
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fl = load i8, ptr %i.bm, align 4, !range !148, !noalias !38559, !noundef !145 ; 2 uses
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = load i8, ptr %i.bn, align 1, !noalias !38559 ; 4 uses
  br i1 %i.fm, label %bb.aw, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i.i.i61.i.i.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i61.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.ax

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.aw
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38559
  store i24 0, ptr %i.g, align 4, !noalias !38559
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.eu) #52, !noalias !38560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38559
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.fo = add i8 %i.fn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i: ; preds = %bb.ax, %bb.av
  %.sroa.33.0.i.i.i.i.i47.i.i.i.i = phi i8 [ %i.fo, %bb.ax ], [ %i.fn, %bb.av ]
  store i8 %.sroa.33.0.i.i.i.i.i47.i.i.i.i, ptr %i.bn, align 1, !noalias !38559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38559
  store i24 0, ptr %i.g, align 4, !noalias !38559
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.eu) #52, !noalias !38560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38559
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i, %bb.at
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.fl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i ], [ 0, %bb.at ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.fn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i46.i.i.i.i ], [ 0, %bb.at ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !38559
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.ev, align 1, !noalias !38559
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !38561, !noalias !38542
  %i.fp = load ptr, ptr %i.eq, align 8, !alias.scope !38561, !noalias !38542, !nonnull !145 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !38561, !noalias !38542
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i51.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i
  %i.fq = phi i64 [ %i.gw, %._crit_edge.i.i51.i.i.i.i ], [ %i.fd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ]
  %i.fr = phi i8 [ %i.fz, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 3 uses
  %i.fs = phi i8 [ %i.gx, %._crit_edge.i.i51.i.i.i.i ], [ %i.ff, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.ft = phi i8 [ %i.ga, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.gy, %._crit_edge.i.i51.i.i.i.i ], [ %i.fd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.fu = phi i64 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 4 uses
  %i.fv = phi i8 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %i.fe, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 2 uses
  %i.fw = phi i64 [ 0, %._crit_edge.i.i51.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i48.i.i.i.i ] ; 7 uses
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
  br i1 %.not.i41.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i58.i.i.i.i, !prof !172

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !38562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38563
  store ptr %i.fp, ptr %i.f, align 8, !noalias !38563
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.ey, align 8, !noalias !38563
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.fa, align 8, !noalias !38563
  store i64 %i.fw, ptr %i.ez, align 8, !noalias !38563
  %i.ge = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !38564 ; 2 uses
  %i.gf = extractvalue { i64, ptr } %i.ge, 0
  %i.gg = trunc nuw i64 %i.gf to i1               ; 2 uses
  %i.gh = extractvalue { i64, ptr } %i.ge, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.gh, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gi = load i64, ptr %i.ey, align 8, !noalias !38563, !noundef !145 ; 2 uses
  %i.gj = load i64, ptr %i.ez, align 8, !noalias !38563, !noundef !145 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.gj, %i.gi
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.bc, label %.thread.i.i50.i.i.i.i, !prof !172

.thread.i.i50.i.i.i.i:                            ; preds = %bb.bb
  %i.gk = icmp eq i64 %i.fw, %i.gj
  %i.gl = zext i1 %i.gk to i8                     ; 4 uses
  store i8 %i.gl, ptr %i.ex, align 8, !alias.scope !38565, !noalias !38542
  store i64 %i.gj, ptr %i.ew, align 8, !alias.scope !38565, !noalias !38542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38563
  br label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gj, i64 noundef %i.gi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38564
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38563
  br i1 %i.gg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.gm = icmp eq i64 %i.fu, %i.fw
  br i1 %i.gm, label %bb.bh, label %bb.az

bb.be:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i8 0, ptr %i.h, align 1, !noalias !38559
  br label %.loopexit37.i53.i.i.i.i

bb.bg:                                            ; preds = %bb.be, %.thread.i.i50.i.i.i.i
  %i.gn = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ %i.fr, %bb.be ]
  %i.go = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ %i.ft, %bb.be ]
  %i.gp = phi i8 [ %i.gl, %.thread.i.i50.i.i.i.i ], [ 0, %bb.be ]
  %i.gq = phi i64 [ %i.gj, %.thread.i.i50.i.i.i.i ], [ %i.fw, %bb.be ]
  store i8 0, ptr %i.h, align 1, !noalias !38559
  br label %bb.az

bb.bh:                                            ; preds = %bb.bd
  %i.gr = trunc nuw i8 %i.fs to i1
  br i1 %i.gr, label %bb.bi, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gs = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38560 ; 2 uses
  %i.gt = extractvalue { i64, ptr } %i.gs, 0
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gv = extractvalue { i64, ptr } %i.gs, 1      ; 2 uses
  %.not39.i.i60.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not39.i.i60.i.i.i.i, label %bb.bk, label %.loopexit37.i53.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  store i8 0, ptr %i.h, align 1, !noalias !38559
  store i8 0, ptr %i.er, align 1, !alias.scope !38561, !noalias !38542
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i51.i.i.i.i:                        ; preds = %bb.bu, %bb.az
  %i.gw = phi i64 [ %i.fq, %bb.az ], [ %i.ig, %bb.bu ] ; 2 uses
  %i.gx = phi i8 [ %i.fs, %bb.az ], [ 1, %bb.bu ] ; 2 uses
  %i.gy = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.az ], [ %i.ig, %bb.bu ] ; 2 uses
  %i.gz = trunc nuw i8 %i.gb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false), !alias.scope !38561, !noalias !38542
  br i1 %i.gz, label %bb.bp, label %bb.ay

.lr.ph.split.i.i58.i.i.i.i:                       ; preds = %.lr.ph.i.i57.i.i.i.i, %bb.bu
  %i.ha = phi i64 [ %i.ig, %bb.bu ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i57.i.i.i.i ]
  %i.hb = phi i64 [ %i.if, %bb.bu ], [ %i.fu, %.lr.ph.i.i57.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38566)
  %i.hc = sub nuw i64 %i.gc, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.hb
  %i.he = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef range(i64 0, -9223372036854775808) %i.hc) #52, !noalias !38567 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0      ; 2 uses
  %i.hg = extractvalue { i64, ptr } %i.he, 1      ; 3 uses
  %i.hh = icmp eq i64 %i.hf, 2
  br i1 %i.hh, label %bb.bl, label %bb.br

3:                                                ; preds = %.lr.ph.i.i57.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef %i.gc, i64 noundef %.val1.i21.i38.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38568
  unreachable

bb.bl:                                            ; preds = %.lr.ph.split.i.i58.i.i.i.i
  %i.hi = trunc nuw i8 %i.ga to i1
  %i.hj = icmp uge i64 %i.gc, %.val1.i21.i38.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.hj, %i.hi
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !38569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38570
  store ptr %i.fp, ptr %i.e, align 8, !noalias !38570
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.hk, align 8, !noalias !38570
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i38.i.i.i.i, ptr %i.hm, align 8, !noalias !38570
  store i64 %i.gc, ptr %i.hl, align 8, !noalias !38570
  %i.hn = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !38571 ; 2 uses
  %i.ho = extractvalue { i64, ptr } %i.hn, 0
  %i.hp = trunc nuw i64 %i.ho to i1               ; 2 uses
  %i.hq = extractvalue { i64, ptr } %i.hn, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.hq, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.hp, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hr = load i64, ptr %i.hk, align 8, !noalias !38570, !noundef !145 ; 2 uses
  %i.hs = load i64, ptr %i.hl, align 8, !noalias !38570, !noundef !145 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.hs, %i.hr
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.bo, label %.thread.i.i.i.i.i.i.i, !prof !172

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.bn
  %i.ht = icmp eq i64 %i.gc, %i.hs
  %i.hu = zext i1 %i.ht to i8
  store i8 %i.hu, ptr %i.ex, align 8, !alias.scope !38572, !noalias !38542
  store i64 %i.hs, ptr %i.ew, align 8, !alias.scope !38572, !noalias !38542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38570
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hs, i64 noundef %i.hr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38571
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38570
  %i.hv = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.hw = select i1 %i.hp, i1 true, i1 %i.hv
  br i1 %i.hw, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.bp:                                            ; preds = %._crit_edge.i.i51.i.i.i.i
  %i.hx = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38560 ; 2 uses
  %i.hy = extractvalue { i64, ptr } %i.hx, 0
  %i.hz = trunc nuw i64 %i.hy to i1
  br i1 %i.hz, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ia = extractvalue { i64, ptr } %i.hx, 1      ; 2 uses
  %.not40.i.i52.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not40.i.i52.i.i.i.i, label %bb.bw, label %.loopexit37.i53.i.i.i.i

bb.br:                                            ; preds = %.lr.ph.split.i.i58.i.i.i.i
  %i.ib = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.ic = trunc nuw i64 %i.hf to i1
  br i1 %i.ic, label %.thread47.i.i.i.i.i.i, label %bb.bs

.thread47.i.i.i.i.i.i:                            ; preds = %bb.br, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.hq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i ], [ %i.hg, %bb.br ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i53.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  store i8 0, ptr %i.h, align 1, !noalias !38559
  %i.id = icmp eq ptr %i.hg, null
  br i1 %i.id, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ie = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38560
  br label %.loopexit37.i53.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.if = add i64 %i.hb, %i.ib                    ; 3 uses
  store i64 %i.if, ptr %i.fb, align 8, !alias.scope !38561, !noalias !38542
  %i.ig = add i64 %i.ha, %i.ib                    ; 4 uses
  store i64 %i.ig, ptr %i.fc, align 8, !alias.scope !38561, !noalias !38542
  store i8 1, ptr %i.er, align 1, !alias.scope !38561, !noalias !38542
  %i.ih = icmp ult i64 %i.if, %i.gc
  br i1 %i.ih, label %.lr.ph.split.i.i58.i.i.i.i, label %._crit_edge.i.i51.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %bb.bp, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.bl, %bb.bk, %bb.bi, %bb.bh
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38560
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.bv:                                            ; preds = %bb.ar
  %i.ii = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38573 ; 2 uses
  %i.ij = extractvalue { i64, ptr } %i.ii, 0
  %i.ik = trunc nuw i64 %i.ij to i1
  br i1 %i.ik, label %.loopexit, label %bb.bx

.loopexit37.i53.i.i.i.i:                          ; preds = %bb.bq, %bb.bt, %.thread47.i.i.i.i.i.i, %bb.bj, %bb.bf
  %.sroa.12.2.i.ph.i54.i.i.i.i = phi ptr [ %i.gh, %bb.bf ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.gv, %bb.bj ], [ %i.ie, %bb.bt ], [ %i.ia, %bb.bq ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38559
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !38559
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38559
  %i.il = icmp samesign ugt i8 %i.gx, 1
  %brmerge.i.i.i.i.i = select i1 %i.il, i1 true, i1 %i.et
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %.val1.i21.i38.i.i.i.i, i64 noundef 1) #52, !noalias !38574
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i55.i.i.i.i, %bb.bw
  store i64 %i.gy, ptr %i.eq, align 8, !alias.scope !38557, !noalias !38542
  br label %.backedge.i44.i.i.i.i

.backedge.i44.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i
  %storemerge.i45.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ] ; 2 uses
  %i.im = phi i64 [ %i.gw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i ], [ %i.fd, %bb.by ], [ %i.fd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ]
  %i.in = phi i8 [ %i.fz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i56.i.i.i.i ], [ %i.fe, %bb.by ], [ %i.fe, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i ]
  store i8 %storemerge.i45.i.i.i.i, ptr %i.er, align 1, !alias.scope !38557, !noalias !38542
  br label %bb.ar

bb.bx:                                            ; preds = %bb.bv
  %i.io = extractvalue { i64, ptr } %i.ii, 1      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i41.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !38575)
  %brmerge128.i.i.i.i.i = select i1 %i.fg, i1 true, i1 %i.et
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i44.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i42.i.i.i.i: ; preds = %bb.by
  %.val.i23.i43.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !38576, !noalias !38542, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i43.i.i.i.i, i64 noundef %.val1.i21.i38.i.i.i.i, i64 noundef 1) #52, !noalias !38577
  br label %.backedge.i44.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %.loopexit37.i53.i.i.i.i
  %.sroa.6.1.i39.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i54.i.i.i.i, %.loopexit37.i53.i.i.i.i ], [ %i.io, %bb.bx ]
  %i.ip = ptrtoint ptr %.sroa.6.1.i39.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.ar
  br i1 %i.eo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = load i64, ptr %i.eq, align 8, !alias.scope !38557, !noalias !38542, !noundef !145
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38559
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @718) #62, !noalias !38578
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit75.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit75.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.ip, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.en, %.loopexit75.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.iq, %bb.ca ], [ undef, %.loopexit75.i.i.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !38579)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.it = load i8, ptr %i.is, align 1, !range !197, !alias.scope !38579, !noalias !38531, !noundef !145
  %i.iu = icmp samesign ult i8 %i.it, 2
  br i1 %i.iu, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.iv, align 8, !alias.scope !38580, !noalias !38531, !noundef !145 ; 2 uses
  %i.iw = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.iw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !38579, !noalias !38531, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !38581
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !38582)
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.iz = load i8, ptr %i.iy, align 1, !range !197, !alias.scope !38582, !noalias !38531, !noundef !145
  %i.ja = icmp samesign ult i8 %i.iz, 2
  br i1 %i.ja, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jb, align 8, !alias.scope !38583, !noalias !38531, !noundef !145 ; 2 uses
  %i.jc = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.jc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1Z_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.ix, align 8, !alias.scope !38582, !noalias !38531, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !38584
end_hunk_0
begin_hunk_1_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtB6_3tun3tcp13TcpConnectionNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal:bb.a
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !38694
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !38694
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !38694
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !38694
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !38694
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !38694
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !38694
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !197, !noalias !38696
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !38696
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !38696
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !38696
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !38696
  store ptr %i.bb, ptr %i.az, align 8, !noalias !38696
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !38696
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38696
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !38696
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !38697, !noalias !38696
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !38697, !noalias !38696
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !38697, !noalias !38696
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38698)
  call void @llvm.experimental.noalias.scope.decl(metadata !38699)
  call void @llvm.experimental.noalias.scope.decl(metadata !38700)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !38700, !noalias !38701
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !38700, !noalias !38701 ; 11 uses
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
  %.promoted117.i.i.i.i.i = load i8, ptr %i.bu, align 8, !alias.scope !38700, !noalias !38701
  %.promoted118.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !38700, !noalias !38701
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38703
  %i.ch = load i8, ptr %i.bo, align 8, !range !164, !noalias !38703, !noundef !145
  switch i8 %i.ch, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !269

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.aw, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38704
  store i8 0, ptr %i.bo, align 8, !noalias !38703
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ci = load i8, ptr %i.bp, align 4, !range !148, !noalias !38703, !noundef !145 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load i8, ptr %i.bq, align 1, !noalias !38703 ; 4 uses
  br i1 %i.cj, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38703
  store i24 0, ptr %i.k, align 4, !noalias !38703
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38703
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = add i8 %i.ck, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cl, %bb.r ], [ %i.ck, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 1, !noalias !38703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38703
  store i24 0, ptr %i.k, align 4, !noalias !38703
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38703
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.ci, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.ck, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.l, align 1, !noalias !38703
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.bs, align 1, !noalias !38703
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !38705, !noalias !38706
  %i.cm = load ptr, ptr %i.bj, align 8, !alias.scope !38705, !noalias !38706, !nonnull !145 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !38705, !noalias !38706
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
  %i.cn = phi i64 [ %i.dt, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ]
  %i.co = phi i8 [ %i.cw, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.cp = phi i8 [ %i.du, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i8 [ %i.cx, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %i.cs = phi i8 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 7 uses
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
  br i1 %.not.i41.i.i.i.i.i.i, label %2, label %.lr.ph.split.i.i.i.i.i.i, !prof !172

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !38707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38708
  store ptr %i.cm, ptr %i.j, align 8, !noalias !38708
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bv, align 8, !noalias !38708
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bx, align 8, !noalias !38708
  store i64 %i.ct, ptr %i.bw, align 8, !noalias !38708
  %i.db = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #52, !noalias !38709 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1               ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.db, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.de, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.dd, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i64, ptr %i.bv, align 8, !noalias !38708, !noundef !145 ; 2 uses
  %i.dg = load i64, ptr %i.bw, align 8, !noalias !38708, !noundef !145 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.dg, %i.df
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i.i, !prof !172

.thread.i.i.i.i.i.i:                              ; preds = %bb.v
  %i.dh = icmp eq i64 %i.ct, %i.dg
  %i.di = zext i1 %i.dh to i8                     ; 4 uses
  store i8 %i.di, ptr %i.bu, align 8, !alias.scope !38710, !noalias !38706
  store i64 %i.dg, ptr %i.bt, align 8, !alias.scope !38710, !noalias !38706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38708
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dg, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38709
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38708
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.dj = icmp eq i64 %i.cr, %i.ct
  br i1 %i.dj, label %bb.ab, label %bb.t

bb.y:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.l, align 1, !noalias !38703
  br label %.loopexit37.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y, %.thread.i.i.i.i.i.i
  %i.dk = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.co, %bb.y ]
  %i.dl = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.cq, %bb.y ]
  %i.dm = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ 0, %bb.y ]
  %i.dn = phi i64 [ %i.dg, %.thread.i.i.i.i.i.i ], [ %i.ct, %bb.y ]
  store i8 0, ptr %i.l, align 1, !noalias !38703
  br label %bb.t

bb.ab:                                            ; preds = %bb.x
  %i.do = trunc nuw i8 %i.cp to i1
  br i1 %i.do, label %bb.ac, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38704 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractvalue { i64, ptr } %i.dp, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ae, label %.loopexit37.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.l, align 1, !noalias !38703
  store i8 0, ptr %i.bk, align 1, !alias.scope !38705, !noalias !38706
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ao, %bb.t
  %i.dt = phi i64 [ %i.cn, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.du = phi i8 [ %i.cp, %bb.t ], [ 1, %bb.ao ]  ; 2 uses
  %i.dv = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.dw = trunc nuw i8 %i.cy to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !38705, !noalias !38706
  br i1 %i.dw, label %bb.aj, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ao
  %i.dx = phi i64 [ %i.fd, %bb.ao ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dy = phi i64 [ %i.fc, %bb.ao ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38711)
  %i.dz = sub nuw i64 %i.cz, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dy
  %i.eb = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz) #52, !noalias !38712 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0      ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 3 uses
  %i.ee = icmp eq i64 %i.ec, 2
  br i1 %i.ee, label %bb.af, label %bb.al

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cz, i64 noundef %.val1.i21.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38713
  unreachable

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ef = trunc nuw i8 %i.cx to i1
  %i.eg = icmp uge i64 %i.cz, %.val1.i21.i.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.eg, %i.ef
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !38714)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38715
  store ptr %i.cm, ptr %i.i, align 8, !noalias !38715
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.eh, align 8, !noalias !38715
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.ej, align 8, !noalias !38715
  store i64 %i.cz, ptr %i.ei, align 8, !noalias !38715
  %i.ek = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !38716 ; 2 uses
  %i.el = extractvalue { i64, ptr } %i.ek, 0
  %i.em = trunc nuw i64 %i.el to i1               ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.ek, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.en, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.em, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i64, ptr %i.eh, align 8, !noalias !38715, !noundef !145 ; 2 uses
  %i.ep = load i64, ptr %i.ei, align 8, !noalias !38715, !noundef !145 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i.i.i.i.i.i, !prof !172

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ah
  %i.eq = icmp eq i64 %i.cz, %i.ep
  %i.er = zext i1 %i.eq to i8
  store i8 %i.er, ptr %i.bu, align 8, !alias.scope !38717, !noalias !38706
  store i64 %i.ep, ptr %i.bt, align 8, !alias.scope !38717, !noalias !38706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38715
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38716
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38715
  %i.es = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.et = select i1 %i.em, i1 true, i1 %i.es
  br i1 %i.et, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38704 ; 2 uses
  %i.ev = extractvalue { i64, ptr } %i.eu, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 2 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not40.i.i.i.i.i.i, label %bb.aq, label %.loopexit37.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ey = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ez = trunc nuw i64 %i.ec to i1
  br i1 %i.ez, label %.thread47.i.i.i.i.i.i, label %bb.am

.thread47.i.i.i.i.i.i:                            ; preds = %bb.al, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.en, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i ], [ %i.ed, %bb.al ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.l, align 1, !noalias !38703
  %i.fa = icmp eq ptr %i.ed, null
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38704
  br label %.loopexit37.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fc = add i64 %i.dy, %i.ey                    ; 3 uses
  store i64 %i.fc, ptr %i.by, align 8, !alias.scope !38705, !noalias !38706
  %i.fd = add i64 %i.dx, %i.ey                    ; 4 uses
  store i64 %i.fd, ptr %i.bz, align 8, !alias.scope !38705, !noalias !38706
  store i8 1, ptr %i.bk, align 1, !alias.scope !38705, !noalias !38706
  %i.fe = icmp ult i64 %i.fc, %i.cz
  br i1 %i.fe, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %bb.aj, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ac, %bb.ab
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38703
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %bb.l
  %i.ff = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38718 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, label %bb.ar

.loopexit37.i.i.i.i.i:                            ; preds = %bb.ak, %bb.an, %.thread47.i.i.i.i.i.i, %bb.ad, %bb.z
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.de, %bb.z ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.ds, %bb.ad ], [ %i.fb, %bb.an ], [ %i.ex, %bb.ak ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38703
  br label %.loopexit83.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  store i8 0, ptr %i.l, align 1, !noalias !38703
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38703
  %i.fi = icmp samesign ugt i8 %i.du, 1
  %brmerge.i.i.i.i.i = select i1 %i.fi, i1 true, i1 %i.bm
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !38719
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.aq
  store i64 %i.dv, ptr %i.bj, align 8, !alias.scope !38700, !noalias !38706
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ 3, %bb.as ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  %i.fj = phi i64 [ %i.dt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ %i.ca, %bb.as ], [ %i.ca, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  %i.fk = phi i8 [ %i.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ %i.cb, %bb.as ], [ %i.cb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.bk, align 1, !alias.scope !38700, !noalias !38706
  br label %bb.l

bb.ar:                                            ; preds = %bb.ap
  %i.fl = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %bb.as, label %.loopexit83.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !38720)
  %brmerge128.i.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.bm
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.as
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !38721, !noalias !38706, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !38722
  br label %.backedge.i.i.i.i.i

bb.at:                                            ; preds = %bb.l
  %i.fm = load i64, ptr %i.bj, align 8, !alias.scope !38700, !noalias !38706, !noundef !145
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

.loopexit83.i.i.i.i:                              ; preds = %bb.ar, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.fl, %bb.ar ]
  %i.fn = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %bb.ap, %bb.at, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  %i.fo = phi i1 [ false, %bb.at ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ true, %bb.ap ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.fm, %bb.at ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ undef, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !38697, !noalias !38696, !nonnull !145, !align !153, !noundef !145 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38723)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 41 ; 4 uses
  %.promoted.i38.i.i.i.i = load i8, ptr %i.fr, align 1, !alias.scope !38723, !noalias !38706
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.val1.i21.i39.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !38723, !noalias !38706 ; 11 uses
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
  %.promoted105.i.i.i.i.i = load i8, ptr %i.fx, align 8, !alias.scope !38723, !noalias !38706
  %.promoted106.i.i.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !38723, !noalias !38706
  br label %bb.au

bb.au:                                            ; preds = %.backedge.i45.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  %i.gd = phi i64 [ %i.je, %.backedge.i45.i.i.i.i ], [ %.promoted106.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 4 uses
  %i.ge = phi i8 [ %i.jf, %.backedge.i45.i.i.i.i ], [ %.promoted105.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 5 uses
  %i.gf = phi i8 [ %storemerge.i46.i.i.i.i, %.backedge.i45.i.i.i.i ], [ %.promoted.i38.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38725
  %i.gk = load i8, ptr %i.bo, align 8, !range !164, !noalias !38725, !noundef !145
  switch i8 %i.gk, label %default.unreachable [
    i8 0, label %bb.ay
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i
    i8 1, label %bb.ax
  ], !prof !191

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38726
  store i8 0, ptr %i.bo, align 8, !noalias !38725
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = load i8, ptr %i.bp, align 4, !range !148, !noalias !38725, !noundef !145 ; 2 uses
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = load i8, ptr %i.bq, align 1, !noalias !38725 ; 4 uses
  br i1 %i.gm, label %bb.az, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i.i.i69.i.i.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i.i69.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.ba

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.az
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38725
  store i24 0, ptr %i.g, align 4, !noalias !38725
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !38726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38725
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.go = add i8 %i.gn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i: ; preds = %bb.ba, %bb.ay
  %.sroa.33.0.i.i.i.i.i48.i.i.i.i = phi i8 [ %i.go, %bb.ba ], [ %i.gn, %bb.ay ]
  store i8 %.sroa.33.0.i.i.i.i.i48.i.i.i.i, ptr %i.bq, align 1, !noalias !38725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38725
  store i24 0, ptr %i.g, align 4, !noalias !38725
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !38726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38725
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i, %bb.aw
  %.sroa.03.06.i41.off8.i.i.i.i.i.i = phi i8 [ %i.gl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.03.06.i41.off16.i.i.i.i.i.i = phi i8 [ %i.gn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  store i8 %.sroa.03.06.i41.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !38725
  store i8 %.sroa.03.06.i41.off16.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !38725
  %.promoted123.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !38727, !noalias !38706
  %i.gp = load ptr, ptr %i.fq, align 8, !alias.scope !38727, !noalias !38706, !nonnull !145 ; 4 uses
  %.promoted125.i.i50.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !38727, !noalias !38706
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i56.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i
  %i.gq = phi i64 [ %i.hs, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ]
  %i.gr = phi i8 [ %i.gz, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %i.gs = phi i8 [ %i.ht, %._crit_edge.i.i56.i.i.i.i ], [ %i.gf, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gt = phi i8 [ %i.ha, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %.promoted100127.i.i.i.i.i.i = phi i64 [ %i.hu, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gu = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted125.i.i50.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 4 uses
  %i.gv = phi i8 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gw = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted123.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 7 uses
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
  br i1 %.not.i39.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i61.i.i.i.i, !prof !172

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !38728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38729
  store ptr %i.gp, ptr %i.f, align 8, !noalias !38729
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.fy, align 8, !noalias !38729
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ga, align 8, !noalias !38729
  store i64 %i.gw, ptr %i.fz, align 8, !noalias !38729
  %i.he = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !38730 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0
  %i.hg = trunc nuw i64 %i.hf to i1               ; 2 uses
  %i.hh = extractvalue { i64, ptr } %i.he, 1      ; 2 uses
  %.not6.i.i.i52.i.i.i.i = icmp ne ptr %i.hh, null ; 2 uses
  %or.cond.not.i.i.i53.i.i.i.i = select i1 %i.hg, i1 true, i1 %.not6.i.i.i52.i.i.i.i
  br i1 %or.cond.not.i.i.i53.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i64, ptr %i.fy, align 8, !noalias !38729, !noundef !145 ; 2 uses
  %i.hj = load i64, ptr %i.fz, align 8, !noalias !38729, !noundef !145 ; 5 uses
  %.not7.i.i.i54.i.i.i.i = icmp ugt i64 %i.hj, %i.hi
  br i1 %.not7.i.i.i54.i.i.i.i, label %bb.bf, label %.thread.i.i55.i.i.i.i, !prof !172

.thread.i.i55.i.i.i.i:                            ; preds = %bb.be
  %i.hk = icmp eq i64 %i.gw, %i.hj
  %i.hl = zext i1 %i.hk to i8                     ; 4 uses
  store i8 %i.hl, ptr %i.fx, align 8, !alias.scope !38731, !noalias !38706
  store i64 %i.hj, ptr %i.fw, align 8, !alias.scope !38731, !noalias !38706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38729
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hj, i64 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38730
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38729
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.hm = icmp eq i64 %i.gu, %i.gw
  br i1 %i.hm, label %bb.bk, label %bb.bc

bb.bh:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i52.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %i.h, align 1, !noalias !38725
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bh, %.thread.i.i55.i.i.i.i
  %i.hn = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gr, %bb.bh ]
  %i.ho = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gt, %bb.bh ]
  %i.hp = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ 0, %bb.bh ]
  %i.hq = phi i64 [ %i.hj, %.thread.i.i55.i.i.i.i ], [ %i.gw, %bb.bh ]
  store i8 0, ptr %i.h, align 1, !noalias !38725
  br label %bb.bc

bb.bk:                                            ; preds = %bb.bg
  %i.hr = trunc nuw i8 %i.gs to i1
  br i1 %i.hr, label %bb.bl, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i8 0, ptr %i.h, align 1, !noalias !38725
  store i8 0, ptr %i.fr, align 1, !alias.scope !38727, !noalias !38706
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i56.i.i.i.i:                        ; preds = %bb.bt, %bb.bc
  %i.hs = phi i64 [ %i.gq, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.ht = phi i8 [ %i.gs, %bb.bc ], [ 1, %bb.bt ] ; 2 uses
  %i.hu = phi i64 [ %.promoted100127.i.i.i.i.i.i, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.hv = trunc nuw i8 %i.hb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false), !alias.scope !38727, !noalias !38706
  br i1 %i.hv, label %bb.bw, label %bb.bb

.lr.ph.split.i.i61.i.i.i.i:                       ; preds = %.lr.ph.i.i60.i.i.i.i, %bb.bt
  %i.hw = phi i64 [ %i.iy, %bb.bt ], [ %.promoted100127.i.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ]
  %i.hx = phi i64 [ %i.ix, %bb.bt ], [ %i.gu, %.lr.ph.i.i60.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38732)
  %i.hy = sub nuw i64 %i.hc, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hx
  %i.ia = call { i64, ptr } @_RNvXs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.hy) #52, !noalias !38733 ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { i64, ptr } %i.ia, 1      ; 3 uses
  %i.id = icmp eq i64 %i.ib, 2
  br i1 %i.id, label %bb.bm, label %bb.bq

3:                                                ; preds = %.lr.ph.i.i60.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.hc, i64 noundef %.val1.i21.i39.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38734
  unreachable

bb.bm:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.ie = trunc nuw i8 %i.ha to i1
  %i.if = icmp uge i64 %i.hc, %.val1.i21.i39.i.i.i.i
  %or.cond18.not.i.i.i63.i.i.i.i = or i1 %i.if, %i.ie
  br i1 %or.cond18.not.i.i.i63.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !38735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38736
  store ptr %i.gp, ptr %i.e, align 8, !noalias !38736
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ig, align 8, !noalias !38736
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ii, align 8, !noalias !38736
  store i64 %i.hc, ptr %i.ih, align 8, !noalias !38736
  %i.ij = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !38737 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %i.il = trunc nuw i64 %i.ik to i1               ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.ij, 1      ; 2 uses
  %.not6.i.i.i.i64.i.i.i.i = icmp ne ptr %i.im, null ; 2 uses
  %or.cond.not.i.i.i.i65.i.i.i.i = select i1 %i.il, i1 true, i1 %.not6.i.i.i.i64.i.i.i.i
  br i1 %or.cond.not.i.i.i.i65.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = load i64, ptr %i.ig, align 8, !noalias !38736, !noundef !145 ; 2 uses
  %i.io = load i64, ptr %i.ih, align 8, !noalias !38736, !noundef !145 ; 4 uses
  %.not7.i.i.i.i66.i.i.i.i = icmp ugt i64 %i.io, %i.in
  br i1 %.not7.i.i.i.i66.i.i.i.i, label %bb.bp, label %.thread.i.i.i67.i.i.i.i, !prof !172

.thread.i.i.i67.i.i.i.i:                          ; preds = %bb.bo
  %i.ip = icmp eq i64 %i.hc, %i.io
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.fx, align 8, !alias.scope !38738, !noalias !38706
  store i64 %i.io, ptr %i.fw, align 8, !alias.scope !38738, !noalias !38706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38736
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.io, i64 noundef %i.in, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38737
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38736
  %i.ir = xor i1 %.not6.i.i.i.i64.i.i.i.i, true
  %i.is = select i1 %i.il, i1 true, i1 %i.ir
  br i1 %i.is, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread45.i.i.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.it = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.iu = trunc nuw i64 %i.ib to i1
  br i1 %i.iu, label %.thread45.i.i.i.i.i.i, label %bb.br

.thread45.i.i.i.i.i.i:                            ; preds = %bb.bq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i48.i.i.i.i.i.i = phi ptr [ %i.im, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i ], [ %i.ic, %bb.bq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i48.i.i.i.i.i.i) ]
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !38725
  %i.iv = icmp eq ptr %i.ic, null
  br i1 %i.iv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38739
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ix = add i64 %i.hx, %i.it                    ; 3 uses
  store i64 %i.ix, ptr %i.gb, align 8, !alias.scope !38727, !noalias !38706
  %i.iy = add i64 %i.hw, %i.it                    ; 4 uses
  store i64 %i.iy, ptr %i.gc, align 8, !alias.scope !38727, !noalias !38706
  store i8 1, ptr %i.fr, align 1, !alias.scope !38727, !noalias !38706
  %i.iz = icmp ult i64 %i.ix, %i.hc
  br i1 %i.iz, label %.lr.ph.split.i.i61.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %.thread.i.i.i67.i.i.i.i, %bb.bm, %bb.bl, %bb.bk
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38739
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.bu:                                            ; preds = %bb.au
  %i.ja = call { i64, ptr } @_RNvXs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcpNtB5_13TcpConnectionNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38740 ; 2 uses
  %i.jb = extractvalue { i64, ptr } %i.ja, 0
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.loopexit, label %bb.bx

bb.bv:                                            ; preds = %bb.bs, %.thread45.i.i.i.i.i.i, %bb.bi
  %.sroa.12.2.i.ph.i62.i.i.i.i = phi ptr [ %i.hh, %bb.bi ], [ %i.iw, %bb.bs ], [ %.sroa.5.1.i48.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38725
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i56.i.i.i.i
  store i8 0, ptr %i.h, align 1, !noalias !38725
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38725
  %i.jd = icmp samesign ugt i8 %i.ht, 1
  %brmerge.i57.i.i.i.i = select i1 %i.jd, i1 true, i1 %i.ft
  br i1 %brmerge.i57.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !38741
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i, %bb.bw
  store i64 %i.hu, ptr %i.fq, align 8, !alias.scope !38723, !noalias !38706
  br label %.backedge.i45.i.i.i.i

.backedge.i45.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i
  %storemerge.i46.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ] ; 2 uses
  %i.je = phi i64 [ %i.hs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ %i.gd, %bb.by ], [ %i.gd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  %i.jf = phi i8 [ %i.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ %i.ge, %bb.by ], [ %i.ge, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  store i8 %storemerge.i46.i.i.i.i, ptr %i.fr, align 1, !alias.scope !38723, !noalias !38706
  br label %bb.au

bb.bx:                                            ; preds = %bb.bu
  %i.jg = extractvalue { i64, ptr } %i.ja, 1      ; 2 uses
  %.not.i42.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i42.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !38742)
  %brmerge116.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %i.ft
  br i1 %brmerge116.i.i.i.i.i, label %.backedge.i45.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i: ; preds = %bb.by
  %.val.i23.i44.i.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !38743, !noalias !38706, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i44.i.i.i.i, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !38744
  br label %.backedge.i45.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %bb.bv
  %.sroa.6.1.i40.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i62.i.i.i.i, %bb.bv ], [ %i.jg, %bb.bx ]
  %i.jh = ptrtoint ptr %.sroa.6.1.i40.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.au
  br i1 %i.fo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ji = load i64, ptr %i.fq, align 8, !alias.scope !38723, !noalias !38706, !noundef !145
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38725
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @718) #62, !noalias !38745
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit83.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit83.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.jh, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.fn, %.loopexit83.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.ji, %bb.ca ], [ undef, %.loopexit83.i.i.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !38746)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.jl = load i8, ptr %i.jk, align 1, !range !197, !alias.scope !38746, !noalias !38696, !noundef !145
  %i.jm = icmp samesign ult i8 %i.jl, 2
  br i1 %i.jm, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.jn, align 8, !alias.scope !38747, !noalias !38696, !noundef !145 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !38746, !noalias !38696, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !38748
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !38749)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.jr = load i8, ptr %i.jq, align 1, !range !197, !alias.scope !38749, !noalias !38696, !noundef !145
  %i.js = icmp samesign ult i8 %i.jr, 2
  br i1 %i.js, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jt, align 8, !alias.scope !38750, !noalias !38696, !noundef !145 ; 2 uses
  %i.ju = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.ju, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !38749, !noalias !38696, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !38751
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1Y_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #62, !noalias !38695
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @690) #62
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit, %.loopexit
end_hunk_1
begin_hunk_2_@_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamNtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal:bb.a
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.aq, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !38861
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.as, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !38861
  %.sroa.84.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.84.i, i64 48, i1 false), !noalias !38861
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.i, i64 48, i1 false), !noalias !38861
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !38861
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.84.i), !noalias !38861
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i), !noalias !38861
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !197, !noalias !38863
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  switch i8 %.pre.i, label %bb.h [
    i8 0, label %._crit_edge301
    i8 1, label %bb.cb
    i8 3, label %bb.j
  ]

._crit_edge301:                                   ; preds = %bb.g
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !noalias !38863
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre305 = load ptr, ptr %.phi.trans.insert304, align 8, !noalias !38863
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !38863
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !38863
  store ptr %i.bb, ptr %i.az, align 8, !noalias !38863
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ax, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !38863
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aw, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !38863
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bd, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !38863
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.au, align 8, !alias.scope !38864, !noalias !38863
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre221.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !38864, !noalias !38863
  %.phi.trans.insert222.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre223.i.i = load ptr, ptr %.phi.trans.insert222.i.i, align 8, !alias.scope !38864, !noalias !38863
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.an, %bb.j ], [ %i.av, %bb.i ] ; 2 uses
  %i.bf = phi ptr [ %.phi.trans.insert.i, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bg = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.i ]
  %i.bh = phi ptr [ %.pre223.i.i, %bb.j ], [ %i.aw, %bb.i ] ; 6 uses
  %i.bi = phi ptr [ %.pre221.i.i, %bb.j ], [ %i.ax, %bb.i ] ; 4 uses
  %i.bj = phi ptr [ %.pre.i.i, %bb.j ], [ %i.bb, %bb.i ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38865)
  call void @llvm.experimental.noalias.scope.decl(metadata !38866)
  call void @llvm.experimental.noalias.scope.decl(metadata !38867)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 41 ; 4 uses
  %.promoted.i.i.i.i.i = load i8, ptr %i.bk, align 1, !alias.scope !38867, !noalias !38868
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val1.i21.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !38867, !noalias !38868 ; 11 uses
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
  %.promoted117.i.i.i.i.i = load i8, ptr %i.bu, align 8, !alias.scope !38867, !noalias !38868
  %.promoted118.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !38867, !noalias !38868
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38869)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38870
  %i.ch = load i8, ptr %i.bo, align 8, !range !164, !noalias !38870, !noundef !145
  switch i8 %i.ch, label %.unreachabledefault [
    i8 0, label %bb.p
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.o
  ], !prof !269

.unreachabledefault:                              ; preds = %bb.n
  unreachable

default.unreachable:                              ; preds = %bb.aw, %bb.cl
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38871
  store i8 0, ptr %i.bo, align 8, !noalias !38870
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ci = load i8, ptr %i.bp, align 4, !range !148, !noalias !38870, !noundef !145 ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load i8, ptr %i.bq, align 1, !noalias !38870 ; 4 uses
  br i1 %i.cj, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.r

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.q
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38870
  store i24 0, ptr %i.k, align 4, !noalias !38870
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !38871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38870
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = add i8 %i.ck, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.p
  %.sroa.33.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cl, %bb.r ], [ %i.ck, %bb.p ]
  store i8 %.sroa.33.0.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 1, !noalias !38870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38870
  store i24 0, ptr %i.k, align 4, !noalias !38870
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.br) #52, !noalias !38871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !38870
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %bb.n, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.sroa.03.06.i43.off8.i.i.i.i.i.i = phi i8 [ %i.ci, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  %.sroa.03.06.i43.off16.i.i.i.i.i.i = phi i8 [ %i.ck, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 0, %bb.n ]
  store i8 %.sroa.03.06.i43.off8.i.i.i.i.i.i, ptr %i.l, align 1, !noalias !38870
  store i8 %.sroa.03.06.i43.off16.i.i.i.i.i.i, ptr %i.bs, align 1, !noalias !38870
  %.promoted125.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !38872, !noalias !38873
  %i.cm = load ptr, ptr %i.bj, align 8, !alias.scope !38872, !noalias !38873, !nonnull !145 ; 4 uses
  %.promoted127.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !38872, !noalias !38873
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
  %i.cn = phi i64 [ %i.dt, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ]
  %i.co = phi i8 [ %i.cw, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.cp = phi i8 [ %i.du, %._crit_edge.i.i.i.i.i.i ], [ %i.cc, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i8 [ %i.cx, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %.promoted102129.i.i.i.i.i.i = phi i64 [ %i.dv, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted127.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %i.cs = phi i8 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %i.cb, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.ct = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i ], [ %.promoted125.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i ] ; 7 uses
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
  br i1 %.not.i41.i.i.i.i.i.i, label %2, label %.lr.ph.split.i.i.i.i.i.i, !prof !172

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !38874)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !38875
  store ptr %i.cm, ptr %i.j, align 8, !noalias !38875
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bv, align 8, !noalias !38875
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.bx, align 8, !noalias !38875
  store i64 %i.ct, ptr %i.bw, align 8, !noalias !38875
  %i.db = call { i64, ptr } @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #52, !noalias !38876 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1               ; 2 uses
  %i.de = extractvalue { i64, ptr } %i.db, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp ne ptr %i.de, null  ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.dd, i1 true, i1 %.not6.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load i64, ptr %i.bv, align 8, !noalias !38875, !noundef !145 ; 2 uses
  %i.dg = load i64, ptr %i.bw, align 8, !noalias !38875, !noundef !145 ; 5 uses
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.dg, %i.df
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i.i, !prof !172

.thread.i.i.i.i.i.i:                              ; preds = %bb.v
  %i.dh = icmp eq i64 %i.ct, %i.dg
  %i.di = zext i1 %i.dh to i8                     ; 4 uses
  store i8 %i.di, ptr %i.bu, align 8, !alias.scope !38877, !noalias !38873
  store i64 %i.dg, ptr %i.bt, align 8, !alias.scope !38877, !noalias !38873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38875
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dg, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38876
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !38875
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.dj = icmp eq i64 %i.cr, %i.ct
  br i1 %i.dj, label %bb.ab, label %bb.t

bb.y:                                             ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.l, align 1, !noalias !38870
  br label %.loopexit37.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y, %.thread.i.i.i.i.i.i
  %i.dk = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.co, %bb.y ]
  %i.dl = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ %i.cq, %bb.y ]
  %i.dm = phi i8 [ %i.di, %.thread.i.i.i.i.i.i ], [ 0, %bb.y ]
  %i.dn = phi i64 [ %i.dg, %.thread.i.i.i.i.i.i ], [ %i.ct, %bb.y ]
  store i8 0, ptr %i.l, align 1, !noalias !38870
  br label %bb.t

bb.ab:                                            ; preds = %bb.x
  %i.do = trunc nuw i8 %i.cp to i1
  br i1 %i.do, label %bb.ac, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38871 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = extractvalue { i64, ptr } %i.dp, 1      ; 2 uses
  %.not39.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not39.i.i.i.i.i.i, label %bb.ae, label %.loopexit37.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.l, align 1, !noalias !38870
  store i8 0, ptr %i.bk, align 1, !alias.scope !38872, !noalias !38873
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ao, %bb.t
  %i.dt = phi i64 [ %i.cn, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.du = phi i8 [ %i.cp, %bb.t ], [ 1, %bb.ao ]  ; 2 uses
  %i.dv = phi i64 [ %.promoted102129.i.i.i.i.i.i, %bb.t ], [ %i.fd, %bb.ao ] ; 2 uses
  %i.dw = trunc nuw i8 %i.cy to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false), !alias.scope !38872, !noalias !38873
  br i1 %i.dw, label %bb.aj, label %bb.s

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ao
  %i.dx = phi i64 [ %i.fd, %bb.ao ], [ %.promoted102129.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.dy = phi i64 [ %i.fc, %bb.ao ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38878)
  %i.dz = sub nuw i64 %i.cz, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dy
  %i.eb = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.dz) #52, !noalias !38879 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0      ; 2 uses
  %i.ed = extractvalue { i64, ptr } %i.eb, 1      ; 3 uses
  %i.ee = icmp eq i64 %i.ec, 2
  br i1 %i.ee, label %bb.af, label %bb.al

2:                                                ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cz, i64 noundef %.val1.i21.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38880
  unreachable

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ef = trunc nuw i8 %i.cx to i1
  %i.eg = icmp uge i64 %i.cz, %.val1.i21.i.i.i.i.i
  %or.cond18.not.i.i.i.i.i.i.i = or i1 %i.eg, %i.ef
  br i1 %or.cond18.not.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !38881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !38882
  store ptr %i.cm, ptr %i.i, align 8, !noalias !38882
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.eh, align 8, !noalias !38882
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.val1.i21.i.i.i.i.i, ptr %i.ej, align 8, !noalias !38882
  store i64 %i.cz, ptr %i.ei, align 8, !noalias !38882
  %i.ek = call { i64, ptr } @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !38883 ; 2 uses
  %i.el = extractvalue { i64, ptr } %i.ek, 0
  %i.em = trunc nuw i64 %i.el to i1               ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.ek, 1      ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp ne ptr %i.en, null ; 2 uses
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.em, i1 true, i1 %.not6.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i64, ptr %i.eh, align 8, !noalias !38882, !noundef !145 ; 2 uses
  %i.ep = load i64, ptr %i.ei, align 8, !noalias !38882, !noundef !145 ; 4 uses
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ep, %i.eo
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i.i.i.i.i.i, !prof !172

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ah
  %i.eq = icmp eq i64 %i.cz, %i.ep
  %i.er = zext i1 %i.eq to i8
  store i8 %i.er, ptr %i.bu, align 8, !alias.scope !38884, !noalias !38873
  store i64 %i.ep, ptr %i.bt, align 8, !alias.scope !38884, !noalias !38873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38882
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38883
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !38882
  %i.es = xor i1 %.not6.i.i.i.i.i.i.i.i, true
  %i.et = select i1 %i.em, i1 true, i1 %i.es
  br i1 %i.et, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread47.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38871 ; 2 uses
  %i.ev = extractvalue { i64, ptr } %i.eu, 0
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 2 uses
  %.not40.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not40.i.i.i.i.i.i, label %bb.aq, label %.loopexit37.i.i.i.i.i

bb.al:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ey = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ez = trunc nuw i64 %i.ec to i1
  br i1 %i.ez, label %.thread47.i.i.i.i.i.i, label %bb.am

.thread47.i.i.i.i.i.i:                            ; preds = %bb.al, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i50.i.i.i.i.i.i = phi ptr [ %i.en, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i ], [ %i.ed, %bb.al ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i50.i.i.i.i.i.i) ]
  br label %.loopexit37.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.l, align 1, !noalias !38870
  %i.fa = icmp eq ptr %i.ed, null
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38871
  br label %.loopexit37.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fc = add i64 %i.dy, %i.ey                    ; 3 uses
  store i64 %i.fc, ptr %i.by, align 8, !alias.scope !38872, !noalias !38873
  %i.fd = add i64 %i.dx, %i.ey                    ; 4 uses
  store i64 %i.fd, ptr %i.bz, align 8, !alias.scope !38872, !noalias !38873
  store i8 1, ptr %i.bk, align 1, !alias.scope !38872, !noalias !38873
  %i.fe = icmp ult i64 %i.fc, %i.cz
  br i1 %i.fe, label %.lr.ph.split.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %bb.aj, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %bb.af, %bb.ae, %bb.ac, %bb.ab
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38870
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.ap:                                            ; preds = %bb.l
  %i.ff = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38885 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0
  %i.fh = trunc nuw i64 %i.fg to i1
  br i1 %i.fh, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, label %bb.ar

.loopexit37.i.i.i.i.i:                            ; preds = %bb.ak, %bb.an, %.thread47.i.i.i.i.i.i, %bb.ad, %bb.z
  %.sroa.12.2.i.ph.i.i.i.i.i = phi ptr [ %i.de, %bb.z ], [ %.sroa.5.1.i50.i.i.i.i.i.i, %.thread47.i.i.i.i.i.i ], [ %i.ds, %bb.ad ], [ %i.fb, %bb.an ], [ %i.ex, %bb.ak ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38870
  br label %.loopexit83.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  store i8 0, ptr %i.l, align 1, !noalias !38870
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.l) #52, !noalias !38871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38870
  %i.fi = icmp samesign ugt i8 %i.du, 1
  %brmerge.i.i.i.i.i = select i1 %i.fi, i1 true, i1 %i.bm
  br i1 %brmerge.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !38886
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.aq
  store i64 %i.dv, ptr %i.bj, align 8, !alias.scope !38867, !noalias !38873
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ 3, %bb.as ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ] ; 2 uses
  %i.fj = phi i64 [ %i.dt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ %i.ca, %bb.as ], [ %i.ca, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  %i.fk = phi i8 [ %i.cw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i ], [ %i.cb, %bb.as ], [ %i.cb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.bk, align 1, !alias.scope !38867, !noalias !38873
  br label %bb.l

bb.ar:                                            ; preds = %bb.ap
  %i.fl = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i, label %bb.as, label %.loopexit83.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !38887)
  %brmerge128.i.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.bm
  br i1 %brmerge128.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i.i.i.i.i: ; preds = %bb.as
  %.val.i23.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !38888, !noalias !38873, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i.i.i.i.i, i64 noundef %.val1.i21.i.i.i.i.i, i64 noundef 1) #52, !noalias !38889
  br label %.backedge.i.i.i.i.i

bb.at:                                            ; preds = %bb.l
  %i.fm = load i64, ptr %i.bj, align 8, !alias.scope !38867, !noalias !38873, !noundef !145
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

.loopexit83.i.i.i.i:                              ; preds = %bb.ar, %.loopexit37.i.i.i.i.i
  %.sroa.6.1.i.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i.i.i.i.i, %.loopexit37.i.i.i.i.i ], [ %i.fl, %bb.ar ]
  %i.fn = ptrtoint ptr %.sroa.6.1.i.ph.i.i.i.i to i64
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %bb.ap, %bb.at, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  %i.fo = phi i1 [ false, %bb.at ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ true, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ true, %bb.ap ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.fm, %bb.at ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i ], [ undef, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i ], [ undef, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !38864, !noalias !38863, !nonnull !145, !align !153, !noundef !145 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38890)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 41 ; 4 uses
  %.promoted.i38.i.i.i.i = load i8, ptr %i.fr, align 1, !alias.scope !38890, !noalias !38873
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.val1.i21.i39.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !38890, !noalias !38873 ; 11 uses
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
  %.promoted105.i.i.i.i.i = load i8, ptr %i.fx, align 8, !alias.scope !38890, !noalias !38873
  %.promoted106.i.i.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !38890, !noalias !38873
  br label %bb.au

bb.au:                                            ; preds = %.backedge.i45.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  %i.gd = phi i64 [ %i.je, %.backedge.i45.i.i.i.i ], [ %.promoted106.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 4 uses
  %i.ge = phi i8 [ %i.jf, %.backedge.i45.i.i.i.i ], [ %.promoted105.i.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 5 uses
  %i.gf = phi i8 [ %storemerge.i46.i.i.i.i, %.backedge.i45.i.i.i.i ], [ %.promoted.i38.i.i.i.i, %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ] ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38892
  %i.gk = load i8, ptr %i.bo, align 8, !range !164, !noalias !38892, !noundef !145
  switch i8 %i.gk, label %default.unreachable [
    i8 0, label %bb.ay
    i8 2, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i
    i8 1, label %bb.ax
  ], !prof !191

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.bn, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #52, !noalias !38893
  store i8 0, ptr %i.bo, align 8, !noalias !38892
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gl = load i8, ptr %i.bp, align 4, !range !148, !noalias !38892, !noundef !145 ; 2 uses
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = load i8, ptr %i.bq, align 1, !noalias !38892 ; 4 uses
  br i1 %i.gm, label %bb.az, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i.i.i69.i.i.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i.i69.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i, label %bb.ba

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.az
  call void @_RNvNtNtCsczhfDQ1qNkX_5tokio4task4coop14register_waker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38892
  store i24 0, ptr %i.g, align 4, !noalias !38892
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !38893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38892
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.go = add i8 %i.gn, -1
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i: ; preds = %bb.ba, %bb.ay
  %.sroa.33.0.i.i.i.i.i48.i.i.i.i = phi i8 [ %i.go, %bb.ba ], [ %i.gn, %bb.ay ]
  store i8 %.sroa.33.0.i.i.i.i.i48.i.i.i.i, ptr %i.bq, align 1, !noalias !38892
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38892
  store i24 0, ptr %i.g, align 4, !noalias !38892
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.fu) #52, !noalias !38893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38892
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i, %bb.aw
  %.sroa.03.06.i41.off8.i.i.i.i.i.i = phi i8 [ %i.gl, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  %.sroa.03.06.i41.off16.i.i.i.i.i.i = phi i8 [ %i.gn, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.i.i47.i.i.i.i ], [ 0, %bb.aw ]
  store i8 %.sroa.03.06.i41.off8.i.i.i.i.i.i, ptr %i.h, align 1, !noalias !38892
  store i8 %.sroa.03.06.i41.off16.i.i.i.i.i.i, ptr %i.fv, align 1, !noalias !38892
  %.promoted123.i.i.i.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !38894, !noalias !38873
  %i.gp = load ptr, ptr %i.fq, align 8, !alias.scope !38894, !noalias !38873, !nonnull !145 ; 4 uses
  %.promoted125.i.i50.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !38894, !noalias !38873
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i56.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i
  %i.gq = phi i64 [ %i.hs, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ]
  %i.gr = phi i8 [ %i.gz, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %i.gs = phi i8 [ %i.ht, %._crit_edge.i.i56.i.i.i.i ], [ %i.gf, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gt = phi i8 [ %i.ha, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 3 uses
  %.promoted100127.i.i.i.i.i.i = phi i64 [ %i.hu, %._crit_edge.i.i56.i.i.i.i ], [ %i.gd, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gu = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted125.i.i50.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 4 uses
  %i.gv = phi i8 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %i.ge, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 2 uses
  %i.gw = phi i64 [ 0, %._crit_edge.i.i56.i.i.i.i ], [ %.promoted123.i.i.i.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtB4_4task4poll4PollNtNtNtCsczhfDQ1qNkX_5tokio4task4coop16RestoreOnPendingENtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorE9unwrap_orCs7XnEB7DeNXr_7sslocal.exit.thread.i.i49.i.i.i.i ] ; 7 uses
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
  br i1 %.not.i39.i.i.i.i.i.i, label %3, label %.lr.ph.split.i.i61.i.i.i.i, !prof !172

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !38895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38896
  store ptr %i.gp, ptr %i.f, align 8, !noalias !38896
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.fy, align 8, !noalias !38896
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ga, align 8, !noalias !38896
  store i64 %i.gw, ptr %i.fz, align 8, !noalias !38896
  %i.he = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #52, !noalias !38897 ; 2 uses
  %i.hf = extractvalue { i64, ptr } %i.he, 0
  %i.hg = trunc nuw i64 %i.hf to i1               ; 2 uses
  %i.hh = extractvalue { i64, ptr } %i.he, 1      ; 2 uses
  %.not6.i.i.i52.i.i.i.i = icmp ne ptr %i.hh, null ; 2 uses
  %or.cond.not.i.i.i53.i.i.i.i = select i1 %i.hg, i1 true, i1 %.not6.i.i.i52.i.i.i.i
  br i1 %or.cond.not.i.i.i53.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i64, ptr %i.fy, align 8, !noalias !38896, !noundef !145 ; 2 uses
  %i.hj = load i64, ptr %i.fz, align 8, !noalias !38896, !noundef !145 ; 5 uses
  %.not7.i.i.i54.i.i.i.i = icmp ugt i64 %i.hj, %i.hi
  br i1 %.not7.i.i.i54.i.i.i.i, label %bb.bf, label %.thread.i.i55.i.i.i.i, !prof !172

.thread.i.i55.i.i.i.i:                            ; preds = %bb.be
  %i.hk = icmp eq i64 %i.gw, %i.hj
  %i.hl = zext i1 %i.hk to i8                     ; 4 uses
  store i8 %i.hl, ptr %i.fx, align 8, !alias.scope !38898, !noalias !38873
  store i64 %i.hj, ptr %i.fw, align 8, !alias.scope !38898, !noalias !38873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38896
  br label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hj, i64 noundef %i.hi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38897
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38896
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.hm = icmp eq i64 %i.gu, %i.gw
  br i1 %i.hm, label %bb.bk, label %bb.bc

bb.bh:                                            ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  br i1 %.not6.i.i.i52.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %i.h, align 1, !noalias !38892
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bh, %.thread.i.i55.i.i.i.i
  %i.hn = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gr, %bb.bh ]
  %i.ho = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ %i.gt, %bb.bh ]
  %i.hp = phi i8 [ %i.hl, %.thread.i.i55.i.i.i.i ], [ 0, %bb.bh ]
  %i.hq = phi i64 [ %i.hj, %.thread.i.i55.i.i.i.i ], [ %i.gw, %bb.bh ]
  store i8 0, ptr %i.h, align 1, !noalias !38892
  br label %bb.bc

bb.bk:                                            ; preds = %bb.bg
  %i.hr = trunc nuw i8 %i.gs to i1
  br i1 %i.hr, label %bb.bl, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i8 0, ptr %i.h, align 1, !noalias !38892
  store i8 0, ptr %i.fr, align 1, !alias.scope !38894, !noalias !38873
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

._crit_edge.i.i56.i.i.i.i:                        ; preds = %bb.bt, %bb.bc
  %i.hs = phi i64 [ %i.gq, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.ht = phi i8 [ %i.gs, %bb.bc ], [ 1, %bb.bt ] ; 2 uses
  %i.hu = phi i64 [ %.promoted100127.i.i.i.i.i.i, %bb.bc ], [ %i.iy, %bb.bt ] ; 2 uses
  %i.hv = trunc nuw i8 %i.hb to i1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false), !alias.scope !38894, !noalias !38873
  br i1 %i.hv, label %bb.bw, label %bb.bb

.lr.ph.split.i.i61.i.i.i.i:                       ; preds = %.lr.ph.i.i60.i.i.i.i, %bb.bt
  %i.hw = phi i64 [ %i.iy, %bb.bt ], [ %.promoted100127.i.i.i.i.i.i, %.lr.ph.i.i60.i.i.i.i ]
  %i.hx = phi i64 [ %i.ix, %bb.bt ], [ %i.gu, %.lr.ph.i.i60.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38899)
  %i.hy = sub nuw i64 %i.hc, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hx
  %i.ia = call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.hy) #52, !noalias !38900 ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { i64, ptr } %i.ia, 1      ; 3 uses
  %i.id = icmp eq i64 %i.ib, 2
  br i1 %i.id, label %bb.bm, label %bb.bq

3:                                                ; preds = %.lr.ph.i.i60.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gu, i64 noundef %i.hc, i64 noundef %.val1.i21.i39.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #62, !noalias !38901
  unreachable

bb.bm:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.ie = trunc nuw i8 %i.ha to i1
  %i.if = icmp uge i64 %i.hc, %.val1.i21.i39.i.i.i.i
  %or.cond18.not.i.i.i63.i.i.i.i = or i1 %i.if, %i.ie
  br i1 %or.cond18.not.i.i.i63.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !38902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !38903
  store ptr %i.gp, ptr %i.e, align 8, !noalias !38903
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ig, align 8, !noalias !38903
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val1.i21.i39.i.i.i.i, ptr %i.ii, align 8, !noalias !38903
  store i64 %i.hc, ptr %i.ih, align 8, !noalias !38903
  %i.ij = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %i.bh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #52, !noalias !38904 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %i.il = trunc nuw i64 %i.ik to i1               ; 2 uses
  %i.im = extractvalue { i64, ptr } %i.ij, 1      ; 2 uses
  %.not6.i.i.i.i64.i.i.i.i = icmp ne ptr %i.im, null ; 2 uses
  %or.cond.not.i.i.i.i65.i.i.i.i = select i1 %i.il, i1 true, i1 %.not6.i.i.i.i64.i.i.i.i
  br i1 %or.cond.not.i.i.i.i65.i.i.i.i, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.in = load i64, ptr %i.ig, align 8, !noalias !38903, !noundef !145 ; 2 uses
  %i.io = load i64, ptr %i.ih, align 8, !noalias !38903, !noundef !145 ; 4 uses
  %.not7.i.i.i.i66.i.i.i.i = icmp ugt i64 %i.io, %i.in
  br i1 %.not7.i.i.i.i66.i.i.i.i, label %bb.bp, label %.thread.i.i.i67.i.i.i.i, !prof !172

.thread.i.i.i67.i.i.i.i:                          ; preds = %bb.bo
  %i.ip = icmp eq i64 %i.hc, %i.io
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.fx, align 8, !alias.scope !38905, !noalias !38873
  store i64 %i.io, ptr %i.fw, align 8, !alias.scope !38905, !noalias !38873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38903
  br label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.io, i64 noundef %i.in, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !38904
  unreachable

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !38903
  %i.ir = xor i1 %.not6.i.i.i.i64.i.i.i.i, true
  %i.is = select i1 %i.il, i1 true, i1 %i.ir
  br i1 %i.is, label %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, label %.thread45.i.i.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.split.i.i61.i.i.i.i
  %i.it = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.iu = trunc nuw i64 %i.ib to i1
  br i1 %i.iu, label %.thread45.i.i.i.i.i.i, label %bb.br

.thread45.i.i.i.i.i.i:                            ; preds = %bb.bq, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.5.1.i48.i.i.i.i.i.i = phi ptr [ %i.im, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i ], [ %i.ic, %bb.bq ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i48.i.i.i.i.i.i) ]
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  store i8 0, ptr %i.h, align 1, !noalias !38892
  %i.iv = icmp eq ptr %i.ic, null
  br i1 %i.iv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.iw = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !38906
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.ix = add i64 %i.hx, %i.it                    ; 3 uses
  store i64 %i.ix, ptr %i.gb, align 8, !alias.scope !38894, !noalias !38873
  %i.iy = add i64 %i.hw, %i.it                    ; 4 uses
  store i64 %i.iy, ptr %i.gc, align 8, !alias.scope !38894, !noalias !38873
  store i8 1, ptr %i.fr, align 1, !alias.scope !38894, !noalias !38873
  %i.iz = icmp ult i64 %i.ix, %i.hc
  br i1 %i.iz, label %.lr.ph.split.i.i61.i.i.i.i, label %._crit_edge.i.i56.i.i.i.i

_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %.thread.i.i.i67.i.i.i.i, %bb.bm, %bb.bl, %bb.bk
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38906
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i

bb.bu:                                            ; preds = %bb.au
  %i.ja = call { i64, ptr } @_RNvXs1_NtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !38907 ; 2 uses
  %i.jb = extractvalue { i64, ptr } %i.ja, 0
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.loopexit, label %bb.bx

bb.bv:                                            ; preds = %bb.bs, %.thread45.i.i.i.i.i.i, %bb.bi
  %.sroa.12.2.i.ph.i62.i.i.i.i = phi ptr [ %i.hh, %bb.bi ], [ %i.iw, %bb.bs ], [ %.sroa.5.1.i48.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ]
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38892
  br label %.loopexit.i.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i56.i.i.i.i
  store i8 0, ptr %i.h, align 1, !noalias !38892
  call void @_RNvXs4_NtNtCsczhfDQ1qNkX_5tokio4task4coopNtB5_16RestoreOnPendingNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #52, !noalias !38906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38892
  %i.jd = icmp samesign ugt i8 %i.ht, 1
  %brmerge.i57.i.i.i.i = select i1 %i.jd, i1 true, i1 %i.ft
  br i1 %brmerge.i57.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i: ; preds = %bb.bw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gp, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !38908
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i58.i.i.i.i, %bb.bw
  store i64 %i.hu, ptr %i.fq, align 8, !alias.scope !38890, !noalias !38873
  br label %.backedge.i45.i.i.i.i

.backedge.i45.i.i.i.i:                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i, %bb.by, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i
  %storemerge.i46.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ 3, %bb.by ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ] ; 2 uses
  %i.je = phi i64 [ %i.hs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ %i.gd, %bb.by ], [ %i.gd, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  %i.jf = phi i8 [ %i.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i59.i.i.i.i ], [ %i.ge, %bb.by ], [ %i.ge, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i ]
  store i8 %storemerge.i46.i.i.i.i, ptr %i.fr, align 1, !alias.scope !38890, !noalias !38873
  br label %bb.au

bb.bx:                                            ; preds = %bb.bu
  %i.jg = extractvalue { i64, ptr } %i.ja, 1      ; 2 uses
  %.not.i42.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i42.i.i.i.i, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !38909)
  %brmerge116.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %i.ft
  br i1 %brmerge116.i.i.i.i.i, label %.backedge.i45.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i22.i43.i.i.i.i: ; preds = %bb.by
  %.val.i23.i44.i.i.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !38910, !noalias !38873, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23.i44.i.i.i.i, i64 noundef %.val1.i21.i39.i.i.i.i, i64 noundef 1) #52, !noalias !38911
  br label %.backedge.i45.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %bb.bv
  %.sroa.6.1.i40.ph.i.i.i.i = phi ptr [ %.sroa.12.2.i.ph.i62.i.i.i.i, %bb.bv ], [ %i.jg, %bb.bx ]
  %i.jh = ptrtoint ptr %.sroa.6.1.i40.ph.i.i.i.i to i64
  br label %bb.cc

bb.bz:                                            ; preds = %bb.au
  br i1 %i.fo, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ji = load i64, ptr %i.fq, align 8, !alias.scope !38890, !noalias !38873, !noundef !145
  br label %bb.cc

_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.sink.split.i.i.i.i: ; preds = %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread29.i.i.i.i.i, %_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !38892
  br label %.loopexit

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @718) #62, !noalias !38912
  unreachable

bb.cc:                                            ; preds = %bb.ca, %.loopexit.i.i.i.i, %.loopexit83.i.i.i.i
  %.sroa.057.0 = phi i1 [ true, %.loopexit.i.i.i.i ], [ false, %bb.ca ], [ true, %.loopexit83.i.i.i.i ]
  %.sroa.858.0 = phi i64 [ %i.jh, %.loopexit.i.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %i.fn, %.loopexit83.i.i.i.i ] ; 2 uses
  %.sroa.12.0 = phi i64 [ undef, %.loopexit.i.i.i.i ], [ %i.ji, %bb.ca ], [ undef, %.loopexit83.i.i.i.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.experimental.noalias.scope.decl(metadata !38913)
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.jl = load i8, ptr %i.jk, align 1, !range !197, !alias.scope !38913, !noalias !38863, !noundef !145
  %i.jm = icmp samesign ult i8 %i.jl, 2
  br i1 %i.jm, label %bb.cd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i = load i64, ptr %i.jn, align 8, !alias.scope !38914, !noalias !38863, !noundef !145 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.jo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cd
  %.val.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !38913, !noalias !38863, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #52, !noalias !38915
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cd, %bb.cc
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !38916)
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.jr = load i8, ptr %i.jq, align 1, !range !197, !alias.scope !38916, !noalias !38863, !noundef !145
  %i.js = icmp samesign ult i8 %i.jr, 2
  br i1 %i.js, label %bb.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit

bb.ce:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i1.i.i = load i64, ptr %i.jt, align 8, !alias.scope !38917, !noalias !38863, !noundef !145 ; 2 uses
  %i.ju = icmp eq i64 %.val1.i1.i.i, 0
  br i1 %i.ju, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i: ; preds = %bb.ce
  %.val.i3.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !38916, !noalias !38863, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i, i64 noundef %.val1.i1.i.i, i64 noundef 1) #52, !noalias !38918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBM_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit

bb.cf:                                            ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @717) #62, !noalias !38862
  unreachable

bb.cg:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @690) #62
  unreachable

common.ret:                                       ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit, %.loopexit
end_hunk_2
begin_hunk_3_@llvm.ucmp.i32.i32
!38258 = !{!38132, !38130}
!38259 = !{!38134, !38130}
!38260 = !{!38130}
!38261 = !{!38138, !38136, !38130}
!38262 = !{!38140, !38138, !38136, !38130}
!38263 = !{!38142, !38140, !38138, !38136, !38130}
!38264 = !{!38144}
!38265 = !{!38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38266 = !{!38147}
!38267 = !{!38147, !38144}
!38268 = !{!38150, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38269 = !{!38157, !38155, !38154, !38152, !38150, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38270 = !{!38159, !38157, !38155, !38154, !38152, !38150, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38271 = !{!38152, !38150, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38272 = !{!38161}
!38273 = !{!38161, !38147, !38144}
!38274 = !{!38161, !38162, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38275 = !{!38169, !38167, !38166, !38164, !38161, !38162, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38276 = !{!38171, !38169, !38167, !38166, !38164, !38161, !38162, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38277 = !{!38164, !38161, !38162, !38147, !38148, !38145, !38144, !38142, !38140, !38138, !38136, !38130}
!38278 = !{!38162, !38148, !38145, !38142, !38140, !38138, !38136, !38130}
!38279 = !{!38173}
!38280 = !{!38175}
!38281 = !{!38177}
!38282 = !{!38177, !38175, !38173}
!38283 = !{!38179}
!38284 = !{!38181}
!38285 = !{!38183}
!38286 = !{!38185}
!38287 = !{!38185, !38183, !38181, !38179}
!38288 = !{!38187, !38179}
!38289 = !{!38193, !38191, !38189}
!38290 = !{!38195}
!38291 = !{!38197, !38195}
!38292 = !{!38199}
!38293 = !{!38201, !38199}
!38294 = distinct !{!38294, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38295 = distinct !{!38295, !38294, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38296 = distinct !{!38296, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38297 = distinct !{!38297, !38296, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util5writeINtB2_5WriteNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38298 = distinct !{!38298, i1 true, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!38299 = distinct !{!38299, !38298, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 1"}
!38300 = distinct !{!38300, !38298, !"_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadNtNtNtNtB6_3net3tcp6stream9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38301 = distinct !{!38301, i1 true, !"_RNvMsb_NtCslxdWNweD0x2_11shadowsocks6configNtB5_12ServerConfig17tcp_external_addr"}
!38302 = distinct !{!38302, !38301, !"_RNvMsb_NtCslxdWNweD0x2_11shadowsocks6configNtB5_12ServerConfig17tcp_external_addr: argument 0"}
!38303 = distinct !{!38303, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38304 = distinct !{!38304, !38303, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38305 = distinct !{!38305, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38306 = distinct !{!38306, !38305, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38307 = distinct !{!38307, i1 true, !"_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtB8_2io4util4read4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38308 = distinct !{!38308, !38307, !"_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtB8_2io4util4read4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38309 = distinct !{!38309, i1 true, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38310 = distinct !{!38310, !38309, !"_RNvXNtNtNtCsczhfDQ1qNkX_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38311 = distinct !{!38311, i1 true, !"_RNvXsd_NtCsf3Ta7LF998c_4core5arrayAhj2000_INtNtNtB7_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCs7XnEB7DeNXr_7sslocal"}
!38312 = distinct !{!38312, !38311, !"_RNvXsd_NtCsf3Ta7LF998c_4core5arrayAhj2000_INtNtNtB7_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCs7XnEB7DeNXr_7sslocal: argument 0"}
!38313 = distinct !{!38313, i1 true, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCs7XnEB7DeNXr_7sslocal"}
!38314 = distinct !{!38314, !38313, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCs7XnEB7DeNXr_7sslocal: argument 0"}
!38315 = distinct !{!38315, i1 true, !"_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCs7XnEB7DeNXr_7sslocal"}
!38316 = distinct !{!38316, !38315, !"_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCs7XnEB7DeNXr_7sslocal: argument 0"}
!38317 = distinct !{!38317, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal"}
!38318 = distinct !{!38318, !38317, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal: argument 1"}
!38319 = distinct !{!38319, !38317, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal: argument 0"}
!38320 = distinct !{!38320, i1 true, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38321 = distinct !{!38321, !38320, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38322 = distinct !{!38322, !38320, !"_RNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38323 = distinct !{!38323, i1 true, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38324 = distinct !{!38324, !38323, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 1"}
!38325 = distinct !{!38325, i1 true, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38326 = distinct !{!38326, !38325, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38327 = distinct !{!38327, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38328 = distinct !{!38328, !38327, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38329 = distinct !{!38329, !38323, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 2"}
!38330 = distinct !{!38330, !38323, !"_RNvXs2_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsINtB5_17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38331 = distinct !{!38331, !38325, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38332 = distinct !{!38332, !38327, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38333 = distinct !{!38333, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38334 = distinct !{!38334, !38333, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38335 = distinct !{!38335, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38336 = distinct !{!38336, !38335, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38337 = distinct !{!38337, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38338 = distinct !{!38338, !38337, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38339 = distinct !{!38339, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38340 = distinct !{!38340, !38339, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38341 = distinct !{!38341, i1 true, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38342 = distinct !{!38342, !38341, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38343 = distinct !{!38343, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38344 = distinct !{!38344, !38343, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38345 = distinct !{!38345, !38341, !"_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38346 = distinct !{!38346, !38343, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38347 = distinct !{!38347, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38348 = distinct !{!38348, !38347, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38349 = distinct !{!38349, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38350 = distinct !{!38350, !38349, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38351 = distinct !{!38351, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38352 = distinct !{!38352, !38351, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38353 = distinct !{!38353, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38354 = distinct !{!38354, !38353, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38355 = distinct !{!38355, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38356 = distinct !{!38356, !38355, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38357 = distinct !{!38357, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38358 = distinct !{!38358, !38357, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38359 = distinct !{!38359, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!38360 = distinct !{!38360, !38359, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils17CopyBidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38361 = distinct !{!38361, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38362 = distinct !{!38362, !38361, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38363 = distinct !{!38363, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38364 = distinct !{!38364, !38363, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38365 = distinct !{!38365, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38366 = distinct !{!38366, !38365, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38367 = distinct !{!38367, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38368 = distinct !{!38368, !38367, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38369 = distinct !{!38369, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38370 = distinct !{!38370, !38369, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38371 = distinct !{!38371, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38372 = distinct !{!38372, !38371, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38373 = distinct !{!38373, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38374 = distinct !{!38374, !38373, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!38375 = distinct !{!38375, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!38376 = distinct !{!38376, !38375, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!38377 = !{!38295}
!38378 = !{!38297}
!38379 = !{!38300, !38299}
!38380 = !{!38302}
!38381 = !{!38306, !38304}
!38382 = !{!38308}
!38383 = !{!38310, !38308}
!38384 = !{!38316, !38314, !38312}
!38385 = !{!38319, !38318}
!38386 = !{!38322, !38321}
!38387 = !{!38322}
!38388 = !{!38324}
!38389 = !{!38326}
!38390 = !{!38326, !38324}
!38391 = !{!38328}
!38392 = !{!38328, !38326, !38324}
!38393 = !{!38328, !38332, !38331, !38326, !38330, !38324, !38329, !38322, !38321}
!38394 = !{!38328, !38326, !38330, !38324, !38322}
!38395 = !{!38326, !38330, !38324, !38322}
!38396 = !{!38336, !38334, !38326, !38330, !38324, !38322}
!38397 = !{!38338}
!38398 = !{!38338, !38326, !38324}
!38399 = !{!38340, !38338, !38326, !38330, !38324, !38322}
!38400 = !{!38342}
!38401 = !{!38342, !38324}
!38402 = !{!38344}
!38403 = !{!38344, !38342, !38324}
!38404 = !{!38344, !38346, !38345, !38342, !38330, !38324, !38329, !38322, !38321}
!38405 = !{!38344, !38342, !38330, !38324, !38322}
!38406 = !{!38342, !38330, !38324, !38322}
!38407 = !{!38350, !38348, !38342, !38330, !38324, !38322}
!38408 = !{!38352}
!38409 = !{!38352, !38342, !38324}
!38410 = !{!38354, !38352, !38342, !38330, !38324, !38322}
!38411 = !{!38330, !38324, !38329, !38322, !38321}
!38412 = !{!38324, !38329, !38321}
!38413 = !{!38356, !38330, !38324, !38329, !38322, !38321}
!38414 = !{!38356, !38330, !38322}
!38415 = !{!38358, !38330, !38324, !38329, !38322, !38321}
!38416 = !{!38358, !38330, !38322}
!38417 = !{!38360}
!38418 = !{!38362}
!38419 = !{!38362, !38360}
!38420 = !{!38364, !38362, !38360}
!38421 = !{!38366, !38362, !38360, !38322}
!38422 = !{!38368}
!38423 = !{!38368, !38360}
!38424 = !{!38370, !38368, !38360}
!38425 = !{!38372, !38368, !38360, !38322}
!38426 = !{!38374}
!38427 = !{!38376}
!38428 = distinct !{!38428, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38429 = distinct !{!38429, !38428, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38430 = distinct !{!38430, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38431 = distinct !{!38431, !38430, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38432 = distinct !{!38432, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38433 = distinct !{!38433, !38432, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38434 = distinct !{!38434, !38432, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1n_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38435 = distinct !{!38435, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38436 = distinct !{!38436, !38435, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38437 = distinct !{!38437, !38435, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1s_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38438 = distinct !{!38438, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38439 = distinct !{!38439, !38438, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 1"}
!38440 = distinct !{!38440, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal"}
!38441 = distinct !{!38441, !38440, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38442 = distinct !{!38442, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38443 = distinct !{!38443, !38442, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38444 = distinct !{!38444, !38438, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 2"}
!38445 = distinct !{!38445, !38438, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB2p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38446 = distinct !{!38446, !38440, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 2"}
!38447 = distinct !{!38447, !38440, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1u_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38448 = distinct !{!38448, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38449 = distinct !{!38449, !38448, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38450 = distinct !{!38450, !38442, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38451 = distinct !{!38451, !38442, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38452 = distinct !{!38452, !38442, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1p_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38453 = distinct !{!38453, !38448, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38454 = distinct !{!38454, !38448, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38455 = distinct !{!38455, !38448, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1e_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38456 = distinct !{!38456, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38457 = distinct !{!38457, !38456, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38458 = distinct !{!38458, !38456, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38459 = distinct !{!38459, !38456, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38460 = distinct !{!38460, !38456, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB1k_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38461 = distinct !{!38461, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38462 = distinct !{!38462, !38461, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38463 = distinct !{!38463, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38464 = distinct !{!38464, !38463, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38465 = distinct !{!38465, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38466 = distinct !{!38466, !38465, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38467 = distinct !{!38467, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38468 = distinct !{!38468, !38467, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38469 = distinct !{!38469, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38470 = distinct !{!38470, !38469, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38471 = distinct !{!38471, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38472 = distinct !{!38472, !38471, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38473 = distinct !{!38473, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal"}
!38474 = distinct !{!38474, !38473, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 1"}
!38475 = distinct !{!38475, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal"}
!38476 = distinct !{!38476, !38475, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38477 = distinct !{!38477, !38473, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 3"}
!38478 = distinct !{!38478, !38473, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 2"}
!38479 = distinct !{!38479, !38473, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1q_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38480 = distinct !{!38480, !38475, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 3"}
!38481 = distinct !{!38481, !38475, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 2"}
!38482 = distinct !{!38482, !38475, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1f_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 1"}
!38483 = distinct !{!38483, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38484 = distinct !{!38484, !38483, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38485 = distinct !{!38485, !38483, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38486 = distinct !{!38486, !38483, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38487 = distinct !{!38487, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal"}
!38488 = distinct !{!38488, !38487, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38489 = distinct !{!38489, !38487, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 2"}
!38490 = distinct !{!38490, !38487, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 3"}
!38491 = distinct !{!38491, !38487, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB1l_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal: argument 1"}
!38492 = distinct !{!38492, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38493 = distinct !{!38493, !38492, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38494 = distinct !{!38494, !38492, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38495 = distinct !{!38495, !38492, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38496 = distinct !{!38496, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38497 = distinct !{!38497, !38496, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38498 = distinct !{!38498, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38499 = distinct !{!38499, !38498, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38500 = distinct !{!38500, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38501 = distinct !{!38501, !38500, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38502 = distinct !{!38502, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38503 = distinct !{!38503, !38502, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38504 = distinct !{!38504, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38505 = distinct !{!38505, !38504, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38506 = distinct !{!38506, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38507 = distinct !{!38507, !38506, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38508 = distinct !{!38508, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38509 = distinct !{!38509, !38508, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38510 = distinct !{!38510, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38511 = distinct !{!38511, !38510, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38512 = distinct !{!38512, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38513 = distinct !{!38513, !38512, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38514 = distinct !{!38514, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38515 = distinct !{!38515, !38514, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38516 = distinct !{!38516, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38517 = distinct !{!38517, !38516, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38518 = distinct !{!38518, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38519 = distinct !{!38519, !38518, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38520 = distinct !{!38520, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38521 = distinct !{!38521, !38520, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!38522 = distinct !{!38522, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!38523 = distinct !{!38523, !38522, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!38524 = distinct !{!38524, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38525 = distinct !{!38525, !38524, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38526 = distinct !{!38526, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38527 = distinct !{!38527, !38526, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38528 = !{!38431, !38429}
!38529 = !{!38434, !38433}
!38530 = !{!38434}
!38531 = !{!38437, !38436, !38434, !38433}
!38532 = !{!38441, !38439}
!38533 = !{!38439}
!38534 = !{!38441}
!38535 = !{!38443}
!38536 = !{!38447, !38441, !38446, !38445, !38439, !38444, !38437, !38434}
!38537 = !{!38449}
!38538 = !{!38449, !38455, !38454, !38453, !38452, !38443, !38451, !38450, !38447, !38441, !38446, !38445, !38439, !38444, !38437, !38436, !38434, !38433}
!38539 = !{!38449, !38455, !38454, !38453, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38540 = !{!38449, !38454, !38453, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38541 = !{!38449, !38443}
!38542 = !{!38447, !38441, !38445, !38439, !38437, !38434}
!38543 = !{!38457, !38449, !38443}
!38544 = !{!38449, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38545 = !{!38457}
!38546 = !{!38457, !38458, !38449, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38547 = !{!38457, !38460, !38458, !38459, !38449, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38548 = !{!38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38549 = !{!38462}
!38550 = !{!38462, !38443}
!38551 = !{!38464, !38462, !38443}
!38552 = !{!38466, !38462, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38553 = !{!38468}
!38554 = !{!38470, !38468, !38443}
!38555 = !{!38468, !38443}
!38556 = !{!38472, !38468, !38443, !38447, !38441, !38445, !38439, !38437, !38434}
!38557 = !{!38474}
!38558 = !{!38476}
!38559 = !{!38476, !38482, !38481, !38480, !38479, !38474, !38478, !38477, !38447, !38441, !38446, !38445, !38439, !38444, !38437, !38436, !38434, !38433}
!38560 = !{!38476, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38561 = !{!38476, !38474}
!38562 = !{!38484}
!38563 = !{!38484, !38486, !38485, !38476, !38482, !38481, !38480, !38479, !38474, !38478, !38477, !38447, !38441, !38446, !38445, !38439, !38444, !38437, !38436, !38434, !38433}
!38564 = !{!38484, !38476, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38565 = !{!38484, !38476, !38474}
!38566 = !{!38488}
!38567 = !{!38488, !38489, !38476, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38568 = !{!38488, !38491, !38489, !38490, !38476, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38569 = !{!38493}
!38570 = !{!38493, !38495, !38494, !38488, !38491, !38489, !38490, !38476, !38482, !38481, !38480, !38479, !38474, !38478, !38477, !38447, !38441, !38446, !38445, !38439, !38444, !38437, !38436, !38434, !38433}
!38571 = !{!38493, !38488, !38476, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38572 = !{!38493, !38488, !38476, !38474}
!38573 = !{!38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38574 = !{!38499, !38497, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38575 = !{!38501}
!38576 = !{!38501, !38474}
!38577 = !{!38503, !38501, !38474, !38447, !38441, !38445, !38439, !38437, !38434}
!38578 = !{!38437, !38434}
!38579 = !{!38505}
!38580 = !{!38507, !38505}
!38581 = !{!38509, !38505, !38437, !38434}
!38582 = !{!38511}
!38583 = !{!38513, !38511}
!38584 = !{!38515, !38511, !38437, !38434}
!38585 = !{!38519, !38517}
!38586 = !{!38521}
!38587 = !{!38523}
!38588 = !{!38527, !38525}
!38589 = distinct !{!38589, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38590 = distinct !{!38590, !38589, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38591 = distinct !{!38591, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38592 = distinct !{!38592, !38591, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38593 = distinct !{!38593, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38594 = distinct !{!38594, !38593, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38595 = distinct !{!38595, !38593, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1m_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38596 = distinct !{!38596, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38597 = distinct !{!38597, !38596, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38598 = distinct !{!38598, !38596, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1r_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38599 = distinct !{!38599, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38600 = distinct !{!38600, !38599, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 1"}
!38601 = distinct !{!38601, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal"}
!38602 = distinct !{!38602, !38601, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38603 = distinct !{!38603, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38604 = distinct !{!38604, !38603, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38605 = distinct !{!38605, !38599, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 2"}
!38606 = distinct !{!38606, !38599, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB2o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38607 = distinct !{!38607, !38601, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 2"}
!38608 = distinct !{!38608, !38601, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1t_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38609 = distinct !{!38609, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38610 = distinct !{!38610, !38609, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38611 = distinct !{!38611, !38603, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38612 = distinct !{!38612, !38603, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38613 = distinct !{!38613, !38603, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1o_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38614 = distinct !{!38614, !38609, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38615 = distinct !{!38615, !38609, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38616 = distinct !{!38616, !38609, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1d_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38617 = distinct !{!38617, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal"}
!38618 = distinct !{!38618, !38617, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 0"}
!38619 = distinct !{!38619, !38617, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 2"}
!38620 = distinct !{!38620, !38617, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 1"}
!38621 = distinct !{!38621, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38622 = distinct !{!38622, !38621, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38623 = distinct !{!38623, !38621, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38624 = distinct !{!38624, !38621, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38625 = distinct !{!38625, !38621, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionNtNtNtNtB1j_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38626 = distinct !{!38626, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal"}
!38627 = distinct !{!38627, !38626, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 0"}
!38628 = distinct !{!38628, !38626, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 2"}
!38629 = distinct !{!38629, !38626, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 1"}
!38630 = distinct !{!38630, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38631 = distinct !{!38631, !38630, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38632 = distinct !{!38632, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38633 = distinct !{!38633, !38632, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38634 = distinct !{!38634, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38635 = distinct !{!38635, !38634, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38636 = distinct !{!38636, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38637 = distinct !{!38637, !38636, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38638 = distinct !{!38638, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal"}
!38639 = distinct !{!38639, !38638, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 1"}
!38640 = distinct !{!38640, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal"}
!38641 = distinct !{!38641, !38640, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 0"}
!38642 = distinct !{!38642, !38638, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 3"}
!38643 = distinct !{!38643, !38638, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 2"}
!38644 = distinct !{!38644, !38638, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1q_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 0"}
!38645 = distinct !{!38645, !38640, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 3"}
!38646 = distinct !{!38646, !38640, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 2"}
!38647 = distinct !{!38647, !38640, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1f_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 1"}
!38648 = distinct !{!38648, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38649 = distinct !{!38649, !38648, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38650 = distinct !{!38650, !38648, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38651 = distinct !{!38651, !38648, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38652 = distinct !{!38652, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal"}
!38653 = distinct !{!38653, !38652, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 0"}
!38654 = distinct !{!38654, !38652, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 2"}
!38655 = distinct !{!38655, !38652, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 3"}
!38656 = distinct !{!38656, !38652, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtB1l_3tun3tcp13TcpConnectionECs7XnEB7DeNXr_7sslocal: argument 1"}
!38657 = distinct !{!38657, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38658 = distinct !{!38658, !38657, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38659 = distinct !{!38659, !38657, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38660 = distinct !{!38660, !38657, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38661 = distinct !{!38661, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38662 = distinct !{!38662, !38661, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38663 = distinct !{!38663, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38664 = distinct !{!38664, !38663, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38665 = distinct !{!38665, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38666 = distinct !{!38666, !38665, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38667 = distinct !{!38667, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38668 = distinct !{!38668, !38667, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38669 = distinct !{!38669, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38670 = distinct !{!38670, !38669, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38671 = distinct !{!38671, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38672 = distinct !{!38672, !38671, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38673 = distinct !{!38673, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38674 = distinct !{!38674, !38673, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38675 = distinct !{!38675, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38676 = distinct !{!38676, !38675, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38677 = distinct !{!38677, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38678 = distinct !{!38678, !38677, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38679 = distinct !{!38679, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38680 = distinct !{!38680, !38679, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38681 = distinct !{!38681, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38682 = distinct !{!38682, !38681, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38683 = distinct !{!38683, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38684 = distinct !{!38684, !38683, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38685 = distinct !{!38685, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38686 = distinct !{!38686, !38685, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!38687 = distinct !{!38687, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!38688 = distinct !{!38688, !38687, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!38689 = distinct !{!38689, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38690 = distinct !{!38690, !38689, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38691 = distinct !{!38691, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38692 = distinct !{!38692, !38691, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38693 = !{!38592, !38590}
!38694 = !{!38595, !38594}
!38695 = !{!38595}
!38696 = !{!38598, !38597, !38595, !38594}
!38697 = !{!38602, !38600}
!38698 = !{!38600}
!38699 = !{!38602}
!38700 = !{!38604}
!38701 = !{!38608, !38602, !38607, !38606, !38600, !38605, !38598, !38595}
!38702 = !{!38610}
!38703 = !{!38610, !38616, !38615, !38614, !38613, !38604, !38612, !38611, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38704 = !{!38610, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38705 = !{!38610, !38604}
!38706 = !{!38608, !38602, !38606, !38600, !38598, !38595}
!38707 = !{!38618}
!38708 = !{!38618, !38620, !38619, !38610, !38616, !38615, !38614, !38613, !38604, !38612, !38611, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38709 = !{!38618, !38610, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38710 = !{!38618, !38610, !38604}
!38711 = !{!38622}
!38712 = !{!38622, !38623, !38610, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38713 = !{!38622, !38625, !38623, !38624, !38610, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38714 = !{!38627}
!38715 = !{!38627, !38629, !38628, !38622, !38625, !38623, !38624, !38610, !38616, !38615, !38614, !38613, !38604, !38612, !38611, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38716 = !{!38627, !38622, !38610, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38717 = !{!38627, !38622, !38610, !38604}
!38718 = !{!38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38719 = !{!38633, !38631, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38720 = !{!38635}
!38721 = !{!38635, !38604}
!38722 = !{!38637, !38635, !38604, !38608, !38602, !38606, !38600, !38598, !38595}
!38723 = !{!38639}
!38724 = !{!38641}
!38725 = !{!38641, !38647, !38646, !38645, !38644, !38639, !38643, !38642, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38726 = !{!38641, !38646, !38645, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38727 = !{!38641, !38639}
!38728 = !{!38649}
!38729 = !{!38649, !38651, !38650, !38641, !38647, !38646, !38645, !38644, !38639, !38643, !38642, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38730 = !{!38649, !38641, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38731 = !{!38649, !38641, !38639}
!38732 = !{!38653}
!38733 = !{!38653, !38654, !38641, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38734 = !{!38653, !38656, !38654, !38655, !38641, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38735 = !{!38658}
!38736 = !{!38658, !38660, !38659, !38653, !38656, !38654, !38655, !38641, !38647, !38646, !38645, !38644, !38639, !38643, !38642, !38608, !38602, !38607, !38606, !38600, !38605, !38598, !38597, !38595, !38594}
!38737 = !{!38658, !38653, !38641, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38738 = !{!38658, !38653, !38641, !38639}
!38739 = !{!38641, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38740 = !{!38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38741 = !{!38664, !38662, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38742 = !{!38666}
!38743 = !{!38666, !38639}
!38744 = !{!38668, !38666, !38639, !38608, !38602, !38606, !38600, !38598, !38595}
!38745 = !{!38598, !38595}
!38746 = !{!38670}
!38747 = !{!38672, !38670}
!38748 = !{!38674, !38670, !38598, !38595}
!38749 = !{!38676}
!38750 = !{!38678, !38676}
!38751 = !{!38680, !38676, !38598, !38595}
!38752 = !{!38684, !38682}
!38753 = !{!38686}
!38754 = !{!38688}
!38755 = !{!38692, !38690}
!38756 = distinct !{!38756, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38757 = distinct !{!38757, !38756, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38758 = distinct !{!38758, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38759 = distinct !{!38759, !38758, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38760 = distinct !{!38760, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38761 = distinct !{!38761, !38760, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38762 = distinct !{!38762, !38760, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional18copy_bidirectionalNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38763 = distinct !{!38763, i1 true, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal"}
!38764 = distinct !{!38764, !38763, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38765 = distinct !{!38765, !38763, !"_RNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBa_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38766 = distinct !{!38766, i1 true, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38767 = distinct !{!38767, !38766, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 1"}
!38768 = distinct !{!38768, i1 true, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal"}
!38769 = distinct !{!38769, !38768, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 1"}
!38770 = distinct !{!38770, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38771 = distinct !{!38771, !38770, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38772 = distinct !{!38772, !38766, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 2"}
!38773 = distinct !{!38773, !38766, !"_RNvXs0_NtNtCsf3Ta7LF998c_4core6future7poll_fnINtB5_6PollFnNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtB17_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00ENtNtB7_6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38774 = distinct !{!38774, !38768, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 2"}
!38775 = distinct !{!38775, !38768, !"_RNCNCINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional23copy_bidirectional_implNtNtNtNtBc_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamE00Cs7XnEB7DeNXr_7sslocal: argument 0"}
!38776 = distinct !{!38776, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38777 = distinct !{!38777, !38776, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38778 = distinct !{!38778, !38770, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38779 = distinct !{!38779, !38770, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38780 = distinct !{!38780, !38770, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtB8_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38781 = distinct !{!38781, !38776, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38782 = distinct !{!38782, !38776, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38783 = distinct !{!38783, !38776, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38784 = distinct !{!38784, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38785 = distinct !{!38785, !38784, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38786 = distinct !{!38786, !38784, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38787 = distinct !{!38787, !38784, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38788 = distinct !{!38788, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38789 = distinct !{!38789, !38788, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38790 = distinct !{!38790, !38788, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38791 = distinct !{!38791, !38788, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38792 = distinct !{!38792, !38788, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38793 = distinct !{!38793, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38794 = distinct !{!38794, !38793, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38795 = distinct !{!38795, !38793, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38796 = distinct !{!38796, !38793, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38797 = distinct !{!38797, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38798 = distinct !{!38798, !38797, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38799 = distinct !{!38799, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38800 = distinct !{!38800, !38799, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38801 = distinct !{!38801, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38802 = distinct !{!38802, !38801, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38803 = distinct !{!38803, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38804 = distinct !{!38804, !38803, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38805 = distinct !{!38805, i1 true, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38806 = distinct !{!38806, !38805, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38807 = distinct !{!38807, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38808 = distinct !{!38808, !38807, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38809 = distinct !{!38809, !38805, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38810 = distinct !{!38810, !38805, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38811 = distinct !{!38811, !38805, !"_RINvNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional22transfer_one_directionNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB8_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38812 = distinct !{!38812, !38807, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38813 = distinct !{!38813, !38807, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38814 = distinct !{!38814, !38807, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer9poll_copyNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38815 = distinct !{!38815, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38816 = distinct !{!38816, !38815, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38817 = distinct !{!38817, !38815, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38818 = distinct !{!38818, !38815, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38819 = distinct !{!38819, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!38820 = distinct !{!38820, !38819, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38821 = distinct !{!38821, !38819, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38822 = distinct !{!38822, !38819, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!38823 = distinct !{!38823, !38819, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer14poll_write_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamNtNtNtNtB9_3net3tcp6stream9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38824 = distinct !{!38824, i1 true, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal"}
!38825 = distinct !{!38825, !38824, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!38826 = distinct !{!38826, !38824, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!38827 = distinct !{!38827, !38824, !"_RINvMNtNtNtCsczhfDQ1qNkX_5tokio2io4util4copyNtB3_10CopyBuffer13poll_fill_bufNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!38828 = distinct !{!38828, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38829 = distinct !{!38829, !38828, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38830 = distinct !{!38830, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38831 = distinct !{!38831, !38830, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38832 = distinct !{!38832, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38833 = distinct !{!38833, !38832, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38834 = distinct !{!38834, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38835 = distinct !{!38835, !38834, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38836 = distinct !{!38836, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38837 = distinct !{!38837, !38836, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38838 = distinct !{!38838, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38839 = distinct !{!38839, !38838, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38840 = distinct !{!38840, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38841 = distinct !{!38841, !38840, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38842 = distinct !{!38842, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal"}
!38843 = distinct !{!38843, !38842, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio2io4util18copy_bidirectional13TransferStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!38844 = distinct !{!38844, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38845 = distinct !{!38845, !38844, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38846 = distinct !{!38846, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal"}
!38847 = distinct !{!38847, !38846, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38848 = distinct !{!38848, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38849 = distinct !{!38849, !38848, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38850 = distinct !{!38850, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38851 = distinct !{!38851, !38850, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38852 = distinct !{!38852, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38853 = distinct !{!38853, !38852, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!38854 = distinct !{!38854, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!38855 = distinct !{!38855, !38854, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!38856 = distinct !{!38856, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38857 = distinct !{!38857, !38856, !"_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38858 = distinct !{!38858, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!38859 = distinct !{!38859, !38858, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!38860 = !{!38759, !38757}
!38861 = !{!38762, !38761}
!38862 = !{!38762}
!38863 = !{!38765, !38764, !38762, !38761}
!38864 = !{!38769, !38767}
!38865 = !{!38767}
!38866 = !{!38769}
!38867 = !{!38771}
!38868 = !{!38775, !38769, !38774, !38773, !38767, !38772, !38765, !38762}
!38869 = !{!38777}
!38870 = !{!38777, !38783, !38782, !38781, !38780, !38771, !38779, !38778, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38871 = !{!38777, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38872 = !{!38777, !38771}
!38873 = !{!38775, !38769, !38773, !38767, !38765, !38762}
!38874 = !{!38785}
!38875 = !{!38785, !38787, !38786, !38777, !38783, !38782, !38781, !38780, !38771, !38779, !38778, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38876 = !{!38785, !38777, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38877 = !{!38785, !38777, !38771}
!38878 = !{!38789}
!38879 = !{!38789, !38790, !38777, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38880 = !{!38789, !38792, !38790, !38791, !38777, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38881 = !{!38794}
!38882 = !{!38794, !38796, !38795, !38789, !38792, !38790, !38791, !38777, !38783, !38782, !38781, !38780, !38771, !38779, !38778, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38883 = !{!38794, !38789, !38777, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38884 = !{!38794, !38789, !38777, !38771}
!38885 = !{!38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38886 = !{!38800, !38798, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38887 = !{!38802}
!38888 = !{!38802, !38771}
!38889 = !{!38804, !38802, !38771, !38775, !38769, !38773, !38767, !38765, !38762}
!38890 = !{!38806}
!38891 = !{!38808}
!38892 = !{!38808, !38814, !38813, !38812, !38811, !38806, !38810, !38809, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38893 = !{!38808, !38813, !38812, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38894 = !{!38808, !38806}
!38895 = !{!38816}
!38896 = !{!38816, !38818, !38817, !38808, !38814, !38813, !38812, !38811, !38806, !38810, !38809, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38897 = !{!38816, !38808, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38898 = !{!38816, !38808, !38806}
!38899 = !{!38820}
!38900 = !{!38820, !38821, !38808, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38901 = !{!38820, !38823, !38821, !38822, !38808, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38902 = !{!38825}
!38903 = !{!38825, !38827, !38826, !38820, !38823, !38821, !38822, !38808, !38814, !38813, !38812, !38811, !38806, !38810, !38809, !38775, !38769, !38774, !38773, !38767, !38772, !38765, !38764, !38762, !38761}
!38904 = !{!38825, !38820, !38808, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38905 = !{!38825, !38820, !38808, !38806}
!38906 = !{!38808, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38907 = !{!38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38908 = !{!38831, !38829, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38909 = !{!38833}
!38910 = !{!38833, !38806}
!38911 = !{!38835, !38833, !38806, !38775, !38769, !38773, !38767, !38765, !38762}
!38912 = !{!38765, !38762}
!38913 = !{!38837}
!38914 = !{!38839, !38837}
!38915 = !{!38841, !38837, !38765, !38762}
!38916 = !{!38843}
!38917 = !{!38845, !38843}
!38918 = !{!38847, !38843, !38765, !38762}
!38919 = !{!38851, !38849}
!38920 = !{!38853}
!38921 = !{!38855}
!38922 = !{!38859, !38857}
!38923 = distinct !{!38923, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal"}
!38924 = distinct !{!38924, !38923, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!38925 = distinct !{!38925, i1 true, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal"}
!38926 = distinct !{!38926, !38925, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 1"}
!38927 = distinct !{!38927, !38925, !"_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal: argument 0"}
!38928 = distinct !{!38928, i1 true, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCs7XnEB7DeNXr_7sslocal"}
!38929 = distinct !{!38929, !38928, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCs7XnEB7DeNXr_7sslocal: argument 1"}
!38930 = distinct !{!38930, !38928, !"_RNvYINtNtCs9bnayhMRHjK_14http_body_util6stream14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream9StreamExt15poll_next_unpinCs7XnEB7DeNXr_7sslocal: argument 0"}
!38931 = distinct !{!38931, i1 true, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCs7XnEB7DeNXr_7sslocal"}
!38932 = distinct !{!38932, !38931, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCs7XnEB7DeNXr_7sslocal: argument 0"}
!38933 = distinct !{!38933, !38931, !"_RNvXs5_NtCs9bnayhMRHjK_14http_body_util6streamINtB5_14BodyDataStreamQINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_nextCs7XnEB7DeNXr_7sslocal: argument 1"}
!38934 = distinct !{!38934, i1 true, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs7XnEB7DeNXr_7sslocal"}
!38935 = distinct !{!38935, !38934, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs7XnEB7DeNXr_7sslocal: argument 0"}
!38936 = distinct !{!38936, i1 true, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCs7XnEB7DeNXr_7sslocal"}
!38937 = distinct !{!38937, !38936, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCs7XnEB7DeNXr_7sslocal: argument 0"}
!38938 = distinct !{!38938, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs7XnEB7DeNXr_7sslocal"}
!38939 = distinct !{!38939, !38938, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs7XnEB7DeNXr_7sslocal: argument 0"}
!38940 = distinct !{!38940, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal"}
!38941 = distinct !{!38941, !38940, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs7XnEB7DeNXr_7sslocal: argument 0"}
!38942 = distinct !{!38942, !38934, !"_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs7XnEB7DeNXr_7sslocal: argument 1"}
!38943 = distinct !{!38943, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!38944 = distinct !{!38944, !38943, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!38945 = distinct !{!38945, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!38946 = distinct !{!38946, !38945, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!38947 = distinct !{!38947, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!38948 = distinct !{!38948, !38947, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38949 = distinct !{!38949, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCs7XnEB7DeNXr_7sslocal"}
!38950 = distinct !{!38950, !38949, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!38951 = distinct !{!38951, !38949, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE3newCs7XnEB7DeNXr_7sslocal: argument 1"}
!38952 = distinct !{!38952, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal"}
!38953 = distinct !{!38953, !38952, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal: argument 0"}
!38954 = distinct !{!38954, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal"}
!38955 = distinct !{!38955, !38954, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal: argument 0"}
!38956 = distinct !{!38956, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCs7XnEB7DeNXr_7sslocal"}
!38957 = distinct !{!38957, !38956, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCs7XnEB7DeNXr_7sslocal: argument 2"}
!38958 = distinct !{!38958, !38956, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCs7XnEB7DeNXr_7sslocal: argument 1"}
!38959 = distinct !{!38959, !38956, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate27deflate4readINtB5_14DeflateDecoderRShE12new_with_bufCs7XnEB7DeNXr_7sslocal: argument 0"}
!38960 = distinct !{!38960, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal"}
!38961 = distinct !{!38961, !38960, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!38962 = distinct !{!38962, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal"}
!38963 = distinct !{!38963, !38962, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal: argument 0"}
!38964 = distinct !{!38964, !38962, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal: argument 1"}
!38965 = distinct !{!38965, i1 true, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECs7XnEB7DeNXr_7sslocal"}
!38966 = distinct !{!38966, !38965, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!38967 = distinct !{!38967, !38965, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShEECs7XnEB7DeNXr_7sslocal: argument 1"}
!38968 = distinct !{!38968, i1 true, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7XnEB7DeNXr_7sslocal"}
!38969 = distinct !{!38969, !38968, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7XnEB7DeNXr_7sslocal: argument 0"}
!38970 = distinct !{!38970, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7XnEB7DeNXr_7sslocal"}
!38971 = distinct !{!38971, !38970, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7XnEB7DeNXr_7sslocal: argument 0"}
!38972 = distinct !{!38972, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCs7XnEB7DeNXr_7sslocal"}
!38973 = distinct !{!38973, !38972, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate27deflate4read14DeflateDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCs7XnEB7DeNXr_7sslocal: argument 0"}
!38974 = distinct !{!38974, i1 true, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECs7XnEB7DeNXr_7sslocal"}
!38975 = distinct !{!38975, !38974, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECs7XnEB7DeNXr_7sslocal: argument 0"}
!38976 = distinct !{!38976, !38974, !"_RINvNtCsdEV4Kvs1Ch8_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECs7XnEB7DeNXr_7sslocal: argument 1"}
!38977 = distinct !{!38977, i1 true, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCs7XnEB7DeNXr_7sslocal"}
!38978 = distinct !{!38978, !38977, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCs7XnEB7DeNXr_7sslocal: argument 1"}
!38979 = distinct !{!38979, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!38980 = distinct !{!38980, !38979, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!38981 = distinct !{!38981, !38979, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!38982 = distinct !{!38982, !38977, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead8fill_bufCs7XnEB7DeNXr_7sslocal: argument 0"}
!38983 = distinct !{!38983, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!38984 = distinct !{!38984, !38983, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!38985 = distinct !{!38985, !38983, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!38986 = distinct !{!38986, i1 true, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead7consumeCs7XnEB7DeNXr_7sslocal"}
!38987 = distinct !{!38987, !38986, !"_RNvXs2_NtCsdEV4Kvs1Ch8_6flate29bufreaderINtB5_9BufReaderRShENtNtNtCsgCecv3eZDcN_5alloc2io8buf_read7BufRead7consumeCs7XnEB7DeNXr_7sslocal: argument 0"}
!38988 = distinct !{!38988, i1 true, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs7XnEB7DeNXr_7sslocal"}
!38989 = distinct !{!38989, !38988, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs7XnEB7DeNXr_7sslocal: argument 0"}
!38990 = distinct !{null, null, null}
!38991 = distinct !{!38991, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38992 = distinct !{!38992, !38991, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0:thread"}
!38993 = distinct !{!38993, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38994 = distinct !{!38994, !38993, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0:thread"}
!38995 = distinct !{!38995, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!38996 = distinct !{!38996, !38995, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!38997 = distinct !{!38997, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!38998 = distinct !{!38998, !38997, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!38999 = distinct !{!38999, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCs7XnEB7DeNXr_7sslocal"}
!39000 = distinct !{!39000, !38999, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!39001 = distinct !{!39001, !38999, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShE3newCs7XnEB7DeNXr_7sslocal: argument 1"}
!39002 = distinct !{!39002, i1 true, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal"}
!39003 = distinct !{!39003, !39002, !"_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal: argument 0"}
!39004 = distinct !{!39004, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal"}
!39005 = distinct !{!39005, !39004, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal: argument 0"}
!39006 = distinct !{!39006, i1 true, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCs7XnEB7DeNXr_7sslocal"}
!39007 = distinct !{!39007, !39006, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCs7XnEB7DeNXr_7sslocal: argument 1"}
!39008 = distinct !{!39008, !39006, !"_RNvMs2_NtNtCsdEV4Kvs1Ch8_6flate22gz7bufreadINtB5_9GzDecoderINtNtB9_9bufreader9BufReaderRShEE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!39009 = distinct !{null, null, ptr @_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind}
!39010 = distinct !{!39010, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!39011 = distinct !{!39011, !39010, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!39012 = distinct !{!39012, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!39013 = distinct !{!39013, !39012, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39014 = distinct !{!39014, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal"}
!39015 = distinct !{!39015, !39014, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!39016 = distinct !{!39016, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal"}
!39017 = distinct !{!39017, !39016, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal: argument 1"}
!39018 = distinct !{!39018, i1 true, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECs7XnEB7DeNXr_7sslocal"}
!39019 = distinct !{!39019, !39018, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECs7XnEB7DeNXr_7sslocal: argument 1"}
!39020 = distinct !{!39020, i1 true, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7XnEB7DeNXr_7sslocal"}
!39021 = distinct !{!39021, !39020, !"_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7XnEB7DeNXr_7sslocal: argument 0"}
!39022 = distinct !{!39022, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7XnEB7DeNXr_7sslocal"}
!39023 = distinct !{!39023, !39022, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7XnEB7DeNXr_7sslocal: argument 0"}
!39024 = distinct !{!39024, !39016, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCs7XnEB7DeNXr_7sslocal: argument 0"}
!39025 = distinct !{!39025, !39018, !"_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39026 = distinct !{!39026, i1 true, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCs7XnEB7DeNXr_7sslocal"}
!39027 = distinct !{!39027, !39026, !"_RNvYINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCs7XnEB7DeNXr_7sslocal: argument 0"}
!39028 = distinct !{!39028, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!39029 = distinct !{!39029, !39028, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!39030 = distinct !{!39030, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!39031 = distinct !{!39031, !39030, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39032 = distinct !{!39032, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!39033 = distinct !{!39033, !39032, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0:thread"}
!39034 = distinct !{null, null, null}
!39035 = distinct !{!39035, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!39036 = distinct !{!39036, !39035, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0:thread"}
!39037 = distinct !{!39037, i1 true, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs7XnEB7DeNXr_7sslocal"}
!39038 = distinct !{!39038, !39037, !"_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs7XnEB7DeNXr_7sslocal: argument 0"}
!39039 = distinct !{!39039, !255}
!39040 = distinct !{!39040, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal"}
!39041 = distinct !{!39041, !39040, !"_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE3newCs7XnEB7DeNXr_7sslocal: argument 0"}
!39042 = distinct !{!39042, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!39043 = distinct !{!39043, !39042, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 1"}
!39044 = distinct !{!39044, !39042, !"_RINvCsl4v216RJbSI_19brotli_decompressor16BrotliDecompressINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!39045 = distinct !{!39045, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECs7XnEB7DeNXr_7sslocal"}
!39046 = distinct !{!39046, !39045, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!39047 = distinct !{!39047, !39045, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECs7XnEB7DeNXr_7sslocal: argument 2"}
!39048 = distinct !{!39048, !39045, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECs7XnEB7DeNXr_7sslocal: argument 3"}
!39049 = distinct !{!39049, !39045, !"_RINvCsl4v216RJbSI_19brotli_decompressor27BrotliDecompressCustomAllocINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB2o_B2o_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39050 = distinct !{!39050, i1 true, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECs7XnEB7DeNXr_7sslocal"}
!39051 = distinct !{!39051, !39050, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39052 = distinct !{!39052, !39050, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECs7XnEB7DeNXr_7sslocal: argument 2"}
!39053 = distinct !{!39053, !39050, !"_RINvCsl4v216RJbSI_19brotli_decompressor34BrotliDecompressCustomIoCustomDictNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorINtNtB2_11io_wrappers15IoReaderWrapperINtNtB1f_6cursor6CursorRShEEINtB1S_15IoWriterWrapperINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB3R_B3R_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!39054 = distinct !{!39054, i1 true, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal"}
!39055 = distinct !{!39055, !39054, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal: argument 0"}
!39056 = distinct !{!39056, !39054, !"_RNvMNtCsl4v216RJbSI_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E26new_with_custom_dictionaryCs7XnEB7DeNXr_7sslocal: argument 1"}
!39057 = distinct !{!39057, i1 true, !"_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7XnEB7DeNXr_7sslocal"}
!39058 = distinct !{!39058, !39057, !"_RINvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs7XnEB7DeNXr_7sslocal: argument 0"}
!39059 = distinct !{!39059, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal"}
!39060 = distinct !{!39060, !39059, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal: argument 0"}
!39061 = distinct !{!39061, i1 true, !"_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE11extend_withCs7XnEB7DeNXr_7sslocal"}
!39062 = distinct !{!39062, !39061, !"_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsl4v216RJbSI_19brotli_decompressor7huffman11HuffmanCodeE11extend_withCs7XnEB7DeNXr_7sslocal: argument 0"}
!39063 = distinct !{!39063, i1 true, !"_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal"}
!39064 = distinct !{!39064, !39063, !"_RNvXs_NtCsl4v216RJbSI_19brotli_decompressor11io_wrappersINtB4_15IoReaderWrapperINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShEEINtB4_10CustomReadNtNtB1k_5error5ErrorE4readCs7XnEB7DeNXr_7sslocal: argument 0:Peel0"}
!39065 = distinct !{!39065, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCs7XnEB7DeNXr_7sslocal"}
!39066 = distinct !{!39066, !39065, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCs7XnEB7DeNXr_7sslocal: argument 1:Peel0"}
!39067 = distinct !{!39067, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!39068 = distinct !{!39068, !39067, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1:Peel0"}
!39069 = distinct !{!39069, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!39070 = distinct !{!39070, !39069, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!39071 = distinct !{!39071, !39069, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!39072 = distinct !{!39072, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCs7XnEB7DeNXr_7sslocal"}
!39073 = distinct !{!39073, !39072, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCs7XnEB7DeNXr_7sslocal: argument 0"}
!39074 = distinct !{!39074, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!39075 = distinct !{!39075, !39074, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!39076 = distinct !{!39076, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal"}
!39077 = distinct !{!39077, !39076, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 7:Peel0"}
!39078 = distinct !{!39078, i1 true, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal"}
!39079 = distinct !{!39079, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 6"}
!39080 = distinct !{!39080, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 5"}
!39081 = distinct !{!39081, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 4"}
!39082 = distinct !{!39082, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 3"}
!39083 = distinct !{!39083, !39076, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 2:Peel0"}
!39084 = distinct !{!39084, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 1"}
!39085 = distinct !{!39085, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39086 = distinct !{!39086, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal"}
!39087 = distinct !{!39087, !39086, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal: argument 0"}
!39088 = distinct !{!39088, i1 true, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal"}
!39089 = distinct !{!39089, !39088, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs7XnEB7DeNXr_7sslocal: argument 0"}
!39090 = distinct !{!39090, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 7"}
!39091 = distinct !{!39091, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!39092 = distinct !{!39092, !39091, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!39093 = distinct !{!39093, !39091, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!39094 = distinct !{!39094, !39078, !"_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode22BrotliDecompressStreamNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECs7XnEB7DeNXr_7sslocal: argument 2"}
!39095 = distinct !{!39095, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!39096 = distinct !{!39096, !39095, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!39097 = distinct !{!39097, !39095, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!39098 = distinct !{!39098, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!39099 = distinct !{!39099, !39098, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!39100 = distinct !{!39100, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeWindowBits"}
!39101 = distinct !{!39101, !39100, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor6decode16DecodeWindowBits: argument 2"}
!39102 = distinct !{!39102, i1 true, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!39103 = distinct !{!39103, !39102, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!39104 = distinct !{!39104, !39102, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!39105 = distinct !{!39105, !39102, !"_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
end_hunk_3
