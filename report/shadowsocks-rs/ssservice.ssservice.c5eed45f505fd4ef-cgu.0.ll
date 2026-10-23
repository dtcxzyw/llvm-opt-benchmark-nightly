Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE12inner_lookup0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.ws = select i1 %or.cond.i, i1 %.sroa.10180.0.i, i1 false
  %.sroa.012.0.mux81.i = select i1 %or.cond.i, i1 true, i1 %.sroa.012.0.ph.i
  br i1 %i.ws, label %bb.hg, label %.outer.i.backedge

bb.hf:                                            ; preds = %bb.hc
  %i.wt = select i1 %.sroa.020.0.i, i1 %.sroa.10180.0.i, i1 false
  %.sroa.012.0.mux.i = select i1 %.sroa.020.0.i, i1 true, i1 %.sroa.012.0.ph.i
  br i1 %i.wt, label %bb.hg, label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.hf, %bb.he
  %.sroa.012.0.ph.i.be = phi i1 [ %.sroa.012.0.mux.i, %bb.hf ], [ %.sroa.012.0.mux81.i, %bb.he ]
  br label %.outer.i

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.wu = load i16, ptr %i.w, align 8, !range !237, !noalias !71353, !noundef !177
  %.not73.i = icmp eq i16 %i.wu, 2
  %i.wv = load ptr, ptr %.sroa.6173.0..sroa_idx174.i, align 8, !noalias !71353, !nonnull !177, !align !185
  %.sroa.065.0.i = select i1 %.not73.i, ptr %i.wv, ptr %i.w
  %i.ww = call noundef zeroext i1 @_RNvXs9_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.065.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.us-phi349.i) #52, !noalias !71357
  %spec.select82.i = select i1 %i.ww, i1 true, i1 %.sroa.013.0.ph.i.ph
  br label %.outer.i.outer

_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i3.i.i, %bb.fx, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149)
  br label %bb.hi

_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149)
  br label %bb.hh

_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordNtNtNtB12_5rdata3soa3SOAEEECsgZAIVb0XKpv_9ssservice.exit110.i, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149)
  %i.wx = icmp eq i64 %.sroa.0115.0.copyload116, -2
  br i1 %i.wx, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.16147.sroa.0.0240 = phi i32 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.16147.sroa.0.0.copyload166, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.8120.0239 = phi i32 [ %i.kh, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.8120.0.copyload122, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.9123.0238 = phi i32 [ %i.ki, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.9123.0.copyload125, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.10126.0237 = phi ptr [ %i.sq, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.10126.0.copyload128, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.11.0236 = phi ptr [ %.sroa.054.0.i, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.11.0.copyload130, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.12131.0235 = phi ptr [ null, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.12131.0.copyload133, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.13.0234 = phi i64 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.13.0.copyload135, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.13136.0233 = phi ptr [ null, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.13136.0.copyload138, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.14139.0232 = phi i64 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.14139.0.copyload141, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.5117.0229 = phi ptr [ inttoptr (i64 2 to ptr), %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %.sroa.5117.0.copyload119, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %i.wy = phi <2 x i16> [ %i.kk, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread215 ], [ %i.vm, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %i.wz = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5117.0229, ptr %i.wz, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %.sroa.8120.0239, ptr %.sroa.4155.0..sroa_idx, align 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %.sroa.9123.0238, ptr %.sroa.5156.0..sroa_idx, align 4
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %.sroa.10126.0237, ptr %.sroa.6157.0..sroa_idx, align 8
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %.sroa.11.0236, ptr %.sroa.7158.0..sroa_idx, align 8
  %.sroa.8159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %.sroa.12131.0235, ptr %.sroa.8159.0..sroa_idx, align 8
  %.sroa.9160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i64 %.sroa.13.0234, ptr %.sroa.9160.0..sroa_idx, align 8
  %.sroa.10161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr %.sroa.13136.0233, ptr %.sroa.10161.0..sroa_idx, align 8
  %.sroa.11162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i64 %.sroa.14139.0232, ptr %.sroa.11162.0..sroa_idx, align 8
  %.sroa.12163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store <2 x i16> %i.wy, ptr %.sroa.12163.0..sroa_idx, align 8
  %.sroa.14165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  store i32 %.sroa.16147.sroa.0.0240, ptr %.sroa.14165.0..sroa_idx, align 4
  store i64 -1, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.hj

bb.hi:                                            ; preds = %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread
  %.sroa.16147.sroa.0.0213 = phi i32 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.16147.sroa.0.0.copyload166, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.0115.0212 = phi i64 [ -1, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.0115.0.copyload116, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ] ; 2 uses
  %.sroa.8120.0211 = phi i32 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.8120.0.copyload122, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.9123.0210 = phi i32 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.9123.0.copyload125, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.10126.0209 = phi ptr [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.10126.0.copyload128, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.11.0208 = phi ptr [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.11.0.copyload130, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.12131.0207 = phi ptr [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.12131.0.copyload133, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.13.0206 = phi i64 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.13.0.copyload135, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.13136.0205 = phi ptr [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.13136.0.copyload138, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.14139.0204 = phi i64 [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.14139.0.copyload141, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %i.xa = phi ptr [ %i.su, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.5117.0.copyload119, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.xb = phi <2 x i16> [ undef, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit.thread ], [ %i.vm, %_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE14handle_noerrorCsgZAIVb0XKpv_9ssservice.exit ]
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 852
  store i8 1, ptr %i.xc, align 4
  store i64 %.sroa.0115.0212, ptr %i.hc, align 8
  store ptr %i.xa, ptr %i.hd, align 8
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i32 %.sroa.8120.0211, ptr %.sroa.8120.0..sroa_idx, align 8
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 884
  store i32 %.sroa.9123.0210, ptr %.sroa.9123.0..sroa_idx, align 4
  %.sroa.10126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %.sroa.10126.0209, ptr %.sroa.10126.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %.sroa.11.0208, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 904
  store ptr %.sroa.12131.0207, ptr %.sroa.12131.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i64 %.sroa.13.0206, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.13136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 920
  store ptr %.sroa.13136.0205, ptr %.sroa.13136.0..sroa_idx, align 8
  %.sroa.14139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 928
  store i64 %.sroa.14139.0204, ptr %.sroa.14139.0..sroa_idx, align 8
  %.sroa.14142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 936
  store <2 x i16> %i.xb, ptr %.sroa.14142.0..sroa_idx, align 8
  %.sroa.16147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 940
  store i32 %.sroa.16147.sroa.0.0213, ptr %.sroa.16147.0..sroa_idx, align 4
  %.sroa.16147.sroa.3.0..sroa.16147.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16147.sroa.3.0..sroa.16147.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(72) %.sroa.16147.sroa.3, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %cond = icmp eq i64 %.sroa.0115.0212, -1
  br i1 %cond, label %bb.hn, label %bb.ho

bb.hj:                                            ; preds = %bb.hl, %bb.hh
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 852
  store i8 0, ptr %i.xd, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 853
  store i8 0, ptr %i.xe, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 854
  store i8 0, ptr %i.xf, align 2
  %i.xg = load i8, ptr %i.hn, align 1, !range !180, !noundef !177
  %i.xh = trunc nuw i8 %i.xg to i1
  br i1 %i.xh, label %bb.hr, label %bb.hq

bb.hk:                                            ; preds = %bb.cm
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.xj = load i32, ptr %i.xi, align 8, !range !192, !noundef !177 ; 2 uses
  %.not5 = icmp eq i32 %i.xj, 2
  br i1 %.not5, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk, %bb.cm
  %i.xk = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.xk, ptr noundef nonnull align 8 dereferenceable(72) %i.il, i64 72, i1 false)
  store i64 -1, ptr %i.au, align 8
  br label %bb.hj

bb.hm:                                            ; preds = %bb.hk
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5174.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3169.0..sroa_idx, i64 60, i1 false)
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 851
  %i.xm = load i8, ptr %i.xl, align 1, !range !180, !noundef !177
  %i.xn = trunc nuw i8 %i.xm to i1
  %spec.select = select i1 %i.xn, i32 0, i32 %i.xj
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 852
  store i8 1, ptr %i.xo, align 4
  store i8 2, ptr %i.hd, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store i32 %spec.select, ptr %.sroa.4173.0..sroa_idx, align 8
  store i64 -2, ptr %i.hc, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.xp, ptr noundef nonnull align 8 dereferenceable(72) %i.hd, i64 72, i1 false)
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 857
  store i8 0, ptr %i.xr, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.xs, i64 88, i1 false)
  store i64 -1, ptr %i.al, align 8
  call fastcc void @_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE5cacheCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.xq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.am, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %i.al) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.ie

bb.hn:                                            ; preds = %bb.hi
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store ptr %i.xa, ptr %i.xt, align 8
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.an, ptr noundef nonnull align 8 dereferenceable(152) %i.hc, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 857
  store i8 0, ptr %i.xu, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %i.iq, i64 88, i1 false)
  call fastcc void @_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE5cacheCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.io, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.ao, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %i.an) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ie

bb.hp:                                            ; preds = %._crit_edge295, %bb.hn
  %.val.i = phi ptr [ %.val.i.pre, %._crit_edge295 ], [ %i.xa, %bb.hn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call fastcc void @_RNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB6_13CachingClientINtNtB8_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE12inner_lookup0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.at, ptr noundef nonnull align 8 %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #60, !inline_history !71286
  %i.xv = load i64, ptr %i.at, align 8, !range !245, !noundef !177 ; 3 uses
  %i.xw = icmp eq i64 %i.xv, -2
  br i1 %i.xw, label %bb.ia, label %bb.ib

bb.hq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.hr, %bb.hj
  store i8 0, ptr %i.hn, align 1
  br label %bb.bt

bb.hr:                                            ; preds = %bb.hj
  %i.xx = load i64, ptr %i.ho, align 8, !range !189, !noundef !177
  %i.xy = icmp eq i64 %i.xx, -1
  br i1 %i.xy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit, label %bb.hq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.hr
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.4112.0..sroa_idx) #52
  br label %bb.hq

bb.hs:                                            ; preds = %bb.ht, %bb.bt
  store i8 0, ptr %i.gy, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 456
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8AjStw0eGtC_16hickory_resolver14caching_client13CachingClientINtNtBG_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(192) %i.xz) #52
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 857 ; 2 uses
  %i.yb = load i8, ptr %i.ya, align 1, !range !180, !noundef !177
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %bb.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit

bb.ht:                                            ; preds = %bb.bt
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.yd) #52
  br label %bb.hs

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.hy, %bb.hx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91, %bb.hs
  store i8 0, ptr %i.ya, align 1
  br label %bb.hz

bb.hu:                                            ; preds = %bb.hs
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.experimental.noalias.scope.decl(metadata !71541)
  call void @llvm.experimental.noalias.scope.decl(metadata !71542)
  call void @llvm.experimental.noalias.scope.decl(metadata !71543)
  %i.yf = load i16, ptr %i.ye, align 8, !range !178, !alias.scope !71544, !noundef !177
  %i.yg = icmp eq i16 %i.yf, 0
  br i1 %i.yg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.experimental.noalias.scope.decl(metadata !71545)
  %.val.i.i.i.i90 = load i64, ptr %i.yh, align 8, !alias.scope !71546 ; 2 uses
  %i.yi = icmp eq i64 %.val.i.i.i.i90, 0
  br i1 %i.yi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val1.i.i.i.i = load ptr, ptr %i.yj, align 8, !alias.scope !71546, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i90, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !71546
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91: ; preds = %bb.hw, %bb.hv, %bb.hu
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.experimental.noalias.scope.decl(metadata !71547)
  %i.yl = load i16, ptr %i.yk, align 8, !range !178, !alias.scope !71548, !noundef !177
  %i.ym = icmp eq i16 %i.yl, 0
  br i1 %i.ym, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit, label %bb.hx

bb.hx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCscDkIWVIZClo_7tinyvec7tinyvec7TinyVecAhj20_EECsgZAIVb0XKpv_9ssservice.exit.i.i91
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.experimental.noalias.scope.decl(metadata !71549)
  %.val.i.i1.i.i = load i64, ptr %i.yn, align 8, !alias.scope !71550 ; 2 uses
  %i.yo = icmp eq i64 %.val.i.i1.i.i, 0
  br i1 %i.yo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val1.i.i2.i.i = load ptr, ptr %i.yp, align 8, !alias.scope !71550, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i, i64 noundef %.val.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !71550
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit

bb.hz:                                            ; preds = %bb.il, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.au, i64 168, i1 false)
  br label %common.ret

bb.ia:                                            ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ib:                                            ; preds = %bb.hp
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.val12 = load ptr, ptr %i.yq, align 8, !alias.scope !71551, !nonnull !177, !noundef !177 ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtBI_13CachingClientINtNtBK_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE12inner_lookup0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %.val12) #52, !noalias !71552, !inline_history !71303
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef 1200, i64 noundef 8) #52, !noalias !71552, !inline_history !71304
  %i.yr = icmp eq i64 %i.xv, -1
  br i1 %i.yr, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ys, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 857
  store i8 0, ptr %i.yu, align 1
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(88) %i.yv, i64 88, i1 false)
  store i64 -1, ptr %i.ap, align 8
  call fastcc void @_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE5cacheCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.yt, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.aq, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %i.ap) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 %i.xv, ptr %i.as, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false)
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 857
  store i8 0, ptr %i.yx, align 1
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, ptr noundef nonnull align 8 dereferenceable(88) %i.yy, i64 88, i1 false)
  call fastcc void @_RNvMs_NtCs8AjStw0eGtC_16hickory_resolver14caching_clientINtB4_13CachingClientINtNtB6_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE5cnameCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.yw, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(168) %i.as, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(88) %i.ar) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.hm, %bb.ho, %bb.id, %bb.ic
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 852
  store i8 0, ptr %i.yz, align 4
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.zb = load i64, ptr %i.za, align 8, !range !189, !noundef !177
  %i.zc = icmp eq i64 %i.zb, -1
  br i1 %i.zc, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 853
  %i.ze = load i8, ptr %i.zd, align 1, !range !180, !noundef !177
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.ih, %bb.if, %bb.ii, %bb.ie
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 853
  store i8 0, ptr %i.zg, align 1
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 854
  store i8 0, ptr %i.zh, align 2
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 855 ; 2 uses
  %i.zj = load i8, ptr %i.zi, align 1, !range !180, !noundef !177
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %bb.ik, label %bb.ij

bb.ih:                                            ; preds = %bb.if
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.zm = load i8, ptr %i.zl, align 8, !range !260, !noundef !177
  %i.zn = icmp eq i8 %i.zm, 2
  br i1 %i.zn, label %bb.ig, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %i.zl) #52
  br label %bb.ig

bb.ij:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit95, %bb.ik, %bb.ig
  store i8 0, ptr %i.zi, align 1
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.zp = load i8, ptr %i.zo, align 8, !range !180, !noundef !177
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ig
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.zs = load i64, ptr %i.zr, align 8, !range !189, !noundef !177
  %i.zt = icmp eq i64 %i.zs, -1
  br i1 %i.zt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit95, label %bb.ij

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op12dns_response11DnsResponseNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorEECsgZAIVb0XKpv_9ssservice.exit95: ; preds = %bb.ik
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 680
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsi1FNhPBS7PW_11hickory_net5error8NetErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %i.zu) #52
  br label %bb.ij

bb.il:                                            ; preds = %bb.im, %bb.ij
  store i8 0, ptr %i.zo, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 456
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8AjStw0eGtC_16hickory_resolver14caching_client13CachingClientINtNtBG_8resolver12LookupEitherNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(192) %i.zv) #52
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 857
  store i8 0, ptr %i.zw, align 1
  br label %bb.hz

bb.im:                                            ; preds = %bb.ij
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zx) #52
  br label %bb.il
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
end_hunk_0
