Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.07?download=true
inline.NumInlined: 936
inline.NumDeleted: 422
begin_hunk_0_@_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz2hz:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !noundef !6
  call void @_RNvMs1_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_nameNtB5_11ServiceName3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.aw) #23
  %i.ax = load i8, ptr %i.h, align 8, !range !16, !noundef !6
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !16, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_name16ServiceNameErrorE4fromCsadSKrpJ73hd_12iox2_service(i1 noundef zeroext %i.bb) #23
  br label %.loopexit154

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.v, ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i64 264, i1 false)
  %i.be = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant3now() #23 ; 2 uses
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 4 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  %i.bj = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = call { i1, i8 } @_RNvYNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceNtB6_7Service10does_existCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.bk, i32 noundef 0) #23 ; 2 uses
  %i.bm = extractvalue { i1, i8 } %i.bl, 0
  %i.bn = extractvalue { i1, i8 } %i.bl, 1        ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = call fastcc noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCsg6ZEkMtNi4J_8iceoryx27service19ServiceDetailsErrorE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.bn) #23
  br label %.loopexit154

bb.j:                                             ; preds = %bb.h
  %i.bp = trunc nuw i8 %i.bn to i1
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.br = load i64, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.bf, ptr %i.d, align 8
  store i32 %i.bg, ptr %i.bi, align 8
  %i.bs = trunc nuw i64 %i.bq to i1
  br i1 %i.bs, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit.thread

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit: ; preds = %bb.k
  %i.bt = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #23
  %i.bu = extractvalue { i64, i32 } %i.bt, 0
  %.not145 = icmp ult i64 %i.bu, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not145, label %bb.m, label %.loopexit154

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtCsadSKrpJ73hd_12iox2_service7command24get_pubsub_service_types(ptr noalias nofree noundef nonnull sret([888 x i8]) align 8 captures(none) dereferenceable(888) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #23
  %i.bv = load i32, ptr %i.u, align 8, !range !32, !noundef !6 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit.thread, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit
  %i.bx = call noundef i8 @_RNvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_4NodeNtNtNtB7_7service3ipc7ServiceE4waitCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, i64 noundef 0, i32 noundef 100000) #23
  %.not = icmp eq i8 %i.bx, 2
  br i1 %.not, label %bb.h, label %.loopexit154

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.loopexit154

bb.o:                                             ; preds = %bb.l
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.491.0.copyload = load i32, ptr %.sroa.491.0..sroa_idx, align 4
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.592.0.copyload = load ptr, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(576) %.sroa.693.0..sroa_idx, i64 576, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.4117, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8, i64 280, i1 false)
  %.sroa.8.296..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.f, ptr noundef nonnull align 8 dereferenceable(296) %.sroa.8.296..sroa_idx, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ca = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.cb = atomicrmw add ptr %i.ca, i64 1 monotonic, align 8
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i64 264, i1 false)
  store ptr %i.cd, ptr %i.q, align 8
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB3_7BuilderNtNtB5_3ipc7ServiceE17publish_subscribeSNtB3_19CustomPayloadMarkerECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([5656 x i8]) align 8 captures(none) dereferenceable(5656) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(272) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6121.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.4117, i64 280, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %i.bv, ptr %i.cf, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %.sroa.491.0.copyload, ptr %.sroa.4119.0..sroa_idx, align 4
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.592.0.copyload, ptr %.sroa.5120.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cg, ptr noundef nonnull align 8 dereferenceable(296) %i.f, i64 296, i1 false)
  call void @_RNvMse_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribeINtB5_7BuilderSNtB7_19CustomPayloadMarkerNtB7_18CustomHeaderMarkerNtNtB9_3ipc7ServiceE14open_or_createCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(5656) %i.r) #23
  %i.ch = load i8, ptr %i.s, align 8, !range !16, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !range !17, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.cm = load i8, ptr %i.cl, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cn = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder17publish_subscribe33PublishSubscribeOpenOrCreateErrorE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.ck, i8 %i.cm) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139

bb.s:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.cp, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %.sroa.5103.0..sroa_idx, i8 noundef 1) #23
  store i64 0, ptr %i.n, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.t, ptr %i.cq, align 16
  call void @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory10subscriberINtB4_21PortFactorySubscriberNtNtB8_3ipc7ServiceSNtNtB8_7builder19CustomPayloadMarkerNtB1U_18CustomHeaderMarkerE6createCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(80) %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cr = load i64, ptr %i.o, align 8, !range !11, !noundef !6 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cu = load i8, ptr %i.ct, align 8             ; 2 uses
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cv = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberCreateErrorE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.cu) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138

bb.u:                                             ; preds = %bb.s
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5106.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.cr, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i8 %i.cu, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.m, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 16 to ptr), ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cz = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant3now() #23 ; 2 uses
  %i.da = extractvalue { i64, i32 } %i.cz, 0
  %i.db = extractvalue { i64, i32 } %i.cz, 1
  store i64 %i.da, ptr %i.l, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.u
  %.sroa.872.0.ph.ph = phi i32 [ -1, %bb.u ], [ %.sroa.872.1, %.outer.outer.backedge ]
  %.sroa.066.0.ph.ph = phi i64 [ undef, %bb.u ], [ %.sroa.066.1, %.outer.outer.backedge ] ; 4 uses
  %.sroa.958.0.ph.ph = phi i32 [ -1, %bb.u ], [ %.sroa.958.2, %.outer.outer.backedge ]
  %.sroa.051.0.ph.ph = phi i64 [ undef, %bb.u ], [ %.sroa.051.2201, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.al
  %.sroa.872.0.ph = phi i32 [ -1, %bb.al ], [ %.sroa.872.0.ph.ph, %.outer.outer ] ; 5 uses
  %.sroa.958.0.ph = phi i32 [ -1, %bb.al ], [ %.sroa.958.0.ph.ph, %.outer.outer ]
  %.sroa.051.0.ph = phi i64 [ %.sroa.051.2, %bb.al ], [ %.sroa.051.0.ph.ph, %.outer.outer ]
  %.not125 = icmp ne i32 %.sroa.872.0.ph, -1      ; 2 uses
  %i.dj = icmp ult i32 %.sroa.872.0.ph, 1000000000
  br label %bb.v

bb.v:                                             ; preds = %.outer, %.split
  %.sroa.958.0 = phi i32 [ %.sroa.872.0.ph, %.split ], [ %.sroa.958.0.ph, %.outer ]
  %.sroa.051.0 = phi i64 [ %.sroa.066.0.ph.ph, %.split ], [ %.sroa.051.0.ph, %.outer ]
  %i.dk = call noundef i8 @_RNvMsq_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_4NodeNtNtNtB7_7service3ipc7ServiceE4waitCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, i64 noundef 0, i32 noundef 100000) #23
  %i.dl = icmp eq i8 %i.dk, 2
  br i1 %i.dl, label %bb.w, label %.loopexit149

bb.w:                                             ; preds = %bb.v
  %i.dm = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.dn = load i64, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bf, ptr %i.c, align 8
  store i32 %i.bg, ptr %i.dd, align 8
  %i.do = trunc nuw i64 %i.dm to i1
  br i1 %i.do, label %bb.x, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132

bb.x:                                             ; preds = %bb.w
  %i.dp = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #23
  %i.dq = extractvalue { i64, i32 } %i.dp, 0
  %i.dr = icmp uge i64 %i.dq, %i.dn
  br label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132: ; preds = %bb.w, %bb.x
  %.sroa.02.0.i131 = phi i1 [ %i.dr, %bb.x ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service3ipc7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1B_18CustomHeaderMarkerE22receive_custom_payloadCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p) #23
  %i.ds = load i8, ptr %i.g, align 16, !range !16, !noundef !6
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132._crit_edge, label %.lr.ph

.loopexit149:                                     ; preds = %bb.v, %.split144, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeoENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecoENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXs4_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service3ipc7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1B_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #23
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1349, !nonnull !6, !noundef !6 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1350, !noundef !6
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.dv, align 8, !noalias !1350
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

bb.y:                                             ; preds = %.loopexit149
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.du) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %.loopexit149, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.dz = load ptr, ptr %i.t, align 8, !alias.scope !1355, !nonnull !6, !noundef !6
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 release, align 8, !noalias !1355
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.z, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.ec = load ptr, ptr %i.y, align 8, !alias.scope !1360, !nonnull !6, !noundef !6
  %i.ed = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !noalias !1360
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.aa, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit140

bb.aa:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit140

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132._crit_edge: ; preds = %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !range !17, !noundef !6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ei = load i8, ptr %i.eh, align 2
  %i.ej = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCsg6ZEkMtNi4J_8iceoryx24port12ReceiveErrorE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.eg, i8 %i.ei) #23
  br label %.loopexit150

.lr.ph:                                           ; preds = %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit
  %.sroa.051.1185 = phi i64 [ %i.el, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit ], [ %.sroa.051.0, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132 ] ; 2 uses
  %.sroa.958.1184 = phi i32 [ %i.em, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit ], [ %.sroa.958.0, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132 ] ; 3 uses
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 16 ; 2 uses
  %.not122 = icmp eq ptr %.sroa.4108.0.copyload, null
  br i1 %.not122, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %.sroa.5109.0.copyload = load i64, ptr %.sroa.5109.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.de, i64 64, i1 false)
  store ptr %.sroa.4108.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16
  store i64 %.sroa.5109.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ek = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant3now() #23 ; 2 uses
  %i.el = extractvalue { i64, i32 } %i.ek, 0      ; 3 uses
  %i.em = extractvalue { i64, i32 } %i.ek, 1      ; 3 uses
  store i64 %i.el, ptr %i.j, align 8
  store i32 %i.em, ptr %i.df, align 8
  %.not123 = icmp eq i32 %.sroa.958.1184, -1
  br i1 %.not123, label %bb.ad, label %bb.ac

.loopexit:                                        ; preds = %.lr.ph, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135
  %.sroa.958.2 = phi i32 [ %i.em, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135 ], [ %.sroa.958.1184, %.lr.ph ] ; 8 uses
  %.sroa.051.2 = phi i64 [ %i.el, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135 ], [ %.sroa.051.1185, %.lr.ph ] ; 5 uses
  %.sroa.041.0 = phi i1 [ true, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135 ], [ %.sroa.02.0.i131, %.lr.ph ]
  %i.en = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l) #23
  %i.eo = extractvalue { i64, i32 } %i.en, 0
  %.not147 = icmp eq i64 %i.eo, 0
  br i1 %.not147, label %.loopexit151, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ep = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant14duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %.sroa.051.1185, i32 noundef %.sroa.958.1184) #23 ; 2 uses
  %i.eq = extractvalue { i64, i32 } %i.ep, 0
  %i.er = extractvalue { i64, i32 } %i.ep, 1      ; 2 uses
  %i.es = zext i64 %i.eq to i128
  %i.et = mul nuw nsw i128 %i.es, 1000000000
  %i.eu = icmp ult i32 %i.er, 1000000000
  call void @llvm.assume(i1 %i.eu)
  %i.ev = zext nneg i32 %i.er to i128
  %i.ew = add nuw nsw i128 %i.et, %i.ev
  %i.ex = call noundef nonnull align 16 ptr @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeoE13push_back_mutCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, i128 noundef %i.ew) #23 ; 0 uses
  %i.ey = load i64, ptr %i.cx, align 8, !noundef !6
  %i.ez = load i64, ptr %i.dg, align 8, !noundef !6
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.fb = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.fc = load i64, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bf, ptr %i.b, align 8
  store i32 %i.bg, ptr %i.dh, align 8
  %i.fd = trunc nuw i64 %i.fb to i1
  br i1 %i.fd, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134.thread

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134.thread: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134: ; preds = %bb.ad
  %i.fe = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) #23
  %i.ff = extractvalue { i64, i32 } %i.fe, 0
  %.not146 = icmp ult i64 %i.ff, %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not146, label %bb.af, label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeoE9pop_frontCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.af:                                            ; preds = %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134.thread, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtCsg6ZEkMtNi4J_8iceoryx26sampleINtB5_6SampleNtNtNtB7_7service3ipc7ServiceSNtNtBS_7builder19CustomPayloadMarkerNtB1k_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.k) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.fg = load ptr, ptr %.sroa.2.0..sroa_idx, align 16, !alias.scope !1364, !nonnull !6, !noundef !6 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !1365, !noundef !6
  %i.fi = add i64 %i.fh, -1                       ; 2 uses
  store i64 %i.fi, ptr %i.fg, align 8, !noalias !1365
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ag, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

bb.ag:                                            ; preds = %bb.af
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.2.0..sroa_idx) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service3ipc7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1B_18CustomHeaderMarkerE22receive_custom_payloadCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p) #23
  %i.fk = load i8, ptr %i.g, align 16, !range !16, !noundef !6
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtCsg6ZEkMtNi4J_8iceoryx26sampleINtB5_6SampleNtNtNtB7_7service3ipc7ServiceSNtNtBS_7builder19CustomPayloadMarkerNtB1k_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.k) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.fm = load ptr, ptr %.sroa.2.0..sroa_idx, align 16, !alias.scope !1369, !nonnull !6, !noundef !6 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !1370, !noundef !6
  %i.fo = add i64 %i.fn, -1                       ; 2 uses
  store i64 %i.fo, ptr %i.fm, align 8, !noalias !1370
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.ai, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.2.0..sroa_idx) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx26sample6SampleNtNtNtBG_7service3ipc7ServiceSNtNtB1l_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit135: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit

bb.aj:                                            ; preds = %.loopexit
  %i.fq = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant3now() #23 ; 2 uses
  %i.fr = extractvalue { i64, i32 } %i.fq, 0
  %i.fs = extractvalue { i64, i32 } %i.fq, 1
  store i64 %i.fr, ptr %i.l, align 8
  store i32 %i.fs, ptr %i.dc, align 8
  %.not124 = icmp eq i32 %.sroa.958.2, -1
  br i1 %.not124, label %bb.al, label %bb.ak

.loopexit151:                                     ; preds = %.loopexit, %.loopexit152
  %.sroa.051.2201 = phi i64 [ %.sroa.051.2202, %.loopexit152 ], [ %.sroa.051.2, %.loopexit ] ; 2 uses
  %.sroa.872.1 = phi i32 [ %.sroa.958.2, %.loopexit152 ], [ %.sroa.872.0.ph, %.loopexit ] ; 5 uses
  %.sroa.066.1 = phi i64 [ %.sroa.051.2202, %.loopexit152 ], [ %.sroa.066.0.ph.ph, %.loopexit ] ; 2 uses
  br i1 %.sroa.041.0, label %bb.an, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp eq i64 %.sroa.051.2, %.sroa.066.0.ph.ph
  %or.cond = select i1 %.not125, i1 %i.ft, i1 false
  br i1 %or.cond, label %.split, label %.loopexit152

bb.al:                                            ; preds = %bb.aj
  br i1 %.not125, label %.loopexit152, label %.outer

.split:                                           ; preds = %bb.ak
  %i.fu = icmp ult i32 %.sroa.958.2, 1000000000
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 %i.dj)
  %i.fv = icmp eq i32 %.sroa.958.2, %.sroa.872.0.ph
  br i1 %i.fv, label %bb.v, label %.loopexit152

.loopexit152:                                     ; preds = %bb.al, %.split, %bb.ak
  %.sroa.051.2202 = phi i64 [ %.sroa.066.0.ph.ph, %.split ], [ %.sroa.051.2, %bb.ak ], [ %.sroa.051.2, %bb.al ] ; 2 uses
  %i.fw = call fastcc noundef ptr @_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i8 noundef %1) #23 ; 2 uses
  %.not126 = icmp eq ptr %i.fw, null
  br i1 %.not126, label %.loopexit151, label %.loopexit150

bb.am:                                            ; preds = %.loopexit151
  %i.fx = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.fy = load i64, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.bf, ptr %i.a, align 8
  store i32 %i.bg, ptr %i.di, align 8
  %i.fz = trunc nuw i64 %i.fx to i1
  br i1 %i.fz, label %.split143, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit137

.split143:                                        ; preds = %bb.am
  %i.ga = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #23
  %i.gb = extractvalue { i64, i32 } %i.ga, 0
  %.not148 = icmp ult i64 %i.gb, %i.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not148, label %.outer.outer.backedge, label %bb.an

.outer.outer.backedge:                            ; preds = %.split143, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit137
  br label %.outer.outer

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit137: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer.outer.backedge

bb.an:                                            ; preds = %.split143, %.loopexit151
  %.not127 = icmp eq i32 %.sroa.958.2, -1
  br i1 %.not127, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not128 = icmp ne i32 %.sroa.872.1, -1
  %i.gc = icmp eq i64 %.sroa.051.2201, %.sroa.066.1
  %or.cond130 = select i1 %.not128, i1 %i.gc, i1 false
  br i1 %or.cond130, label %.split144, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gd = icmp eq i32 %.sroa.872.1, -1
  br i1 %i.gd, label %.loopexit149, label %bb.aq

.split144:                                        ; preds = %bb.ao
  %i.ge = icmp ult i32 %.sroa.958.2, 1000000000
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ult i32 %.sroa.872.1, 1000000000
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp eq i32 %.sroa.958.2, %.sroa.872.1
  br i1 %i.gg, label %.loopexit149, label %bb.aq

bb.aq:                                            ; preds = %.split144, %bb.ao, %bb.ap
  %i.gh = call fastcc noundef ptr @_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i8 noundef %1) #23 ; 2 uses
  %.not129 = icmp eq ptr %i.gh, null
  br i1 %.not129, label %.loopexit149, label %.loopexit150

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit140: ; preds = %bb.b, %bb.d, %bb.aa, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit, %.loopexit154, %bb.at
  %.sroa.0.0 = phi ptr [ %.sroa.0.4, %bb.at ], [ null, %bb.aa ], [ %.sroa.0.4, %.loopexit154 ], [ null, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit ], [ %i.ak, %bb.b ], [ %i.aq, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi) #23
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi) #23
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gj) #23
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gj) #23
  ret ptr %.sroa.0.0

.loopexit150:                                     ; preds = %.loopexit152, %bb.aq, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132._crit_edge
  %.sroa.0.1 = phi ptr [ %i.ej, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit132._crit_edge ], [ %i.gh, %bb.aq ], [ %i.fw, %.loopexit152 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RNvXs0_NtNtCsbqH9stoieM8_5alloc11collections9vec_dequeINtB5_8VecDequeoENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecoENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXs4_NtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriberINtB5_10SubscriberNtNtNtB9_7service3ipc7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1B_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p) #23
  %i.gk = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !1374, !nonnull !6, !noundef !6 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !1375, !noundef !6
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !noalias !1375
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ar, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138

bb.ar:                                            ; preds = %.loopexit150
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber21SubscriberSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138: ; preds = %bb.ar, %.loopexit150, %bb.t
  %.sroa.0.2 = phi ptr [ %i.cv, %bb.t ], [ %.sroa.0.1, %.loopexit150 ], [ %.sroa.0.1, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.gp = load ptr, ptr %i.t, align 8, !alias.scope !1380, !nonnull !6, !noundef !6
  %i.gq = atomicrmw add ptr %i.gp, i64 -1 release, align 8, !noalias !1380
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.as, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139

bb.as:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139: ; preds = %bb.as, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138, %bb.r
  %.sroa.0.3 = phi ptr [ %i.cn, %bb.r ], [ %.sroa.0.2, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port10subscriber10SubscriberNtNtNtBI_7service3ipc7ServiceSNtNtB1C_7builder19CustomPayloadMarkerNtB24_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit138 ], [ %.sroa.0.2, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.m, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit, %bb.n, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139, %bb.i, %bb.f
  %.sroa.0.4 = phi ptr [ %i.bc, %bb.f ], [ %i.bo, %bb.i ], [ %i.bz, %bb.n ], [ %.sroa.0.3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit139 ], [ null, %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command2hz15reached_timeout.exit ], [ null, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.gs = load ptr, ptr %i.y, align 8, !alias.scope !1385, !nonnull !6, !noundef !6
  %i.gt = atomicrmw add ptr %i.gs, i64 -1 release, align 8, !noalias !1385
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.at, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit140

bb.at:                                            ; preds = %.loopexit154
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #24
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit140
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNtNtCsadSKrpJ73hd_12iox2_service7command7publish7publish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.15.i = alloca [40 x i8], align 8         ; 7 uses
  %i.q = alloca [56 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.616.i = alloca [24 x i8], align 8        ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [272 x i8], align 8               ; 4 uses
  %i.u = alloca [280 x i8], align 8               ; 4 uses
  %i.v = alloca [280 x i8], align 8               ; 4 uses
  %i.w = alloca [152 x i8], align 8               ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  %i.y = alloca [192 x i8], align 16              ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [192 x i8], align 16             ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 7 uses
  %i.ac = alloca [40 x i8], align 8               ; 12 uses
  %i.ad = alloca [272 x i8], align 8              ; 6 uses
  %i.ae = alloca [5656 x i8], align 8             ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 9 uses
  %i.ag = alloca [8 x i8], align 8                ; 10 uses
  %i.ah = alloca [296 x i8], align 8              ; 4 uses
  %i.ai = alloca [296 x i8], align 8              ; 4 uses
  %i.aj = alloca [4688 x i8], align 8             ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4680
  store i8 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  store i64 2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !6
  call void @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_nameNtB2_8NodeName3new(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar) #23
  %i.as = load i8, ptr %i.w, align 8, !range !16, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !16, !noundef !6
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = tail call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string19SemanticStringErrorE4fromCsadSKrpJ73hd_12iox2_service(i1 noundef zeroext %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit68

bb.c:                                             ; preds = %bb.a
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.ay, i64 144, i1 false)
  store i64 1, ptr %i.aj, align 8
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service3ipc7ServiceECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aj) #23
  %i.az = load i8, ptr %i.ak, align 8, !range !16, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !17, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.bd = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCsg6ZEkMtNi4J_8iceoryx24node19NodeCreationFailureE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.bc) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit68

bb.e:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store ptr %i.bf, ptr %i.al, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !range !16, !noundef !6
  %i.bi = xor i8 %i.bh, 1
  %not. = zext nneg i8 %i.bi to i32
  call void @_RINvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB3_10TypeDetail3newuECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.ai, i32 noundef %not.) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  %i.bl = load <2 x i64>, ptr %i.bj, align 8
  store <2 x i64> %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !6, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !6
  call void @_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj100_E20from_bytes_truncatedCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp) #23
  %i.bq = load i8, ptr %i.v, align 8, !range !16, !noundef !6
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !16, !noundef !6
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = call fastcc noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string23StringModificationErrorE4fromCsadSKrpJ73hd_12iox2_service(i1 noundef zeroext %i.bu) #23
  br label %bb.ax

bb.g:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bx, ptr noundef nonnull align 8 dereferenceable(272) %i.bw, i64 272, i1 false)
  call void @_RINvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB3_10TypeDetail3newuECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([296 x i8]) align 8 captures(none) dereferenceable(296) %i.ah, i32 noundef 0) #23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
end_hunk_0
