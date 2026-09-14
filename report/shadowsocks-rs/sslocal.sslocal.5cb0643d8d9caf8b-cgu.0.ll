Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35275
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNCNvMs1_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB7_11ProxySocketNtNtNtBd_3net3udp9UdpSocketE14send_with_ctrl0Cs7XnEB7DeNXr_7sslocal:bb.a
  ], !prof !194

default.unreachable:                              ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.cy, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #53, !noalias !56090
  store i8 0, ptr %i.cz, align 8, !noalias !56090
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = getelementptr i8, ptr %i.cy, i64 68
  %.val.i.i = load i8, ptr %i.db, align 4, !range !149, !noalias !56090, !noundef !146
  %i.dc = getelementptr i8, ptr %i.cy, i64 69
  %.val5.i.i = load i8, ptr %i.dc, align 1, !noalias !56090
  %i.dd = trunc nuw i8 %.val.i.i to i1
  %i.de = call noundef zeroext i1 @_RNvMNtNtCsczhfDQ1qNkX_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.dd, i8 %.val5.i.i) #53, !noalias !56090
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECs7XnEB7DeNXr_7sslocal.exit.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.v, %bb.t
  %.sroa.0.0.i.i = phi i1 [ %i.de, %bb.v ], [ true, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56091)
  %i.df = load ptr, ptr %i.cx, align 8, !alias.scope !56091, !noalias !56092, !nonnull !146, !align !154, !noundef !146
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !56091, !noalias !56092, !nonnull !146, !noundef !146
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !56091, !noalias !56092, !noundef !146
  %i.dk = call { i64, ptr } @_RNvXs0_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compatNtNtNtBb_3net3udp9UdpSocketNtB5_12DatagramSend9poll_send(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj) #53, !noalias !56091 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0      ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 2
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECs7XnEB7DeNXr_7sslocal.exit.i
  %i.dn = call noundef zeroext i1 @_RNvNtNtCsczhfDQ1qNkX_5tokio4time7timeout10poll_delay(i1 noundef zeroext %.sroa.0.0.i.i, ptr noundef nonnull align 8 %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #53
  %spec.select.i = select i1 %i.dn, i64 -1, i64 2
  %i.do = insertvalue { i64, ptr } poison, i64 %spec.select.i, 0
  %i.dp = insertvalue { i64, ptr } %i.do, ptr undef, 1
  br label %_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compat7SendFutNtNtNtB12_3net3udp9UdpSocketEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal.exit

bb.x:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetbNCNvNtNtB10_4task4coop20has_budget_remaining0E0bECs7XnEB7DeNXr_7sslocal.exit.i
  %i.dq = icmp ult i64 %i.dl, 2
  call void @llvm.assume(i1 %i.dq)
  br label %_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compat7SendFutNtNtNtB12_3net3udp9UdpSocketEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal.exit

_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compat7SendFutNtNtNtB12_3net3udp9UdpSocketEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.w, %bb.x
  %.merged.i = phi { i64, ptr } [ %i.dk, %bb.x ], [ %i.dp, %bb.w ] ; 2 uses
  %i.dr = extractvalue { i64, ptr } %.merged.i, 0 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, -1
  br i1 %i.ds, label %bb.ac, label %bb.ad

bb.y:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1235) #63
  unreachable

common.ret:                                       ; preds = %bb.ah, %bb.ac, %bb.z
  %.sink = phi i8 [ 1, %bb.ah ], [ 4, %bb.ac ], [ 3, %bb.z ]
  store i8 %.sink, ptr %i.o, align 8
  ret void

bb.z:                                             ; preds = %bb.s
  store i16 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %common.ret

bb.aa:                                            ; preds = %bb.s
  %i.dt = extractvalue { i64, ptr } %i.ct, 1
  %i.du = trunc nuw i64 %i.cu to i1
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  br i1 %i.du, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.ad
  %.sink119 = phi i64 [ %i.dy, %bb.ad ], [ %i.dv, %bb.aa ] ; 5 uses
  store i64 %.sink119, ptr %i.k, align 8
  %i.dw = getelementptr i8, ptr %1, i64 64
  %.val32 = load i64, ptr %i.dw, align 8, !noundef !146 ; 2 uses
  %.not16 = icmp eq i64 %.val32, %.sink119
  br i1 %.not16, label %bb.ah, label %bb.af

bb.ac:                                            ; preds = %_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compat7SendFutNtNtNtB12_3net3udp9UdpSocketEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal.exit
  store i16 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %common.ret

bb.ad:                                            ; preds = %_RNvXs_NtNtCsczhfDQ1qNkX_5tokio4time7timeoutINtB4_7TimeoutINtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay6compat7SendFutNtNtNtB12_3net3udp9UdpSocketEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal.exit
  %i.dx = extractvalue { i64, ptr } %.merged.i, 1
  %i.dy = ptrtoint ptr %i.dx to i64               ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4time5sleep5SleepECs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 8 %i.cw) #53
  switch i64 %i.dr, label %bb.ae [
    i64 2, label %bb.ah
    i64 0, label %bb.ab
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.dz = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 6
  call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ugt i64 %i.dz, 1
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.val32, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.ec, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56093
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.ed, align 8, !noalias !56093
  %.sroa.422.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1233, ptr %.sroa.422.0..sroa_idx.i.i49, align 8, !noalias !56093
  %.sroa.523.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 42, ptr %.sroa.523.0..sroa_idx.i.i50, align 8, !noalias !56093
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @1236, ptr %i.ee, align 8, !noalias !56093
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.i, ptr %i.ef, align 8, !noalias !56093
  store i64 0, ptr %i.b, align 8, !noalias !56093
  %.sroa.428.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1233, ptr %.sroa.428.0..sroa_idx.i.i51, align 8, !noalias !56093
  %.sroa.529.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 42, ptr %.sroa.529.0..sroa_idx.i.i52, align 8, !noalias !56093
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.eg, align 8, !noalias !56093
  %.sroa.434.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @1232, ptr %.sroa.434.0..sroa_idx.i.i53, align 8, !noalias !56093
  %.sroa.535.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 53, ptr %.sroa.535.0..sroa_idx.i.i54, align 8, !noalias !56093
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.eh, align 8, !noalias !56093
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 248, ptr %i.ei, align 4, !noalias !56093
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !56093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %bb.af, %bb.aa, %bb.ad, %bb.ae
  %.sroa.0107.2 = phi i16 [ 2, %bb.aa ], [ 2, %bb.ae ], [ 2, %bb.ad ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.ab ]
  %.sroa.9109.2 = phi i64 [ %i.dv, %bb.aa ], [ %i.dy, %bb.ae ], [ 94489280515, %bb.ad ], [ %.sink119, %bb.af ], [ %.sink119, %bb.ag ], [ %.sink119, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sink120 = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_RNvXs0_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sink120) #53
  store i16 %.sroa.0107.2, ptr %0, align 8
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9109.2, ptr %.sroa.9109.0..sroa_idx, align 8
  br label %common.ret
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB7_19PingBalancerContext10check_once0Cs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [88 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !199, !noundef !146
  switch i8 %i.y, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.af
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  store i8 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 4 uses
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !146, !align !154, !noundef !146 ; 3 uses
  store ptr %i.ac, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.af = load i8, ptr %i.ae, align 2, !range !149, !noundef !146
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.ac, i64 16
  %.val64 = load i64, ptr %i.ah, align 8, !noundef !146 ; 5 uses
  %i.ai = icmp ult i64 %.val64, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %.val64, 0
  br i1 %i.aj, label %common.ret, label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56126)
  %i.al = mul i64 %.val64, 66272                  ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.val64, 139174493554665
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.f, !prof !262

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !56127
  %i.am = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.al, i64 noundef range(i64 1, 17) 16) #53, !noalias !56127 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i = phi i64 [ 16, %bb.f ], [ 0, %bb.e ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.al) #62, !noalias !56126
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.f
  store i64 %.val64, ptr %i.ak, align 8, !alias.scope !56126
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.am, ptr %i.ao, align 8, !alias.scope !56126
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store i64 0, ptr %i.ap, align 8, !alias.scope !56126
  store i8 1, ptr %i.z, align 4
  %2 = load ptr, ptr %i.ag, align 8, !nonnull !146, !align !154, !noundef !146 ; 2 uses
  %i.aq = getelementptr i8, ptr %2, i64 16
  %.val56 = load i64, ptr %i.aq, align 8, !noundef !146 ; 5 uses
  %i.ar = icmp ult i64 %.val56, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56128)
  %i.at = mul i64 %.val56, 66272                  ; 3 uses
  %or.cond.i.i.i102 = icmp samesign ugt i64 %.val56, 139174493554665
  br i1 %or.cond.i.i.i102, label %bb.j, label %bb.h, !prof !262

bb.h:                                             ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !56129
  %i.av = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, 17) 16) #53, !noalias !56129 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge

._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge: ; preds = %bb.i
  %.pre271.a = load ptr, ptr %i.ag, align 8
  br label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106

bb.j:                                             ; preds = %bb.i, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit
  %.sroa.4.0.ph.i.i105 = phi i64 [ 16, %bb.i ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i105, i64 %i.at) #62, !noalias !56128
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106: ; preds = %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge, %bb.h
  %i.ax = phi ptr [ %2, %bb.h ], [ %.pre271.a, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge ] ; 2 uses
  %.sroa.10.0.i.i103 = phi ptr [ inttoptr (i64 16 to ptr), %bb.h ], [ %i.av, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge ]
  %.sroa.4.0.i.i104 = phi i64 [ 0, %bb.h ], [ %.val56, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106_crit_edge ] ; 2 uses
  %i.ay = icmp samesign ule i64 %.val56, %.sroa.4.0.i.i104
  tail call void @llvm.assume(i1 %i.ay)
  store i64 %.sroa.4.0.i.i104, ptr %i.as, align 8, !alias.scope !56128
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %.sroa.10.0.i.i103, ptr %i.az, align 8, !alias.scope !56128
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.ba, align 8, !alias.scope !56128
  store i8 1, ptr %i.aa, align 1
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val62 = load ptr, ptr %i.bb, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %.val63 = load i64, ptr %i.bc, align 8, !noundef !146 ; 2 uses
  %.idx = shl nuw nsw i64 %.val63, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.val62, i64 %.idx
  %i.be = icmp eq i64 %.val63, 0
  br i1 %i.be, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106, %bb.aa
  %.sroa.0.0253 = phi ptr [ %i.bf, %bb.aa ], [ %.val62, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0253, i64 8 ; 2 uses
  %.val75 = load ptr, ptr %.sroa.0.0253, align 8, !nonnull !146, !noundef !146 ; 6 uses
  %i.bg = load ptr, ptr %0, align 8, !nonnull !146, !align !154, !noundef !146
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load i8, ptr %i.bh, align 8, !range !265, !noundef !146 ; 2 uses
  %.not = icmp eq i8 %i.bi, 2
  br i1 %.not, label %.thread, label %bb.u

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.val76.pre = load i64, ptr %i.ba, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106
  %.val76 = phi i64 [ %.val76.pre, %._crit_edge.loopexit ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBK_11PingChecker18check_update_score0E13with_capacityCs7XnEB7DeNXr_7sslocal.exit106 ] ; 9 uses
  %.val77 = load i64, ptr %i.ap, align 8, !noundef !146 ; 6 uses
  %i.bj = icmp ult i64 %.val77, 139174493554666
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.bl = icmp samesign ugt i64 %.val77, 1        ; 2 uses
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bn = icmp ult i64 %.val76, 139174493554666
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.bp = icmp samesign ugt i64 %.val76, 1        ; 2 uses
  %i.bq = zext i1 %i.bp to i8
  store i8 %i.bq, ptr %i.bo, align 2
  %i.br = or i64 %.val76, %.val77
  %brmerge.not = icmp samesign ult i64 %i.br, 2
  br i1 %brmerge.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  br i1 %i.bl, label %bb.p, label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %.val.i = load ptr, ptr %i.az, align 8, !nonnull !146, !noundef !146
  %i.bs = icmp eq i64 %.val76, 0
  br i1 %i.bs, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ 0, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [66272 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i
  %i.bu = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBJ_11PingChecker18check_update_score0ECs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 16 %i.bt) #53
  %i.bv = icmp eq i64 %i.bu, %.val76
  br i1 %i.bv, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %.lr.ph.i.i.i, %bb.l
  %.val2.i = load i64, ptr %i.as, align 8         ; 2 uses
  %i.bw = icmp eq i64 %.val2.i, 0
  br i1 %i.bw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i
  %.val3.i = load ptr, ptr %i.az, align 8, !nonnull !146, !noundef !146
  %i.bx = mul nuw i64 %.val2.i, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i, %bb.m
  store i8 0, ptr %i.aa, align 1
  %.val.i107 = load ptr, ptr %i.ao, align 8, !nonnull !146, !noundef !146
  %.val1.i108 = load i64, ptr %i.ap, align 8, !noundef !146 ; 2 uses
  %i.by = icmp eq i64 %.val1.i108, 0
  br i1 %i.by, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i111, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit, %.lr.ph.i.i.i109
  %.sroa.0.03.i.i.i110 = phi i64 [ %i.ca, %.lr.ph.i.i.i109 ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [66272 x i8], ptr %.val.i107, i64 %.sroa.0.03.i.i.i110
  %i.ca = add nuw nsw i64 %.sroa.0.03.i.i.i110, 1 ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBJ_11PingChecker18check_update_score0ECs7XnEB7DeNXr_7sslocal(ptr noundef nonnull align 16 %i.bz) #53
  %i.cb = icmp eq i64 %i.ca, %.val1.i108
  br i1 %i.cb, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i111, label %.lr.ph.i.i.i109

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i111: ; preds = %.lr.ph.i.i.i109, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit
  %.val2.i112 = load i64, ptr %i.ak, align 8      ; 2 uses
  %i.cc = icmp eq i64 %.val2.i112, 0
  br i1 %i.cc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114, label %bb.n

bb.n:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i111
  %.val3.i113 = load ptr, ptr %i.ao, align 8, !nonnull !146, !noundef !146
  %i.cd = mul nuw i64 %.val2.i112, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i113, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 16) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i111, %bb.n
  store i8 0, ptr %i.z, align 4
  br label %common.ret

common.ret:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit159, %bb.c, %bb.ag
  %storemerge = phi i8 [ 3, %bb.ag ], [ 1, %bb.c ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit159 ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114 ]
  %common.ret.op = phi i1 [ true, %bb.ag ], [ false, %bb.c ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit159 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1g_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal.exit114 ]
  store i8 %storemerge, ptr %i.x, align 1
  ret i1 %common.ret.op

bb.o:                                             ; preds = %bb.k
  store i8 0, ptr %i.aa, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  br i1 %i.bp, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCs7XnEB7DeNXr_7sslocal.exit, %bb.o
  %.sink = phi ptr [ %i.ak, %bb.r ], [ %i.ak, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCs7XnEB7DeNXr_7sslocal.exit ], [ %i.as, %bb.o ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1C_11PingChecker18check_update_score0EECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w) #53
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ce, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 88, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  store i8 0, ptr %i.z, align 4
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.az, align 8, !nonnull !146, !noundef !146
  %i.cg = load i64, ptr %i.ak, align 8, !range !148, !noundef !146
  %i.ch = sub nsw i64 %i.cg, %.val77
  %i.ci = icmp ugt i64 %.val76, %i.ch
  br i1 %i.ci, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCs7XnEB7DeNXr_7sslocal.exit, !prof !155

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i: ; preds = %bb.s
  tail call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %.val77, i64 noundef %.val76, i64 noundef 16, i64 noundef 66272) #53
  %i.cj = load i64, ptr %i.ap, align 8, !noundef !146 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 139174493554666
  tail call void @llvm.assume(i1 %i.ck)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCs7XnEB7DeNXr_7sslocal.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E6appendCs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i, %bb.s
  %i.cl = phi i64 [ %i.cj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBM_11PingChecker18check_update_score0E7reserveCs7XnEB7DeNXr_7sslocal.exit.thread.i.i ], [ %.val77, %bb.s ]
  %i.cm = load ptr, ptr %i.ao, align 8, !nonnull !146, !noundef !146
  %i.cn = getelementptr inbounds nuw [66272 x i8], ptr %i.cm, i64 %i.cl
  %i.co = mul nuw nsw i64 %.val76, 66272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.cn, ptr nonnull readonly align 16 %i.cf, i64 %i.co, i1 false)
  %.pre.i.i = load i64, ptr %i.ap, align 8
  %i.cp = add i64 %.pre.i.i, %.val76
  store i64 %i.cp, ptr %i.ap, align 8
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.z, align 4
  br label %bb.q

bb.t:                                             ; preds = %bb.q, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call fastcc void @_RNvXs_NtNtCscVsx2cUGvkQ_12futures_util6future8join_allINtB4_7JoinAllNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1c_11PingChecker18check_update_score0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef align 8 dereferenceable(88) %i.cq, ptr noalias nofree noundef align 8 dereferenceable(32) %1) #53
  %i.cr = load i64, ptr %i.u, align 8, !range !188, !noundef !146
  %i.cs = icmp eq i64 %i.cr, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.u:                                             ; preds = %.lr.ph
  %i.ct = getelementptr i8, ptr %.val75, i64 1160
  %.val78 = load float, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %.val75, i64 1168
  %.val79 = load i8, ptr %i.cu, align 8, !range !265, !noundef !146
  %i.cv = icmp ne i8 %.val79, 2
  %i.cw = fcmp ogt float %.val78, 0.000000e+00
  %.sroa.0.0.i115 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %.sroa.0.0.i115, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0E4pushCs7XnEB7DeNXr_7sslocal.exit, %bb.u
  %i.cx = phi i8 [ %i.bi, %bb.u ], [ %.pre273, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBN_11PingChecker18check_update_score0E4pushCs7XnEB7DeNXr_7sslocal.exit ]
  %.not250 = icmp eq i8 %i.cx, 1
  br i1 %.not250, label %bb.aa, label %.thread

bb.w:                                             ; preds = %bb.u
  %i.cy = atomicrmw add ptr %.val75, i64 1 monotonic, align 8
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.x, label %_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_data11ServerIdentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs7XnEB7DeNXr_7sslocal.exit

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing11server_data11ServerIdentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.w
  %i.da = load ptr, ptr %0, align 8, !nonnull !146, !align !154, !noundef !146
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %.val83 = load ptr, ptr %i.db, align 8, !nonnull !146, !noundef !146 ; 2 uses
  %i.dc = atomicrmw add ptr %.val83, i64 1 monotonic, align 8
end_hunk_0
