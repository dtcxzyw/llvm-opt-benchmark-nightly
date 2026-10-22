Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvCsgZAIVb0XKpv_9ssservice4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsgZAIVb0XKpv_9ssservice.exit
  store i64 %i.jf, ptr %i.jh, align 8
  %.sroa.5.0..sroa_idx2.i151 = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i151, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i148, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i148)
  call void @_RNvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.l) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCs5Xr050g3D4S_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f) #52
  call fastcc void @_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.w, ptr noalias nofree noundef align 8 captures(address) dereferenceable(712) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.f) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8, !align !185, !noundef !177 ; 4 uses
  %.not28 = icmp eq ptr %i.jl, null
  br i1 %.not28, label %.thread179, label %bb.ah, !prof !186

bb.ah:                                            ; preds = %_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsgZAIVb0XKpv_9ssservice.exit153
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !177, !noundef !177 ; 8 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !noundef !177
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 4 uses
  switch i64 %i.jp, label %.thread179 [
    i64 5, label %bb.ai
    i64 6, label %bb.ak
    i64 7, label %bb.am
  ]

.thread179:                                       ; preds = %bb.ah, %bb.am, %bb.ai, %_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECsgZAIVb0XKpv_9ssservice.exit153, %bb.ao
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1947, ptr noundef nonnull inttoptr (i64 129 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1949) #62
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.jr = load i32, ptr %i.jn, align 1
  %i.js = xor i32 %i.jr, 1633906540
  %i.jt = getelementptr i8, ptr %i.jn, i64 4
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = xor i32 %i.jv, 108
  %i.jx = or i32 %i.js, %i.jw
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.aj, label %.thread179

bb.aj:                                            ; preds = %bb.ai
  %i.kb = call fastcc noundef i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local4main(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jq) #60
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.kc = load i32, ptr %i.jn, align 1
  %i.kd = xor i32 %i.kc, 1987208563
  %i.ke = getelementptr i8, ptr %i.jn, i64 4
  %i.kf = load i16, ptr %i.ke, align 1
  %i.kg = zext i16 %i.kf to i32
  %i.kh = xor i32 %i.kg, 29285
  %i.ki = or i32 %i.kd, %i.kh
  %i.kj = icmp ne i32 %i.ki, 0
  %i.kk = zext i1 %i.kj to i32
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.km = call fastcc noundef i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6server4main(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jq) #60
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.kn = load i32, ptr %i.jn, align 1
  %i.ko = xor i32 %i.kn, 1634623853
  %i.kp = getelementptr i8, ptr %i.jn, i64 3
  %i.kq = load i32, ptr %i.kp, align 1
  %i.kr = xor i32 %i.kq, 1919248225
  %i.ks = or i32 %i.ko, %i.kr
  %i.kt = icmp ne i32 %i.ks, 0
  %i.ku = zext i1 %i.kt to i32
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.an, label %.thread179

bb.an:                                            ; preds = %bb.am
  %i.kw = call fastcc noundef i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service7manager4main(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jq) #60
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ak
  %i.kx = load i32, ptr %i.jn, align 1
  %i.ky = xor i32 %i.kx, 1802397031
  %i.kz = getelementptr i8, ptr %i.jn, i64 4
  %i.la = load i16, ptr %i.kz, align 1
  %i.lb = zext i16 %i.la to i32
  %i.lc = xor i32 %i.lb, 31077
  %i.ld = or i32 %i.ky, %i.lc
  %i.le = icmp ne i32 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.ap, label %.thread179, !prof !191

bb.ap:                                            ; preds = %bb.ao
  %i.lh = call noundef i8 @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service6genkey4main(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jq) #52
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.aj
  %.sroa.0.2 = phi i8 [ %i.kb, %bb.aj ], [ %i.km, %bb.al ], [ %i.kw, %bb.an ], [ %i.lh, %bb.ap ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslDQ48jUgq5Q_12clap_builder6parser7matches11arg_matches10ArgMatchesECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(56) %i.w) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.u
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !78692, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !78692 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !78692 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !78692, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !177
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.aj = icmp ult i64 %i.ai, 1152921504606846976
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !78693
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78694)
  %.idx = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !78695)
  call void @llvm.experimental.noalias.scope.decl(metadata !78696)
  store ptr %1, ptr %i.c, align 8, !alias.scope !78697
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !78697
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78697
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !78697
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78697
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !78698
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78698
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78698
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !78698
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !78699
  call void @llvm.experimental.noalias.scope.decl(metadata !78700)
  call void @llvm.experimental.noalias.scope.decl(metadata !78701)
  call void @llvm.experimental.noalias.scope.decl(metadata !78702)
  call void @llvm.experimental.noalias.scope.decl(metadata !78703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78704
  call void @llvm.experimental.noalias.scope.decl(metadata !78705)
  call void @llvm.experimental.noalias.scope.decl(metadata !78706)
  call void @llvm.experimental.noalias.scope.decl(metadata !78707)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !78708, !noundef !177 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !179, !noalias !78708, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78709
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78709
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !78708, !nonnull !177, !noundef !177
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !78710 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !78711)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78712
  %i.az = load ptr, ptr %.sroa.422.0.copyload, align 8, !noalias !78713, !nonnull !177, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx6.i.i.i.i, i64 30, i1 false), !noalias !78704
  %gepdiff = add nsw i64 %.idx, -8
  %4 = lshr exact i64 %gepdiff, 3
  %5 = call i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 40                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 230584300921369394
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !78714
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !78714 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !78704
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.49.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !78704
  store i16 %.sroa.0.0.copyload5.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !78704
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store ptr %i.az, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !78704
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !78704
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !78704
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !78704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !78715
  call void @llvm.experimental.noalias.scope.decl(metadata !78716)
  call void @llvm.experimental.noalias.scope.decl(metadata !78717)
  call void @llvm.experimental.noalias.scope.decl(metadata !78718)
  call void @llvm.experimental.noalias.scope.decl(metadata !78719)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !78720, !noalias !78704 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !78721, !noalias !78704, !nonnull !177, !noundef !177 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !78720, !noalias !78704, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted14.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !78721, !noalias !78704 ; 2 uses
  %.promoted15.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !78720, !noalias !78704 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !78722, !noundef !177
  %i.bs = add i64 %i.br, %.promoted14.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !179, !noalias !78722, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i15.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i15.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i16.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted14.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !78722, !nonnull !177, !noundef !177
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i16.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i17.i.i = load i16, ptr %i.by, align 4, !noalias !78723 ; 2 uses
  %.not.i.i.i.i19.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i17.i.i, 2
  br i1 %.not.i.i.i.i19.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !78724, !noundef !177
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !179, !noalias !78724, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !78724, !nonnull !177, !noundef !177
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload5.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !78725 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload5.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload5.i.i.i.i20.i.i = phi i16 [ %.sroa.0.0.copyload5.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload5.i.i.i.i17.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.promoted15.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78726)
  call void @llvm.experimental.noalias.scope.decl(metadata !78727)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i21.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.co = load ptr, ptr %i.cl, align 8, !noalias !78728, !nonnull !177, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx6.i.i.i.i21.i.i, i64 30, i1 false), !noalias !78729
  %i.cp = icmp samesign ult i64 %i.ci, 230584300921369396
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !179, !alias.scope !78730, !noalias !78704, !noundef !177
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 3
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 40) #52, !noalias !78731
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !78730, !noalias !78704
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !78729
  store i16 %.sroa.0.0.copyload5.i.i.i.i20.i.i, ptr %i.cy, align 8, !noalias !78729
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !78729
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !78730, !noalias !78704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted15.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa14.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !78721, !noalias !78704
  store i64 %.lcssa14.i.i, ptr %i.bh, align 8, !alias.scope !78721, !noalias !78704
  store ptr %i.db, ptr %i.bp, align 8, !noalias !78704
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtB1i_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !78732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !78733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78704
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !78715
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !78715
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !78715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78704
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtB1i_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !78715
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.df = load i64, ptr %i.de, align 8, !noundef !177
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !range !297, !noundef !177
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load ptr, ptr %i.d, align 8, !nonnull !177, !noundef !177
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !78734, !noundef !177 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !179, !alias.scope !78734, !noundef !177
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8grow_oneB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !78734, !nonnull !177, !noundef !177
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dp
  store ptr %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !78734
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtB6_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !78735, !noundef !177
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !78735
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_3tun3udp19UdpTunInboundWriterEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !78799, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !78799 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !78799 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !78799, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !177
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !78800
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78801)
  %.idx = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !78802)
  call void @llvm.experimental.noalias.scope.decl(metadata !78803)
  store ptr %1, ptr %i.c, align 8, !alias.scope !78804
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !78804
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78804
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !78804
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78804
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !78805
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78805
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78805
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !78805
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !78806
  call void @llvm.experimental.noalias.scope.decl(metadata !78807)
  call void @llvm.experimental.noalias.scope.decl(metadata !78808)
  call void @llvm.experimental.noalias.scope.decl(metadata !78809)
  call void @llvm.experimental.noalias.scope.decl(metadata !78810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78811
  call void @llvm.experimental.noalias.scope.decl(metadata !78812)
  call void @llvm.experimental.noalias.scope.decl(metadata !78813)
  call void @llvm.experimental.noalias.scope.decl(metadata !78814)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !78815, !noundef !177 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !179, !noalias !78815, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78816
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78816
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !78815, !nonnull !177, !noundef !177
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !78817 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !78818)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78819
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !78820
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !78811
  %gepdiff = add nsw i64 %.idx, -16
  %4 = lshr exact i64 %gepdiff, 4
  %5 = call i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 192153584101141161
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !78821
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !78821 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !78811
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !78811
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !78811
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !78811
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !78811
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !78811
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !78811
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !78822
  call void @llvm.experimental.noalias.scope.decl(metadata !78823)
  call void @llvm.experimental.noalias.scope.decl(metadata !78824)
  call void @llvm.experimental.noalias.scope.decl(metadata !78825)
  call void @llvm.experimental.noalias.scope.decl(metadata !78826)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !78827, !noalias !78811 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !78828, !noalias !78811, !nonnull !177, !noundef !177 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !78827, !noalias !78811, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !78828, !noalias !78811 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !78827, !noalias !78811 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !78829, !noundef !177
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !179, !noalias !78829, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !78829, !nonnull !177, !noundef !177
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !78830 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !78831, !noundef !177
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !179, !noalias !78831, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !78831, !nonnull !177, !noundef !177
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !78832 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78833)
  call void @llvm.experimental.noalias.scope.decl(metadata !78834)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !78835
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !78836
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !179, !alias.scope !78837, !noalias !78811, !noundef !177
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !78838
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !78837, !noalias !78811
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_3tun3udp19UdpTunInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !78836
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !78836
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !78836
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !78837, !noalias !78811
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !78828, !noalias !78811
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !78828, !noalias !78811
  store ptr %i.db, ptr %i.bp, align 8, !noalias !78811
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !78839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !78840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78811
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !78822
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !78822
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !78822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78811
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_3tun3udp19UdpTunInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !78822
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_3tun3udp19UdpTunInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !177
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !297, !noundef !177
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !78841, !noundef !177 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !179, !alias.scope !78841, !noundef !177
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_3tun3udp19UdpTunInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !78841, !nonnull !177, !noundef !177
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !78841
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_3tun3udp19UdpTunInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_3tun3udp19UdpTunInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !78842, !noundef !177
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !78842
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_5redir8udprelay21UdpRedirInboundWriterEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !78906, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !78906 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !78906 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !78906, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !177
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !78907
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78908)
  %.idx = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !78909)
  call void @llvm.experimental.noalias.scope.decl(metadata !78910)
  store ptr %1, ptr %i.c, align 8, !alias.scope !78911
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !78911
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78911
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !78911
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78911
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !78912
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78912
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !78912
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !78912
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !78913
  call void @llvm.experimental.noalias.scope.decl(metadata !78914)
  call void @llvm.experimental.noalias.scope.decl(metadata !78915)
  call void @llvm.experimental.noalias.scope.decl(metadata !78916)
  call void @llvm.experimental.noalias.scope.decl(metadata !78917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78918
  call void @llvm.experimental.noalias.scope.decl(metadata !78919)
  call void @llvm.experimental.noalias.scope.decl(metadata !78920)
  call void @llvm.experimental.noalias.scope.decl(metadata !78921)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !78922, !noundef !177 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !179, !noalias !78922, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !78923
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !78923
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !78922, !nonnull !177, !noundef !177
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !78924 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !78925)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !78926
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !78927
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !78918
  %gepdiff = add nsw i64 %.idx, -16
  %4 = lshr exact i64 %gepdiff, 4
  %5 = call i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 192153584101141161
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !78928
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !78928 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !78918
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !78918
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !78918
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !78918
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !78918
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !78918
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !78918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !78929
  call void @llvm.experimental.noalias.scope.decl(metadata !78930)
  call void @llvm.experimental.noalias.scope.decl(metadata !78931)
  call void @llvm.experimental.noalias.scope.decl(metadata !78932)
  call void @llvm.experimental.noalias.scope.decl(metadata !78933)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !78934, !noalias !78918 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !78935, !noalias !78918, !nonnull !177, !noundef !177 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !78934, !noalias !78918, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !78935, !noalias !78918 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !78934, !noalias !78918 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !78936, !noundef !177
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !179, !noalias !78936, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !78936, !nonnull !177, !noundef !177
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !78937 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !78938, !noundef !177
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !179, !noalias !78938, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !78938, !nonnull !177, !noundef !177
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !78939 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78940)
  call void @llvm.experimental.noalias.scope.decl(metadata !78941)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !78942
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !78943
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !179, !alias.scope !78944, !noalias !78918, !noundef !177
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !78945
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !78944, !noalias !78918
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_5redir8udprelay21UdpRedirInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !78943
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !78943
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !78943
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !78944, !noalias !78918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !78935, !noalias !78918
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !78935, !noalias !78918
  store ptr %i.db, ptr %i.bp, align 8, !noalias !78918
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !78946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !78947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78918
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !78929
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !78929
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !78929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78918
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_5redir8udprelay21UdpRedirInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !78929
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !177
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !297, !noundef !177
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !78948, !noundef !177 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !179, !alias.scope !78948, !noundef !177
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_5redir8udprelay21UdpRedirInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !78948, !nonnull !177, !noundef !177
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !78948
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_5redir8udprelay21UdpRedirInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_5redir8udprelay21UdpRedirInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !78949, !noundef !177
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !78949
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1M_6tunnel8udprelay22TunnelUdpInboundWriterEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79013, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !79013 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !79013 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !79013, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !177
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !79014
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79015)
  %.idx = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !79016)
  call void @llvm.experimental.noalias.scope.decl(metadata !79017)
  store ptr %1, ptr %i.c, align 8, !alias.scope !79018
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !79018
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79018
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79018
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79018
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !79019
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79019
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79019
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79019
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !79020
  call void @llvm.experimental.noalias.scope.decl(metadata !79021)
  call void @llvm.experimental.noalias.scope.decl(metadata !79022)
  call void @llvm.experimental.noalias.scope.decl(metadata !79023)
  call void @llvm.experimental.noalias.scope.decl(metadata !79024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79025
  call void @llvm.experimental.noalias.scope.decl(metadata !79026)
  call void @llvm.experimental.noalias.scope.decl(metadata !79027)
  call void @llvm.experimental.noalias.scope.decl(metadata !79028)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !79029, !noundef !177 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !179, !noalias !79029, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79030
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79030
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !79029, !nonnull !177, !noundef !177
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !79031 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !79032)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79033
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !79034
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !79025
  %gepdiff = add nsw i64 %.idx, -16
  %4 = lshr exact i64 %gepdiff, 4
  %5 = call i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 192153584101141161
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !79035
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !79035 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !79025
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !79025
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !79025
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !79025
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !79025
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !79025
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !79036
  call void @llvm.experimental.noalias.scope.decl(metadata !79037)
  call void @llvm.experimental.noalias.scope.decl(metadata !79038)
  call void @llvm.experimental.noalias.scope.decl(metadata !79039)
  call void @llvm.experimental.noalias.scope.decl(metadata !79040)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !79041, !noalias !79025 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !79042, !noalias !79025, !nonnull !177, !noundef !177 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !79041, !noalias !79025, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !79042, !noalias !79025 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !79041, !noalias !79025 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !79043, !noundef !177
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !179, !noalias !79043, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !79043, !nonnull !177, !noundef !177
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !79044 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !79045, !noundef !177
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !179, !noalias !79045, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !79045, !nonnull !177, !noundef !177
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !79046 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79047)
  call void @llvm.experimental.noalias.scope.decl(metadata !79048)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !79049
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !79050
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !179, !alias.scope !79051, !noalias !79025, !noundef !177
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !79052
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79051, !noalias !79025
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1G_6tunnel8udprelay22TunnelUdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !79050
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !79050
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !79050
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79051, !noalias !79025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !79042, !noalias !79025
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !79042, !noalias !79025
  store ptr %i.db, ptr %i.bp, align 8, !noalias !79025
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !79053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !79054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79025
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79036
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !79036
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !79036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79025
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB3v_6tunnel8udprelay22TunnelUdpInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !79036
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1T_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !177
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !297, !noundef !177
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2a_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !79055, !noundef !177 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !179, !alias.scope !79055, !noundef !177
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBV_6tunnel8udprelay22TunnelUdpInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !79055, !nonnull !177, !noundef !177
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !79055
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtBO_6tunnel8udprelay22TunnelUdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1W_6tunnel8udprelay22TunnelUdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8
  br label %bb.x

bb.z:                                             ; preds = %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !79056, !noundef !177
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.z
  store i64 0, ptr %i.dx, align 8, !alias.scope !79056
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.z, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ea, align 8
  br label %bb.y
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1M_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79120, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !79120 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !79120 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !79120, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !177
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.z, label %bb.y

bb.g:                                             ; preds = %bb.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %bb.w ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.ag, %bb.w ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %bb.w ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %bb.w ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ae, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.af, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 32
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ah = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2a_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ah, null
  br i1 %.not8, label %bb.r, label %bb.q, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.aj = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !79121
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.am = sub nuw i64 %i.ak, %i.ai
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79122)
  %.idx = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !79123)
  call void @llvm.experimental.noalias.scope.decl(metadata !79124)
  store ptr %1, ptr %i.c, align 8, !alias.scope !79125
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ai, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !79125
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79125
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79125
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ai, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.ao, align 8, !alias.scope !79126
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79126
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79126
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79126
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !79127
  call void @llvm.experimental.noalias.scope.decl(metadata !79128)
  call void @llvm.experimental.noalias.scope.decl(metadata !79129)
  call void @llvm.experimental.noalias.scope.decl(metadata !79130)
  call void @llvm.experimental.noalias.scope.decl(metadata !79131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79132
  call void @llvm.experimental.noalias.scope.decl(metadata !79133)
  call void @llvm.experimental.noalias.scope.decl(metadata !79134)
  call void @llvm.experimental.noalias.scope.decl(metadata !79135)
  %i.aq = icmp eq i64 %i.ai, 0
  br i1 %i.aq, label %bb.p, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !79136, !noundef !177 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !179, !noalias !79136, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.as, %i.at
  %i.au = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.at
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.as, %i.au
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79137
  %i.av = add nsw i64 %i.ai, -1                   ; 2 uses
  store i64 %i.av, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79137
  %i.aw = load ptr, ptr %i.u, align 8, !noalias !79136, !nonnull !177, !noundef !177
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.02.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i = load i16, ptr %i.ax, align 4, !noalias !79138 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  call void @llvm.experimental.noalias.scope.decl(metadata !79139)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 16
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79140
  %i.az = load <2 x ptr>, ptr %.sroa.422.0.copyload, align 8, !noalias !79141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i, i64 30, i1 false), !noalias !79132
  %gepdiff = add nsw i64 %.idx, -16
  %4 = lshr exact i64 %gepdiff, 4
  %5 = call i64 @llvm.umin.i64(i64 %i.av, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 192153584101141161
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.k, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !79142
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !79142 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.l ], [ undef, %bb.j ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.j ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !79132
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.be, %bb.l ] ; 5 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i, i64 30, i1 false), !noalias !79132
  store i16 %.sroa.0.0.copyload7.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !79132
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 32
  store <2 x ptr> %i.az, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !79132
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !79132
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !79132
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79132
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !79143
  call void @llvm.experimental.noalias.scope.decl(metadata !79144)
  call void @llvm.experimental.noalias.scope.decl(metadata !79145)
  call void @llvm.experimental.noalias.scope.decl(metadata !79146)
  call void @llvm.experimental.noalias.scope.decl(metadata !79147)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !79148, !noalias !79132 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !79149, !noalias !79132, !nonnull !177, !noundef !177 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !79148, !noalias !79132, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted16.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !79149, !noalias !79132 ; 2 uses
  %.promoted17.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !79148, !noalias !79132 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !79150, !noundef !177
  %i.bs = add i64 %i.br, %.promoted16.i.i.i.i     ; 2 uses
  %i.bt = load i64, ptr %i.bj, align 8, !range !179, !noalias !79150, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i18.i.i = icmp ult i64 %i.bs, %i.bt
  %i.bu = select i1 %.not.i.i.i.i.i18.i.i, i64 0, i64 %i.bt
  %.sroa.02.0.i.i.i.i.i19.i.i = sub nuw i64 %i.bs, %i.bu
  %i.bv = add i64 %.promoted16.i.i.i.i, 1         ; 2 uses
  %i.bw = add i64 %.promoted.i.i.i.i, -1          ; 2 uses
  %i.bx = load ptr, ptr %i.bm, align 8, !noalias !79150, !nonnull !177, !noundef !177
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.sroa.02.0.i.i.i.i.i19.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i20.i.i = load i16, ptr %i.by, align 4, !noalias !79151 ; 2 uses
  %.not.i.i.i.i22.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i20.i.i, 2
  br i1 %.not.i.i.i.i22.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bl, align 8, !noalias !79152, !noundef !177
  %i.ca = add i64 %i.bz, %i.ck                    ; 2 uses
  %i.cb = load i64, ptr %i.bj, align 8, !range !179, !noalias !79152, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ca, %i.cb
  %i.cc = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.cb
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.ca, %i.cc
  %i.cd = add i64 %i.ck, 1                        ; 2 uses
  %i.ce = add i64 %i.cj, -1                       ; 2 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !noalias !79152, !nonnull !177, !noundef !177
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load i16, ptr %i.cg, align 4, !noalias !79153 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cx, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.ci = phi i64 [ %i.cz, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 5 uses
  %.pn.i.i = phi ptr [ %i.cg, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.by, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %.sroa.0.0.copyload7.i.i.i.i23.i.i = phi i16 [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.sroa.0.0.copyload7.i.i.i.i20.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.ck = phi i64 [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79154)
  call void @llvm.experimental.noalias.scope.decl(metadata !79155)
  %i.cm = icmp eq ptr %i.cl, %i.bo
  br i1 %i.cm, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !noalias !79156
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7.0..sroa_idx8.i.i.i.i24.i.i, i64 30, i1 false), !noalias !79157
  %i.cp = icmp samesign ult i64 %i.ci, 192153584101141163
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i64, ptr %i.b, align 8, !range !179, !alias.scope !79158, !noalias !79132, !noundef !177
  %i.cr = icmp eq i64 %i.ci, %i.cq
  br i1 %i.cr, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub nuw i64 %i.bq, %i.cs
  %i.cu = lshr exact i64 %i.ct, 4
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cu)
  %i.cw = add nuw nsw i64 %i.cv, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ci, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 48) #52, !noalias !79159
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79158, !noalias !79132
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.cx = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1G_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ch, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %i.ci ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !79157
  store i16 %.sroa.0.0.copyload7.i.i.i.i23.i.i, ptr %i.cy, align 8, !noalias !79157
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x ptr> %i.co, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !79157
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79158, !noalias !79132
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.da = icmp eq i64 %i.cj, 0
  br i1 %i.da, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.o, %.lr.ph.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.db = phi ptr [ %.promoted17.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cn, %bb.o ], [ %i.cl, %.lr.ph.i.i ], [ %i.cn, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa17.i.i = phi i64 [ %i.bw, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ 0, %bb.o ], [ %i.cj, %.lr.ph.i.i ], [ %i.ce, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %.lcssa.i.i = phi i64 [ %i.bv, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ck, %bb.o ], [ %i.ck, %.lr.ph.i.i ], [ %i.cd, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %.lcssa.i.i, ptr %i.bk, align 8, !alias.scope !79149, !noalias !79132
  store i64 %.lcssa17.i.i, ptr %i.bh, align 8, !alias.scope !79149, !noalias !79132
  store ptr %i.db, ptr %i.bp, align 8, !noalias !79132
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB3v_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !79160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !79161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79132
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.p:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79143
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !alias.scope !79143
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !79143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79132
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB3v_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #52, !noalias !79143
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1T_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.q:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !177
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !range !297, !noundef !177
  %i.di = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.df, i32 noundef %i.dh, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dj = extractvalue { i64, i32 } %i.di, 0      ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %2
  br i1 %i.dk, label %.split, label %bb.s

bb.r:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.q
  %i.dl = extractvalue { i64, i32 } %i.di, 1      ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 1000000000
  call void @llvm.assume(i1 %i.dm)
  %.not41 = icmp samesign ult i32 %i.dl, %3
  br i1 %.not41, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.s:                                             ; preds = %bb.q
  %.not40 = icmp slt i64 %i.dj, %2
  br i1 %.not40, label %bb.t, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2a_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %.sink6.i39) #52
  %i.dn = load i32, ptr %i.aa, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dn, -1
  br i1 %.not9, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = load <2 x ptr>, ptr %i.d, align 16
  %i.dp = load i64, ptr %i.l, align 8, !alias.scope !79162, !noundef !177 ; 3 uses
  %i.dq = load i64, ptr %i.e, align 8, !range !179, !alias.scope !79162, !noundef !177
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.v, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtBO_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtBV_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE8grow_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtBO_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtBO_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.u, %bb.v
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !79162, !nonnull !177, !noundef !177
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dp
  store <2 x ptr> %i.do, ptr %i.dt, align 8
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.l, align 8, !alias.scope !79162
  br label %bb.w

bb.w:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtBO_5socks6server6socks58udprelay22Socks5UdpInboundWriterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.x:                                             ; preds = %bb.y, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1W_5socks6server6socks58udprelay22Socks5UdpInboundWriterEEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.y:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  %i.ag = load i64, ptr %i.j, align 8, !noundef !177 ; 13 uses
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
  %.idx = shl nuw nsw i64 %i.ag, 4                ; 2 uses
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
  %gepdiff = add nsw i64 %.idx, -16
  %4 = lshr exact i64 %gepdiff, 4
  %5 = call i64 @llvm.umin.i64(i64 %i.ar, i64 %4) ; 2 uses
  %i.ax = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = mul i64 %i.ay, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %5, 192153584101141161
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
  %i.bf = phi ptr [ %i.ca, %bb.o ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.bg = phi i64 [ %i.cc, %bb.o ], [ 1, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 5 uses
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
  %i.bs = icmp samesign ult i64 %i.bg, 192153584101141163
  call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %i.a, align 8, !range !179, !alias.scope !79243, !noalias !79232, !noundef !177
  %i.bu = icmp eq i64 %i.bg, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.o

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.n
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = sub nuw i64 %i.aw, %i.bv
  %i.bx = lshr exact i64 %i.bw, 4
  %i.by = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bx)
  %i.bz = add nuw nsw i64 %i.by, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bg, i64 noundef range(i64 1, 0) %i.bz, i64 noundef 8, i64 noundef 48) #52, !noalias !79244
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79243, !noalias !79232
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.n
  %i.ca = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.bf, %bb.n ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.bg ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.i.i.i.i, i64 30, i1 false), !noalias !79242
  store i16 %.sroa.0.0.copyload7.i.i.i.i.i.i, ptr %i.cb, align 8, !noalias !79242
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <2 x ptr> %i.br, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !79242
  %i.cc = add nuw nsw i64 %i.bg, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79243, !noalias !79232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.cd = icmp eq i64 %i.bm, 0
  br i1 %i.cd, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.o, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.12.1.i.i.ph = phi ptr [ %.sroa.12.0.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bq, %bb.o ] ; 2 uses
  %.pre = load i64, ptr %i.k, align 8, !noalias !79245 ; 5 uses
  %i.ce = add i64 %.pre, %i.ak                    ; 2 uses
  %i.cf = icmp eq i64 %.pre, 0
  %i.cg = icmp eq i64 %i.ai, %i.ag
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread, label %bb.p, !prof !338

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.p, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ch = phi i64 [ %i.ce, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.ce, %bb.p ], [ %i.ak, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  %.sroa.12.1.i.i62 = phi ptr [ %.sroa.12.1.i.i.ph, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.12.1.i.i.ph, %bb.p ], [ %i.au, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 3 uses
  %i.ci = phi i64 [ %.pre, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.pre, %bb.p ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.cj = icmp eq i64 %i.ch, 0
  br i1 %i.cj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i, label %bb.q

bb.p:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.ag, i64 noundef %.pre, i64 noundef %i.ak) #52, !noalias !79245
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread

bb.q:                                             ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread
  %i.ck = icmp ult i64 %i.ci, %i.ak
  br i1 %i.ck, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = load i64, ptr %i.an, align 8, !noalias !79245, !noundef !177
  %i.cm = add i64 %i.cl, %i.ag                    ; 2 uses
  %i.cn = load i64, ptr %1, align 8, !range !179, !noalias !79245, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cm, %i.cn
  %i.co = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.cn
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cm, %i.co
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i: ; preds = %bb.r, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread
  %.sroa.0.0.i.i.i.i.i.sink.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.r ], [ 0, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i.thread ]
  store i64 %.sroa.0.0.i.i.i.i.i.sink.i.i, ptr %i.an, align 8, !noalias !79245
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.sink.split.i.i, %bb.q
  store i64 %i.ch, ptr %i.k, align 8, !noalias !79245
  %i.cp = ptrtoint ptr %.sroa.12.1.i.i62 to i64
  %i.cq = sub nuw i64 %i.aw, %i.cp
  %i.cr = lshr exact i64 %i.cq, 4
  %i.cs = icmp eq ptr %i.al, %.sroa.12.1.i.i62
  br i1 %i.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.sroa.12.1.i.i62, i64 %.sroa.0.03.i.i.i.i.i.i
  %i.cu = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ct) #52, !noalias !79246
  %i.cv = icmp eq i64 %i.cu, %i.cr
  br i1 %i.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.cw = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.cx = shl nuw i64 %.sroa.026.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !79246
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEINtNtNtB1i_3vec9into_iter8IntoIterNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.s, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !79247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79232
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB1g_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79248
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8, !alias.scope !79248
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !79248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79232
  %i.da = icmp eq i64 %i.ai, %i.ag
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load i64, ptr %i.db, align 8, !noalias !79249, !noundef !177
  %i.dd = add i64 %i.dc, %i.ag                    ; 2 uses
  %i.de = load i64, ptr %1, align 8, !range !179, !noalias !79249, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i1.i = icmp ult i64 %i.dd, %i.de
  %i.df = select i1 %.not.i.i.i.i.i1.i, i64 0, i64 %i.de
  %.sroa.0.0.i.i.i.i.i.i = sub nuw i64 %i.dd, %i.df
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.sink, ptr %i.db, align 8, !noalias !79249
  store i64 %i.ak, ptr %i.k, align 8, !noalias !79249
  br i1 %i.am, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.427.0.copyload, i64 %.sroa.0.03.i.i.i.i.i
  %i.dh = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dg) #52, !noalias !79250
  %i.di = icmp eq i64 %i.dh, %i.ag
  br i1 %i.di, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i
end_hunk_0
begin_hunk_1_@_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbE14remove_expiredCsgZAIVb0XKpv_9ssservice:bb.a
  %i.cr = load i64, ptr %1, align 8, !range !179, !noalias !79334, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i3.i.i = icmp ult i64 %i.cq, %i.cr
  %i.cs = select i1 %.not.i.i.i.i.i3.i.i, i64 0, i64 %i.cr
  %.sroa.0.0.i.i.i.i.i.i.i = sub nuw i64 %i.cq, %i.cs
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i.i.i.i.i.i.i.sink = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.u ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.sink, ptr %i.co, align 8, !noalias !79334
  store i64 %i.ak, ptr %i.k, align 8, !noalias !79334
  %i.ct = icmp eq i64 %.sroa.026.0.copyload, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.427.0.copyload, i64 noundef %.sroa.026.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !79335
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_10SpecExtendBR_INtNtNtNtBY_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBS_EINtNtB4_9into_iter8IntoIterbEEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtB4_3net7ip_addr6IpAddrEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.w:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !177
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !range !297, !noundef !177
  %i.cy = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.cv, i32 noundef %i.cx, i64 noundef %i.h, i32 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.cz = extractvalue { i64, i32 } %i.cy, 0      ; 2 uses
  %i.da = icmp eq i64 %i.cz, %2
  br i1 %i.da, label %.split, label %bb.y

bb.x:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread34
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.w
  %i.db = extractvalue { i64, i32 } %i.cy, 1      ; 2 uses
  %i.dc = icmp ult i32 %i.db, 1000000000
  call void @llvm.assume(i1 %i.dc)
  %.not45 = icmp samesign ult i32 %i.db, %3
  br i1 %.not45, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.y:                                             ; preds = %bb.w
  %.not44 = icmp slt i64 %i.cz, %2
  br i1 %.not44, label %bb.z, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtNtNtNtB1e_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.z:                                             ; preds = %.split, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17) %.sink6.i43) #52
  %i.dd = load i32, ptr %i.y, align 8, !range !197, !noundef !177
  %.not9 = icmp eq i32 %i.dd, -1
  br i1 %.not9, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = load i8, ptr %i.b, align 8, !range !180, !noundef !177
  %i.df = load i64, ptr %i.j, align 8, !alias.scope !79336, !noundef !177 ; 3 uses
  %i.dg = load i64, ptr %i.c, align 8, !range !179, !alias.scope !79336, !noundef !177
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.ab, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #59
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.aa, %bb.ab
  %i.di = load ptr, ptr %i.i, align 8, !alias.scope !79336, !nonnull !177, !noundef !177
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i8 %i.de, ptr %i.dj, align 1
  %i.dk = add i64 %i.df, 1
  store i64 %i.dk, ptr %i.j, align 8, !alias.scope !79336
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.ad:                                            ; preds = %bb.ae, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrbEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3zip3ZipINtNtNtNtB6_11collections9vec_deque5drain5DrainBV_EINtNtB4_9into_iter8IntoIterbEEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.ae:                                            ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, %bb.f
  store i64 0, ptr %0, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dm, align 8
  br label %bb.ad

bb.af:                                            ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !79337, !noundef !177
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit, label %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.af
  store i64 0, ptr %i.dn, align 8, !alias.scope !79337
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.af, %_RINvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrE12slice_rangesNtNtNtB1c_3ops5range9RangeFullECsgZAIVb0XKpv_9ssservice.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dq, align 8
  br label %bb.ae
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1K_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79400, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !79400 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !79400 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !79400, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !177
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.ab, label %bb.aa

bb.g:                                             ; preds = %.backedge, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %.backedge ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.af, %.backedge ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %.backedge ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ad, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ae, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 40
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ag = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4b_EE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ag, null
  br i1 %.not8, label %bb.u, label %bb.t, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.ai = icmp ult i64 %i.ah, 288230376151711744
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !79401
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.al = sub nuw i64 %i.aj, %i.ah
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79402)
  %.idx = shl nuw nsw i64 %i.ah, 5                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !79403)
  call void @llvm.experimental.noalias.scope.decl(metadata !79404)
  store ptr %1, ptr %i.d, align 8, !alias.scope !79405
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !79405
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79405
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79405
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79405
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.an, align 8, !alias.scope !79406
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79406
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79406
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79406
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !79407
  call void @llvm.experimental.noalias.scope.decl(metadata !79408)
  call void @llvm.experimental.noalias.scope.decl(metadata !79409)
  call void @llvm.experimental.noalias.scope.decl(metadata !79410)
  call void @llvm.experimental.noalias.scope.decl(metadata !79411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79412
  call void @llvm.experimental.noalias.scope.decl(metadata !79413)
  call void @llvm.experimental.noalias.scope.decl(metadata !79414)
  call void @llvm.experimental.noalias.scope.decl(metadata !79415)
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.s, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !79416, !noundef !177 ; 2 uses
  %i.as = load i64, ptr %1, align 8, !range !179, !noalias !79416, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ar, %i.as
  %i.at = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.as
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ar, %i.at
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79417
  %i.au = add nsw i64 %i.ah, -1                   ; 2 uses
  store i64 %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79417
  %i.av = load ptr, ptr %i.u, align 8, !noalias !79416, !nonnull !177, !noundef !177
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.sroa.02.0.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i = load i16, ptr %i.aw, align 8, !noalias !79418 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !79418 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !79418 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.not.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.s, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !79419)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 32
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79420
  %.sroa.022.0.copyload23.i.i.i.i = load i64, ptr %.sroa.422.0.copyload, align 8, !noalias !79421 ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, label %bb.k

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.ay = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 0
  %i.az = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !79422
  br label %bb.s

bb.k:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i, i64 24, i1 false), !noalias !79412
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i, i64 6, i1 false), !noalias !79412
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !79412
  %gepdiff = add nsw i64 %.idx, -32
  %4 = lshr exact i64 %gepdiff, 5
  %5 = call i64 @llvm.umin.i64(i64 %i.au, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 72                       ; 3 uses
  %or.cond.i.i3.i.i = icmp samesign ugt i64 %5, 128102389400760774
  br i1 %or.cond.i.i3.i.i, label %bb.n, label %bb.l, !prof !188

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !79423
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !79423 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.m ], [ undef, %bb.k ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.k ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !79412
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.be, %bb.m ] ; 9 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, i64 6, i1 false), !noalias !79412
  %.sroa.719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, i64 16, i1 false), !noalias !79412
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.921.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, i64 24, i1 false), !noalias !79412
  store i16 %.sroa.010.0.copyload11.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !79412
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !79412
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !79412
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !79412
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !79412
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !79412
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79412
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !79424
  call void @llvm.experimental.noalias.scope.decl(metadata !79425)
  call void @llvm.experimental.noalias.scope.decl(metadata !79426)
  call void @llvm.experimental.noalias.scope.decl(metadata !79427)
  call void @llvm.experimental.noalias.scope.decl(metadata !79428)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !79429, !noalias !79412 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !79430, !noalias !79412, !nonnull !177, !noundef !177 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !79429, !noalias !79412, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted24.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !79430, !noalias !79412
  %.promoted25.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !79429, !noalias !79412
  br label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.br = phi ptr [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cq, %bb.r ]
  %i.bs = phi i64 [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cs, %bb.r ] ; 5 uses
  %i.bt = phi ptr [ %.promoted25.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.bu = phi i64 [ %.promoted24.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.bz, %bb.r ] ; 2 uses
  %.val.i.i2223.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ca, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !79431)
  call void @llvm.experimental.noalias.scope.decl(metadata !79432)
  call void @llvm.experimental.noalias.scope.decl(metadata !79433)
  %i.bv = load i64, ptr %i.bl, align 8, !noalias !79434, !noundef !177
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = load i64, ptr %i.bj, align 8, !range !179, !noalias !79434, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bw, %i.bx
  %i.by = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bx
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bw, %i.by
  %i.bz = add i64 %i.bu, 1                        ; 3 uses
  %i.ca = add i64 %.val.i.i2223.i.i.i.i, -1       ; 5 uses
  %i.cb = load ptr, ptr %i.bm, align 8, !noalias !79434, !nonnull !177, !noundef !177
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i.i.i = load i16, ptr %i.cc, align 8, !noalias !79435 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !79435 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !79435 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.cd = icmp eq ptr %i.bt, %i.bo
  br i1 %i.cd, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  %.sroa.022.0.copyload23.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !79436 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %bb.q

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.o
  %i.cf = phi ptr [ %i.ce, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bt, %bb.o ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !79430, !noalias !79412
  store i64 %i.ca, ptr %i.bh, align 8, !alias.scope !79430, !noalias !79412
  store ptr %i.cf, ptr %i.bp, align 8, !noalias !79412
  %i.cg = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 0
  %i.ch = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !79437
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.96.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i.i.i, i64 24, i1 false), !noalias !79438
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i.i.i, i64 6, i1 false), !noalias !79438
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !79438
  %i.ci = icmp samesign ult i64 %i.bs, 128102389400760776
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.b, align 8, !range !179, !alias.scope !79439, !noalias !79412, !noundef !177
  %i.ck = icmp eq i64 %i.bs, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.r

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub nuw i64 %i.bq, %i.cl
  %i.cn = lshr exact i64 %i.cm, 5
  %i.co = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cn)
  %i.cp = add nuw nsw i64 %i.co, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bs, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 72) #52, !noalias !79440
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79439, !noalias !79412
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.q
  %i.cq = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %i.bs ; 7 uses
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.411.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, i64 6, i1 false), !noalias !79438
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.714.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, i64 16, i1 false), !noalias !79438
  %.sroa.916.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.916.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, i64 24, i1 false), !noalias !79438
  store i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, ptr %i.cr, align 8, !noalias !79438
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !79438
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !79438
  %.sroa.815.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i.i, align 8, !noalias !79438
  %i.cs = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79439, !noalias !79412
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96.i.i.i.i)
  %i.ct = icmp eq i64 %i.ca, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.ca, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.ce, %bb.r ], [ %i.bt, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !79430, !noalias !79412
  store i64 %.lcssa.i.i, ptr %i.bh, align 8, !alias.scope !79430, !noalias !79412
  store ptr %i.cu, ptr %i.bp, align 8, !noalias !79412
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %bb.p, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1i_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !79441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !79442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79412
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.s:                                             ; preds = %bb.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB9_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79424
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !alias.scope !79424
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cw, align 8, !alias.scope !79424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79412
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB1i_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d) #52, !noalias !79424
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

bb.t:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !177
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !range !297, !noundef !177
  %i.db = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.cy, i32 noundef %i.da, i64 noundef %i.j, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1954) #52 ; 2 uses
  %i.dc = extractvalue { i64, i32 } %i.db, 0      ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %2
  br i1 %i.dd, label %.split, label %bb.v

bb.u:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1952, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1953) #62
  unreachable

.split:                                           ; preds = %bb.t
  %i.de = extractvalue { i64, i32 } %i.db, 1      ; 2 uses
  %i.df = icmp ult i32 %i.de, 1000000000
  call void @llvm.assume(i1 %i.df)
  %.not41 = icmp samesign ult i32 %i.de, %3
  br i1 %.not41, label %bb.w, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.v:                                             ; preds = %bb.t
  %.not40 = icmp slt i64 %i.dc, %2
  br i1 %.not40, label %bb.w, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.w:                                             ; preds = %.split, %bb.v
  call fastcc void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4b_EE6removeB18_ECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52
  %i.dg = load i64, ptr %i.c, align 8, !range !189, !noundef !177
  %.not9 = icmp eq i64 %i.dg, -1
  br i1 %.not9, label %.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load i64, ptr %i.l, align 8, !alias.scope !79443, !noundef !177 ; 3 uses
  %i.di = load i64, ptr %i.e, align 8, !range !179, !alias.scope !79443, !noundef !177
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.y, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

bb.y:                                             ; preds = %bb.x
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8grow_oneB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #59, !noalias !79444
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.x, %bb.y
  %i.dk = load ptr, ptr %i.k, align 8, !alias.scope !79443, !nonnull !177, !noundef !177
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.dm = add i64 %i.dh, 1
  store i64 %i.dm, ptr %i.l, align 8, !alias.scope !79443
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB7_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEE8push_mutCsgZAIVb0XKpv_9ssservice.exit, %bb.w
  br label %bb.g

bb.z:                                             ; preds = %bb.aa, %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtB6_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.aa:                                            ; preds = %bb.ab, %bb.f
  store i64 0, ptr %0, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.do, align 8
  br label %bb.z

bb.ab:                                            ; preds = %bb.f
  tail call fastcc void @_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE8truncateCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #52
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.dp, align 8
  br label %bb.aa
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCshXcoQFZsaxY_14lru_time_cacheINtB2_8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEE14remove_expiredCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i32, ptr %i.g, align 8, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !79507, !noundef !177 ; 4 uses
  %.val.i = load i64, ptr %1, align 8, !alias.scope !79507 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.p, align 8, !alias.scope !79507 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i, %.val.i
  %i.q = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i, %i.q    ; 4 uses
  %i.r = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.r, %i.n
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.n, %i.r
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.c
  %i.t = add i64 %.sroa.04.0.i.i, %i.n
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.e ], [ %.sroa.04.0.i.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.0.i = phi i64 [ %i.t, %bb.e ], [ %.val.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !79507, !nonnull !177, !noundef !177 ; 4 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.0.0.i
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.5.0.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.sroa.11.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !177
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.ab, label %bb.aa

bb.g:                                             ; preds = %.backedge, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.013.sroa.7.0 = phi ptr [ %i.x, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.013.sroa.7.136, %.backedge ] ; 4 uses
  %.sroa.013.sroa.0.0 = phi ptr [ %i.w, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %i.af, %.backedge ] ; 2 uses
  %.sroa.10.sroa.5.0 = phi ptr [ %i.y, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.5.137, %.backedge ] ; 3 uses
  %.sroa.10.sroa.0.0 = phi ptr [ %i.v, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressE4iterCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.sroa.0.138, %.backedge ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.013.sroa.0.0, %.sroa.013.sroa.7.0
  br i1 %i.ad, label %bb.h, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.10.sroa.0.0, %.sroa.10.sroa.5.0
  br i1 %i.ae, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread30: ; preds = %bb.g, %bb.h
  %.sink6.i39 = phi ptr [ %.sroa.10.sroa.0.0, %bb.h ], [ %.sroa.013.sroa.0.0, %bb.g ] ; 3 uses
  %.sroa.10.sroa.0.138 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.0.0, %bb.g ]
  %.sroa.10.sroa.5.137 = phi ptr [ %.sroa.013.sroa.7.0, %bb.h ], [ %.sroa.10.sroa.5.0, %bb.g ]
  %.sroa.013.sroa.7.136 = phi ptr [ %.sroa.10.sroa.5.0, %bb.h ], [ %.sroa.013.sroa.7.0, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink6.i39, i64 40
  %.val = load ptr, ptr %i.f, align 8, !noundef !177
  %.val10 = load i64, ptr %i.z, align 8
  %i.ag = call fastcc noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEB4D_EE3getB18_ECsgZAIVb0XKpv_9ssservice(ptr %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sink6.i39) #52 ; 3 uses
  %.not8 = icmp eq ptr %i.ag, null
  br i1 %.not8, label %bb.u, label %bb.t, !prof !186

_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.h, %.split, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = load i64, ptr %i.l, align 8, !noundef !177 ; 9 uses
  %i.ai = icmp ult i64 %i.ah, 288230376151711744
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i64, ptr %i.m, align 8, !noundef !177 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ah, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2381) #62, !noalias !79508
  unreachable

_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  store i64 0, ptr %i.m, align 8
  %i.al = sub nuw i64 %i.aj, %i.ah
  %.sroa.021.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.422.0.copyload = load ptr, ptr %i.k, align 8, !nonnull !177, !noundef !177 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79509)
  %.idx = shl nuw nsw i64 %i.ah, 5                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !79510)
  call void @llvm.experimental.noalias.scope.decl(metadata !79511)
  store ptr %1, ptr %i.d, align 8, !alias.scope !79512
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !79512
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79512
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !79512
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79512
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %.sroa.422.0.copyload, ptr %i.an, align 8, !alias.scope !79513
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %.sroa.422.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79513
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.021.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !79513
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !79513
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !79514
  call void @llvm.experimental.noalias.scope.decl(metadata !79515)
  call void @llvm.experimental.noalias.scope.decl(metadata !79516)
  call void @llvm.experimental.noalias.scope.decl(metadata !79517)
  call void @llvm.experimental.noalias.scope.decl(metadata !79518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79519
  call void @llvm.experimental.noalias.scope.decl(metadata !79520)
  call void @llvm.experimental.noalias.scope.decl(metadata !79521)
  call void @llvm.experimental.noalias.scope.decl(metadata !79522)
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.s, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !79523, !noundef !177 ; 2 uses
  %i.as = load i64, ptr %1, align 8, !range !179, !noalias !79523, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ar, %i.as
  %i.at = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.as
  %.sroa.02.0.i.i.i.i.i = sub nuw i64 %i.ar, %i.at
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79524
  %i.au = add nsw i64 %i.ah, -1                   ; 2 uses
  store i64 %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !79524
  %i.av = load ptr, ptr %i.u, align 8, !noalias !79523, !nonnull !177, !noundef !177
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.sroa.02.0.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i = load i16, ptr %i.aw, align 8, !noalias !79525 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !79525 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, align 8, !noalias !79525 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.not.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %bb.s, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !79526)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 32
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !79527
  %.sroa.022.0.copyload23.i.i.i.i = load i64, ptr %.sroa.422.0.copyload, align 8, !noalias !79528 ; 2 uses
  %.not1.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i, -1
  br i1 %.not1.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, label %bb.k

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.ay = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i, 0
  %i.az = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !79529
  br label %bb.s

bb.k:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.422.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i, i64 24, i1 false), !noalias !79519
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i, i64 6, i1 false), !noalias !79519
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !79519
  %gepdiff = add nsw i64 %.idx, -32
  %4 = lshr exact i64 %gepdiff, 5
  %5 = call i64 @llvm.umin.i64(i64 %i.au, i64 %4) ; 2 uses
  %i.ba = call i64 @llvm.umax.i64(i64 %5, i64 3)  ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = mul i64 %i.bb, 72                       ; 3 uses
  %or.cond.i.i3.i.i = icmp samesign ugt i64 %5, 128102389400760774
  br i1 %or.cond.i.i3.i.i, label %bb.n, label %bb.l, !prof !188

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !79530
  %i.be = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bc, i64 noundef range(i64 1, 17) 8) #52, !noalias !79530 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.bc, %bb.m ], [ undef, %bb.k ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.k ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #61, !noalias !79519
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.be, %bb.m ] ; 9 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = icmp samesign ult i64 %i.ba, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.bg)
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i, i64 6, i1 false), !noalias !79519
  %.sroa.719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.79.i.i, i64 16, i1 false), !noalias !79519
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.921.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.911.i.i, i64 24, i1 false), !noalias !79519
  store i16 %.sroa.010.0.copyload11.i.i.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !79519
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !79519
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !79519
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !79519
  store i64 %.sroa.4.0.i.i.i, ptr %i.b, align 8, !noalias !79519
  %.sroa.4.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !noalias !79519
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !79519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.79.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.911.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !79531
  call void @llvm.experimental.noalias.scope.decl(metadata !79532)
  call void @llvm.experimental.noalias.scope.decl(metadata !79533)
  call void @llvm.experimental.noalias.scope.decl(metadata !79534)
  call void @llvm.experimental.noalias.scope.decl(metadata !79535)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !79536, !noalias !79519 ; 2 uses
  %i.bi = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.bi, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bj = load ptr, ptr %i.a, align 8, !alias.scope !79537, !noalias !79519, !nonnull !177, !noundef !177 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !79536, !noalias !79519, !nonnull !177 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %.promoted24.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !79537, !noalias !79519
  %.promoted25.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !79536, !noalias !79519
  br label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i
  %i.br = phi ptr [ %.sroa.10.0.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cq, %bb.r ]
  %i.bs = phi i64 [ 1, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.cs, %bb.r ] ; 5 uses
  %i.bt = phi ptr [ %.promoted25.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.bu = phi i64 [ %.promoted24.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.bz, %bb.r ] ; 2 uses
  %.val.i.i2223.i.i.i.i = phi i64 [ %.promoted.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.lr.ph.i.i.i.i ], [ %i.ca, %bb.r ]
  call void @llvm.experimental.noalias.scope.decl(metadata !79538)
  call void @llvm.experimental.noalias.scope.decl(metadata !79539)
  call void @llvm.experimental.noalias.scope.decl(metadata !79540)
  %i.bv = load i64, ptr %i.bl, align 8, !noalias !79541, !noundef !177
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = load i64, ptr %i.bj, align 8, !range !179, !noalias !79541, !noundef !177 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.bw, %i.bx
  %i.by = select i1 %.not.i.i.i.i.i.i.i, i64 0, i64 %i.bx
  %.sroa.02.0.i.i.i.i.i.i.i = sub nuw i64 %i.bw, %i.by
  %i.bz = add i64 %i.bu, 1                        ; 3 uses
  %i.ca = add i64 %.val.i.i2223.i.i.i.i, -1       ; 5 uses
  %i.cb = load ptr, ptr %i.bm, align 8, !noalias !79541, !nonnull !177, !noundef !177
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %.sroa.02.0.i.i.i.i.i.i.i ; 5 uses
  %.sroa.010.0.copyload11.i.i.i.i.i.i = load i16, ptr %i.cc, align 8, !noalias !79542 ; 3 uses
  %.sroa.712.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.712.sroa.5.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !79542 ; 3 uses
  %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.712.sroa.6.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, align 8, !noalias !79542 ; 3 uses
  %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %i.cd = icmp eq ptr %i.bt, %i.bo
  br i1 %i.cd, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  %.sroa.022.0.copyload23.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !noalias !79543 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, -1
  br i1 %.not1.i.i.i.i.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, label %bb.q

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, %bb.o
  %i.cf = phi ptr [ %i.ce, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ], [ %i.bt, %bb.o ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !79537, !noalias !79519
  store i64 %i.ca, ptr %i.bh, align 8, !alias.scope !79537, !noalias !79519
  store ptr %i.cf, ptr %i.bp, align 8, !noalias !79519
  %i.cg = icmp eq i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, 0
  %i.ch = icmp eq i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !79544
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.q:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.sroa.724.0..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.96.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.724.0..sroa_idx25.i.i.i.i.i.i, i64 24, i1 false), !noalias !79545
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.712.0..sroa_idx13.i.i.i.i.i.i, i64 6, i1 false), !noalias !79545
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.712.sroa.7.0..sroa.712.0..sroa_idx13.sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !79545
  %i.ci = icmp samesign ult i64 %i.bs, 128102389400760776
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load i64, ptr %i.b, align 8, !range !179, !alias.scope !79546, !noalias !79519, !noundef !177
  %i.ck = icmp eq i64 %i.bs, %i.cj
  br i1 %i.ck, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.r

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub nuw i64 %i.bq, %i.cl
  %i.cn = lshr exact i64 %i.cm, 5
  %i.co = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cn)
  %i.cp = add nuw nsw i64 %i.co, 1
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bs, i64 noundef range(i64 1, 0) %i.cp, i64 noundef 8, i64 noundef 72) #52, !noalias !79547
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i12, align 8, !alias.scope !79546, !noalias !79519
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.q
  %i.cq = phi ptr [ %.pre.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEE7reserveCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %i.bs ; 7 uses
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.411.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.i.i, i64 6, i1 false), !noalias !79545
  %.sroa.714.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.714.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.74.i.i.i.i, i64 16, i1 false), !noalias !79545
  %.sroa.916.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.916.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.96.i.i.i.i, i64 24, i1 false), !noalias !79545
  store i16 %.sroa.010.0.copyload11.i.i.i.i.i.i, ptr %i.cr, align 8, !noalias !79545
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.sroa.712.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !79545
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %.sroa.712.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !79545
  %.sroa.815.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i64 %.sroa.022.0.copyload23.i.i.i.i.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i.i, align 8, !noalias !79545
  %i.cs = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.cs, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !79546, !noalias !79519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.74.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.96.i.i.i.i)
  %i.ct = icmp eq i64 %i.ca, 0
  br i1 %i.ct, label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, label %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i: ; preds = %bb.r, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  %.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.ca, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  %i.cu = phi ptr [ %i.ce, %bb.r ], [ %i.bt, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i ]
  store i64 %i.bz, ptr %i.bk, align 8, !alias.scope !79537, !noalias !79519
  store i64 %.lcssa.i.i, ptr %i.bh, align 8, !alias.scope !79537, !noalias !79519
  store ptr %i.cu, ptr %i.bp, align 8, !noalias !79519
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.loopexit.i.i, %bb.p, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #52, !noalias !79548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !79549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79519
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

bb.s:                                             ; preds = %bb.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtB9_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i, %_RNvXs3_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsgZAIVb0XKpv_9ssservice.exit
  store i64 0, ptr %0, align 8, !alias.scope !79531
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8, !alias.scope !79531
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cw, align 8, !alias.scope !79531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79519
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drain5DrainNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressEINtNtNtB1i_3vec9into_iter8IntoIterINtB1e_8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.d) #52, !noalias !79531
  br label %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1Q_5drain5DrainBV_EINtNtB4_9into_iter8IntoIterB1N_EEE9from_iterCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXNtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB4_3VecTNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB6_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEINtB2_10SpecExtendBR_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtB1N_5drain5DrainBS_EINtNtB4_9into_iter8IntoIterB1K_EEE11spec_extendCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

end_hunk_1
