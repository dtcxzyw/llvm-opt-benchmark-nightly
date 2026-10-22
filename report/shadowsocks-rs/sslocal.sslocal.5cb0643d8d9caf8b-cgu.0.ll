Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNvCs7XnEB7DeNXr_7sslocal4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECs7XnEB7DeNXr_7sslocal.exit

bb.fr:                                            ; preds = %bb.fp
  %i.vf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !noalias !69452, !nonnull !145, !align !153, !noundef !145
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !69452, !nonnull !145, !noundef !145
  %i.vj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 24
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !69452, !noundef !145
  call void %i.vi(ptr noundef %i.vk) #52, !noalias !69452, !inline_history !69154
  br label %bb.fq

bb.fs:                                            ; preds = %bb.fq
  %i.vl = atomicrmw and ptr %i.vb, i64 -2 acq_rel, align 8, !noalias !69452 ; 0 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 32
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync7oneshotNtB2_4Task9drop_task(ptr noundef nonnull align 8 %i.vm) #52, !noalias !69452
  br label %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.fs, %bb.fq
  %i.vn = and i64 %i.vc, 2
  %.not1.i.i.i.i.i2.i.i = icmp eq i64 %i.vn, 0
  br i1 %.not1.i.i.i.i.i2.i.i, label %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i3, i64 56
  store i8 0, ptr %i.vo, align 1, !noalias !69452
  br label %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.ft, %_RNvMs4_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_5InneruE5closeCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.va, align 8, !alias.scope !69453, !noalias !69277 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69454)
  %i.vp = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %i.vp, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.vq = atomicrmw add ptr %.pr.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !69455
  %i.vr = icmp eq i64 %i.vq, 1
  br i1 %i.vr, label %bb.fv, label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i

bb.fv:                                            ; preds = %bb.fu
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.va) #59, !noalias !69430
  br label %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i

_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.fv, %bb.fu, %_RNvXs2_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime8blocking4pool7SpawnerECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !69277
  %.not.i = icmp eq i64 %.sroa.0.2.i, -1
  br i1 %.not.i, label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main.exit, label %bb.fw

bb.fw:                                            ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i, %bb.bg
  %.sroa.0.08.i = phi i64 [ %.sroa.07.0.copyload.i, %bb.bg ], [ %.sroa.0.2.i, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !69276
  store i64 %.sroa.0.08.i, ptr %i.ac, align 8, !noalias !69276
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !69276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !69276
  store ptr %i.ac, ptr %i.ab, align 8, !noalias !69276
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB4_16ShadowsocksErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !69276
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @2124, ptr noundef nonnull %i.ab) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !69276
  %.val.i4 = load i64, ptr %i.ac, align 8, !range !181, !noalias !69276, !noundef !145
  switch i64 %.val.i4, label %default.unreachable [
    i64 0, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 1, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i
    i64 2, label %bb.fx
    i64 3, label %bb.fx
    i64 4, label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  ]

bb.fx:                                            ; preds = %bb.fw, %bb.fw
  br label %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i: ; preds = %bb.fw
  %.val.i.i.i.i5 = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !alias.scope !69456, !noalias !69276 ; 2 uses
  %i.vs = icmp eq i64 %.val.i.i.i.i5, 0
  br i1 %i.vs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7XnEB7DeNXr_7sslocal.exit.sink.split.i.i

_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i: ; preds = %bb.fx, %bb.fw, %bb.fw
  %.sroa.0.0.i.i = phi i8 [ 70, %bb.fw ], [ 78, %bb.fx ], [ 70, %bb.fw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69457)
  %.val.i.i1.i.i = load i64, ptr %.sroa.8.0..sroa_idx6.i, align 8, !alias.scope !69457, !noalias !69276 ; 2 uses
  %i.vt = icmp eq i64 %.val.i.i1.i.i, 0
  br i1 %i.vt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7XnEB7DeNXr_7sslocal.exit.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7XnEB7DeNXr_7sslocal.exit.sink.split.i.i: ; preds = %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i10.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %.val.i.i10.sink.i.i = phi i64 [ %.val.i.i.i.i5, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.val.i.i1.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val1.i.i11.i.i = load ptr, ptr %i.vu, align 8, !alias.scope !69457, !noalias !69276, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11.i.i, i64 noundef %.val.i.i10.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !69457
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7XnEB7DeNXr_7sslocal.exit.sink.split.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i
  %.sroa.0.0.i11.i = phi i8 [ 64, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvMNtCsat9HgdBb3qc_16shadowsocks_rust5errorNtB2_16ShadowsocksError9exit_code.exit.i ], [ %.sroa.0.0.i10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs7XnEB7DeNXr_7sslocal.exit.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !69276
  br label %_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main.exit

_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main.exit: ; preds = %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorECs7XnEB7DeNXr_7sslocal.exit.i ], [ 0, %_RNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main0Cs7XnEB7DeNXr_7sslocal.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches10ArgMatchesECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(56) %i.aq) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69521, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !69521 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !69521 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69521, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !145
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.aj = icmp ult i64 %i.ai, 1152921504606846976
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !69522
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69523)
  %.idx = shl nuw nsw i64 %i.ai, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !69524)
  call void @llvm.experimental.noalias.scope.decl(metadata !69525)
  store ptr %1, ptr %i.c, align 8, !alias.scope !69526
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !69526
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69526
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69526
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69526
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !69527
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69527
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69527
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !69527
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !69528
  call void @llvm.experimental.noalias.scope.decl(metadata !69529)
  call void @llvm.experimental.noalias.scope.decl(metadata !69530)
  call void @llvm.experimental.noalias.scope.decl(metadata !69531)
  call void @llvm.experimental.noalias.scope.decl(metadata !69532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69533
  call void @llvm.experimental.noalias.scope.decl(metadata !69534)
  call void @llvm.experimental.noalias.scope.decl(metadata !69535)
  call void @llvm.experimental.noalias.scope.decl(metadata !69536)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !69537, !noundef !145 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !147, !noalias !69537, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69538
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69538
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !69537, !nonnull !145, !noundef !145
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !69539 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !69540)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69541
  %i.az = load ptr, ptr %.sroa.422.0.copyload, align 8, !noalias !69542, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx6.i.i.i.i, i64 30, i1 false), !noalias !69533
  %i.ba = call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 40                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ai, 230584300921369395
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !69543
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !69543 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !69533
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !69533
  store i16 %.sroa.0.0.copyload5.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !69533
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store ptr %i.az, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !69533
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !69533
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !69533
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !69544
  call void @llvm.experimental.noalias.scope.decl(metadata !69545)
  call void @llvm.experimental.noalias.scope.decl(metadata !69546)
  call void @llvm.experimental.noalias.scope.decl(metadata !69547)
  call void @llvm.experimental.noalias.scope.decl(metadata !69548)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !69549, !noalias !69533 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !69550, !noalias !69533, !nonnull !145, !noundef !145 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !69549, !noalias !69533, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted14.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !69550, !noalias !69533 ; 2 uses
  %.promoted15.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !69549, !noalias !69533 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !69551, !noundef !145
  %i.bs = add i64 %i.br, %.promoted14.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !147, !noalias !69551, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i15.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i15.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i16.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted14.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !69551, !nonnull !145, !noundef !145
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i16.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i17.i.i = load i16, ptr %i.by, align 4, !noalias !69552 ; 2 uses
  %.not.i.i.i.i19.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i17.i.i, 2
  br i1 %.not.i.i.i.i19.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !69553, !noundef !145
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !147, !noalias !69553, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !69553, !nonnull !145, !noundef !145
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !69554 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload5.i.i.i.i20.i.i = phi i16 [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i17.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.promoted15.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69555)
  call void @llvm.experimental.noalias.scope.decl(metadata !69556)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i21.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.co = load ptr, ptr %i.cl, align 8, !noalias !69557, !nonnull !145, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx6.i.i.i.i21.i.i, i64 30, i1 false), !noalias !69558
  %i.cp = icmp samesign ult i64 %i.ci, 230584300921369396
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !147, !alias.scope !69559, !noalias !69533, !noundef !145
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 3
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 40) #52, !noalias !69560
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !69559, !noalias !69533
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !69558
  store i16 %.sroa.0.0.copyload5.i.i.i.i20.i.i, ptr %i.cy, align 8, !noalias !69558
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !69558
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !69559, !noalias !69533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted15.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa14.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !69550, !noalias !69533
  store i64 %.lcssa14.i.i, ptr %i.bh, align 8, !alias.scope !69550, !noalias !69533
  store ptr %i.db, ptr %i.bp, align 8, !noalias !69533
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtB1i_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !69561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69533
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !69544
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !69544
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !69544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69533
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtB1i_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !69544
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !range !260, !noundef !145
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load ptr, ptr %i.d, align 8, !nonnull !145, !noundef !145
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !69563, !noundef !145 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !147, !alias.scope !69563, !noundef !145
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8grow_oneB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !69563, !nonnull !145, !noundef !145
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dp
  store ptr %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !69563
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !69564, !noundef !145
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !69564
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_3tun3udp19UdpTunInboundWriterEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69628, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !69628 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !69628 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69628, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !145
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !69629
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69630)
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !69631)
  call void @llvm.experimental.noalias.scope.decl(metadata !69632)
  store ptr %1, ptr %i.c, align 8, !alias.scope !69633
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !69633
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69633
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69633
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69633
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !69634
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69634
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69634
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !69634
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !69635
  call void @llvm.experimental.noalias.scope.decl(metadata !69636)
  call void @llvm.experimental.noalias.scope.decl(metadata !69637)
  call void @llvm.experimental.noalias.scope.decl(metadata !69638)
  call void @llvm.experimental.noalias.scope.decl(metadata !69639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69640
  call void @llvm.experimental.noalias.scope.decl(metadata !69641)
  call void @llvm.experimental.noalias.scope.decl(metadata !69642)
  call void @llvm.experimental.noalias.scope.decl(metadata !69643)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !69644, !noundef !145 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !147, !noalias !69644, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69645
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69645
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !69644, !nonnull !145, !noundef !145
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !69646 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !69647)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69648
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !69649
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !69640
  %i.ba = call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ai, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !69650
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !69650 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !69640
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !69640
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !69640
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !69640
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !69640
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !69640
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !69651
  call void @llvm.experimental.noalias.scope.decl(metadata !69652)
  call void @llvm.experimental.noalias.scope.decl(metadata !69653)
  call void @llvm.experimental.noalias.scope.decl(metadata !69654)
  call void @llvm.experimental.noalias.scope.decl(metadata !69655)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !69656, !noalias !69640 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !69657, !noalias !69640, !nonnull !145, !noundef !145 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !69656, !noalias !69640, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !69657, !noalias !69640 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !69656, !noalias !69640 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !69658, !noundef !145
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !147, !noalias !69658, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !69658, !nonnull !145, !noundef !145
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !69659 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !69660, !noundef !145
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !147, !noalias !69660, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !69660, !nonnull !145, !noundef !145
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !69661 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69662)
  call void @llvm.experimental.noalias.scope.decl(metadata !69663)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !69664
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !69665
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !147, !alias.scope !69666, !noalias !69640, !noundef !145
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !69667
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !69666, !noalias !69640
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !69665
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !69665
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !69665
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !69666, !noalias !69640
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !69657, !noalias !69640
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !69657, !noalias !69640
  store ptr %i.db, ptr %i.bp, align 8, !noalias !69640
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !69668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69640
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !69651
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !69651
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !69651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69640
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !69651
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !260, !noundef !145
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !69670, !noundef !145 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !147, !alias.scope !69670, !noundef !145
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_3tun3udp19UdpTunInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !69670, !nonnull !145, !noundef !145
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !69670
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !69671, !noundef !145
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !69671
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_5redir8udprelay21UdpRedirInboundWriterEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69735, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !69735 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !69735 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69735, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !145
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !69736
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69737)
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !69738)
  call void @llvm.experimental.noalias.scope.decl(metadata !69739)
  store ptr %1, ptr %i.c, align 8, !alias.scope !69740
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !69740
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69740
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69740
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69740
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !69741
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69741
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69741
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !69741
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !69742
  call void @llvm.experimental.noalias.scope.decl(metadata !69743)
  call void @llvm.experimental.noalias.scope.decl(metadata !69744)
  call void @llvm.experimental.noalias.scope.decl(metadata !69745)
  call void @llvm.experimental.noalias.scope.decl(metadata !69746)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69747
  call void @llvm.experimental.noalias.scope.decl(metadata !69748)
  call void @llvm.experimental.noalias.scope.decl(metadata !69749)
  call void @llvm.experimental.noalias.scope.decl(metadata !69750)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !69751, !noundef !145 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !147, !noalias !69751, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69752
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69752
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !69751, !nonnull !145, !noundef !145
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !69753 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !69754)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69755
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !69756
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !69747
  %i.ba = call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ai, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !69757
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !69757 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !69747
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !69747
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !69747
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !69747
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !69747
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !69747
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !69758
  call void @llvm.experimental.noalias.scope.decl(metadata !69759)
  call void @llvm.experimental.noalias.scope.decl(metadata !69760)
  call void @llvm.experimental.noalias.scope.decl(metadata !69761)
  call void @llvm.experimental.noalias.scope.decl(metadata !69762)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !69763, !noalias !69747 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !69764, !noalias !69747, !nonnull !145, !noundef !145 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !69763, !noalias !69747, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !69764, !noalias !69747 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !69763, !noalias !69747 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !69765, !noundef !145
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !147, !noalias !69765, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !69765, !nonnull !145, !noundef !145
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !69766 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !69767, !noundef !145
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !147, !noalias !69767, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !69767, !nonnull !145, !noundef !145
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !69768 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69769)
  call void @llvm.experimental.noalias.scope.decl(metadata !69770)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !69771
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !69772
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !147, !alias.scope !69773, !noalias !69747, !noundef !145
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !69774
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !69773, !noalias !69747
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !69772
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !69772
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !69772
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !69773, !noalias !69747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !69764, !noalias !69747
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !69764, !noalias !69747
  store ptr %i.db, ptr %i.bp, align 8, !noalias !69747
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !69775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69747
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !69758
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !69758
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !69758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69747
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !69758
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !260, !noundef !145
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !69777, !noundef !145 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !147, !alias.scope !69777, !noundef !145
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_5redir8udprelay21UdpRedirInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !69777, !nonnull !145, !noundef !145
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !69777
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !69778, !noundef !145
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !69778
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_6tunnel8udprelay22TunnelUdpInboundWriterEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69842, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !69842 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !69842 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69842, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !145
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !69843
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69844)
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !69845)
  call void @llvm.experimental.noalias.scope.decl(metadata !69846)
  store ptr %1, ptr %i.c, align 8, !alias.scope !69847
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !69847
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69847
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69847
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69847
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !69848
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69848
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69848
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !69848
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !69849
  call void @llvm.experimental.noalias.scope.decl(metadata !69850)
  call void @llvm.experimental.noalias.scope.decl(metadata !69851)
  call void @llvm.experimental.noalias.scope.decl(metadata !69852)
  call void @llvm.experimental.noalias.scope.decl(metadata !69853)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69854
  call void @llvm.experimental.noalias.scope.decl(metadata !69855)
  call void @llvm.experimental.noalias.scope.decl(metadata !69856)
  call void @llvm.experimental.noalias.scope.decl(metadata !69857)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !69858, !noundef !145 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !147, !noalias !69858, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69859
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69859
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !69858, !nonnull !145, !noundef !145
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !69860 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !69861)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69862
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !69863
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !69854
  %i.ba = call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ai, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !69864
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !69864 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !69854
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !69854
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !69854
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !69854
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !69854
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !69854
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69854
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !69865
  call void @llvm.experimental.noalias.scope.decl(metadata !69866)
  call void @llvm.experimental.noalias.scope.decl(metadata !69867)
  call void @llvm.experimental.noalias.scope.decl(metadata !69868)
  call void @llvm.experimental.noalias.scope.decl(metadata !69869)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !69870, !noalias !69854 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !69871, !noalias !69854, !nonnull !145, !noundef !145 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !69870, !noalias !69854, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !69871, !noalias !69854 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !69870, !noalias !69854 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !69872, !noundef !145
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !147, !noalias !69872, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !69872, !nonnull !145, !noundef !145
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !69873 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !69874, !noundef !145
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !147, !noalias !69874, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !69874, !nonnull !145, !noundef !145
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !69875 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69876)
  call void @llvm.experimental.noalias.scope.decl(metadata !69877)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !69878
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !69879
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !147, !alias.scope !69880, !noalias !69854, !noundef !145
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !69881
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !69880, !noalias !69854
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !69879
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !69879
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !69879
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !69880, !noalias !69854
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !69871, !noalias !69854
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !69871, !noalias !69854
  store ptr %i.db, ptr %i.bp, align 8, !noalias !69854
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !69882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69854
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !69865
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !69865
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !69865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69854
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !69865
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !260, !noundef !145
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !69884, !noundef !145 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !147, !alias.scope !69884, !noundef !145
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_6tunnel8udprelay22TunnelUdpInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !69884, !nonnull !145, !noundef !145
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !69884
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !69885, !noundef !145
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !69885
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1M_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69949, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !69949 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !69949 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !69949, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !145
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2a_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !69950
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69951)
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !69952)
  call void @llvm.experimental.noalias.scope.decl(metadata !69953)
  store ptr %1, ptr %i.c, align 8, !alias.scope !69954
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !69954
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69954
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !69954
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69954
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !69955
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69955
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69955
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !69955
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !69956
  call void @llvm.experimental.noalias.scope.decl(metadata !69957)
  call void @llvm.experimental.noalias.scope.decl(metadata !69958)
  call void @llvm.experimental.noalias.scope.decl(metadata !69959)
  call void @llvm.experimental.noalias.scope.decl(metadata !69960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69961
  call void @llvm.experimental.noalias.scope.decl(metadata !69962)
  call void @llvm.experimental.noalias.scope.decl(metadata !69963)
  call void @llvm.experimental.noalias.scope.decl(metadata !69964)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !69965, !noundef !145 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !147, !noalias !69965, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !69966
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !69966
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !69965, !nonnull !145, !noundef !145
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !69967 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !69968)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !69969
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !69970
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !69961
  %i.ba = call i64 @llvm.umax.i64(i64 %i.av, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ai, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !261

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !69971
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !69971 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !69961
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !69961
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !69961
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !69961
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !69961
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !69961
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69961
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !69972
  call void @llvm.experimental.noalias.scope.decl(metadata !69973)
  call void @llvm.experimental.noalias.scope.decl(metadata !69974)
  call void @llvm.experimental.noalias.scope.decl(metadata !69975)
  call void @llvm.experimental.noalias.scope.decl(metadata !69976)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !69977, !noalias !69961 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !69978, !noalias !69961, !nonnull !145, !noundef !145 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !69977, !noalias !69961, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !69978, !noalias !69961 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !69977, !noalias !69961 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !69979, !noundef !145
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !147, !noalias !69979, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !69979, !nonnull !145, !noundef !145
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !69980 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !69981, !noundef !145
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !147, !noalias !69981, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !69981, !nonnull !145, !noundef !145
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !69982 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69983)
  call void @llvm.experimental.noalias.scope.decl(metadata !69984)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !69985
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !69986
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !147, !alias.scope !69987, !noalias !69961, !noundef !145
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !69988
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !69987, !noalias !69961
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !69986
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !69986
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !69986
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !69987, !noalias !69961
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !69978, !noalias !69961
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !69978, !noalias !69961
  store ptr %i.db, ptr %i.bp, align 8, !noalias !69961
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB3v_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !69989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !69990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69961
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !69972
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !69972
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !69972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69961
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB3v_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !69972
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !260, !noundef !145
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2a_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !69991, !noundef !145 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbE14remove_expiredCs7XnEB7DeNXr_7sslocal:bb.a
  %i.cr = load i64, ptr %1, align 8, !range !147, !noalias !70075, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cq, %i.cr
  %i.cs = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.cr
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cq, %i.cs
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.sink, ptr %i.co, align 8, !noalias !70075
  store i64 %i.ak, ptr %i.k, align 8, !noalias !70075
  %i.ct = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %.sroa.026.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !70076
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterbEEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.w:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !145
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !range !260, !noundef !145
  %i.cy = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.cv, i32 noundef %i.cx, i64 noundef %i.h, i32 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.cz = extractvalue { i64, i32 } %i.cy, 0      ; 2 uses
  %i.da = icmp eq i64 %i.cz, %2
  br i1 %i.da, label %.split, label %bb.y

bb.x:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread34
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.w
  %i.db = extractvalue { i64, i32 } %i.cy, 1      ; 2 uses
  %i.dc = icmp ult i32 %i.db, 1000000000
  call void @llvm.assume(i1 %i.dc)
  %.not45 = icmp samesign ult i32 %i.db, %3
  br i1 %.not45, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.y:                                             ; preds = %bb.w
  %.not44 = icmp slt i64 %i.cz, %2
  br i1 %.not44, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.z:                                             ; preds = %.split, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17) %.sink6.i43) #52
  %i.dd = load i32, ptr %i.y, align 8, !range !163, !noundef !145
  %.not9 = icmp eq i32 %i.dd, -1
  br i1 %.not9, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = load i8, ptr %i.b, align 8, !range !148, !noundef !145
  %i.df = load i64, ptr %i.j, align 8, !alias.scope !70077, !noundef !145 ; 3 uses
  %i.dg = load i64, ptr %i.c, align 8, !range !147, !alias.scope !70077, !noundef !145
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.ab, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.aa, %bb.ab
  %i.di = load ptr, ptr %i.i, align 8, !alias.scope !70077, !nonnull !145, !noundef !145
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i8 %i.de, ptr %i.dj, align 1
  %i.dk = add i64 %i.df, 1
  store i64 %i.dk, ptr %i.j, align 8, !alias.scope !70077
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.ad:                                            ; preds = %bb.ae, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.ae:                                            ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dm, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !70078, !noundef !145
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.af
  store i64 0, ptr %i.dn, align 8, !alias.scope !70078
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.af, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECs7XnEB7DeNXr_7sslocal.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dq, align 8
  br label %bb.ae
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1K_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [6 x i8], align 2     ; 4 uses
  %.sroa.74.i.i.i.i = alloca [16 x i8], align 8   ; 4 uses
  %.sroa.96.i.i.i.i = alloca [24 x i8], align 8   ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [6 x i8], align 2         ; 4 uses
  %.sroa.79.i.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.911.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [88 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !70141, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !70141 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !70141 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !70141, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !145
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.ab, label %bb.aa

bb.g:                                             ; preds = %.backedge, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %.backedge ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.af, %.backedge ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %.backedge ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ad, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ae, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 40
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ag = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4b_EE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ag, null
  br i1 %.not8, label %bb.u, label %bb.t, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.ai = icmp ult i64 %i.ah, 288230376151711744
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !70142
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.al = sub nuw i64 %i.aj, %i.ah
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70143)
  %.idx = shl nuw nsw i64 %i.ah, 5
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !70144)
  call void @llvm.experimental.noalias.scope.decl(metadata !70145)
  store ptr %1, ptr %i.d, align 8, !alias.scope !70146
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !70146
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !70146
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !70146
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !70146
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.an, align 8, !alias.scope !70147
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !70147
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !70147
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !70147
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !70148
  call void @llvm.experimental.noalias.scope.decl(metadata !70149)
  call void @llvm.experimental.noalias.scope.decl(metadata !70150)
  call void @llvm.experimental.noalias.scope.decl(metadata !70151)
  call void @llvm.experimental.noalias.scope.decl(metadata !70152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70153
  call void @llvm.experimental.noalias.scope.decl(metadata !70154)
  call void @llvm.experimental.noalias.scope.decl(metadata !70155)
  call void @llvm.experimental.noalias.scope.decl(metadata !70156)
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.s, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !70157, !noundef !145 ; 2 uses
  %i.as = load i64, ptr %1, align 8, !range !147, !noalias !70157, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ar, %i.as
  %i.at = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.as
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ar, %i.at
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !70158
  %i.au = add nsw i64 %i.ah, -1                   ; 2 uses
  store i64 %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !70158
  %i.av = load ptr, ptr %i.u, align 8, !noalias !70157, !nonnull !145, !noundef !145
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.sroa.02.0.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i = load i16, ptr %i.aw, align 8, !noalias !70159 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !70159 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !70159 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.not.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.s, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70160)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 32
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !70161
  %.sroa.022.0.copyload23.i.i.i.i = load i64, ptr %.sroa.422.0.copyload, align 8, !noalias !70162 ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, label %bb.k

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %i.ay = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 0
  %i.az = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !70163
  br label %bb.s

bb.k:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i, i64 24, i1 false), !noalias !70153
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i, i64 6, i1 false), !noalias !70153
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !70153
  %i.ba = call i64 @llvm.umax.i64(i64 %i.au, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 72                       ; 3 uses
  %or.cond.i.i3.i.i = icmp samesign ugt i64 %i.ah, 128102389400760775
  br i1 %or.cond.i.i3.i.i, label %bb.n, label %bb.l, !prof !261

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !70164
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !70164 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.m ], [ undef, %bb.k ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.k ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !70153
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.be, %bb.m ] ; 9 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, i64 6, i1 false), !noalias !70153
  %.sroa.719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, i64 16, i1 false), !noalias !70153
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.921.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, i64 24, i1 false), !noalias !70153
  store i16 %.sroa.010.0.copyload11.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !70153
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !70153
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !70153
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !70153
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !70153
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !70153
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !70153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !70165
  call void @llvm.experimental.noalias.scope.decl(metadata !70166)
  call void @llvm.experimental.noalias.scope.decl(metadata !70167)
  call void @llvm.experimental.noalias.scope.decl(metadata !70168)
  call void @llvm.experimental.noalias.scope.decl(metadata !70169)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !70170, !noalias !70153 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !70171, !noalias !70153, !nonnull !145, !noundef !145 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !70170, !noalias !70153, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted24.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !70171, !noalias !70153
  %.promoted25.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !70170, !noalias !70153
  br label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.br = phi ptr [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cq, %bb.r ]
  %i.bs = phi i64 [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cs, %bb.r ] ; 5 uses
  %i.bt = phi ptr [ %.promoted25.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.bu = phi i64 [ %.promoted24.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.bz, %bb.r ] ; 2 uses
  %.val.i.i2223.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ca, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70172)
  call void @llvm.experimental.noalias.scope.decl(metadata !70173)
  call void @llvm.experimental.noalias.scope.decl(metadata !70174)
  %i.bv = load i64, ptr %i.bl, align 8, !noalias !70175, !noundef !145
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = load i64, ptr %i.bj, align 8, !range !147, !noalias !70175, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bw, %i.bx
  %i.by = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bx
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bw, %i.by
  %i.bz = add i64 %i.bu, 1                        ; 3 uses
  %i.ca = add i64 %.val.i.i2223.i.i.i.i, -1       ; 5 uses
  %i.cb = load ptr, ptr %i.bm, align 8, !noalias !70175, !nonnull !145, !noundef !145
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i.i.i = load i16, ptr %i.cc, align 8, !noalias !70176 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !70176 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !70176 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.cd = icmp eq ptr %i.bt, %i.bo
  br i1 %i.cd, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  %.sroa.022.0.copyload23.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !70177 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %bb.q

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %bb.o
  %i.cf = phi ptr [ %i.ce, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bt, %bb.o ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !70171, !noalias !70153
  store i64 %i.ca, ptr %i.bh, align 8, !alias.scope !70171, !noalias !70153
  store ptr %i.cf, ptr %i.bp, align 8, !noalias !70153
  %i.cg = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 0
  %i.ch = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !70178
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.96.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i.i.i, i64 24, i1 false), !noalias !70179
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i.i.i, i64 6, i1 false), !noalias !70179
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !70179
  %i.ci = icmp samesign ult i64 %i.bs, 128102389400760776
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.b, align 8, !range !147, !alias.scope !70180, !noalias !70153, !noundef !145
  %i.ck = icmp eq i64 %i.bs, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.r

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub nuw i64 %i.bq, %i.cl
  %i.cn = lshr exact i64 %i.cm, 5
  %i.co = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cn)
  %i.cp = add nuw nsw i64 %i.co, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bs, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 72) #52, !noalias !70181
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !70180, !noalias !70153
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.q
  %i.cq = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %i.bs ; 7 uses
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.411.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, i64 6, i1 false), !noalias !70179
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.714.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, i64 16, i1 false), !noalias !70179
  %.sroa.916.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.916.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, i64 24, i1 false), !noalias !70179
  store i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, ptr %i.cr, align 8, !noalias !70179
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !70179
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !70179
  %.sroa.815.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i.i, align 8, !noalias !70179
  %i.cs = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !70180, !noalias !70153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96.i.i.i.i)
  %i.ct = icmp eq i64 %i.ca, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.ca, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.ce, %bb.r ], [ %i.bt, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !70171, !noalias !70153
  store i64 %.lcssa.i.i, ptr %i.bh, align 8, !alias.scope !70171, !noalias !70153
  store ptr %i.cu, ptr %i.bp, align 8, !noalias !70153
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %bb.p, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1i_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !70182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !70183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70153
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.s:                                             ; preds = %bb.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !70165
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !alias.scope !70165
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cw, align 8, !alias.scope !70165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70153
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1i_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d) #52, !noalias !70165
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.t:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !145
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !range !260, !noundef !145
  %i.db = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.cy, i32 noundef %i.da, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1716) #52 ; 2 uses
  %i.dc = extractvalue { i64, i32 } %i.db, 0      ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %2
  br i1 %i.dd, label %.split, label %bb.v

bb.u:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1714, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #62
  unreachable

.split:                                           ; preds = %bb.t
  %i.de = extractvalue { i64, i32 } %i.db, 1      ; 2 uses
  %i.df = icmp ult i32 %i.de, 1000000000
  call void @llvm.assume(i1 %i.df)
  %.not41 = icmp samesign ult i32 %i.de, %3
  br i1 %.not41, label %bb.w, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.v:                                             ; preds = %bb.t
  %.not40 = icmp slt i64 %i.dc, %2
  br i1 %.not40, label %bb.w, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread

bb.w:                                             ; preds = %.split, %bb.v
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4b_EE6removeB18_ECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52
  %i.dg = load i64, ptr %i.c, align 8, !range !187, !noundef !145
  %.not9 = icmp eq i64 %i.dg, -1
  br i1 %.not9, label %.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load i64, ptr %i.l, align 8, !alias.scope !70184, !noundef !145 ; 3 uses
  %i.di = load i64, ptr %i.e, align 8, !range !147, !alias.scope !70184, !noundef !145
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.y, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

bb.y:                                             ; preds = %bb.x
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8grow_oneB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59, !noalias !70185
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCs7XnEB7DeNXr_7sslocal.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.x, %bb.y
  %i.dk = load ptr, ptr %i.k, align 8, !alias.scope !70184, !nonnull !145, !noundef !145
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.dm = add i64 %i.dh, 1
  store i64 %i.dm, ptr %i.l, align 8, !alias.scope !70184
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCs7XnEB7DeNXr_7sslocal.exit, %bb.w
  br label %bb.g

bb.z:                                             ; preds = %bb.aa, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit
  ret void

bb.aa:                                            ; preds = %bb.ab, %bb.f
  store i64 0, ptr %0, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.do, align 8
  br label %bb.z

bb.ab:                                            ; preds = %bb.f
  tail call fastcc void @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE8truncateCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #52
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dp, align 8
  br label %bb.aa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEE14remove_expiredCs7XnEB7DeNXr_7sslocal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [6 x i8], align 2     ; 4 uses
  %.sroa.74.i.i.i.i = alloca [16 x i8], align 8   ; 4 uses
  %.sroa.96.i.i.i.i = alloca [24 x i8], align 8   ; 4 uses
  %i.a = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [6 x i8], align 2         ; 4 uses
  %.sroa.79.i.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.911.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [88 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !range !163, !noundef !145 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !70248, !noundef !145 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !70248 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !70248 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !70248, !nonnull !145, !noundef !145 ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !145
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.ab, label %bb.aa

bb.g:                                             ; preds = %.backedge, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.013.sroa.7.136, %.backedge ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %i.af, %.backedge ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.5.137, %.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCs7XnEB7DeNXr_7sslocal.exit ], [ %.sroa.10.sroa.0.138, %.backedge ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ad, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ae, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 40
  %.val = load ptr, ptr %i.f, align 8, !noundef !145
  %.val10 = load i64, ptr %i.z, align 8
  %i.ag = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEB4D_EE3getB18_ECs7XnEB7DeNXr_7sslocal(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ag, null
  br i1 %.not8, label %bb.u, label %bb.t, !prof !154

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread: ; preds = %bb.h, %.split, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = load i64, ptr %i.l, align 8, !noundef !145 ; 10 uses
  %i.ai = icmp ult i64 %i.ah, 288230376151711744
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.m, align 8, !noundef !145 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit, !prof !154

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2127) #62, !noalias !70249
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.al = sub nuw i64 %i.aj, %i.ah
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !145, !noundef !145 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70250)
  %.idx = shl nuw nsw i64 %i.ah, 5
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !70251)
  call void @llvm.experimental.noalias.scope.decl(metadata !70252)
  store ptr %1, ptr %i.d, align 8, !alias.scope !70253
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !70253
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !70253
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !70253
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !70253
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.an, align 8, !alias.scope !70254
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !70254
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !70254
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !70254
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !70255
  call void @llvm.experimental.noalias.scope.decl(metadata !70256)
  call void @llvm.experimental.noalias.scope.decl(metadata !70257)
  call void @llvm.experimental.noalias.scope.decl(metadata !70258)
  call void @llvm.experimental.noalias.scope.decl(metadata !70259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70260
  call void @llvm.experimental.noalias.scope.decl(metadata !70261)
  call void @llvm.experimental.noalias.scope.decl(metadata !70262)
  call void @llvm.experimental.noalias.scope.decl(metadata !70263)
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.s, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !70264, !noundef !145 ; 2 uses
  %i.as = load i64, ptr %1, align 8, !range !147, !noalias !70264, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ar, %i.as
  %i.at = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.as
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ar, %i.at
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !70265
  %i.au = add nsw i64 %i.ah, -1                   ; 2 uses
  store i64 %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !70265
  %i.av = load ptr, ptr %i.u, align 8, !noalias !70264, !nonnull !145, !noundef !145
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.sroa.02.0.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i = load i16, ptr %i.aw, align 8, !noalias !70266 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !70266 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !70266 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.not.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.s, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70267)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 32
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !70268
  %.sroa.022.0.copyload23.i.i.i.i = load i64, ptr %.sroa.422.0.copyload, align 8, !noalias !70269 ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, label %bb.k

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %i.ay = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 0
  %i.az = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !70270
  br label %bb.s

bb.k:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i, i64 24, i1 false), !noalias !70260
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i, i64 6, i1 false), !noalias !70260
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !70260
  %i.ba = call i64 @llvm.umax.i64(i64 %i.au, i64 3) ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 72                       ; 3 uses
  %or.cond.i.i3.i.i = icmp samesign ugt i64 %i.ah, 128102389400760775
  br i1 %or.cond.i.i3.i.i, label %bb.n, label %bb.l, !prof !261

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !70271
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !70271 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.m ], [ undef, %bb.k ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.k ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !70260
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.be, %bb.m ] ; 9 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, i64 6, i1 false), !noalias !70260
  %.sroa.719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, i64 16, i1 false), !noalias !70260
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.921.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, i64 24, i1 false), !noalias !70260
  store i16 %.sroa.010.0.copyload11.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !70260
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !70260
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !70260
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !70260
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !70260
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !70260
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !70260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !70272
  call void @llvm.experimental.noalias.scope.decl(metadata !70273)
  call void @llvm.experimental.noalias.scope.decl(metadata !70274)
  call void @llvm.experimental.noalias.scope.decl(metadata !70275)
  call void @llvm.experimental.noalias.scope.decl(metadata !70276)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !70277, !noalias !70260 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !70278, !noalias !70260, !nonnull !145, !noundef !145 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !70277, !noalias !70260, !nonnull !145 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted24.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !70278, !noalias !70260
  %.promoted25.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !70277, !noalias !70260
  br label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i
  %i.br = phi ptr [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cq, %bb.r ]
  %i.bs = phi i64 [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.cs, %bb.r ] ; 5 uses
  %i.bt = phi ptr [ %.promoted25.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.bu = phi i64 [ %.promoted24.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.bz, %bb.r ] ; 2 uses
  %.val.i.i2223.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.lr.ph.i.i.i.i ], [ %i.ca, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !70279)
  call void @llvm.experimental.noalias.scope.decl(metadata !70280)
  call void @llvm.experimental.noalias.scope.decl(metadata !70281)
  %i.bv = load i64, ptr %i.bl, align 8, !noalias !70282, !noundef !145
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = load i64, ptr %i.bj, align 8, !range !147, !noalias !70282, !noundef !145 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bw, %i.bx
  %i.by = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bx
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bw, %i.by
  %i.bz = add i64 %i.bu, 1                        ; 3 uses
  %i.ca = add i64 %.val.i.i2223.i.i.i.i, -1       ; 5 uses
  %i.cb = load ptr, ptr %i.bm, align 8, !noalias !70282, !nonnull !145, !noundef !145
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i.i.i = load i16, ptr %i.cc, align 8, !noalias !70283 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !70283 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !70283 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.cd = icmp eq ptr %i.bt, %i.bo
  br i1 %i.cd, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  %.sroa.022.0.copyload23.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !70284 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %bb.q

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %bb.o
  %i.cf = phi ptr [ %i.ce, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ], [ %i.bt, %bb.o ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !70278, !noalias !70260
  store i64 %i.ca, ptr %i.bh, align 8, !alias.scope !70278, !noalias !70260
  store ptr %i.cf, ptr %i.bp, align 8, !noalias !70260
  %i.cg = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 0
  %i.ch = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !70285
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.96.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i.i.i, i64 24, i1 false), !noalias !70286
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i.i.i, i64 6, i1 false), !noalias !70286
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !70286
  %i.ci = icmp samesign ult i64 %i.bs, 128102389400760776
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.b, align 8, !range !147, !alias.scope !70287, !noalias !70260, !noundef !145
  %i.ck = icmp eq i64 %i.bs, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.r

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub nuw i64 %i.bq, %i.cl
  %i.cn = lshr exact i64 %i.cm, 5
  %i.co = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cn)
  %i.cp = add nuw nsw i64 %i.co, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bs, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 72) #52, !noalias !70288
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !70287, !noalias !70260
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.q
  %i.cq = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %i.bs ; 7 uses
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.411.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, i64 6, i1 false), !noalias !70286
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.714.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, i64 16, i1 false), !noalias !70286
  %.sroa.916.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.916.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, i64 24, i1 false), !noalias !70286
  store i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, ptr %i.cr, align 8, !noalias !70286
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !70286
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !70286
  %.sroa.815.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i.i, align 8, !noalias !70286
  %i.cs = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !70287, !noalias !70260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96.i.i.i.i)
  %i.ct = icmp eq i64 %i.ca, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.ca, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.ce, %bb.r ], [ %i.bt, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !70278, !noalias !70260
  store i64 %.lcssa.i.i, ptr %i.bh, align 8, !alias.scope !70278, !noalias !70260
  store ptr %i.cu, ptr %i.bp, align 8, !noalias !70260
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.loopexit.i.i, %bb.p, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7XnEB7DeNXr_7sslocal.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !70289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !70290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70260
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

bb.s:                                             ; preds = %bb.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs7XnEB7DeNXr_7sslocal.exit
  store i64 0, ptr %0, align 8, !alias.scope !70272
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !alias.scope !70272
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cw, align 8, !alias.scope !70272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70260
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d) #52, !noalias !70272
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

end_hunk_1
