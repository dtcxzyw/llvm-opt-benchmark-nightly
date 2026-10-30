Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.02?download=true
inline.NumInlined: 2055
inline.NumDeleted: 1019
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB4_5error8NetErrorEECs4w110Okq5IC_16ipfs_kad_example:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.v:                                             ; preds = %bb.b
  %i.bw = icmp ult i64 %i.x, 2
  br i1 %i.bw, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.bx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bx, label %bb.x [
    i8 0, label %bb.af
    i8 1, label %bb.y
    i8 2, label %bb.y
  ], !prof !27

bb.x:                                             ; preds = %bb.w
  %i.by = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE)
          to label %bb.z unwind label %bb.c       ; 2 uses

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.z
  %.sroa.06.0 = phi i8 [ %i.by, %bb.z ], [ %i.bx, %bb.w ], [ %i.bx, %bb.w ]
  %i.bz = load ptr, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14
  %i.ca = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bz, i8 noundef %.sroa.06.0)
          to label %bb.aa unwind label %bb.c

bb.z:                                             ; preds = %bb.x
  %i.cb = icmp eq i8 %i.by, 0
  br i1 %i.cb, label %bb.af, label %bb.y

bb.aa:                                            ; preds = %bb.y
  br i1 %i.ca, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cc = load ptr, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @114, ptr %i.p, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 85 to ptr), ptr %i.ce, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @113, ptr %i.cf, align 8
  store i64 1, ptr %i.r, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc55 unwind label %bb.c

.noexc55:                                         ; preds = %bb.ab
  %i.cg = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !392
  %.not.i54 = icmp eq i8 %i.cg, 0
  br i1 %.not.i54, label %bb.ac, label %_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEE0Cs4w110Okq5IC_16ipfs_kad_example.exit

bb.ac:                                            ; preds = %.noexc55
  %i.ch = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !392 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 6
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp samesign ugt i64 %i.ch, 3
  br i1 %i.cj, label %bb.ad, label %_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEE0Cs4w110Okq5IC_16ipfs_kad_example.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ck = load ptr, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !noalias !392, !nonnull !14, !align !16, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !392
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !14, !noundef !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8, !noalias !392
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cm, ptr %i.cp, align 8, !noalias !392
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.co, ptr %i.cq, align 8, !noalias !392
  %i.cr = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc56 unwind label %bb.c   ; 2 uses

.noexc56:                                         ; preds = %bb.ad
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cr, 1      ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !14, !nonnull !14
  %i.cw = invoke noundef zeroext i1 %i.cv(ptr noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #28
          to label %.noexc57 unwind label %bb.c, !inline_history !390

.noexc57:                                         ; preds = %.noexc56
  br i1 %i.cw, label %bb.ae, label %.noexc58

bb.ae:                                            ; preds = %.noexc57
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ck, ptr noundef nonnull %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %.noexc58 unwind label %bb.c

.noexc58:                                         ; preds = %bb.ae, %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !392
  br label %_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEE0Cs4w110Okq5IC_16ipfs_kad_example.exit

_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEE0Cs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %.noexc58, %bb.ac, %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split

bb.af:                                            ; preds = %bb.z, %bb.w, %bb.v, %bb.aa
  %i.cx = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not45 = icmp eq i8 %i.cx, 0
  br i1 %.not45, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.cy = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 6
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = icmp samesign ugt i64 %i.cy, 3
  br i1 %i.da, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !14, !noundef !14
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.df = load i64, ptr %i.de, align 8, !noundef !14
  store i64 4, ptr %i.o, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.df, ptr %i.dh, align 8
  %i.di = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.ai unwind label %bb.c      ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dj = extractvalue { ptr, ptr } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, ptr } %i.di, 1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !14, !nonnull !14
  %i.dn = invoke noundef zeroext i1 %i.dm(ptr noundef %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.aj unwind label %bb.c

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.do = load ptr, ptr @_RNvNvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !14, !align !16, !noundef !14
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @114, ptr %i.l, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 85 to ptr), ptr %i.dq, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @113, ptr %i.dr, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.dp, ptr %i.ds, align 8
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, ptr noundef nonnull %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.am unwind label %bb.c

bb.al:                                            ; preds = %bb.aj, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split: ; preds = %_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEE0Cs4w110Okq5IC_16ipfs_kad_example.exit, %bb.af, %bb.ag, %bb.al, %_RNCINvNtCs4LZN9PPmi2I_11hickory_net4xfer11ignore_senduINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtB6_5error8NetErrorEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit, %bb.n, %bb.o, %bb.t
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit.sink.split, %bb.a
  ret void

bb.an:                                            ; preds = %bb.c
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEEECs4w110Okq5IC_16ipfs_kad_example.exit62: ; preds = %bb.c
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6Recordj1_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(184) %i.b) #24
          to label %bb.d unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(184) %1)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs62FBUrD8956_10libp2p_tcp9TransportNtNtNtBE_8provider5tokio3TcpEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !414, !nonnull !14, !noundef !14
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !414
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECs4w110Okq5IC_16ipfs_kad_example.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEEE9drop_slowCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %.body unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  invoke void @_RNvXs8_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtNtB7_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB2a_8provider5tokio3TcpEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !417, !nonnull !14, !noundef !14
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !418
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEE9drop_slowCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %.body unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs62FBUrD8956_10libp2p_tcp9PortReuseECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !421, !nonnull !14, !noundef !14
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !422
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtBN_6stream11into_future12StreamFutureINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB33_8provider5tokio3TcpEEEE9drop_slowCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.i, %bb.e, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.p, %bb.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEEB4D_EEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #24
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.f, %bb.g
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2Y_2io5error5ErrorEEB4q_EENtNtNtB2Y_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEEB4D_EEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2F_2io5error5ErrorEEB47_EENtNtNtB2F_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtB4_6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB4_2io5error5ErrorEEB4D_EEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6stream10select_all9SelectAllINtCs62FBUrD8956_10libp2p_tcp12ListenStreamNtNtNtB1G_8provider5tokio3TcpEEECs4w110Okq5IC_16ipfs_kad_example.exit
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportEventINtNtNtCsl9hx9jpF0W9_12futures_util6future5ready5ReadyINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamNtNtNtB2F_2io5error5ErrorEEB47_EENtNtNtB2F_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void

bb.l:                                             ; preds = %.body, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour5EventEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !14
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 8)
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.i
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.ab
    i64 7, label %bb.ac
    i64 8, label %bb.ad
    i64 9, label %bb.ah
    i64 10, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorECs4w110Okq5IC_16ipfs_kad_example.exit
    i64 11, label %bb.ak
    i64 12, label %bb.al
    i64 13, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !550, !noundef !14
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !550, !nonnull !14, !align !16, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !550, !nonnull !14, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !550, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !550, !noundef !14
  tail call void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o), !noalias !550, !inline_history !3
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorECs4w110Okq5IC_16ipfs_kad_example.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour5EventECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(448) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6b9j1MKPRPC_12libp2p_swarm9DialErrorECs4w110Okq5IC_16ipfs_kad_example.exit

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !551, !noundef !14 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i.invoke

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !555, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !555, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !555, !noundef !14
  %i.ab = load i64, ptr %i.s, align 8, !alias.scope !555, !noundef !14
  invoke void %i.y(ptr noundef %i.w, ptr noundef %i.aa, i64 noundef %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i unwind label %bb.g, !noalias !551, !inline_history !4

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !559, !noundef !14
  %i.ag = load ptr, ptr %i.ad, align 8, !alias.scope !559, !nonnull !14, !align !16, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !559, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !559, !noundef !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !559, !noundef !14
  invoke void %i.ai(ptr noundef %i.af, ptr noundef %i.ak, i64 noundef %i.am)
          to label %.body unwind label %bb.h, !noalias !551, !inline_history !4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtNtB8_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example:bb.a
  %.sink.i.i = phi i16 [ 1, %bb.c ], [ 0, %bb.d ]
  store i16 %.sink.i.i, ptr %i.b, align 8, !noalias !3520
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.4.i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = load i16, ptr %i.t, align 8, !range !15, !alias.scope !3519, !noundef !14
  %i.v = trunc nuw i16 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3520
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.i unwind label %bb.h, !noalias !3521

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 42
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.i.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !3521
  %i.z = load i16, ptr %i.x, align 2, !alias.scope !3519, !noundef !14
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #24
          to label %common.resume.i unwind label %bb.j, !noalias !3521

bb.i:                                             ; preds = %bb.f
  %.sroa.5.sroa.4.6..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3520
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3521
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.aj, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.g
  %.sroa.5.sroa.0.0.i.i = phi i16 [ undef, %bb.i ], [ %i.z, %bb.g ]
  %.sroa.0.0.i.i = phi i16 [ 1, %bb.i ], [ 0, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i8 %i.k, ptr %i.ac, align 8, !alias.scope !3517, !noalias !3516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !3522
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i16 %.sroa.0.0.i.i, ptr %i.ad, align 8, !alias.scope !3517, !noalias !3516
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  store i16 %.sroa.5.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !3517, !noalias !3516
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(28) %.sroa.5.sroa.4.i.i, i64 28, i1 false), !noalias !3522
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3520
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.af = load <2 x i16>, ptr %i.ae, align 8, !alias.scope !3515
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 268
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3515, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3516
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(184) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ai)
          to label %_RNvXsd_NtNtCsbTgMbcnmcyu_13hickory_proto2rr6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.k, !noalias !3523

bb.k:                                             ; preds = %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #24
          to label %common.resume.i unwind label %bb.l, !noalias !3523

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !3523
  unreachable

_RNvXsd_NtNtCsbTgMbcnmcyu_13hickory_proto2rr6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.am = load i8, ptr %i.al, align 8, !range !13, !alias.scope !3515, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !3515
  %.sroa.0.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %i.c, i64 184, i1 false), !noalias !3515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.0, i64 264, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <2 x i16> %i.af, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.ah, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %i.am, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i16 2, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXsd_NtNtCsbTgMbcnmcyu_13hickory_proto2rr6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3528, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3528, !nonnull !14, !noundef !14
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !3528
  %i.f = load i8, ptr %i.a, align 1, !alias.scope !3529, !noundef !14
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEENtNtNtB8_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBM_4pool21EstablishedConnectionNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !noundef !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionNtNtCskC4O4hr3vz7_10libp2p_kad7handler9HandlerInEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !3532
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !3532
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !3532
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEj1_NtB4_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(280) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i.i: ; preds = %bb.d
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(184) %i.h) #24
          to label %.body.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(184) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %.lr.ph17
  %i.k = add i64 %.sroa.0.1.i.i16, 1              ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph17

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %bb.c ]
  %i.n = icmp eq i64 %i.f, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i16 = phi i64 [ %i.k, %bb.f ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(280) %i.o) #24
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.h:                                             ; preds = %.lr.ph17
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECs4w110Okq5IC_16ipfs_kad_example.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1z_12dns_exchange11DnsExchangeNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderEEEj0_NtB4_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i: ; preds = %bb.b
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs4LZN9PPmi2I_11hickory_net4xfer17OneshotDnsRequestEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i: ; preds = %.lr.ph5
  %i.h = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.b
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i._crit_edge, label %.lr.ph5

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.f, %i.b
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i
  %.sroa.0.1.i.i4 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs4LZN9PPmi2I_11hickory_net4xfer17OneshotDnsRequestEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit7.i.i, %bb.c
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %.lr.ph5
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example.exit.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i106 = alloca [28 x i8], align 4 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 20 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i97 = alloca [28 x i8], align 4 ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i1.i = alloca [28 x i8], align 4 ; 3 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i84 = alloca [28 x i8], align 2 ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i75 = alloca [28 x i8], align 4 ; 3 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i66 = alloca [28 x i8], align 4 ; 3 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i = alloca [28 x i8], align 4 ; 3 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i55 = alloca [28 x i8], align 4 ; 3 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i44 = alloca [28 x i8], align 4 ; 3 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.5.sroa.4.i = alloca [28 x i8], align 4   ; 3 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0148 = alloca [128 x i8], align 8        ; 6 uses
  %.sroa.022 = alloca [24 x i8], align 8          ; 4 uses
  %i.ad = alloca [112 x i8], align 8              ; 4 uses
  %.sroa.016 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.0136 = alloca [120 x i8], align 8        ; 5 uses
  %.sroa.036 = alloca [24 x i8], align 8          ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [112 x i8], align 8              ; 4 uses
  %.sroa.02 = alloca [24 x i8], align 8           ; 4 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.ai = load i16, ptr %1, align 8, !range !45, !noundef !14 ; 4 uses
  %i.aj = icmp ne i16 %i.ai, 19
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nsw i16 %i.ai, -2
  %i.al = icmp samesign ugt i16 %i.ai, 1
  %narrow = select i1 %i.al, i16 %i.ak, i16 17
  switch i16 %narrow, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.n
    i16 4, label %bb.q
    i16 5, label %bb.r
    i16 6, label %bb.aa
    i16 7, label %bb.af
    i16 8, label %bb.ai
    i16 9, label %bb.aj
    i16 10, label %bb.as
    i16 11, label %bb.bi
    i16 12, label %bb.bj
    i16 13, label %bb.bs
    i16 14, label %bb.bt
    i16 15, label %bb.bu
    i16 16, label %bb.cd
    i16 17, label %bb.ce
    i16 18, label %bb.cw
    i16 19, label %bb.df
    i16 20, label %bb.dg
    i16 21, label %bb.dh
    i16 22, label %bb.di
    i16 23, label %bb.ek
    i16 24, label %bb.el
    i16 25, label %bb.em
    i16 26, label %bb.en
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.copyload, ptr %i.an, align 2
  store i16 2, ptr %0, align 8
  br label %bb.eo

bb.d:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ap, ptr noundef nonnull align 2 dereferenceable(16) %i.ao, i64 16, i1 false)
  store i16 3, ptr %0, align 8
  br label %bb.eo

bb.e:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3582)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i8, ptr %i.ar, align 8, !range !13, !alias.scope !3582, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3583
  %i.at = load i16, ptr %i.aq, align 8, !range !15, !alias.scope !3582, !noundef !14
  %i.au = trunc nuw i16 %i.at to i1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av), !noalias !3584
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !3584
  %i.az = load i16, ptr %i.ax, align 2, !alias.scope !3582, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 %i.az, ptr %i.ba, align 2, !noalias !3583
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ 1, %bb.f ], [ 0, %bb.g ]
  store i16 %.sink.i, ptr %i.ab, align 8, !noalias !3583
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i16, ptr %i.bb, align 8, !range !15, !alias.scope !3582, !noundef !14
  %i.bd = trunc nuw i16 %i.bc to i1
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3583
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.l unwind label %bb.k, !noalias !3584

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.bh = load i16, ptr %i.bf, align 2, !alias.scope !3582, !noundef !14
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ab) #24
          to label %common.resume unwind label %bb.m, !noalias !3584

bb.l:                                             ; preds = %bb.i
  %.sroa.5.sroa.4.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3583
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
