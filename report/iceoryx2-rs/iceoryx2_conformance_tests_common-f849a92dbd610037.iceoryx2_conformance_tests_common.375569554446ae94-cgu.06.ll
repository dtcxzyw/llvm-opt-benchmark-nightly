Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.06?download=true
inline.NumInlined: 6084
inline.NumDeleted: 2536
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response59sent_responses_from_disconnected_servers_are_received_firstNtNtNtCsg6ZEkMtNi4J_8iceoryx27service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  store i8 %i.gy, ptr %i.ae, align 1
  store ptr %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @37, ptr %i.ad, align 8, !captures !11
  br i1 %i.gx, label %bb.aq, label %bb.ap, !prof !8

bb.ap:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBG_7service5local7ServicejjEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.gz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select194 = select i1 %i.gz, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select195 = select i1 %i.gz, i64 9, i64 0
  store ptr %spec.select194, ptr %i.ac, align 8, !captures !11
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %spec.select195, ptr %i.ha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink175 = select i1 %i.hb, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink174 = select i1 %i.hb, i64 4, i64 0
  store ptr %.sink175, ptr %i.ab, align 8, !captures !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sink174, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.449.0..sroa_idx, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.af, ptr %i.hd, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ad, ptr %i.he, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.ab, ptr %i.hf, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.461.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @38, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @478) #17
  unreachable

bb.aq:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx28response8ResponseNtNtNtBG_7service5local7ServicejjEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %exitcond.not = icmp eq i64 %i.dy, 8
  br i1 %exitcond.not, label %.preheader, label %bb.t

bb.ar:                                            ; preds = %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.hg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select196 = select i1 %i.hg, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select197 = select i1 %i.hg, i64 9, i64 0
  store ptr %spec.select196, ptr %i.av, align 8, !captures !11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %spec.select197, ptr %i.hh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.hi = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink179 = select i1 %i.hi, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink178 = select i1 %i.hi, i64 4, i64 0
  store ptr %.sink179, ptr %i.au, align 8, !captures !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sink178, ptr %i.hj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.av, ptr %i.at, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.415.0..sroa_idx, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.hk, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @479, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @480) #17
  unreachable

bb.as:                                            ; preds = %bb.m
  %i.hl = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 100) #15
  %i.hm = and i16 %i.hl, 255
  %i.hn = icmp eq i16 %i.hm, 255
  br i1 %i.hn, label %bb.at, label %bb.bh, !prof !18

bb.at:                                            ; preds = %bb.as
  %i.ho = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 1) #15
  %i.hp = and i16 %i.ho, 255
  %i.hq = icmp eq i16 %i.hp, 255
  br i1 %i.hq, label %bb.au, label %bb.ar, !prof !8

bb.au:                                            ; preds = %bb.at
  %i.hr = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 101) #15
  %i.hs = and i16 %i.hr, 255
  %i.ht = icmp eq i16 %i.hs, 255
  br i1 %i.ht, label %bb.av, label %bb.bh, !prof !18

bb.av:                                            ; preds = %bb.au
  %i.hu = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 2) #15
  %i.hv = and i16 %i.hu, 255
  %i.hw = icmp eq i16 %i.hv, 255
  br i1 %i.hw, label %bb.aw, label %bb.ar, !prof !8

bb.aw:                                            ; preds = %bb.av
  %i.hx = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 102) #15
  %i.hy = and i16 %i.hx, 255
  %i.hz = icmp eq i16 %i.hy, 255
  br i1 %i.hz, label %bb.ax, label %bb.bh, !prof !18

bb.ax:                                            ; preds = %bb.aw
  %i.ia = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 3) #15
  %i.ib = and i16 %i.ia, 255
  %i.ic = icmp eq i16 %i.ib, 255
  br i1 %i.ic, label %bb.ay, label %bb.ar, !prof !8

bb.ay:                                            ; preds = %bb.ax
  %i.id = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 103) #15
  %i.ie = and i16 %i.id, 255
  %i.if = icmp eq i16 %i.ie, 255
  br i1 %i.if, label %bb.az, label %bb.bh, !prof !18

bb.az:                                            ; preds = %bb.ay
  %i.ig = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 4) #15
  %i.ih = and i16 %i.ig, 255
  %i.ii = icmp eq i16 %i.ih, 255
  br i1 %i.ii, label %bb.ba, label %bb.ar, !prof !8

bb.ba:                                            ; preds = %bb.az
  %i.ij = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 104) #15
  %i.ik = and i16 %i.ij, 255
  %i.il = icmp eq i16 %i.ik, 255
  br i1 %i.il, label %bb.bb, label %bb.bh, !prof !18

bb.bb:                                            ; preds = %bb.ba
  %i.im = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 5) #15
  %i.in = and i16 %i.im, 255
  %i.io = icmp eq i16 %i.in, 255
  br i1 %i.io, label %bb.bc, label %bb.ar, !prof !8

bb.bc:                                            ; preds = %bb.bb
  %i.ip = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 105) #15
  %i.iq = and i16 %i.ip, 255
  %i.ir = icmp eq i16 %i.iq, 255
  br i1 %i.ir, label %bb.bd, label %bb.bh, !prof !18

bb.bd:                                            ; preds = %bb.bc
  %i.is = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 6) #15
  %i.it = and i16 %i.is, 255
  %i.iu = icmp eq i16 %i.it, 255
  br i1 %i.iu, label %bb.be, label %bb.ar, !prof !8

bb.be:                                            ; preds = %bb.bd
  %i.iv = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 106) #15
  %i.iw = and i16 %i.iv, 255
  %i.ix = icmp eq i16 %i.iw, 255
  br i1 %i.ix, label %bb.bf, label %bb.bh, !prof !18

bb.bf:                                            ; preds = %bb.be
  %i.iy = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.az, i64 noundef 7) #15
  %i.iz = and i16 %i.iy, 255
  %i.ja = icmp eq i16 %i.iz, 255
  br i1 %i.ja, label %bb.bg, label %bb.ar, !prof !8

bb.bg:                                            ; preds = %bb.bf
  %i.jb = call i16 @_RNvMs4_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service5local7ServicejjjjE9send_copyCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ax, i64 noundef 107) #15
  %i.jc = and i16 %i.jb, 255
  %i.jd = icmp eq i16 %i.jc, 255
  br i1 %i.jd, label %bb.o, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.je = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select198 = select i1 %i.je, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select199 = select i1 %i.je, i64 9, i64 0
  store ptr %spec.select198, ptr %i.as, align 8, !captures !11
  %i.jf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %spec.select199, ptr %i.jf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.jg = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink183 = select i1 %i.jg, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink182 = select i1 %i.jg, i64 4, i64 0
  store ptr %.sink183, ptr %i.ar, align 8, !captures !11
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sink182, ptr %i.jh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.as, ptr %i.aq, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.423.0..sroa_idx, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ar, ptr %i.ji, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @481, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @482) #17
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response62send_increasing_requests_with_static_allocation_strategy_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [4528 x i8], align 8              ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [240 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [272 x i8], align 8               ; 4 uses
  %i.x = alloca [6272 x i8], align 8              ; 12 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [4688 x i8], align 8             ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ad) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.af, ptr noundef nonnull align 8 dereferenceable(4528) %i.d, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aa) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21612)
  %i.ag = load i8, ptr %i.ab, align 8, !range !13, !alias.scope !21612, !noalias !21613, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21614
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !alias.scope !21612, !noalias !21613, !noundef !4
  store i8 %i.aj, ptr %i.c, align 1, !noalias !21614
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @586, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #17, !noalias !21612
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !21612, !noalias !21613, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.al, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i64 264, i1 false)
  store ptr %i.al, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1224
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.46.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ap) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 1216
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.x, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  store i32 2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 920
  store i32 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 6256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_responseINtB5_7BuilderShuyuNtNtB9_14ipc_threadsafe7ServiceE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(6272) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !21615)
  %i.ax = load i8, ptr %i.y, align 8, !range !13, !alias.scope !21615, !noalias !21616, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_14ipc_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21617
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !alias.scope !21615, !noalias !21616, !noundef !4
  store i8 %i.ba, ptr %i.a, align 1, !noalias !21617
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @590, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #17, !noalias !21615
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_14ipc_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21615, !noalias !21616, !nonnull !4, !noundef !4
  store ptr %i.bc, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_14ipc_threadsafe7ServiceShuyuE3newCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 1024, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i8 2, ptr %i.be, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_14ipc_threadsafe7ServiceShuyuE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(240) %i.t) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21618)
  call void @llvm.experimental.noalias.scope.decl(metadata !21619)
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !21619, !noalias !21620, !noundef !4
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service14ipc_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_14ipc_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21621
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !alias.scope !21619, !noalias !21620, !noundef !4
  store i8 %i.bi, ptr %i.b, align 1, !noalias !21621
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @587, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #17, !noalias !21622
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service14ipc_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_14ipc_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !alias.scope !21622, !noalias !21623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.v, i64 noundef 1023) #15
  %i.bj = load ptr, ptr %i.s, align 8, !noundef !4
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !5

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service14ipc_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bk = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.bk, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select62 = select i1 %i.bk, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select62, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink53 = select i1 %i.bm, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink52 = select i1 %i.bm, i64 4, i64 0
  store ptr %.sink53, ptr %i.q, align 8, !captures !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink52, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.bo, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #17
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service14ipc_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noundef nonnull align 8 %i.v, i64 noundef 1024) #15
  %i.bp = load ptr, ptr %i.o, align 8, !noundef !4
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select63 = select i1 %i.bq, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select64 = select i1 %i.bq, i64 9, i64 0
  store ptr %spec.select63, ptr %i.n, align 8, !captures !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select64, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink57 = select i1 %i.bs, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink56 = select i1 %i.bs, i64 4, i64 0
  store ptr %.sink57, ptr %i.m, align 8, !captures !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink56, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.bu, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.v, i64 noundef 1025) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = load ptr, ptr %i.i, align 8, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !range !16 ; 2 uses
  %storemerge = select i1 %i.bw, i8 %i.by, i8 -1
  store i8 %storemerge, ptr %i.j, align 1
  br i1 %i.bw, label %bb.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  %i.bz = icmp eq i8 %i.by, 2
  br i1 %i.bz, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, label %bb.l, !prof !18

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.j
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ca = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select65 = select i1 %i.ca, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select66 = select i1 %i.ca, i64 9, i64 0
  store ptr %spec.select65, ptr %i.g, align 8, !captures !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select66, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink61 = select i1 %i.cc, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink60 = select i1 %i.cc, i64 4, i64 0
  store ptr %.sink61, ptr %i.f, align 8, !captures !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink60, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ce, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.cf, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cg, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @490, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491) #17
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !21624)
  call void @llvm.experimental.noalias.scope.decl(metadata !21625)
  call void @llvm.experimental.noalias.scope.decl(metadata !21626)
  call void @llvm.experimental.noalias.scope.decl(metadata !21627)
  %i.ch = load ptr, ptr %i.v, align 8, !alias.scope !21628, !nonnull !4, !noundef !4
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !21628
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.m:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service14ipc_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !21629)
  call void @llvm.experimental.noalias.scope.decl(metadata !21630)
  call void @llvm.experimental.noalias.scope.decl(metadata !21631)
  call void @llvm.experimental.noalias.scope.decl(metadata !21632)
  %i.ck = load ptr, ptr %i.z, align 8, !alias.scope !21633, !nonnull !4, !noundef !4
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !21633
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !21634)
  call void @llvm.experimental.noalias.scope.decl(metadata !21635)
  call void @llvm.experimental.noalias.scope.decl(metadata !21636)
  call void @llvm.experimental.noalias.scope.decl(metadata !21637)
  %i.cn = load ptr, ptr %i.ac, align 8, !alias.scope !21638, !nonnull !4, !noundef !4
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !21638
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service14ipc_threadsafe7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_14ipc_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response62send_increasing_requests_with_static_allocation_strategy_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [4528 x i8], align 8              ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [240 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [272 x i8], align 8               ; 4 uses
  %i.x = alloca [6272 x i8], align 8              ; 12 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [4688 x i8], align 8             ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ad) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.af, ptr noundef nonnull align 8 dereferenceable(4528) %i.d, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service16local_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aa) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21673)
  %i.ag = load i8, ptr %i.ab, align 8, !range !13, !alias.scope !21673, !noalias !21674, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21675
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !alias.scope !21673, !noalias !21674, !noundef !4
  store i8 %i.aj, ptr %i.c, align 1, !noalias !21675
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @586, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #17, !noalias !21673
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !21673, !noalias !21674, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.al, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i64 264, i1 false)
  store ptr %i.al, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1224
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.46.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ap) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 1216
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.x, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  store i32 2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 920
  store i32 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 6256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_responseINtB5_7BuilderShuyuNtNtB9_16local_threadsafe7ServiceE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(6272) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !21676)
  %i.ax = load i8, ptr %i.y, align 8, !range !13, !alias.scope !21676, !noalias !21677, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_16local_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21678
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !alias.scope !21676, !noalias !21677, !noundef !4
  store i8 %i.ba, ptr %i.a, align 1, !noalias !21678
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @590, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #17, !noalias !21676
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_16local_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21676, !noalias !21677, !nonnull !4, !noundef !4
  store ptr %i.bc, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_16local_threadsafe7ServiceShuyuE3newCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 1024, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i8 2, ptr %i.be, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_16local_threadsafe7ServiceShuyuE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(240) %i.t) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21679)
  call void @llvm.experimental.noalias.scope.decl(metadata !21680)
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !21680, !noalias !21681, !noundef !4
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service16local_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_16local_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21682
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !alias.scope !21680, !noalias !21681, !noundef !4
  store i8 %i.bi, ptr %i.b, align 1, !noalias !21682
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @587, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #17, !noalias !21683
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service16local_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_16local_threadsafe7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !alias.scope !21683, !noalias !21684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.v, i64 noundef 1023) #15
  %i.bj = load ptr, ptr %i.s, align 8, !noundef !4
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !5

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service16local_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service16local_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bk = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.bk, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select62 = select i1 %i.bk, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select62, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink53 = select i1 %i.bm, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink52 = select i1 %i.bm, i64 4, i64 0
  store ptr %.sink53, ptr %i.q, align 8, !captures !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink52, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.bo, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #17
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service16local_threadsafe7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noundef nonnull align 8 %i.v, i64 noundef 1024) #15
  %i.bp = load ptr, ptr %i.o, align 8, !noundef !4
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select63 = select i1 %i.bq, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select64 = select i1 %i.bq, i64 9, i64 0
  store ptr %spec.select63, ptr %i.n, align 8, !captures !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select64, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink57 = select i1 %i.bs, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink56 = select i1 %i.bs, i64 4, i64 0
  store ptr %.sink57, ptr %i.m, align 8, !captures !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink56, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.bu, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.v, i64 noundef 1025) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = load ptr, ptr %i.i, align 8, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !range !16 ; 2 uses
  %storemerge = select i1 %i.bw, i8 %i.by, i8 -1
  store i8 %storemerge, ptr %i.j, align 1
  br i1 %i.bw, label %bb.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  %i.bz = icmp eq i8 %i.by, 2
  br i1 %i.bz, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, label %bb.l, !prof !18

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.j
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ca = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select65 = select i1 %i.ca, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select66 = select i1 %i.ca, i64 9, i64 0
  store ptr %spec.select65, ptr %i.g, align 8, !captures !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select66, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink61 = select i1 %i.cc, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink60 = select i1 %i.cc, i64 4, i64 0
  store ptr %.sink61, ptr %i.f, align 8, !captures !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink60, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ce, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.cf, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cg, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @490, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491) #17
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !21685)
  call void @llvm.experimental.noalias.scope.decl(metadata !21686)
  call void @llvm.experimental.noalias.scope.decl(metadata !21687)
  call void @llvm.experimental.noalias.scope.decl(metadata !21688)
  %i.ch = load ptr, ptr %i.v, align 8, !alias.scope !21689, !nonnull !4, !noundef !4
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !21689
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.m:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service16local_threadsafe7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !21690)
  call void @llvm.experimental.noalias.scope.decl(metadata !21691)
  call void @llvm.experimental.noalias.scope.decl(metadata !21692)
  call void @llvm.experimental.noalias.scope.decl(metadata !21693)
  %i.ck = load ptr, ptr %i.z, align 8, !alias.scope !21694, !nonnull !4, !noundef !4
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !21694
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !21695)
  call void @llvm.experimental.noalias.scope.decl(metadata !21696)
  call void @llvm.experimental.noalias.scope.decl(metadata !21697)
  call void @llvm.experimental.noalias.scope.decl(metadata !21698)
  %i.cn = load ptr, ptr %i.ac, align 8, !alias.scope !21699, !nonnull !4, !noundef !4
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !21699
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service16local_threadsafe7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service16local_threadsafe7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_16local_threadsafe7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response62send_increasing_requests_with_static_allocation_strategy_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [4528 x i8], align 8              ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [240 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [272 x i8], align 8               ; 4 uses
  %i.x = alloca [6272 x i8], align 8              ; 12 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [4688 x i8], align 8             ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ad) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.af, ptr noundef nonnull align 8 dereferenceable(4528) %i.d, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service3ipc7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aa) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21734)
  %i.ag = load i8, ptr %i.ab, align 8, !range !13, !alias.scope !21734, !noalias !21735, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21736
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !alias.scope !21734, !noalias !21735, !noundef !4
  store i8 %i.aj, ptr %i.c, align 1, !noalias !21736
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @586, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #17, !noalias !21734
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !21734, !noalias !21735, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.al, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i64 264, i1 false)
  store ptr %i.al, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1224
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.46.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ap) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 1216
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.x, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  store i32 2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 920
  store i32 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 6256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_responseINtB5_7BuilderShuyuNtNtB9_3ipc7ServiceE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(6272) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !21737)
  %i.ax = load i8, ptr %i.y, align 8, !range !13, !alias.scope !21737, !noalias !21738, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_3ipc7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21739
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !alias.scope !21737, !noalias !21738, !noundef !4
  store i8 %i.ba, ptr %i.a, align 1, !noalias !21739
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @590, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #17, !noalias !21737
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_3ipc7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21737, !noalias !21738, !nonnull !4, !noundef !4
  store ptr %i.bc, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_3ipc7ServiceShuyuE3newCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 1024, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i8 2, ptr %i.be, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_3ipc7ServiceShuyuE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(240) %i.t) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21740)
  call void @llvm.experimental.noalias.scope.decl(metadata !21741)
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !21741, !noalias !21742, !noundef !4
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service3ipc7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_3ipc7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21743
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !alias.scope !21741, !noalias !21742, !noundef !4
  store i8 %i.bi, ptr %i.b, align 1, !noalias !21743
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @587, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #17, !noalias !21744
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service3ipc7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_3ipc7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !alias.scope !21744, !noalias !21745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.v, i64 noundef 1023) #15
  %i.bj = load ptr, ptr %i.s, align 8, !noundef !4
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !5

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service3ipc7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service3ipc7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bk = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.bk, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select62 = select i1 %i.bk, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select62, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink53 = select i1 %i.bm, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink52 = select i1 %i.bm, i64 4, i64 0
  store ptr %.sink53, ptr %i.q, align 8, !captures !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink52, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.bo, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #17
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service3ipc7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noundef nonnull align 8 %i.v, i64 noundef 1024) #15
  %i.bp = load ptr, ptr %i.o, align 8, !noundef !4
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select63 = select i1 %i.bq, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select64 = select i1 %i.bq, i64 9, i64 0
  store ptr %spec.select63, ptr %i.n, align 8, !captures !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select64, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink57 = select i1 %i.bs, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink56 = select i1 %i.bs, i64 4, i64 0
  store ptr %.sink57, ptr %i.m, align 8, !captures !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink56, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.bu, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.v, i64 noundef 1025) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = load ptr, ptr %i.i, align 8, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !range !16 ; 2 uses
  %storemerge = select i1 %i.bw, i8 %i.by, i8 -1
  store i8 %storemerge, ptr %i.j, align 1
  br i1 %i.bw, label %bb.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  %i.bz = icmp eq i8 %i.by, 2
  br i1 %i.bz, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, label %bb.l, !prof !18

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.j
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ca = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select65 = select i1 %i.ca, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select66 = select i1 %i.ca, i64 9, i64 0
  store ptr %spec.select65, ptr %i.g, align 8, !captures !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select66, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink61 = select i1 %i.cc, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink60 = select i1 %i.cc, i64 4, i64 0
  store ptr %.sink61, ptr %i.f, align 8, !captures !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink60, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ce, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.cf, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cg, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @490, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491) #17
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !21746)
  call void @llvm.experimental.noalias.scope.decl(metadata !21747)
  call void @llvm.experimental.noalias.scope.decl(metadata !21748)
  call void @llvm.experimental.noalias.scope.decl(metadata !21749)
  %i.ch = load ptr, ptr %i.v, align 8, !alias.scope !21750, !nonnull !4, !noundef !4 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21750, !noundef !4
  %i.cj = add i64 %i.ci, -1                       ; 2 uses
  store i64 %i.cj, ptr %i.ch, align 8, !noalias !21750
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.m:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service3ipc7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !21751)
  call void @llvm.experimental.noalias.scope.decl(metadata !21752)
  call void @llvm.experimental.noalias.scope.decl(metadata !21753)
  call void @llvm.experimental.noalias.scope.decl(metadata !21754)
  %i.cl = load ptr, ptr %i.z, align 8, !alias.scope !21755, !nonnull !4, !noundef !4
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !21755
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsiSQMAyN9m0A_26iceoryx2_conformance_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !21756)
  call void @llvm.experimental.noalias.scope.decl(metadata !21757)
  call void @llvm.experimental.noalias.scope.decl(metadata !21758)
  call void @llvm.experimental.noalias.scope.decl(metadata !21759)
  %i.co = load ptr, ptr %i.ac, align 8, !alias.scope !21760, !nonnull !4, !noundef !4
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !21760
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsiSQMAyN9m0A_26iceoryx2_conformance_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_3ipc7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response62send_increasing_requests_with_static_allocation_strategy_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [4528 x i8], align 8              ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [240 x i8], align 16              ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [272 x i8], align 8               ; 4 uses
  %i.x = alloca [6272 x i8], align 8              ; 12 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %i.aa = alloca [4688 x i8], align 8             ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ad) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4680
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.af, ptr noundef nonnull align 8 dereferenceable(4528) %i.d, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service5local7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.aa) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21795)
  %i.ag = load i8, ptr %i.ab, align 8, !range !13, !alias.scope !21795, !noalias !21796, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21797
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !alias.scope !21795, !noalias !21796, !noundef !4
  store i8 %i.aj, ptr %i.c, align 1, !noalias !21797
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @586, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #17, !noalias !21795
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !21795, !noalias !21796, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.al, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i64 264, i1 false)
  store ptr %i.al, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1224
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.46.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ap) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 1216
  store ptr %i.al, ptr %i.aq, align 8
  store i64 0, ptr %i.x, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 2, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 328
  store i32 2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 624
  store i32 2, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 920
  store i32 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 6256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvMsc_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder16request_responseINtB5_7BuilderShuyuNtNtB9_5local7ServiceE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(6272) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !21798)
  %i.ax = load i8, ptr %i.y, align 8, !range !13, !alias.scope !21798, !noalias !21799, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_5local7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21800
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !range !15, !alias.scope !21798, !noalias !21799, !noundef !4
  store i8 %i.ba, ptr %i.a, align 1, !noalias !21800
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @590, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #17, !noalias !21798
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_5local7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21798, !noalias !21799, !nonnull !4, !noundef !4
  store ptr %i.bc, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_5local7ServiceShuyuE3newCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([240 x i8]) align 16 captures(none) dereferenceable(240) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i64 1024, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store i8 2, ptr %i.be, align 8
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_5local7ServiceShuyuE6createCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 16 captures(address) dereferenceable(240) %i.t) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21801)
  call void @llvm.experimental.noalias.scope.decl(metadata !21802)
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !21802, !noalias !21803, !noundef !4
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service5local7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_5local7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21804
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !16, !alias.scope !21802, !noalias !21803, !noundef !4
  store i8 %i.bi, ptr %i.b, align 1, !noalias !21804
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @587, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #17, !noalias !21805
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service5local7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBO_5local7ServiceShuyuENtNtNtBO_7builder16request_response26RequestResponseCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false), !alias.scope !21805, !noalias !21806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.v, i64 noundef 1023) #15
  %i.bj = load ptr, ptr %i.s, align 8, !noundef !4
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.g, label %bb.h, !prof !5

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service5local7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service5local7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bk = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select = select i1 %i.bk, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select62 = select i1 %i.bk, i64 9, i64 0
  store ptr %spec.select, ptr %i.r, align 8, !captures !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select62, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bm = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink53 = select i1 %i.bm, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink52 = select i1 %i.bm, i64 4, i64 0
  store ptr %.sink53, ptr %i.q, align 8, !captures !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink52, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.r, ptr %i.p, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.417.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.bo, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #17
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBO_7service5local7ServiceShuyuENtNtNtB1y_12port_factory6client17ClientCreateErrorE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noundef nonnull align 8 %i.v, i64 noundef 1024) #15
  %i.bp = load ptr, ptr %i.o, align 8, !noundef !4
  %.not46 = icmp eq ptr %i.bp, null
  br i1 %.not46, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select63 = select i1 %i.bq, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select64 = select i1 %i.bq, i64 9, i64 0
  store ptr %spec.select63, ptr %i.n, align 8, !captures !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %spec.select64, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bs = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink57 = select i1 %i.bs, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink56 = select i1 %i.bs, i64 4, i64 0
  store ptr %.sink57, ptr %i.m, align 8, !captures !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sink56, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.bu, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @486, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @488) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMsd_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceShuyuE10loan_sliceCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.v, i64 noundef 1025) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bv = load ptr, ptr %i.i, align 8, !noundef !4
  %i.bw = icmp eq ptr %i.bv, null                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !range !16 ; 2 uses
  %storemerge = select i1 %i.bw, i8 %i.by, i8 -1
  store i8 %storemerge, ptr %i.j, align 1
  br i1 %i.bw, label %bb.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  %i.bz = icmp eq i8 %i.by, 2
  br i1 %i.bz, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, label %bb.l, !prof !18

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.j
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @489, ptr %i.h, align 8, !captures !11
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ca = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select65 = select i1 %i.ca, ptr @15, ptr inttoptr (i64 1 to ptr)
  %spec.select66 = select i1 %i.ca, i64 9, i64 0
  store ptr %spec.select65, ptr %i.g, align 8, !captures !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %spec.select66, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink61 = select i1 %i.cc, ptr @16, ptr inttoptr (i64 1 to ptr)
  %.sink60 = select i1 %i.cc, i64 4, i64 0
  store ptr %.sink61, ptr %i.f, align 8, !captures !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink60, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.ce, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.cf, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtB8_6option6OptionNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorENtB6_5Debug3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.f, ptr %i.cg, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @490, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @491) #17
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtBG_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !21807)
  call void @llvm.experimental.noalias.scope.decl(metadata !21808)
  call void @llvm.experimental.noalias.scope.decl(metadata !21809)
  call void @llvm.experimental.noalias.scope.decl(metadata !21810)
  %i.ch = load ptr, ptr %i.v, align 8, !alias.scope !21811, !nonnull !4, !noundef !4 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !21811, !noundef !4
  %i.cj = add i64 %i.ci, -1                       ; 2 uses
  store i64 %i.cj, ptr %i.ch, align 8, !noalias !21811
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.m:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsg6ZEkMtNi4J_8iceoryx211request_mut10RequestMutNtNtNtB12_7service5local7ServiceShuyuENtNtB12_4port9LoanErrorEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit50, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !21812)
  call void @llvm.experimental.noalias.scope.decl(metadata !21813)
  call void @llvm.experimental.noalias.scope.decl(metadata !21814)
  call void @llvm.experimental.noalias.scope.decl(metadata !21815)
  %i.cl = load ptr, ptr %i.z, align 8, !alias.scope !21816, !nonnull !4, !noundef !4
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !21816
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_5local7ServiceNtBJ_10NoResourceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !21817)
  call void @llvm.experimental.noalias.scope.decl(metadata !21818)
  call void @llvm.experimental.noalias.scope.decl(metadata !21819)
  call void @llvm.experimental.noalias.scope.decl(metadata !21820)
  %i.co = load ptr, ptr %i.ac, align 8, !alias.scope !21821, !nonnull !4, !noundef !4
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !21821
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.o, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

bb.o:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service5local7ServiceEE9drop_slowCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #16
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service5local7ServiceEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_response11PortFactoryNtNtBI_5local7ServiceShuyuEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCsiSQMAyN9m0A_26iceoryx2_conformance_tests24service_request_response24service_request_response63send_increasing_responses_with_static_allocation_strategy_failsNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [2 x i8], align 2                 ; 3 uses
  %i.f = alloca [2 x i8], align 1                 ; 4 uses
  %i.g = alloca [4528 x i8], align 8              ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 9 uses
  %i.x = alloca [128 x i8], align 16              ; 9 uses
  %.sroa.0 = alloca [96 x i8], align 16           ; 4 uses
  %i.y = alloca [112 x i8], align 16              ; 10 uses
  %i.z = alloca [72 x i8], align 8                ; 6 uses
  %i.aa = alloca [72 x i8], align 8               ; 5 uses
  %i.ab = alloca [240 x i8], align 16             ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [240 x i8], align 16             ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [272 x i8], align 8              ; 4 uses
  %i.ai = alloca [6272 x i8], align 8             ; 12 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 7 uses
  %i.al = alloca [4688 x i8], align 8             ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [264 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing21generate_service_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.ao) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtCsg6ZEkMtNi4J_8iceoryx27testing24generate_isolated_config(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(none) dereferenceable(4528) %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 0, ptr %i.al, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4680
  store i8 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4528) %i.aq, ptr noundef nonnull align 8 dereferenceable(4528) %i.g, i64 4528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RINvMsr_NtCsg6ZEkMtNi4J_8iceoryx24nodeNtB6_11NodeBuilder6createNtNtNtB8_7service14ipc_threadsafe7ServiceECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(4688) %i.al) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !21930)
  %i.ar = load i8, ptr %i.am, align 8, !range !13, !alias.scope !21930, !noalias !21931, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.b, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21932
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.au = load i8, ptr %i.at, align 1, !range !7, !alias.scope !21930, !noalias !21931, !noundef !4
  store i8 %i.au, ptr %i.d, align 1, !noalias !21932
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @586, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @492) #17, !noalias !21930
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !21930, !noalias !21931, !nonnull !4, !noundef !4 ; 5 uses
  store ptr %i.aw, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBM_7service14ipc_threadsafe7ServiceENtBK_19NodeCreationFailureE6unwrapCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.az, ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i64 264, i1 false)
  store ptr %i.aw, ptr %i.ah, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1224
  call void @_RINvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB3_12StaticConfig20new_request_responseNtNtNtCs7gufeB8TUC6_12iceoryx2_cal4hash4sha14Sha1ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull sret([5032 x i8]) align 8 captures(none) dereferenceable(5032) %.sroa.46.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ba) #15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 1216
  store ptr %i.aw, ptr %i.bb, align 8
  store i64 0, ptr %i.ai, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 328
  store i32 2, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 624
  store i32 2, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 920
  store i32 2, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 6256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bh, i8 0, i64 10, i1 false)
end_hunk_0
