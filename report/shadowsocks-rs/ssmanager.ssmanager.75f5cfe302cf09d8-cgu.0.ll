Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNvCsa7TLgTh0CeG_9ssmanager4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsa7TLgTh0CeG_9ssmanager.exit
  %i.vq = and i64 %i.vo, 3
  %or.cond3.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.vq, 1
  br i1 %or.cond3.not.i.i.i.i.i.i.i.i, label %bb.ga, label %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %i.vr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !noalias !32621, !nonnull !80, !align !86, !noundef !80
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8, !noalias !32621, !nonnull !80, !noundef !80
  %i.vv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8, !noalias !32621, !noundef !80
  call void %i.vu(ptr noundef %i.vw) #45, !noalias !32621, !inline_history !32317
  br label %bb.fy

bb.ga:                                            ; preds = %bb.fy
  %i.vx = atomicrmw and ptr %i.vn, i64 -2 acq_rel, align 8, !noalias !32621 ; 0 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 32
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.vy) #45, !noalias !32621
  br label %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.ga, %bb.fy
  %i.vz = and i64 %i.vo, 2
  %.not1.i.i.i.i.i2.i.i = icmp eq i64 %i.vz, 0
  br i1 %.not1.i.i.i.i.i2.i.i, label %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 56
  store i8 0, ptr %i.wa, align 1, !noalias !32621
  br label %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.gb, %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.vm, align 8, !alias.scope !32622, !noalias !32440 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32623)
  %i.wb = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %i.wb, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i, label %bb.gc

bb.gc:                                            ; preds = %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %i.wc = atomicrmw add ptr %.pr.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !32624
  %i.wd = icmp eq i64 %i.wc, 1
  br i1 %i.wd, label %bb.gd, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vm) #52, !noalias !32599
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i

_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.gd, %bb.gc, %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime8blocking4pool7SpawnerECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32440
  %.not.i = icmp eq i64 %.sroa.0.2.i, -1
  br i1 %.not.i, label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit, label %bb.ge

bb.ge:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i, %bb.bg
  %.sroa.0.08.i = phi i64 [ %.sroa.07.0.copyload.i, %bb.bg ], [ %.sroa.0.2.i, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !32439
  store i64 %.sroa.0.08.i, ptr %i.ac, align 8, !noalias !32439
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !32439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32439
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !32439
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !32439
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @1313, ptr noundef nonnull %i.ab) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32439
  %.val.i4 = load i64, ptr %i.ac, align 8, !range !101, !noalias !32439, !noundef !80
  switch i64 %.val.i4, label %default.unreachable [
    i64 0, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 1, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 2, label %bb.gf
    i64 3, label %bb.gf
    i64 4, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  ]

bb.gf:                                            ; preds = %bb.ge, %bb.ge
  br label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i: ; preds = %bb.ge
  %.val.i.i.i.i5 = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !range !82, !alias.scope !32625, !noalias !32439, !noundef !80 ; 2 uses
  %i.we = icmp eq i64 %.val.i.i.i.i5, 0
  br i1 %i.we, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i: ; preds = %bb.gf, %bb.ge, %bb.ge
  %.sroa.0.0.i.i = phi i8 [ 70, %bb.ge ], [ 78, %bb.gf ], [ 70, %bb.ge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32626)
  %.val.i.i1.i.i = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !range !82, !alias.scope !32626, !noalias !32439, !noundef !80 ; 2 uses
  %i.wf = icmp eq i64 %.val.i.i1.i.i, 0
  br i1 %i.wf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i10.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %.val.i.i10.sink.i.i = phi i64 [ %.val.i.i.i.i5, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.val.i.i1.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val1.i.i11.i.i = load ptr, ptr %i.wg, align 8, !alias.scope !32626, !noalias !32439, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i.i, i64 noundef %.val.i.i10.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32626
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i11.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ], [ %.sroa.0.0.i10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !32439
  br label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit

_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main.exit: ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ 0, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main0Csa7TLgTh0CeG_9ssmanager.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches10ArgMatchesECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aq) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE14remove_expiredCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !range !103, !noundef !80 ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !32691, !noundef !80 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !32691 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.n, align 8, !alias.scope !32691 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.o = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.o    ; 4 uses
  %i.p = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw i64 %i.l, %i.p
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %.sroa.04.0.i.i, %i.l
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.r, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !32691, !nonnull !80, !noundef !80 ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.5.0.i
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.11.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !80
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.af, label %bb.ae

bb.g:                                             ; preds = %bb.ac, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.013.sroa.7.140, %bb.ac ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.u, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.ae, %bb.ac ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.10.sroa.5.141, %bb.ac ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.t, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsa7TLgTh0CeG_9ssmanager.exit ], [ %.sroa.10.sroa.0.142, %bb.ac ] ; 3 uses
  %i.ac = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ac, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ad, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread34: ; preds = %bb.g, %bb.h
  %.sink6.i43 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.142 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.141 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.140 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink6.i43, i64 32
  %.val = load ptr, ptr %i.d, align 8, !noundef !80
  %.val10 = load i64, ptr %i.x, align 8
  %i.af = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsa7TLgTh0CeG_9ssmanager(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i43) #45 ; 3 uses
  %.not8 = icmp eq ptr %i.af, null
  br i1 %.not8, label %bb.x, label %bb.w, !prof !92

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %bb.h, %.split, %bb.y
  %i.ag = load i64, ptr %i.j, align 8, !noundef !80 ; 14 uses
  %i.ah = icmp ult i64 %i.ag, 576460752303423488
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.k, align 8, !noundef !80 ; 5 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit, !prof !92

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #55, !noalias !32692
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.thread
  store i64 0, ptr %i.k, align 8
  %i.ak = sub nuw i64 %i.ai, %i.ag                ; 5 uses
  %.sroa.026.0.copyload = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.427.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !80, !noundef !80 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ag, 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32693)
  call void @llvm.experimental.noalias.scope.decl(metadata !32694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32695
  %i.am = icmp eq i64 %i.ag, 0                    ; 2 uses
  br i1 %i.am, label %bb.t, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !32696, !noundef !80 ; 2 uses
  %i.ap = load i64, ptr %1, align 8, !range !82, !noalias !32696, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ap
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.as = load ptr, ptr %i.s, align 8, !noalias !32696, !nonnull !80, !noundef !80
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.at, align 4, !noalias !32697 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 16 ; 2 uses
  %i.av = load <2 x ptr>, ptr %.sroa.427.0.copyload, align 8, !noalias !32698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !32695
  %i.aw = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ax = call i64 @llvm.umax.i64(i64 %i.ar, i64 3) ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = mul i64 %i.ay, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ag, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !177

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32699
  %i.bb = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.az, i64 noundef range(i64 1, 17) 8) #45, !noalias !32699 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.az, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #54, !noalias !32695
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bb, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.ay, %bb.l ] ; 2 uses
  %i.bd = icmp samesign ult i64 %i.ax, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bd)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !32695
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !32695
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.av, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !32695
  store i64 %.sroa.4.0.i.i.i, ptr %i.a, align 8, !noalias !32695
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !32695
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !32695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32700)
  call void @llvm.experimental.noalias.scope.decl(metadata !32701)
  %i.be = icmp eq i64 %i.ar, 0
  br i1 %i.be, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.o
  %i.bf = phi ptr [ %i.ca, %bb.o ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.bg = phi i64 [ %i.cc, %bb.o ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 5 uses
  %.sroa.12.0.i.i = phi ptr [ %i.bq, %bb.o ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 4 uses
  %.in.i = phi i64 [ %i.bh, %bb.o ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %.val.i.i1314.i.i.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.ar, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.bh = add nuw nsw i64 %.in.i, 1               ; 2 uses
  %i.bi = load i64, ptr %i.an, align 8, !noalias !32702, !noundef !80
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = load i64, ptr %1, align 8, !range !82, !noalias !32702, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bj, %i.bk
  %i.bl = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bk
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bj, %i.bl
  %i.bm = add nsw i64 %.val.i.i1314.i.i.i.i, -1   ; 3 uses
  %i.bn = load ptr, ptr %i.s, align 8, !noalias !32702, !nonnull !80, !noundef !80
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.bo, align 4, !noalias !32703 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  %i.bp = icmp eq ptr %.sroa.12.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bp
  br i1 %or.cond.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i.i, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %.sroa.12.0.i.i, align 8, !noalias !32704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i, i64 30, i1 false), !noalias !32705
  %i.bs = icmp samesign ult i64 %i.bg, 192153584101141163
  call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %i.a, align 8, !range !82, !alias.scope !32706, !noalias !32695, !noundef !80
  %i.bu = icmp eq i64 %i.bg, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.n
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub nuw i64 %i.aw, %i.bv
  %i.bx = lshr exact i64 %i.bw, 4
  %i.by = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bx)
  %i.bz = add nuw nsw i64 %i.by, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bg, i64 noundef range(i64 1, 0) %i.bz, i64 noundef 8, i64 noundef 48) #45, !noalias !32707
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !32706, !noalias !32695
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %bb.n
  %i.ca = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %i.bf, %bb.n ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.bg ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !32705
  store i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, ptr %i.cb, align 8, !noalias !32705
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <2 x ptr> %i.br, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !32705
  %i.cc = add nuw nsw i64 %i.bg, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !32706, !noalias !32695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.cd = icmp eq i64 %i.bm, 0
  br i1 %i.cd, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.o, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  %.sroa.12.1.i.i.ph = phi ptr [ %.sroa.12.0.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ], [ %i.bq, %bb.o ] ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !noalias !32708 ; 5 uses
  %i.ce = add i64 %.pre, %i.ak                    ; 2 uses
  %i.cf = icmp eq i64 %.pre, 0
  %i.cg = icmp eq i64 %i.ai, %i.ag
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread, label %bb.p, !prof !32709

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.p, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.ch = phi i64 [ %i.ce, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.ce, %bb.p ], [ %i.ak, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %.sroa.12.1.i.i62 = phi ptr [ %.sroa.12.1.i.i.ph, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.sroa.12.1.i.i.ph, %bb.p ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 3 uses
  %i.ci = phi i64 [ %.pre, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %.pre, %bb.p ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa7TLgTh0CeG_9ssmanager.exit.i.i ]
  %i.cj = icmp eq i64 %i.ch, 0
  br i1 %i.cj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i, label %bb.q

bb.p:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %.pre, i64 noundef %i.ak) #45, !noalias !32708
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread

bb.q:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread
  %i.ck = icmp ult i64 %i.ci, %i.ak
  br i1 %i.ck, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = load i64, ptr %i.an, align 8, !noalias !32708, !noundef !80
  %i.cm = add i64 %i.cl, %i.ag                    ; 2 uses
  %i.cn = load i64, ptr %1, align 8, !range !82, !noalias !32708, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cm, %i.cn
  %i.co = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.cn
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cm, %i.co
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i: ; preds = %bb.r, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread
  %.sroa.0.0.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.r ], [ 0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsa7TLgTh0CeG_9ssmanager.exit.i.i.thread ]
  store i64 %.sroa.0.0.i.i.i.i.i.sink.i.i, ptr %i.an, align 8, !noalias !32708
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.sink.split.i.i, %bb.q
  store i64 %i.ch, ptr %i.k, align 8, !noalias !32708
  %i.cp = ptrtoint ptr %.sroa.12.1.i.i62 to i64
  %i.cq = sub nuw i64 %i.aw, %i.cp
  %i.cr = lshr exact i64 %i.cq, 4
  %i.cs = icmp eq ptr %i.al, %.sroa.12.1.i.i62
  br i1 %i.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.1.i.i62, i64 %.sroa.0.03.i.i.i.i.i.i
  %i.cu = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ct) #45, !noalias !32710
  %i.cv = icmp eq i64 %i.cu, %i.cr
  br i1 %i.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.cw = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %i.cx = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32710
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !32711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32695
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsa7TLgTh0CeG_9ssmanager.exit

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa7TLgTh0CeG_9ssmanager.exit
  store i64 0, ptr %0, align 8, !alias.scope !32712
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8, !alias.scope !32712
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !32712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32695
  %i.da = icmp eq i64 %i.ai, %i.ag
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load i64, ptr %i.db, align 8, !noalias !32713, !noundef !80
  %i.dd = add i64 %i.dc, %i.ag                    ; 2 uses
  %i.de = load i64, ptr %1, align 8, !range !82, !noalias !32713, !noundef !80 ; 2 uses
  %.not.i.i.i.i.i1.i = icmp ult i64 %i.dd, %i.de
  %i.df = select i1 %.not.i.i.i.i.i1.i, i64 0, i64 %i.de
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.dd, %i.df
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.sink, ptr %i.db, align 8, !noalias !32713
  store i64 %i.ak, ptr %i.k, align 8, !noalias !32713
  br i1 %i.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.427.0.copyload, i64 %.sroa.0.03.i.i.i.i.i
  %i.dh = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dg) #45, !noalias !32714
  %i.di = icmp eq i64 %i.dh, %i.ag
  br i1 %i.di, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i
end_hunk_0
