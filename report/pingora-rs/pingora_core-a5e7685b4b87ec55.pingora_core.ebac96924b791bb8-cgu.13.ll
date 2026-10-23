Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.13?download=true
inline.NumInlined: 1062
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB3a_NtNtB7_6client4PeerEB1K_:bb.a

bb.ag:                                            ; preds = %bb.e, %bb.af, %bb.al, %bb.ae
  ret void

bb.ah:                                            ; preds = %bb.c
  %i.cj = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ck = icmp ult i64 %i.cj, 2
  br i1 %i.ck, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cl, label %bb.aj [
    i8 0, label %bb.al
    i8 1, label %bb.ak
    i8 2, label %bb.ak
  ], !prof !20

bb.aj:                                            ; preds = %bb.ai
  %i.cm = tail call noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE) #31 ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ai, %bb.aj
  %.sroa.026.0 = phi i8 [ %i.cm, %bb.aj ], [ %i.cl, %bb.ai ], [ %i.cl, %bb.ai ]
  %i.co = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.cp = tail call noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.co, i8 noundef %.sroa.026.0)
  br i1 %i.cp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.am, %bb.ak
  store i8 1, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.431.0..sroa_idx, align 1
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.532.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.am:                                            ; preds = %bb.ak
  %i.cq = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @8, ptr %i.e, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 137 to ptr), ptr %i.cs, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @4, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cr, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB3_8Settings9poll_sendINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtB5_7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEB35_NtNtB7_6client4PeerEB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 4 dereferenceable(128) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(936) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [296 x i8], align 8               ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [296 x i8], align 8               ; 12 uses
  %i.r = alloca [60 x i8], align 4                ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !range !18, !noundef !15 ; 3 uses
  %.not = icmp eq i32 %i.t, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.v = load i8, ptr %i.u, align 4, !alias.scope !147, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %i.t, ptr %i.r, align 4
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ab = load <4 x i32>, ptr %i.w, align 4, !alias.scope !147 ; 3 uses
  store <4 x i32> %i.ab, ptr %.sroa.5121.0..sroa_idx, align 4
  %.sroa.9125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ac = load <4 x i32>, ptr %i.x, align 4, !alias.scope !147 ; 3 uses
  store <4 x i32> %i.ac, ptr %.sroa.9125.0..sroa_idx, align 4
  %.sroa.13129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.ad = load <4 x i32>, ptr %i.y, align 4, !alias.scope !147
  %i.ae = load i32, ptr %i.y, align 4, !alias.scope !147
  store <4 x i32> %i.ad, ptr %.sroa.13129.0..sroa_idx, align 4
  %.sroa.17133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  store i32 %i.aa, ptr %.sroa.17133.0..sroa_idx, align 4
  %.sroa.18134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i8 %i.v, ptr %.sroa.18134.0..sroa_idx, align 4
  %i.af = tail call { i64, ptr } @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_readyB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.as
  store i32 2, ptr %i.s, align 4
  %i.aj = load i32, ptr %1, align 4, !range !18, !noundef !15
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.at, label %bb.au

bb.d:                                             ; preds = %bb.b
  store i8 -2, ptr %0, align 8
  br label %bb.bh

bb.e:                                             ; preds = %bb.b
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.ah)
  br label %bb.bh

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.al, align 4, !alias.scope !149
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %.sroa.571.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 0, ptr %.sroa.672.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 0, ptr %.sroa.773.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 0, ptr %.sroa.874.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 0, ptr %.sroa.975.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  store i32 0, ptr %.sroa.1076.0..sroa_idx, align 4, !alias.scope !149
  %.sroa.1177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store i8 1, ptr %.sroa.1177.0..sroa_idx, align 4, !alias.scope !149
  store i8 4, ptr %i.q, align 8, !alias.scope !150
  %i.am = call noundef i8 @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE6bufferB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.q) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i8 %i.am, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !151
  store i8 %i.am, ptr %i.f, align 1, !noalias !151
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 22, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #32
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.g
  %i.an = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit
  %i.ap = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ap, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !20

bb.j:                                             ; preds = %bb.i
  %i.aq = call noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE) #31 ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.013.0 = phi i8 [ %i.aq, %bb.j ], [ %i.ap, %bb.i ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15
  %i.at = call noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, i8 noundef %.sroa.013.0)
  br i1 %i.at, label %bb.am, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit, %bb.am, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !range !24, !alias.scope !152, !noundef !15
  store i8 1, ptr %i.au, align 4, !alias.scope !152
  %5 = icmp eq i8 %i.av, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %4, align 8, !nonnull !15, !noundef !15
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val64 = load ptr, ptr %i.aw, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !153
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.ax), !noalias !153
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ay = load i64, ptr %i.e, align 8, !range !14, !alias.scope !154, !noalias !153, !noundef !15
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i, !prof !13

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !154, !noalias !153, !nonnull !15, !align !21, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !range !24, !alias.scope !154, !noalias !153, !noundef !15
  store ptr %i.bb, ptr %i.b, align 8, !noalias !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.bd, ptr %i.be, align 8, !noalias !155
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #28
          to label %bb.o unwind label %bb.n, !noalias !156

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %common.resume.i unwind label %bb.p, !noalias !156

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !156
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !154, !noalias !153, !nonnull !15, !align !21, !noundef !15 ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !24, !alias.scope !154, !noalias !153, !noundef !15 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !153
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val64) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val64, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB15_5frame5FrameEE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bn)
          to label %bb.r unwind label %bb.q, !noalias !153

.body.i:                                          ; preds = %bb.ab, %bb.t, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.cn, %bb.ab ], [ %i.bo, %bb.q ], [ %i.bw, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEECskeugdADtBsi_12pingora_core(ptr nonnull %i.bi, i8 %i.bk) #29
          to label %common.resume.i unwind label %bb.al, !noalias !157

bb.q:                                             ; preds = %bb.ag, %bb.ae, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.bp = load i64, ptr %i.d, align 8, !range !14, !alias.scope !158, !noalias !153, !noundef !15
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.s, label %bb.w, !prof !13

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !159
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !158, !noalias !153, !nonnull !15, !align !21, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bu = load i8, ptr %i.bt, align 8, !range !24, !alias.scope !158, !noalias !153, !noundef !15
  store ptr %i.bs, ptr %i.c, align 8, !noalias !159
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.bu, ptr %i.bv, align 8, !noalias !159
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #28
          to label %bb.u unwind label %bb.t, !noalias !160

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1X_5frame5FrameEEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #29
          to label %.body.i unwind label %bb.v, !noalias !160

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !160
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !158, !noalias !153, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !range !24, !alias.scope !158, !noalias !153, !noundef !15 ; 2 uses
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !153
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = bitcast <4 x i32> %i.ab to <128 x i1>
  %i.cf = extractelement <128 x i1> %i.ce, i64 96
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ch = extractelement <4 x i32> %i.ac, i64 0
  %i.ci = zext i32 %i.ch to i64
  store i64 %i.ci, ptr %i.cg, align 8, !noalias !153
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  br i1 %5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y, %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 288
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 464
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  invoke void @_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4sendNtB3_4Send21apply_remote_settingsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.ck, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cl)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 -1, ptr %i.cm, align 8, !noalias !153
  br label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core(ptr nonnull %i.bz, i8 %i.cb) #29
          to label %.body.i unwind label %bb.al, !noalias !157

bb.ac:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  br i1 %i.cc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !153
  %i.cq = and i64 %i.cp, 9223372036854775807
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ae, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.cs = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc.i unwind label %bb.q, !noalias !157

.noexc.i:                                         ; preds = %bb.ae
  br i1 %i.cs, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.co monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.af, %.noexc.i, %bb.ad, %bb.ac
  %i.ct = atomicrmw xchg ptr %i.bz, i32 0 release, align 4, !noalias !157
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core.exit.i, !prof !13

bb.ag:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.q, !noalias !157

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.ag, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core.exit.i
  %i.cw = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !153
  %i.cx = and i64 %i.cw, 9223372036854775807
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.ai, !prof !19

bb.ai:                                            ; preds = %bb.ah
  %i.cz = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !157
  br i1 %i.cz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store atomic i8 1, ptr %i.cv monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1E_5frame5FrameEEECskeugdADtBsi_12pingora_core.exit.i
  %i.da = atomicrmw xchg ptr %i.bi, i32 0 release, align 4, !noalias !157
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.ak, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE21apply_remote_settingsCskeugdADtBsi_12pingora_core.exit, !prof !13

bb.ak:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bi), !noalias !157
  br label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE21apply_remote_settingsCskeugdADtBsi_12pingora_core.exit

bb.al:                                            ; preds = %bb.ab, %.body.i
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !157
  unreachable

_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE21apply_remote_settingsCskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, %bb.ak
  %i.dd = load i8, ptr %i.m, align 8, !range !25, !noundef !15
  %.not62 = icmp eq i8 %i.dd, -1
  br i1 %.not62, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.de = load ptr, ptr @_RNvNvMNtNtCskxN0Kp1MEon_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @12, ptr %i.n, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.dg, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @4, ptr %i.dh, align 8
  store i64 1, ptr %i.p, align 8
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 1, ptr %.sroa.015.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.df, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.l

bb.an:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE21apply_remote_settingsCskeugdADtBsi_12pingora_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bh

bb.ao:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE21apply_remote_settingsCskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.di = trunc nuw i32 %i.t to i1
  br i1 %i.di, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dj = extractelement <4 x i32> %i.ab, i64 0
  %i.dk = zext i32 %i.dj to i64
  call void @_RNvMs_NtCskxN0Kp1MEon_2h25codecINtB4_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE26set_send_header_table_sizeB1j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, i64 noundef %i.dk)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dl = bitcast <4 x i32> %i.ac to <128 x i1>
  %i.dm = extractelement <128 x i1> %i.dl, i64 96
  br i1 %i.dm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dn = zext i32 %i.ae to i64
  call void @_RNvMs_NtCskxN0Kp1MEon_2h25codecINtB4_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB6_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE23set_max_send_frame_sizeB1j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, i64 noundef %i.dn)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

bb.at:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  store ptr %i.do, ptr %i.l, align 8
  %i.dp = call { i64, ptr } @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_readyB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = extractvalue { i64, ptr } %i.dp, 1      ; 2 uses
  %i.ds = trunc nuw i64 %i.dq to i1
  br i1 %i.ds, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.c, %bb.bd
  store i8 -1, ptr %0, align 8
  br label %bb.bg

bb.av:                                            ; preds = %bb.at
  store i8 -2, ptr %0, align 8
  br label %bb.bf

bb.aw:                                            ; preds = %bb.at
  %.not63 = icmp eq ptr %i.dr, null
  br i1 %.not63, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvXs2_NtNtCskxN0Kp1MEon_2h25proto5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %i.dr)
  br label %bb.bf

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.du = load i8, ptr %i.dt, align 4, !alias.scope !161, !noundef !15
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.dz = load <4 x i32>, ptr %i.do, align 4, !alias.scope !161
  store <4 x i32> %i.dz, ptr %i.dy, align 4, !alias.scope !163
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ea = load <4 x i32>, ptr %i.dv, align 4, !alias.scope !161
  store <4 x i32> %i.ea, ptr %.sroa.782.0..sroa_idx, align 4, !alias.scope !163
  %.sroa.1186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.eb = load <4 x i32>, ptr %i.dw, align 4, !alias.scope !161
  store <4 x i32> %i.eb, ptr %.sroa.1186.0..sroa_idx, align 4, !alias.scope !163
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.ec = load <2 x i32>, ptr %i.dx, align 4, !alias.scope !161
  store <2 x i32> %i.ec, ptr %.sroa.15.0..sroa_idx, align 4, !alias.scope !163
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store i8 %i.du, ptr %.sroa.17.0..sroa_idx, align 4, !alias.scope !163
  store i8 4, ptr %i.k, align 8, !alias.scope !164
  %i.ed = call noundef i8 @_RNvMs0_NtCskxN0Kp1MEon_2h25codecINtB5_5CodecINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EINtNtNtNtB7_5proto7streams10prioritize11PrioritizedNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE6bufferB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(936) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.k) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not.i69 = icmp eq i8 %i.ed, -1
  br i1 %.not.i69, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCskxN0Kp1MEon_2h25codec5error9UserErrorE6expectCskeugdADtBsi_12pingora_core.exit70, label %bb.az, !prof !19

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  store i8 %i.ed, ptr %i.a, align 1, !noalias !165
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #32
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB4_10DynStreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE12recv_headersCskeugdADtBsi_12pingora_core:bb.a
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.aj unwind label %.thread174.i, !noalias !1663 ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !range !27, !noalias !1663, !noundef !15 ; 2 uses
  %i.dp = icmp samesign ult i32 %i.do, 4
  br i1 %i.dp, label %bb.ak, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread179.i

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.do, label %default.unreachable [
    i32 1, label %bb.al
    i32 2, label %bb.al
    i32 3, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread.i
    i32 0, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread179.i
  ]

default.unreachable:                              ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.dq = load i8, ptr %.sroa.01.0.i.i, align 8, !range !31, !noalias !1663, !noundef !15
  %i.dr = icmp eq i8 %i.dq, 2
  br i1 %i.dr, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread.i, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.i

_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.i: ; preds = %bb.al
  %.sroa.04.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 73
  %.sroa.04.0.i.i = load i8, ptr %.sroa.04.0.in.i.i, align 1, !range !31, !noalias !1663, !noundef !15
  %.not.i = icmp eq i8 %.sroa.04.0.i.i, 2
  br i1 %.not.i, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread179.i, label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread.i

_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread179.i: ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.i, %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1662
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB15_5frame5FrameEE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.bn)
          to label %bb.am unwind label %.thread174.i, !noalias !1663

bb.am:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB2_5State14is_local_error.exit.thread179.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.ds = load i64, ptr %i.t, align 8, !range !14, !alias.scope !1666, !noalias !1662, !noundef !15
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.an, label %bb.ar, !prof !13

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1667
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1666, !noalias !1662, !nonnull !15, !align !21, !noundef !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !range !24, !alias.scope !1666, !noalias !1662, !noundef !15
  store ptr %i.dv, ptr %i.q, align 8, !noalias !1667
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 %i.dx, ptr %i.dy, align 8, !noalias !1667
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28
          to label %bb.ap unwind label %bb.ao, !noalias !1668

bb.ao:                                            ; preds = %bb.an
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtNtCskxN0Kp1MEon_2h25proto7streams6buffer6BufferNtNtB1X_5frame5FrameEEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #29
          to label %.thread170.i unwind label %bb.aq, !noalias !1668

bb.ap:                                            ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1668
  unreachable

bb.ar:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !1666, !noalias !1662, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ee = load i8, ptr %i.ed, align 8, !range !24, !alias.scope !1666, !noalias !1662, !noundef !15 ; 2 uses
  %i.ef = trunc nuw i8 %i.ee to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1662
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1662
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  store ptr %i.bp, ptr %i.eh, align 8, !noalias !1662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) %i.ar, i64 288, i1 false), !noalias !1669
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  store ptr %i.eg, ptr %i.ei, align 8, !noalias !1662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !1662
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.as unwind label %bb.bz, !noalias !1670

bb.as:                                            ; preds = %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 120
  %i.el = load i32, ptr %i.ek, align 8, !range !26, !noalias !1670, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.o, ptr noundef nonnull align 8 dereferenceable(304) %i.s, i64 304, i1 false), !noalias !1672
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1671
  %i.em = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1675
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.eo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers010___CALLSITE, i64 16) monotonic, align 8, !noalias !1675 ; 3 uses
  switch i8 %i.eo, label %bb.au [
    i8 0, label %bb.ay
    i8 1, label %bb.av
    i8 2, label %bb.av
  ], !prof !20

bb.au:                                            ; preds = %bb.at
  %i.ep = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers010___CALLSITE)
          to label %bb.aw unwind label %bb.bv, !noalias !1676 ; 2 uses

bb.av:                                            ; preds = %bb.at, %bb.aw, %bb.at
  %.sroa.06.0.i.i.i = phi i8 [ %i.ep, %bb.aw ], [ %i.eo, %bb.at ], [ %i.eo, %bb.at ]
  %i.eq = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers010___CALLSITE, align 8, !noalias !1675, !nonnull !15, !align !21, !noundef !15
  %i.er = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eq, i8 noundef %.sroa.06.0.i.i.i)
          to label %bb.ax unwind label %bb.bv, !noalias !1676

bb.aw:                                            ; preds = %bb.au
  %i.es = icmp eq i8 %i.ep, 0
  br i1 %i.es, label %bb.ay, label %bb.av

bb.ax:                                            ; preds = %bb.av
  br i1 %i.er, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE00CskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.ax, %bb.aw, %bb.at, %bb.as
  %i.et = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.bc unwind label %bb.bv, !noalias !1676 ; 2 uses

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1675
  %i.eu = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers010___CALLSITE, align 8, !noalias !1675, !nonnull !15, !align !21, !noundef !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1675
  %i.ew = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.ba unwind label %bb.bv, !noalias !1676

bb.ba:                                            ; preds = %bb.az
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.bb unwind label %bb.bv, !noalias !1676

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 300
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1675
  store ptr %i.ey, ptr %i.j, align 8, !noalias !1675
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCskxN0Kp1MEon_2h25frame9stream_idNtB5_8StreamIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !noalias !1675
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams5stateNtB5_5StateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !noalias !1675
  store ptr @95, ptr %i.k, align 8, !noalias !1675
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.fb, align 8, !noalias !1675
  store ptr %i.k, ptr %i.l, align 8, !noalias !1675
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @4, ptr %i.fc, align 8, !noalias !1675
  store i64 1, ptr %i.m, align 8, !noalias !1675
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.ev, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %i.fd = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers010___CALLSITE, align 8, !noalias !1677, !nonnull !15, !align !21, !noundef !15
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE00CskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.bv, !noalias !1676

_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE00CskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1675
  br label %bb.ay

bb.bc:                                            ; preds = %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ff = load i32, ptr %i.fe, align 8, !range !27, !noalias !1676, !noundef !15 ; 2 uses
  %i.fg = add nsw i32 %i.ff, -4
  %i.fh = icmp samesign ugt i32 %i.ff, 3
  %narrow.i.i.i.i = select i1 %i.fh, i32 %i.fg, i32 6
  switch i32 %narrow.i.i.i.i, label %.thread64.i.i.i [
    i32 0, label %.thread62.i.i.i
    i32 2, label %.thread62.i.i.i
    i32 3, label %bb.be
    i32 4, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink68.i.i.i = phi i64 [ 68, %bb.bd ], [ 69, %bb.bc ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sink68.i.i.i
  %.sroa.0.0.i.in.i.i.i = load i8, ptr %i.fi, align 1, !range !24, !noalias !1676, !noundef !15
  %.not.not.i.i.i = icmp eq i8 %.sroa.0.0.i.in.i.i.i, 0
  br i1 %.not.not.i.i.i, label %.thread62.i.i.i, label %.thread64.i.i.i

.thread62.i.i.i:                                  ; preds = %bb.be, %bb.bc, %bb.bc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 288 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.h, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 288, i1 false), !noalias !1678
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4recvNtB2_4Recv12recv_headers(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.fk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.bi)
          to label %.noexc133.i unwind label %bb.ca, !noalias !1663

.noexc133.i:                                      ; preds = %.thread62.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1675
  %i.fl = load i64, ptr %i.g, align 8, !range !1679, !noalias !1675, !noundef !15 ; 2 uses
  switch i64 %i.fl, label %.noexc6.i.i [
    i64 -3, label %bb.bs
    i64 -2, label %bb.bt
    i64 -1, label %.noexc9.i.i
  ]

.thread64.i.i.i:                                  ; preds = %bb.be, %bb.bc
  %i.fm = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %.val.i.i.i = load i8, ptr %i.fm, align 4, !alias.scope !1674, !noalias !1671, !noundef !15
  %i.fn = trunc i8 %.val.i.i.i to i1
  br i1 %i.fn, label %.noexc3.i.i, label %bb.bf

.noexc3.i.i:                                      ; preds = %.thread64.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %i.o, i64 288, i1 false), !noalias !1678
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4recvNtB2_4Recv13recv_trailers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.fp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc134.i unwind label %bb.ca, !noalias !1663

.noexc134.i:                                      ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1675
  br label %bb.br

bb.bf:                                            ; preds = %.thread64.i.i.i
  %i.fq = load atomic i64, ptr @_RNvNtCsh7gMfcBfOe7_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1675
  %i.fr = icmp ult i64 %i.fq, 2
  br i1 %i.fr, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.fs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !1675 ; 3 uses
  switch i8 %i.fs, label %bb.bh [
    i8 0, label %bb.bl
    i8 1, label %bb.bi
    i8 2, label %bb.bi
  ], !prof !20

bb.bh:                                            ; preds = %bb.bg
  %i.ft = invoke noundef i8 @_RNvMNtCsh7gMfcBfOe7_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers0s_10___CALLSITE)
          to label %bb.bj unwind label %bb.bv, !noalias !1676 ; 2 uses

bb.bi:                                            ; preds = %bb.bg, %bb.bj, %bb.bg
  %.sroa.018.0.i.i.i = phi i8 [ %i.ft, %bb.bj ], [ %i.fs, %bb.bg ], [ %i.fs, %bb.bg ]
  %i.fu = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers0s_10___CALLSITE, align 8, !noalias !1675, !nonnull !15, !align !21, !noundef !15
  %i.fv = invoke noundef zeroext i1 @_RNvNtCs6kPMvhw0TuU_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fu, i8 noundef %.sroa.018.0.i.i.i)
          to label %bb.bk unwind label %bb.bv, !noalias !1676

bb.bj:                                            ; preds = %bb.bh
  %i.fw = icmp eq i8 %i.ft, 0
  br i1 %i.fw, label %bb.bl, label %bb.bi

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.fv, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE0s_0CskeugdADtBsi_12pingora_core.exit.i.i.i, %bb.bk, %bb.bj, %bb.bg, %bb.bf
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.bo unwind label %bb.bv, !noalias !1676

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1675
  %i.fy = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers0s_10___CALLSITE, align 8, !noalias !1675, !nonnull !15, !align !21, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1675
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.bn unwind label %bb.bv, !noalias !1676

bb.bn:                                            ; preds = %bb.bm
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1675
  store ptr %i.gb, ptr %i.b, align 8, !noalias !1675
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCskxN0Kp1MEon_2h25frame9stream_idNtB5_8StreamIdNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !1675
  store ptr @96, ptr %i.c, align 8, !noalias !1675
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.gc, align 8, !noalias !1675
  store ptr %i.c, ptr %i.d, align 8, !noalias !1675
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @4, ptr %i.gd, align 8, !noalias !1675
  store i64 1, ptr %i.e, align 8, !noalias !1675
  %.sroa.020.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %.sroa.020.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %.sroa.020.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ga, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !1675
  %i.ge = load ptr, ptr @_RNvNCNvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB9_5Inner12recv_headers0s_10___CALLSITE, align 8, !noalias !1680, !nonnull !15, !align !21, !noundef !15
  invoke void @_RNvMNtCsh7gMfcBfOe7_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ge, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE0s_0CskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.bv, !noalias !1676

_RNCNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBa_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE0s_0CskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1675
  br label %bb.bl

bb.bo:                                            ; preds = %bb.bl
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 300
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !1676, !noundef !15
  store i8 0, ptr %i.p, align 8, !alias.scope !1673, !noalias !1671
  %.sroa.453.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 1, ptr %.sroa.453.0..sroa_idx.i.i.i, align 1, !alias.scope !1673, !noalias !1671
  %.sroa.555.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.gg, ptr %.sroa.555.0..sroa_idx.i.i.i, align 4, !alias.scope !1673, !noalias !1671
  %.sroa.656.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %.sroa.656.0..sroa_idx.i.i.i, align 8, !alias.scope !1673, !noalias !1671
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBK_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE0ECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %bb.bp, !noalias !1681

bb.bp:                                            ; preds = %bb.bo
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame7headers6PseudoECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(160) %i.gi) #29
          to label %.body141.i unwind label %bb.bq, !noalias !1681

bb.bq:                                            ; preds = %bb.bp
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !1681
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs0_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtBK_5Inner12recv_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesE0ECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskxN0Kp1MEon_2h25frame7headers6PseudoECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(160) %i.gk)
          to label %.noexc135.i unwind label %bb.ca, !noalias !1663

bb.br:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %.noexc134.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  invoke fastcc void @_RINvMsc_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB6_7Actions24reset_on_recv_stream_errNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef align 8 dereferenceable(336) %i.gm, ptr noalias nofree noundef align 8 dereferenceable(40) %i.go, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.bi, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.i)
          to label %.noexc135.i unwind label %bb.ca, !noalias !1663

bb.bs:                                            ; preds = %.noexc133.i
  store i8 -1, ptr %i.i, align 8, !noalias !1675
  br label %bb.br

bb.bt:                                            ; preds = %.noexc133.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gp, i64 40, i1 false), !noalias !1675
  br label %bb.br

.noexc6.i.i:                                      ; preds = %.noexc133.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1675
  store i64 %i.fl, ptr %i.f, align 8, !noalias !1675
  %.sroa.5.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5.0..sroa_idx.i.i.i, i64 280, i1 false), !noalias !1675
  %i.gq = load ptr, ptr %i.fj, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 160
  %i.gs = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 320
  %i.gv = invoke noundef i8 @_RINvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4sendNtB3_4Send12send_headersNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.gr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gt, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gu)
          to label %.noexc137.i unwind label %bb.ca, !noalias !1663 ; 0 uses

.noexc137.i:                                      ; preds = %.noexc6.i.i
  %i.gw = load ptr, ptr %i.fj, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 160
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 320
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4sendNtB2_4Send23schedule_implicit_reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.gx, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, i32 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gy)
          to label %.noexc138.i unwind label %bb.ca, !noalias !1663

.noexc138.i:                                      ; preds = %.noexc137.i
  %i.gz = load ptr, ptr %i.fj, align 8, !alias.scope !1674, !noalias !1671, !nonnull !15, !align !21, !noundef !15
  invoke void @_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams4recvNtB2_4Recv24enqueue_reset_expiration(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.gz, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %i.bi)
          to label %.noexc139.i unwind label %bb.ca, !noalias !1663

.noexc139.i:                                      ; preds = %.noexc138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1675
  br label %bb.bu

.noexc9.i.i:                                      ; preds = %.noexc133.i
  %i.ha = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc140.i unwind label %bb.ca, !noalias !1663

.noexc140.i:                                      ; preds = %.noexc9.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 300
  %i.hc = load i32, ptr %i.hb, align 4, !noalias !1682, !noundef !15
  %.sroa.4.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx49.i.i.i, align 1, !noalias !1675
  %.sroa.551.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.hc, ptr %.sroa.551.0..sroa_idx.i.i.i, align 4, !noalias !1675
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1675
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v26clientNtB4_12Http2Session20write_request_header:bb.a
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !2053, !noalias !2035, !noundef !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !2054, !nonnull !15, !noundef !15
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !2053, !noalias !2035, !noundef !15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !2053, !noalias !2035, !noundef !15
  invoke void %i.id(ptr noundef %i.ib, ptr noundef %i.if, i64 noundef %i.ih)
          to label %bb.cs unwind label %bb.ak, !noalias !2036, !inline_history !6

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2035
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.av)
          to label %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i unwind label %bb.ah

.body73.thread.i.i:                               ; preds = %bb.ar, %.body73.i.i
  %.pn6928.i.i = phi { ptr, i32 } [ %.pn69.i.i, %.body73.i.i ], [ %i.ei, %bb.ar ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  %i.ii = load ptr, ptr %i.aa, align 8, !alias.scope !2055, !noalias !2035, !noundef !15 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.body73.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !2060, !noalias !2035, !noundef !15
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !noalias !2061, !nonnull !15, !noundef !15
  %i.io = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !2060, !noalias !2035, !noundef !15
  %i.iq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !2060, !noalias !2035, !noundef !15
  invoke void %i.in(ptr noundef %i.il, ptr noundef %i.ip, i64 noundef %i.ir)
          to label %bb.cu unwind label %bb.cj, !noalias !2036, !inline_history !6

bb.cu:                                            ; preds = %bb.ct, %.body73.thread.i.i, %bb.ak
  %.pn71.ph.i.i = phi { ptr, i32 } [ %i.dw, %bb.ak ], [ %.pn6928.i.i, %bb.ct ], [ %.pn6928.i.i, %.body73.thread.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http7request5PartsECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.av)
          to label %.body69 unwind label %bb.cj, !noalias !2036

_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.cs, %bb.cp
  %.not6.i = icmp eq i8 %.sroa.0.0.i64, -2
  br i1 %.not6.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2062
  store i8 %.sroa.0.0.i64, ptr %i.ac, align 8, !noalias !2062
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 1, !noalias !2062
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18.i.sroa.0, i64 6, i1 false), !noalias !2062
  %.sroa.18.i.sroa.6.0..sroa.18.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.18.i.sroa.6.0, ptr %.sroa.18.i.sroa.6.0..sroa.18.0..sroa_idx.i.sroa_idx, align 8, !noalias !2062
  %.sroa.18.i.sroa.8.0..sroa.18.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 %.sroa.18.i.sroa.8.0, ptr %.sroa.18.i.sroa.8.0..sroa.18.0..sroa_idx.i.sroa_idx, align 8, !noalias !2062
  %.sroa.18.i.sroa.9.0..sroa.18.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.9.0..sroa.18.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.9, i64 7, i1 false), !noalias !2062
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %.sroa.20.0.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !2062
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i8 %.sroa.21.0.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !noalias !2062
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !2062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2062
  invoke void @_RNvXs1_NtCskxN0Kp1MEon_2h25errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_5codec5error9SendErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ac)
          to label %bb.dv unwind label %bb.ah

bb.cw:                                            ; preds = %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.thread.i
  %.sroa.18.i.sroa.6.1 = phi i64 [ %.sroa.18.i.sroa.6.0, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.18.i.sroa.6.6.copyload, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.thread.i ] ; 2 uses
  %.sroa.18.i.sroa.8.1 = phi i8 [ %.sroa.18.i.sroa.8.0, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i ], [ %.sroa.18.i.sroa.8.6.copyload, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.thread.i ]
  %.sroa.20.257.i = phi ptr [ %.sroa.20.0.i, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i ], [ %.val7.i, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.thread.i ]
  %.sroa.21.256.i = phi i8 [ %.sroa.21.0.i, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.i ], [ %i.hn, %_RNvMNtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsINtB2_7StreamsNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtB8_6client4PeerE12send_requestCskeugdADtBsi_12pingora_core.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.9, i64 7, i1 false), !noalias !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2063
  store i64 %.sroa.18.i.sroa.6.1, ptr %i.j, align 8, !noalias !2062
  %.sroa.5.sroa.0.i.sroa.7.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i8 %.sroa.18.i.sroa.8.1, ptr %.sroa.5.sroa.0.i.sroa.7.7..sroa_idx, align 8, !noalias !2062
  %.sroa.5.sroa.0.i.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 9 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8.7..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8, i64 7, i1 false), !noalias !2062
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %.sroa.20.257.i, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !2065
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2067
  %i.is = inttoptr i64 %.sroa.18.i.sroa.6.1 to ptr
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.it)
          to label %.noexc.i9.i unwind label %bb.di, !noalias !2068

.noexc.i9.i:                                      ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  %i.iu = load i64, ptr %i.f, align 8, !range !14, !alias.scope !2069, !noalias !2067, !noundef !15
  %i.iv = trunc nuw i64 %i.iu to i1
  br i1 %i.iv, label %bb.cx, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i.i.i, !prof !13

bb.cx:                                            ; preds = %.noexc.i9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2070
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !2069, !noalias !2067, !nonnull !15, !align !21, !noundef !15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.iz = load i8, ptr %i.iy, align 8, !range !24, !alias.scope !2069, !noalias !2067, !noundef !15
  store ptr %i.ix, ptr %i.d, align 8, !noalias !2070
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.iz, ptr %i.ja, align 8, !noalias !2070
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #28
          to label %bb.cz unwind label %bb.cy, !noalias !2071

bb.cy:                                            ; preds = %bb.cx
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %.body.i8.i unwind label %bb.da, !noalias !2071

bb.cz:                                            ; preds = %bb.cx
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !2071
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %.noexc.i9.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !2069, !noalias !2067, !nonnull !15, !align !21, !noundef !15 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jg = load i8, ptr %i.jf, align 8, !range !24, !alias.scope !2069, !noalias !2067, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2067
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 464
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jj = load <2 x i32>, ptr %.sroa.5.sroa.0.i.sroa.7.7..sroa_idx, align 8, !alias.scope !2066, !noalias !2063
  store <2 x i32> %i.jj, ptr %i.ji, align 8, !noalias !2067
  store ptr %i.jh, ptr %i.e, align 8, !noalias !2067
  %i.jk = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCskxN0Kp1MEon_2h25proto7streams5storeNtB5_3PtrNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.dc unwind label %bb.db, !noalias !2072

bb.db:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEECskeugdADtBsi_12pingora_core(ptr nonnull %i.je, i8 %i.jg) #29
          to label %.body.i8.i unwind label %bb.dh, !noalias !2072

bb.dc:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCskeugdADtBsi_12pingora_core.exit.i.i.i
  %i.jm = trunc nuw i8 %i.jg to i1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 316
  %i.jo = load i8, ptr %i.jn, align 4, !range !24, !noalias !2072, !noundef !15
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  br i1 %i.jm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2067
  %i.jr = and i64 %i.jq, 9223372036854775807
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.de, !prof !19

bb.de:                                            ; preds = %bb.dd
  %i.jt = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc4.i.i unwind label %bb.di, !noalias !2068

.noexc4.i.i:                                      ; preds = %bb.de
  br i1 %i.jt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %.noexc4.i.i
  store atomic i8 1, ptr %i.jp monotonic, align 4, !noalias !2072
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.df, %.noexc4.i.i, %bb.dd, %bb.dc
  %i.ju = atomicrmw xchg ptr %i.je, i32 0 release, align 4, !noalias !2072
  %i.jv = icmp eq i32 %i.ju, 2
  br i1 %i.jv, label %bb.dg, label %bb.dj, !prof !13

bb.dg:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.je)
          to label %bb.dj unwind label %bb.di, !noalias !2068

bb.dh:                                            ; preds = %bb.db
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !2072
  unreachable

.body.i8.i:                                       ; preds = %.body7.i.i, %bb.di, %bb.db, %bb.cy
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.jx, %bb.di ], [ %i.jb, %bb.cy ], [ %i.jl, %bb.db ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams9StreamRefNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #29
          to label %.body69 unwind label %bb.du, !noalias !2073

bb.di:                                            ; preds = %bb.dl, %bb.dk, %bb.dg, %bb.de, %bb.cw
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i8.i

bb.dj:                                            ; preds = %bb.dg, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %3 = trunc nuw i8 %i.jo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2067
  %.not1.i.i = icmp ne i8 %.sroa.21.256.i, 0
  %brmerge.not.i.i = and i1 %.not1.i.i, %3
  br i1 %brmerge.not.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefEECskeugdADtBsi_12pingora_core.exit.i.i, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2063
  invoke void @_RNvXs9_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.dw unwind label %bb.di, !noalias !2073

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2063
  invoke void @_RNvXs9_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.dm unwind label %bb.di, !noalias !2068

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2063
  %i.jy = load ptr, ptr %i.ds, align 8, !alias.scope !2074, !noundef !15
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefEECskeugdADtBsi_12pingora_core.exit.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvXsa_NtNtNtCskxN0Kp1MEon_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ds)
          to label %bb.dq unwind label %bb.do, !noalias !2073

bb.do:                                            ; preds = %bb.dn
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.kb = load ptr, ptr %i.ds, align 8, !alias.scope !2077, !nonnull !15, !noundef !15
  %i.kc = atomicrmw add ptr %i.kb, i64 -1 release, align 8, !noalias !2078
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.dp, label %.body7.i.i

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ds) #31
          to label %.body7.i.i unwind label %bb.ds, !noalias !2073

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  %i.ke = load ptr, ptr %i.ds, align 8, !alias.scope !2081, !nonnull !15, !noundef !15
  %i.kf = atomicrmw add ptr %i.ke, i64 -1 release, align 8, !noalias !2082
  %i.kg = icmp eq i64 %i.kf, 1
  br i1 %i.kg, label %bb.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefEECskeugdADtBsi_12pingora_core.exit.i.i

bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams5InnerEE9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ds) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefEECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.dt, !noalias !2073

bb.ds:                                            ; preds = %bb.dp
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !2073
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i

.body7.i.i:                                       ; preds = %bb.dt, %bb.dp, %bb.do
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.ki, %bb.dt ], [ %i.ka, %bb.dp ], [ %i.ka, %bb.do ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !2083
  br label %.body.i8.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams15OpaqueStreamRefEECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.dr, %bb.dq, %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dk

bb.du:                                            ; preds = %.body.i8.i
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !2073
  unreachable

bb.dv:                                            ; preds = %bb.cv
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !2062
  %.sroa.5.sroa.0.i.sroa.4.0..sroa.5.0..sroa_idx.i66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.sroa.0.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.0.i.sroa.4.0..sroa.5.0..sroa_idx.i66.sroa_idx, align 8, !noalias !2062
  %.sroa.5.sroa.0.i.sroa.7.0..sroa.5.0..sroa_idx.i66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5.sroa.0.i.sroa.7.0.copyload = load i8, ptr %.sroa.5.sroa.0.i.sroa.7.0..sroa.5.0..sroa_idx.i66.sroa_idx, align 8, !noalias !2062
  %.sroa.5.sroa.0.i.sroa.8.0..sroa.5.0..sroa_idx.i66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8.0..sroa.5.0..sroa_idx.i66.sroa_idx, i64 7, i1 false), !noalias !2062
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.5.sroa.6.0.copyload.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !2062
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.5.sroa.7.0.copyload.i = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !2062
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 7, i1 false), !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8, i64 7, i1 false)
  %i.kk = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i16 15, ptr %i.as, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2085
  store i64 0, ptr %i.c, align 8, !noalias !2085
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @210, ptr %.sroa.4.0..sroa_idx.i72, align 8, !noalias !2085
  %.sroa.5.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 21, ptr %.sroa.5.0..sroa_idx.i73, align 8, !noalias !2085
  store ptr %i.kk, ptr %i.b, align 8, !noalias !2086
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2086
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %.sroa.5.sroa.0.i.sroa.7.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2086
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.5.sroa.6.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2086
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.5.sroa.7.0.copyload.i, ptr %.sroa.895.0..sroa_idx, align 8, !noalias !2086
  %i.kl = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCskxN0Kp1MEon_2h25error5ErrorE4fromCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc74 unwind label %bb.ah  ; 2 uses

.noexc74:                                         ; preds = %bb.dv
  %i.km = extractvalue { ptr, ptr } %i.kl, 0      ; 2 uses
  %i.kn = extractvalue { ptr, ptr } %i.kl, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2085
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.km) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  %i.ko = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.km, ptr nonnull %i.kn)
          to label %bb.ek unwind label %bb.ah     ; 5 uses

bb.dw:                                            ; preds = %bb.dk
  %.sroa.687.8.copyload88 = load ptr, ptr %i.g, align 8, !noalias !2084
  %.sroa.11.8..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.11.8.copyload90 = load i64, ptr %.sroa.11.8..sroa_idx89, align 8, !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2063
  %.sroa.539.i.sroa.3.7.copyload = load ptr, ptr %i.j, align 8, !noalias !2087
  %.sroa.539.i.sroa.5.7.copyload = load i8, ptr %.sroa.5.sroa.0.i.sroa.7.7..sroa_idx, align 8, !noalias !2087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.sroa.8.7..sroa_idx, i64 7, i1 false), !noalias !2084
  %.sroa.539.i.sroa.7.7.copyload = load i64, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !2087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  %.sroa.3.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx98, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  store ptr %.sroa.687.8.copyload88, ptr %i.au, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.11.8.copyload90, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %.sroa.539.i.sroa.3.7.copyload, ptr %i.at, align 8
  %.sroa.2.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %.sroa.539.i.sroa.5.7.copyload, ptr %.sroa.2.0..sroa_idx97, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.539.i.sroa.7.7.copyload, ptr %.sroa.499.0..sroa_idx, align 8
  %.val54 = load ptr, ptr %i.ax, align 8, !align !21, !noundef !15 ; 2 uses
  %i.kp = icmp eq ptr %.val54, null
  br i1 %i.kp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECskeugdADtBsi_12pingora_core.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEECskeugdADtBsi_12pingora_core(ptr %.val54)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.ei

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.dw, %bb.dx
  store ptr %1, ptr %i.ax, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !alias.scope !2088, !noundef !15
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECskeugdADtBsi_12pingora_core.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCskxN0Kp1MEon_2h25proto7streams7streams9StreamRefNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit unwind label %.thread145

.thread145:                                       ; preds = %bb.dy
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  br label %.thread140

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCskspKcFIsYcD_12pingora_http13RequestHeaderEEECskeugdADtBsi_12pingora_core.exit, %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.kw = load i8, ptr %i.kv, align 8, !range !31, !alias.scope !2089, !noundef !15
  %i.kx = icmp eq i8 %i.kw, 2
  br i1 %i.kx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskxN0Kp1MEon_2h26client14ResponseFutureEECskeugdADtBsi_12pingora_core.exit, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskxN0Kp1MEon_2h25share10SendStreamNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEECskeugdADtBsi_12pingora_core.exit
end_hunk_2
