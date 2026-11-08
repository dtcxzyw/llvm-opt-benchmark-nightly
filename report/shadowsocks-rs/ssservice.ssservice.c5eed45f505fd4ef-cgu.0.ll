Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE12inner_lookup0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !range !183, !invariant.load !177, !noalias !71344
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) %i.hm) #52, !noalias !71344
  br label %bb.cd

bb.cb:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1634) #62
  unreachable

common.ret:                                       ; preds = %bb.ia, %bb.hz, %bb.cc
  %.sink381 = phi i8 [ 4, %bb.ia ], [ 1, %bb.hz ], [ 3, %bb.cc ]
  store i8 %.sink381, ptr %i.bk, align 8
  ret void

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cd:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.ca
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.5113.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.37.sroa.3.i, i64 71, i1 false)
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.37.sroa.4.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 855 ; 4 uses
  store i8 1, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 5 uses
  store i64 %.sroa.06.0.i74, ptr %i.ho, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  store i8 %.sroa.37.sroa.0.0.i, ptr %.sroa.4112.0..sroa_idx, align 8
  %.val10 = load ptr, ptr %i.hc, align 8, !noundef !177 ; 3 uses
  %.val11 = load ptr, ptr %i.hd, align 8          ; 4 uses
  %i.hp = icmp eq ptr %.val10, null
  br i1 %i.hp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.hq = load ptr, ptr %.val11, align 8, !invariant.load !177 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i76, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void %i.hq(ptr noundef nonnull %.val10) #60, !inline_history !68
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hr = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !179, !invariant.load !177 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i77

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i77: ; preds = %bb.cg
  %i.hu = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !range !183, !invariant.load !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) %i.hv) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cd, %bb.cg, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i77
  %i.hw = load i64, ptr %i.ho, align 8, !range !189, !noundef !177
  %i.hx = icmp eq i64 %i.hw, -1
  br i1 %i.hx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit
  store i8 0, ptr %i.hn, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 853
  store i8 1, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 854
  store i8 1, ptr %i.hz, align 2
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ia, ptr noundef nonnull align 8 dereferenceable(176) %i.ho, i64 176, i1 false)
  br label %bb.cl

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsi1FNhPBS7PW_11hickory_net4xfer17FirstAnswerFutureINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtCsaUkHVQFH9AD_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtBG_5error8NetErrorENtNtB4_6marker4SendEL_EEEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, ptr noundef nonnull align 8 dereferenceable(176) %i.ho, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RNvMs6_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8DnsError13from_response(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.ay) #52
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71346)
  call void @llvm.experimental.noalias.scope.decl(metadata !71347)
  %i.ic = load i64, ptr %i.ax, align 8, !range !189, !alias.scope !71347, !noundef !177
  %i.id = icmp eq i64 %i.ic, -1
  br i1 %i.id, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i79)
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i79, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.sroa.4.8..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ie, i64 64, i1 false), !noalias !71346
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store i8 2, ptr %i.if, align 8, !alias.scope !71346
  %.sroa.4.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %1, i64 1033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4.0..sroa_idx.i80, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4.i79, i64 71, i1 false), !noalias !71347
  store i64 -1, ptr %i.ib, align 8, !alias.scope !71346
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i79)
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8DnsErrorE7map_errNtB1N_8NetErrorNvYB2E_INtNtB5_7convert4FromB1L_E4fromECsgZAIVb0XKpv_9ssservice.exit

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ib, ptr noundef nonnull readonly align 8 dereferenceable(176) %i.ax, i64 176, i1 false), !alias.scope !71348
  br label %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8DnsErrorE7map_errNtB1N_8NetErrorNvYB2E_INtNtB5_7convert4FromB1L_E4fromECsgZAIVb0XKpv_9ssservice.exit

_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8DnsErrorE7map_errNtB1N_8NetErrorNvYB2E_INtNtB5_7convert4FromB1L_E4fromECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cj, %bb.ck
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 853
  store i8 1, ptr %i.ig, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 854
  store i8 1, ptr %i.ih, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.cl

bb.cl:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6resultINtB3_6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8DnsErrorE7map_errNtB1N_8NetErrorNvYB2E_INtNtB5_7convert4FromB1L_E4fromECsgZAIVb0XKpv_9ssservice.exit, %bb.ch
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !range !189, !noundef !177
  %i.ik = icmp eq i64 %i.ij, -1
  br i1 %i.ik, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.im = load i8, ptr %i.il, align 8, !range !260, !noundef !177
  %i.in = icmp eq i8 %i.im, 2
  br i1 %i.in, label %bb.hk, label %bb.hl

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.aw, ptr noundef nonnull align 8 dereferenceable(176) %i.ii, i64 176, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0149)
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %.sroa.0149, ptr noundef nonnull align 8 dereferenceable(27) %i.ip, i64 27, i1 false)
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 451
  %.sroa.4150.0.copyload = load i8, ptr %.sroa.4150.0..sroa_idx, align 1 ; 2 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 452
  %.sroa.5152.0.copyload = load i32, ptr %.sroa.5152.0..sroa_idx, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 856
  store i8 0, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 24, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 850
  %i.iu = load i8, ptr %i.it, align 2, !noundef !177
  call void @llvm.experimental.noalias.scope.decl(metadata !71349)
  call void @llvm.experimental.noalias.scope.decl(metadata !71350)
  call void @llvm.experimental.noalias.scope.decl(metadata !71351)
  call void @llvm.experimental.noalias.scope.decl(metadata !71352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.o, i64 42
  %i.iy = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.n, i64 82
  %i.je = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.jf = getelementptr inbounds nuw i8, ptr %i.n, i64 122
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 162
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.jj = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !71353
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_responseNtB2_11DnsResponse3soa(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.aw) #52, !noalias !71354
  %i.jl = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.jm = load i16, ptr %i.jl, align 4, !range !71355, !noalias !71353, !noundef !177
  %.not.i81 = icmp eq i16 %i.jm, -1
  br i1 %.not.i81, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !71356)
  %i.jn = load ptr, ptr %i.x, align 8, !alias.scope !71356, !noalias !71353, !nonnull !177, !align !185, !noundef !177
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.jn) #60, !noalias !71357
  %i.jo = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jp = load i32, ptr %i.jo, align 8, !alias.scope !71356, !noalias !71353, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !71358
  %i.jq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !71356, !noalias !71353, !nonnull !177, !align !185, !noundef !177 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71359)
  call void @llvm.experimental.noalias.scope.decl(metadata !71360)
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.jr) #60, !noalias !71361
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 80
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.jt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.js) #60, !noalias !71361
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 160
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 176
  %i.jw = load i32, ptr %i.jv, align 8, !alias.scope !71360, !noalias !71361, !noundef !177
  %i.jx = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.jy = load <4 x i32>, ptr %i.ju, align 8, !alias.scope !71360, !noalias !71361
  store <4 x i32> %i.jy, ptr %i.jx, align 8, !alias.scope !71359, !noalias !71358
  %i.jz = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  store i32 %i.jw, ptr %i.jz, align 8, !alias.scope !71359, !noalias !71358
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.kb = load <2 x i16>, ptr %i.jl, align 4, !noalias !71353
  store <2 x i16> %i.kb, ptr %i.ka, align 8, !noalias !71353
  %i.kc = getelementptr inbounds nuw i8, ptr %i.n, i64 268
  store i32 %i.jp, ptr %i.kc, align 4, !noalias !71353
  %i.kd = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.kd, ptr noundef nonnull align 8 dereferenceable(184) %i.l, i64 184, i1 false), !noalias !71353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !71358
  %.sroa.0.0.copyload.i = load i16, ptr %i.n, align 8, !noalias !71353
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.13129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.13129.0.copyload.i = load i16, ptr %.sroa.13129.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.15131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.15131.0.copyload.i = load i64, ptr %.sroa.15131.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.17.0.copyload.i = load ptr, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.19132.0.copyload.i = load i16, ptr %i.kd, align 8, !noalias !71353
  %.sroa.21134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %.sroa.21134.0.copyload.i = load i64, ptr %.sroa.21134.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.23.0.copyload.i = load ptr, ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.25135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.25135.0.copyload.i = load i16, ptr %.sroa.25135.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.27137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %.sroa.27137.0.copyload.i = load i64, ptr %.sroa.27137.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %.sroa.29.0.copyload.i = load ptr, ptr %.sroa.29.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.31138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %.sroa.31138.0.copyload.i = load i16, ptr %.sroa.31138.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.33140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.sroa.33140.0.copyload.i = load i64, ptr %.sroa.33140.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %.sroa.35.0.copyload.i = load ptr, ptr %.sroa.35.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.37141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %.sroa.37141.0.copyload.i = load i16, ptr %.sroa.37141.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.39143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %.sroa.39143.0.copyload.i = load i64, ptr %.sroa.39143.0..sroa_idx.i, align 8, !noalias !71353
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !71353
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.41.0.i = phi ptr [ %.sroa.41.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.39143.0.i = phi i64 [ %.sroa.39143.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.37141.0.i = phi i16 [ %.sroa.37141.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 3 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.35.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.33140.0.i = phi i64 [ %.sroa.33140.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.31138.0.i = phi i16 [ %.sroa.31138.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 3 uses
  %.sroa.29.0.i = phi ptr [ %.sroa.29.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.27137.0.i = phi i64 [ %.sroa.27137.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.25135.0.i = phi i16 [ %.sroa.25135.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 3 uses
  %.sroa.23.0.i = phi ptr [ %.sroa.23.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.21134.0.i = phi i64 [ %.sroa.21134.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.19132.0.i = phi i16 [ %.sroa.19132.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 3 uses
  %.sroa.17.0.i82 = phi ptr [ %.sroa.17.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.15131.0.i = phi i64 [ %.sroa.15131.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.13129.0.i = phi i16 [ %.sroa.13129.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.9.0.i83 = phi i64 [ %.sroa.9.0.copyload.i, %bb.co ], [ undef, %bb.cn ] ; 5 uses
  %.sroa.0.0.i = phi i16 [ %.sroa.0.0.copyload.i, %bb.co ], [ 2, %bb.cn ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !71353
  %i.ke = call { i32, i32 } @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_responseNtB2_11DnsResponse12negative_ttl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.aw) #52, !noalias !71357 ; 2 uses
  %i.kf = extractvalue { i32, i32 } %i.ke, 0
  %i.kg = extractvalue { i32, i32 } %i.ke, 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ki = load <2 x i16>, ptr %i.kh, align 8, !alias.scope !71351
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6171.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7177.i)
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.kk = load i16, ptr %i.kj, align 4, !range !295, !alias.scope !71350, !noundef !177 ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 422
  switch i16 %i.kk, label %bb.cq [
    i16 3, label %bb.dd
    i16 9, label %bb.dd
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.km = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !71351, !nonnull !177, !noundef !177
  %i.ko = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !71351, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012.i.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012.i.sroa.11.i)
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTINtNtCsgCecv3eZDcN_5alloc6borrow3CowNtNtNtBU_6domain4name4NameEmbENCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB3D_13CachingClientINtNtB3F_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0ECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ku = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.kv = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.012.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.012.i.sroa.7.0..sroa_idx285.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %.sroa.012.i.sroa.9.0..sroa_idx288.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.012.i.sroa.11.0..sroa_idx291.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.cr
  %.sroa.012.i.sroa.0.0.i = phi i16 [ 2, %bb.cr ], [ %.sroa.012.i.sroa.0.0.copyload282.i, %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 5 uses
  %.sroa.012.i.sroa.9.0.i = phi ptr [ %i.iq, %bb.cr ], [ %.sroa.012.i.sroa.9.0.copyload287.i, %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 5 uses
  %.sroa.718.0.i.i = phi i1 [ false, %bb.cr ], [ %.sroa.718.0.copyload20.i.i, %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.613.0.i.i = phi i32 [ 86400, %bb.cr ], [ %.sroa.613.0.copyload15.i.i, %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  %.sroa.01.0.i.i85 = phi i64 [ 0, %bb.cr ], [ %i.lq, %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !71362
  %i.kw = getelementptr inbounds nuw [272 x i8], ptr %i.kn, i64 %.sroa.01.0.i.i85 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !71364
  store i16 %.sroa.012.i.sroa.0.0.i, ptr %i.j, align 8, !noalias !71362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.i, i64 6, i1 false), !noalias !71362
  store ptr %.sroa.012.i.sroa.9.0.i, ptr %i.kr, align 8, !noalias !71362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ks, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.sroa.11.i, i64 64, i1 false), !noalias !71362
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  %i.ky = load i16, ptr %i.kx, align 8, !range !274, !alias.scope !71363, !noalias !71365, !noundef !177 ; 3 uses
  %i.kz = icmp ne i16 %i.ky, 19
  call void @llvm.assume(i1 %i.kz)
  %i.la = add nsw i16 %i.ky, -2
  %i.lb = icmp samesign ugt i16 %i.ky, 1
  %narrow.i.i.i = select i1 %i.lb, i16 %i.la, i16 17
  %i.lc = ptrtoint ptr %.sroa.012.i.sroa.9.0.i to i64
  switch i16 %narrow.i.i.i, label %bb.ct [
    i16 5, label %bb.cu
    i16 18, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cu, %bb.cs
  store i16 %.sroa.012.i.sroa.0.0.i, ptr %i.k, align 8, !noalias !71362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.0..sroa_idx285.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.i, i64 6, i1 false), !noalias !71362
  store ptr %.sroa.012.i.sroa.9.0.i, ptr %.sroa.012.i.sroa.9.0..sroa_idx288.i, align 8, !noalias !71362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.sroa.11.0..sroa_idx291.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.sroa.11.i, i64 64, i1 false), !noalias !71362
  br label %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 268
  %i.le = load i32, ptr %i.ld, align 4, !alias.scope !71363, !noalias !71365, !noundef !177
  %.not.i.i.i86 = icmp eq i16 %.sroa.012.i.sroa.0.0.i, 2
  %.sroa.0.0.i.i.i87 = select i1 %.not.i.i.i86, ptr %.sroa.012.i.sroa.9.0.i, ptr %i.j
  %i.lf = call noundef zeroext i1 @_RNvXs9_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0.i.i.i87, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.kw) #52, !noalias !71366
  br i1 %i.lf, label %bb.cw, label %bb.ct

bb.cv:                                            ; preds = %bb.cs
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 268
  %i.lh = load i32, ptr %i.lg, align 4, !alias.scope !71363, !noalias !71365, !noundef !177
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sink.i = phi i32 [ %i.lh, %bb.cv ], [ %i.le, %bb.cu ]
  %i.li = call i32 @llvm.umin.i32(i32 %.sroa.613.0.i.i, i32 %.sink.i) ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 88
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.lj) #60, !noalias !71367
  call void @llvm.experimental.noalias.scope.decl(metadata !71368)
  %i.lk = icmp eq i16 %.sroa.012.i.sroa.0.0.i, 2
  br i1 %i.lk, label %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !71369)
  call void @llvm.experimental.noalias.scope.decl(metadata !71370)
  %i.ll = icmp eq i16 %.sroa.012.i.sroa.0.0.i, 0
  br i1 %i.ll, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !71371)
  %i.lm = icmp eq ptr %.sroa.012.i.sroa.9.0.i, null
  br i1 %i.lm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ks, align 8, !alias.scope !71372, !noalias !71364, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !71373
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.cz, %bb.cy, %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !71374)
  %i.ln = load i16, ptr %i.kt, align 8, !range !178, !alias.scope !71375, !noalias !71364, !noundef !177
  %i.lo = icmp eq i16 %i.ln, 0
  br i1 %i.lo, label %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !71376)
  %.val.i.i1.i.i.i.i.i = load i64, ptr %i.ku, align 8, !alias.scope !71377, !noalias !71364 ; 2 uses
  %i.lp = icmp eq i64 %.val.i.i1.i.i.i.i.i, 0
  br i1 %i.lp, label %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.val1.i.i2.i.i.i.i.i = load ptr, ptr %i.kv, align 8, !alias.scope !71377, !noalias !71364, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i, i64 noundef %.val.i.i1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !71378
  br label %_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i

_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerror0CsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.db, %bb.da, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, %bb.cw, %bb.ct
  %.sroa.718.0.copyload20.i.i = phi i1 [ %.sroa.718.0.i.i, %bb.ct ], [ true, %bb.cw ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ true, %bb.da ], [ true, %bb.db ] ; 2 uses
  %.sroa.613.0.copyload15.i.i = phi i32 [ %.sroa.613.0.i.i, %bb.ct ], [ %i.li, %bb.cw ], [ %i.li, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i ], [ %i.li, %bb.da ], [ %i.li, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !71364
  %.sroa.012.i.sroa.0.0.copyload282.i = load i16, ptr %i.k, align 8, !noalias !71362 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.012.i.sroa.7.0..sroa_idx285.i, i64 6, i1 false), !noalias !71362
  %.sroa.012.i.sroa.9.0.copyload287.i = load ptr, ptr %.sroa.012.i.sroa.9.0..sroa_idx288.i, align 8, !noalias !71362 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.sroa.11.0..sroa_idx291.i, i64 64, i1 false), !noalias !71362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !71362
  %i.lq = add nuw i64 %.sroa.01.0.i.i85, 1        ; 2 uses
  %i.lr = icmp eq i64 %i.lq, %i.kp
  br i1 %i.lr, label %bb.dc, label %bb.cs
end_hunk_0
