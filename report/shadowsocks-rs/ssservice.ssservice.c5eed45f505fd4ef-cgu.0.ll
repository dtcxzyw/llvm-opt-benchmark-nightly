Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1M_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE14remove_expiredCsgZAIVb0XKpv_9ssservice:bb.a
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !79163, !noundef !177
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !79163
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %.sroa.4.i.i = alloca [30 x i8], align 2        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !79228, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !79228 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.n, align 8, !alias.scope !79228 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.o = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.o    ; 4 uses
  %i.p = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw i64 %i.l, %i.p
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %.sroa.04.0.i.i, %i.l
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.r, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !79228, !nonnull !177, !noundef !177 ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.5.0.i
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.11.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !177
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.af, label %bb.ae

bb.g:                                             ; preds = %bb.ac, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.140, %bb.ac ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.u, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ae, %bb.ac ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.141, %bb.ac ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.t, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.142, %bb.ac ] ; 3 uses
  %i.ac = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ac, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ad, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34: ; preds = %bb.g, %bb.h
  %.sink6.i43 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.142 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.141 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.140 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink6.i43, i64 32
  %.val = load ptr, ptr %i.d, align 8, !noundef !177
  %.val10 = load i64, ptr %i.x, align 8
  %i.af = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i43) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.af, null
  br i1 %.not8, label %bb.x, label %bb.w, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.y
  %i.ag = load i64, ptr %i.j, align 8, !noundef !177 ; 14 uses
  %i.ah = icmp ult i64 %i.ag, 576460752303423488
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.k, align 8, !noundef !177 ; 5 uses
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !79229
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.k, align 8
  %i.ak = sub nuw i64 %i.ai, %i.ag                ; 5 uses
  %.sroa.026.0.copyload = load i64, ptr %i.c, align 8 ; 4 uses
  %.sroa.427.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !177, !noundef !177 ; 6 uses
  %.idx = shl nuw nsw i64 %i.ag, 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79230)
  call void @llvm.experimental.noalias.scope.decl(metadata !79231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79232
  %i.am = icmp eq i64 %i.ag, 0                    ; 2 uses
  br i1 %i.am, label %bb.t, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !79233, !noundef !177 ; 2 uses
  %i.ap = load i64, ptr %1, align 8, !range !179, !noalias !79233, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ap
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.as = load ptr, ptr %i.s, align 8, !noalias !79233, !nonnull !177, !noundef !177
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.at, align 4, !noalias !79234 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.427.0.copyload, i64 16 ; 2 uses
  %i.av = load <2 x ptr>, ptr %.sroa.427.0.copyload, align 8, !noalias !79235
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !79232
  %i.aw = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ax = call i64 @llvm.umax.i64(i64 %i.ar, i64 3) ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = mul i64 %i.ay, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %i.ag, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !79236
  %i.bb = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.az, i64 noundef range(i64 1, 17) 8) #52, !noalias !79236 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.az, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !79232
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.bb, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.ay, %bb.l ] ; 2 uses
  %i.bd = icmp samesign ult i64 %i.ax, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bd)
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !79232
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !79232
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.av, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !79232
  store i64 %.sroa.4.0.i.i.i, ptr %i.a, align 8, !noalias !79232
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !79232
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !79237)
  call void @llvm.experimental.noalias.scope.decl(metadata !79238)
  %i.be = icmp eq i64 %i.ar, 0
  br i1 %i.be, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.o
  %i.bf = phi ptr [ %i.bz, %bb.o ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.bg = phi i64 [ %i.cb, %bb.o ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 5 uses
  %.sroa.12.0.i.i = phi ptr [ %i.bq, %bb.o ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 4 uses
  %.in.i = phi i64 [ %i.bh, %bb.o ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.val.i.i1314.i.i.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.ar, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.bh = add nuw nsw i64 %.in.i, 1               ; 2 uses
  %i.bi = load i64, ptr %i.an, align 8, !noalias !79239, !noundef !177
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = load i64, ptr %1, align 8, !range !179, !noalias !79239, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bj, %i.bk
  %i.bl = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bk
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bj, %i.bl
  %i.bm = add nsw i64 %.val.i.i1314.i.i.i.i, -1   ; 3 uses
  %i.bn = load ptr, ptr %i.s, align 8, !noalias !79239, !nonnull !177, !noundef !177
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.bo, align 4, !noalias !79240 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  %i.bp = icmp eq ptr %.sroa.12.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.bp
  br i1 %or.cond.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i.i, i64 16 ; 3 uses
  %i.br = load <2 x ptr>, ptr %.sroa.12.0.i.i, align 8, !noalias !79241
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i, i64 30, i1 false), !noalias !79242
  %4 = icmp samesign ult i64 %i.bg, 192153584101141163
  call void @llvm.assume(i1 %4)
  %i.bs = load i64, ptr %i.a, align 8, !range !179, !alias.scope !79243, !noalias !79232, !noundef !177
  %i.bt = icmp eq i64 %i.bg, %i.bs
  br i1 %i.bt, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub nuw i64 %i.aw, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bw)
  %i.by = add nuw nsw i64 %i.bx, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bg, i64 noundef range(i64 1, 0) %i.by, i64 noundef 8, i64 noundef 48) #52, !noalias !79244
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79243, !noalias !79232
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.bz = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.bf, %bb.n ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bz, i64 %i.bg ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !79242
  store i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, ptr %i.ca, align 8, !noalias !79242
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store <2 x ptr> %i.br, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !79242
  %i.cb = add nuw nsw i64 %i.bg, 1                ; 2 uses
  store i64 %i.cb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79243, !noalias !79232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.cc = icmp eq i64 %i.bm, 0
  br i1 %i.cc, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.o, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.12.1.i.i.ph = phi ptr [ %.sroa.12.0.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bq, %bb.o ] ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !noalias !79245 ; 5 uses
  %i.cd = add i64 %.pre, %i.ak                    ; 2 uses
  %i.ce = icmp eq i64 %.pre, 0
  %i.cf = icmp eq i64 %i.ai, %i.ag
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cf, %i.ce
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread, label %bb.p, !prof !338

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cg = phi i64 [ %i.cd, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.cd, %bb.p ], [ %i.ak, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  %.sroa.12.1.i.i62 = phi ptr [ %.sroa.12.1.i.i.ph, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.12.1.i.i.ph, %bb.p ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 3 uses
  %i.ch = phi i64 [ %.pre, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.pre, %bb.p ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i, label %bb.q

bb.p:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %.pre, i64 noundef %i.ak) #52, !noalias !79245
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread

bb.q:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread
  %i.cj = icmp ult i64 %i.ch, %i.ak
  br i1 %i.cj, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ck = load i64, ptr %i.an, align 8, !noalias !79245, !noundef !177
  %i.cl = add i64 %i.ck, %i.ag                    ; 2 uses
  %i.cm = load i64, ptr %1, align 8, !range !179, !noalias !79245, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cl, %i.cm
  %i.cn = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.cm
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cl, %i.cn
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i: ; preds = %bb.r, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread
  %.sroa.0.0.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.r ], [ 0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread ]
  store i64 %.sroa.0.0.i.i.i.i.i.sink.i.i, ptr %i.an, align 8, !noalias !79245
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i, %bb.q
  store i64 %i.cg, ptr %i.k, align 8, !noalias !79245
  %i.co = ptrtoint ptr %.sroa.12.1.i.i62 to i64
  %i.cp = sub nuw i64 %i.aw, %i.co
  %i.cq = lshr exact i64 %i.cp, 4
  %i.cr = icmp eq ptr %i.al, %.sroa.12.1.i.i62
  br i1 %i.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.1.i.i62, i64 %.sroa.0.03.i.i.i.i.i.i
  %i.ct = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %i.cs) #52, !noalias !79246
  %i.cu = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.cv = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.cw = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !79246
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79232
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79248
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cx, align 8, !alias.scope !79248
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !79248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79232
  %i.cz = icmp eq i64 %i.ai, %i.ag
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.cz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load i64, ptr %i.da, align 8, !noalias !79249, !noundef !177
  %i.dc = add i64 %i.db, %i.ag                    ; 2 uses
  %i.dd = load i64, ptr %1, align 8, !range !179, !noalias !79249, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i1.i = icmp ult i64 %i.dc, %i.dd
  %i.de = select i1 %.not.i.i.i.i.i1.i, i64 0, i64 %i.dd
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.dc, %i.de
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.sink, ptr %i.da, align 8, !noalias !79249
  store i64 %i.ak, ptr %i.k, align 8, !noalias !79249
  br i1 %i.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.427.0.copyload, i64 %.sroa.0.03.i.i.i.i.i
  %i.dg = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %i.df) #52, !noalias !79250
  %i.dh = icmp eq i64 %i.dg, %i.ag
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.di = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.di, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.dj = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !79250
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.w:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !177
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !range !297, !noundef !177
  %i.do = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.dl, i32 noundef %i.dn, i64 noundef %i.h, i32 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dp = extractvalue { i64, i32 } %i.do, 0      ; 2 uses
  %i.dq = icmp eq i64 %i.dp, %2
  br i1 %i.dq, label %.split, label %bb.y

bb.x:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.w
  %i.dr = extractvalue { i64, i32 } %i.do, 1      ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 1000000000
  call void @llvm.assume(i1 %i.ds)
  %.not45 = icmp samesign ult i32 %i.dr, %3
  br i1 %.not45, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.y:                                             ; preds = %bb.w
  %.not44 = icmp slt i64 %i.dp, %2
  br i1 %.not44, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.z:                                             ; preds = %.split, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i43) #52
  %i.dt = load i32, ptr %i.y, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dt, -1
  br i1 %.not9, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = load <2 x ptr>, ptr %i.b, align 16
  %i.dv = load i64, ptr %i.j, align 8, !alias.scope !79251, !noundef !177 ; 3 uses
  %i.dw = load i64, ptr %i.c, align 8, !range !179, !alias.scope !79251, !noundef !177
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ab, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.aa, %bb.ab
  %i.dy = load ptr, ptr %i.i, align 8, !alias.scope !79251, !nonnull !177, !noundef !177
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dv
  store <2 x ptr> %i.du, ptr %i.dz, align 8
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.j, align 8, !alias.scope !79251
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.ad:                                            ; preds = %bb.ae, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void
end_hunk_0
