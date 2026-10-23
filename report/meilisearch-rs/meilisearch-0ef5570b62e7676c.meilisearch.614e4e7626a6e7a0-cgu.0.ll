Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$13clone_factory17hb5cd990a2d550ccaE":bb.a
bb.o:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5849, !nonnull !45, !noundef !45 ; 2 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8, !noalias !5850
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5849, !nonnull !45, !noundef !45 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !5850
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.t, label %"_ZN64_$LT$meilisearch..ServicesData$u20$as$u20$core..clone..Clone$GT$5clone17h7e646d2571725c20E.exit.i.i"

bb.s:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

"_ZN64_$LT$meilisearch..ServicesData$u20$as$u20$core..clone..Clone$GT$5clone17h7e646d2571725c20E.exit.i.i": ; preds = %bb.r
  store ptr %i.v, ptr %i.u, align 8, !alias.scope !5851
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store ptr %i.z, ptr %i.aw, align 8, !alias.scope !5851
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  store ptr %i.ad, ptr %i.ax, align 8, !alias.scope !5851
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store ptr %i.ah, ptr %i.ay, align 8, !alias.scope !5851
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  store ptr %i.al, ptr %i.az, align 8, !alias.scope !5851
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store ptr %i.ap, ptr %i.ba, align 8, !alias.scope !5851
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  store ptr %i.at, ptr %i.bb, align 8, !alias.scope !5851
  invoke fastcc void @"_ZN63_$LT$meilisearch..option..Opt$u20$as$u20$core..clone..Clone$GT$5clone17ha84a9f7c67213240E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1208) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1208) %0)
          to label %bb.y unwind label %bb.u

bb.u:                                             ; preds = %"_ZN64_$LT$meilisearch..ServicesData$u20$as$u20$core..clone..Clone$GT$5clone17h7e646d2571725c20E.exit.i.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$meilisearch..ServicesData$GT$17h7402dfd859d4db6eE"(ptr noalias noundef align 8 dereferenceable(56) %i.u) #44
          to label %.body.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.body.i:                                          ; preds = %bb.z, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.bn, %bb.z ], [ %i.bc, %bb.u ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5852)
  %i.be = load ptr, ptr %i.o, align 8, !alias.scope !5853, !noundef !45 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %"_ZN4core3ptr275drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$dyn$u20$core..any..Any$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h5d96134469509e64E.exit.i", label %bb.w

bb.w:                                             ; preds = %.body.i
  %i.bg = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !5854
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.x, label %"_ZN4core3ptr275drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$dyn$u20$core..any..Any$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h5d96134469509e64E.exit.i"

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdf0bc4f28ecdfc2dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.o)
          to label %"_ZN4core3ptr275drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$dyn$u20$core..any..Any$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h5d96134469509e64E.exit.i" unwind label %bb.aa

bb.y:                                             ; preds = %"_ZN64_$LT$meilisearch..ServicesData$u20$as$u20$core..clone..Clone$GT$5clone17h7e646d2571725c20E.exit.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.bk = load i8, ptr %i.bi, align 8, !range !52, !alias.scope !5855, !noundef !45
  store i8 %i.bk, ptr %i.bj, align 8, !alias.scope !5856
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  invoke fastcc void @"_ZN80_$LT$rustls..server..server_conn..ServerConfig$u20$as$u20$core..clone..Clone$GT$5clone17h27ce2993b8a0bb3cE"(ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.bl)
          to label %_ZN4core5clone5Clone5clone17h09598ac5c10cbcc9E.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5ec669adf3211253E"(ptr noalias noundef nonnull align 8 dereferenceable(1208) %i.a) #44
          to label %.body.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr275drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$dyn$u20$core..any..Any$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h5d96134469509e64E.exit.i", %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5857)
  %.val.i1 = load i64, ptr %i.b, align 8, !alias.scope !5857
  %i.bp = icmp eq i64 %.val.i1, 0
  br i1 %i.bp, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %.body
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.bq, align 8, !alias.scope !5857, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i) #38, !noalias !5857
  br label %common.resume

_ZN4core5clone5Clone5clone17h09598ac5c10cbcc9E.exit: ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.bs = load i64, ptr %i.br, align 8, !noundef !45
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 1208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1208) %i.c, ptr noundef nonnull align 8 dereferenceable(1208) %i.a, i64 1208, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  store i64 %i.bs, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5858
  %i.bx = call noundef ptr @mi_malloc_aligned(i64 noundef 1272, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5858 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ac, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7187fcbf7c196dfaE.exit", !prof !61

bb.ac:                                            ; preds = %_ZN4core5clone5Clone5clone17h09598ac5c10cbcc9E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1272) #43
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr2192drop_in_place$LT$actix_server..service..StreamNewService$LT$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$GT$$GT$17h09fdd19e81112b5bE"(ptr noalias noundef nonnull align 8 dereferenceable(1272) %i.c) #44
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

common.resume:                                    ; preds = %.body, %bb.ab, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %.pn.i, %bb.ab ], [ %.pn.i, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h7187fcbf7c196dfaE.exit": ; preds = %_ZN4core5clone5Clone5clone17h09598ac5c10cbcc9E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1272) %i.bx, ptr noundef nonnull align 8 dereferenceable(1272) %i.c, i64 1272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cb = insertvalue { ptr, ptr } poison, ptr %i.bx, 0
  %i.cc = insertvalue { ptr, ptr } %i.cb, ptr @306, 1
  ret { ptr, ptr } %i.cc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$4name17h3cff8e9de22536d9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(1040) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !45, !noundef !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.d = load i64, ptr %i.c, align 8, !noundef !45
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$4name17hee6f7200fd1b95d5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(1272) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !45, !noundef !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = load i64, ptr %i.c, align 8, !noundef !45
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$6create17hb7e05a939ff15fe2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 12 uses
  %i.c = alloca [232 x i8], align 8               ; 10 uses
  %.sroa.4.i.sroa.0.i.i = alloca [183 x i8], align 1 ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.09.sroa.6.i.i.i = alloca [68 x i8], align 4 ; 5 uses
  %i.e = alloca [112 x i8], align 8               ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [176 x i8], align 8               ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 16 uses
  %.sroa.0106.i.i = alloca [176 x i8], align 8    ; 4 uses
  %i.n = alloca [128 x i8], align 8               ; 4 uses
  %i.o = alloca [120 x i8], align 8               ; 4 uses
  %i.p = alloca [112 x i8], align 8               ; 8 uses
  %i.q = alloca [112 x i8], align 8               ; 20 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [128 x i8], align 8               ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [56 x i8], align 8                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.w = load i64, ptr %i.v, align 8, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5951
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5953, !nonnull !45, !noundef !45 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  %i.aa = cmpxchg ptr %i.z, i32 0, i32 1 acquire monotonic, align 4, !noalias !5954
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.z), !noalias !5955
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !5954
  %i.ad = and i64 %i.ac, 9223372036854775807
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i", label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.af = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !5955
  %i.ag = xor i1 %i.af, true
  %i.ah = zext i1 %i.ag to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ah, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %i.aj = load atomic i8, ptr %i.ai monotonic, align 1, !noalias !5955
  %.not142.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not142.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i", label %bb.e, !prof !58

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5956
  store ptr %i.z, ptr %i.h, align 8, !noalias !5956
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.ak, align 8, !noalias !5956
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1078, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2217) #43
          to label %bb.g unwind label %bb.f, !noalias !5957

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr128drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$$GT$17hb1196e0c92340069E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #44
          to label %common.resume unwind label %bb.h, !noalias !5957

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5957
  unreachable

common.resume:                                    ; preds = %bb.bw, %bb.bp, %.body7, %bb.bt, %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" ], [ %i.al, %bb.f ], [ %i.hf, %bb.bw ], [ %eh.lpad-body8, %.body7 ], [ %eh.lpad-body8, %bb.bp ], [ %i.hb, %bb.bt ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"
  %i.an = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5953
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !102, !noundef !45
  %.not.i.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5953
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1341)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5953
  store ptr %i.aq, ptr %i.i, align 8, !noalias !5953
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hebfa5708b1795796E", ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !5953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5958
  store ptr @0, ptr %i.g, align 8, !noalias !5959
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4110.0..sroa_idx.i.i, align 8, !noalias !5959
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5959
  %.sroa.6111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6111.0..sroa_idx.i.i, align 8, !noalias !5959
  %.sroa.7112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7112.0..sroa_idx.i.i, align 8, !noalias !5959
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.l unwind label %bb.k

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i": ; preds = %bb.bc, %.thread.i.i, %bb.ar, %bb.ao, %bb.an, %.thread.i.i.i, %bb.k
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn.pn120.i.i, %bb.bc ], [ %.pn.pn120.i.i, %.thread.i.i ], [ %i.el, %bb.ar ], [ %i.du, %.thread.i.i.i ], [ %i.du, %bb.ao ], [ %i.du, %bb.an ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$17h95aa0bfb5bd9df1cE"(ptr nonnull %i.z, i8 %.sroa.01.0.i.i.i.i) #44
          to label %common.resume unwind label %bb.ay

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5953
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5953
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.av = load i32, ptr %i.au, align 8, !range !65, !noundef !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !range !83, !noundef !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.bd = load i32, ptr %i.bc, align 8, !range !83, !noundef !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.bf = load i8, ptr %i.be, align 8, !range !52, !noundef !45
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %.sroa.0116.0.copyload.i.i = load i16, ptr %i.bg, align 8, !alias.scope !5953
  %.sroa.4117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 922
  %.sroa.04.sroa.6.sroa.9.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.04.sroa.6.sroa.9.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull readonly align 2 dereferenceable(30) %.sroa.4117.0..sroa_idx.i.i, i64 30, i1 false)
  store i64 %i.ax, ptr %i.q, align 8, !noalias !5953
  %.sroa.04.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.az, ptr %.sroa.04.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.bb, ptr %.sroa.04.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %i.bd, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.4.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.at, ptr %.sroa.04.sroa.6.sroa.4.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.5.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 %i.av, ptr %.sroa.04.sroa.6.sroa.5.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.7.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store i16 %.sroa.0116.0.copyload.i.i, ptr %.sroa.04.sroa.6.sroa.7.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  store ptr null, ptr %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.12.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  store i32 2097152, ptr %.sroa.04.sroa.6.sroa.12.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.04.sroa.6.sroa.13.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 100 ; 2 uses
  store i32 1048576, ptr %.sroa.04.sroa.6.sroa.13.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !5953
  %.sroa.04.sroa.6.sroa.14.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i8 0, ptr %.sroa.04.sroa.6.sroa.14.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 105
  store i8 %i.bf, ptr %.sroa.55.0..sroa_idx.i.i, align 1, !noalias !5953
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 106
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i, align 2, !noalias !5953
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 107
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 129
  %i.bi = load i8, ptr %i.bh, align 1, !range !57, !noundef !45
  store i8 %i.bi, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !5953
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !range !104, !noundef !45
  %i.bl = trunc nuw i32 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !45
  store i32 %i.bn, ptr %.sroa.04.sroa.6.sroa.13.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !5953
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !range !104, !noundef !45
  %i.bq = trunc nuw i32 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.bs = load i32, ptr %i.br, align 4, !noundef !45
  store i32 %i.bs, ptr %.sroa.04.sroa.6.sroa.12.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !5953, !noundef !45 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.not57.i.i = icmp eq ptr %i.bu, null
  br i1 %.not57.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.ag, label %bb.u

bb.t:                                             ; preds = %bb.ah, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5953
  invoke fastcc void @"_ZN11meilisearch8run_http28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc33544addc78b307E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %0)
          to label %bb.ai unwind label %bb.az

bb.u:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bv, align 8, !alias.scope !5953, !nonnull !45, !align !48, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false), !noalias !5953
  call void @llvm.experimental.noalias.scope.decl(metadata !5960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5961
  store i64 1, ptr %i.f, align 8, !noalias !5961
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bz, align 8, !noalias !5961
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.ca, align 8, !noalias !5961
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !noalias !5961
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5962
  %i.cc = call noundef ptr @mi_malloc_aligned(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5962 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.v, label %bb.ab, !prof !61

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !5963

.noexc.i.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !5964
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.x, label %.body.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdf0bc4f28ecdfc2dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ca)
          to label %.body.i.i.i unwind label %bb.y, !noalias !5963

bb.y:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5963
  unreachable

.body.i.i.i:                                      ; preds = %bb.ae, %bb.x, %bb.w
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.ce, %bb.x ], [ %i.ce, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5965)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5966)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !5967, !noalias !5953, !noundef !45 ; 3 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %.body.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !noalias !5968, !noundef !45
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  store i64 %i.cm, ptr %i.cj, align 8, !noalias !5968
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.aa, label %.thread.i.i

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ci)
          to label %.thread.i.i unwind label %bb.af, !noalias !5969

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !5963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5961
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5970)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !5971, !noalias !5953, !noundef !45 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %i.cp, align 8, !noalias !5972, !noundef !45
  %i.cs = add i64 %i.cr, -1                       ; 2 uses
  store i64 %i.cs, ptr %i.cp, align 8, !noalias !5972
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.co)
          to label %bb.ah unwind label %bb.ae, !noalias !5969

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cc, ptr %i.co, align 8, !alias.scope !5960, !noalias !5953
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr @147, ptr %i.cv, align 8, !alias.scope !5960, !noalias !5953
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5963
  unreachable

bb.ag:                                            ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store ptr %i.cc, ptr %i.co, align 8, !alias.scope !5960, !noalias !5953
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr @147, ptr %i.cx, align 8, !alias.scope !5960, !noalias !5953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5953
  br label %bb.t

bb.ai:                                            ; preds = %bb.t
  invoke fastcc void @"_ZN371_$LT$actix_web..app..App$LT$T$GT$$u20$as$u20$actix_service..IntoServiceFactory$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$12into_factory17hf4fe530717c79ae0E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.n)
          to label %bb.aj unwind label %bb.az

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5953
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cy, ptr noundef nonnull align 8 dereferenceable(120) %i.o, i64 120, i1 false), !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5953
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0106.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false), !noalias !5953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !5953
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bg, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.k, i64 56, i1 false), !alias.scope !5973, !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !5974)
  call void @llvm.experimental.noalias.scope.decl(metadata !5975)
  call void @llvm.experimental.noalias.scope.decl(metadata !5976)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5977
  invoke void @_ZN10actix_http6config20ServiceConfigBuilder3new17h53a8c93cdbd2de42E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d)
          to label %bb.ak unwind label %bb.am, !noalias !5978

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !5975, !noalias !5953
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !range !65, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.db, ptr %i.de, align 8, !noalias !5977
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.dd, ptr %i.df, align 8, !noalias !5977
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.632.0.copyload.i.i.i = load i32, ptr %.sroa.632.0..sroa_idx.i.i.i, align 4, !noalias !5977
  %.sroa.836.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.09.sroa.6.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.836.0..sroa_idx.i.i.i, i64 68, i1 false), !noalias !5977
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !5977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5977
  %i.dg = load i64, ptr %i.m, align 8, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !range !83, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !range !83, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 107
  %i.do = load i8, ptr %i.dn, align 1, !range !57, !alias.scope !5975, !noalias !5953, !noundef !45
  %.sroa.620.106.insert.ext.i.i.i = zext nneg i8 %i.do to i64
  %.sroa.620.106.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.620.106.insert.ext.i.i.i, 16
  %.sroa.620.106.insert.mask.i.i.i = and i64 %.sroa.11.0.copyload.i.i.i, -16777216
  %.sroa.620.106.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.shift.i.i.i, %.sroa.620.106.insert.mask.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %1 = load i8, ptr %i.dp, align 8, !range !52, !alias.scope !5975, !noalias !5953, !noundef !45
  %.sroa.616.104.insert.ext.i.i.i = zext nneg i8 %1 to i64
  %.sroa.616.104.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.insert.i.i.i, %.sroa.616.104.insert.ext.i.i.i
  %.sroa.09.sroa.6.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.sroa.6.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.09.sroa.6.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.6.sroa.7.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, i64 32, i1 false), !noalias !5953
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 105
  %3 = load i8, ptr %2, align 1, !range !52, !alias.scope !5975, !noalias !5953, !noundef !45
  %.sroa.6.105.insert.ext.i.i.i = zext nneg i8 %3 to i64
  %.sroa.6.105.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.105.insert.ext.i.i.i, 8
  %.sroa.6.105.insert.insert.i.i.i = or disjoint i64 %.sroa.6.105.insert.shift.i.i.i, %.sroa.616.104.insert.insert.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i64 %i.dg, ptr %i.e, align 8, !noalias !5977
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.di, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5977
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.632.0.copyload.i.i.i, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !5977
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.dk, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5977
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dm, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !5977
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.09.sroa.6.i.i.i, i64 68, i1 false), !noalias !5977
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.dr = load <2 x i32>, ptr %i.dq, align 8, !alias.scope !5975, !noalias !5953
  store <2 x i32> %i.dr, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !noalias !5977
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.6.105.insert.insert.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i, align 8, !noalias !5977
  %i.ds = invoke noundef nonnull ptr @_ZN10actix_http6config20ServiceConfigBuilder5build17ha6f103bd7972c2f0E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.e)
          to label %bb.ap unwind label %bb.am, !noalias !5978 ; 2 uses

bb.al:                                            ; preds = %bb.ao, %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5979
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr5811drop_in_place$LT$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$GT$17hb4ee6b4dfc2491ddE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.l) #44
          to label %.thread.i.i.i unwind label %bb.al, !noalias !5979

.thread.i.i.i:                                    ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5980)
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !5981, !noalias !5953, !noundef !45 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.an

bb.an:                                            ; preds = %.thread.i.i.i
  %i.dy = load i64, ptr %i.dw, align 8, !noalias !5982, !noundef !45
  %i.dz = add i64 %i.dy, -1                       ; 2 uses
  store i64 %i.dz, ptr %i.dw, align 8, !noalias !5982
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.dv)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" unwind label %bb.al, !noalias !5974

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0106.i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false), !alias.scope !5983, !noalias !5953
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 106
  %i.ec = load i8, ptr %i.eb, align 2, !range !52, !alias.scope !5975, !noalias !5953, !noundef !45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5953
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 122
  %.sroa.4.i.sroa.0.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0.i.i, i64 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.eh = load <2 x ptr>, ptr %i.ed, align 8, !alias.scope !5975, !noalias !5953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5953
  %i.ei = load i8, ptr %i.ee, align 2, !range !57, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %.sroa.4.i.sroa.0.7..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0106.i.i, i64 176, i1 false), !noalias !5953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5984
  store i64 1, ptr %i.c, align 8, !noalias !5984
  store i64 1, ptr %i.ef, align 8, !noalias !5984
  store i8 %i.ei, ptr %i.eg, align 8, !noalias !5984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.0..sroa_idx.i66.i.i, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0.i.i, i64 183, i1 false), !noalias !5984
  store ptr %i.ds, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !5984
  store <2 x ptr> %i.eh, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !5984
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i8 %i.ec, ptr %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !5984
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5985
  %i.ej = call noundef ptr @mi_malloc_aligned(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5985 ; 14 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.aq, label %bb.at, !prof !61

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #43
          to label %.noexc.i67.i.i unwind label %bb.ar, !noalias !5986

.noexc.i67.i.i:                                   ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr18654drop_in_place$LT$$LP$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$C$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_http..error..DispatchError$C$$LP$$RP$$GT$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$RP$$GT$17h61ce96f9cdb1510cE"(ptr noalias noundef align 8 dereferenceable(216) %i.eg)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" unwind label %bb.as, !noalias !5986

bb.as:                                            ; preds = %bb.ar
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5986
  unreachable

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ej, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !5986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5984
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0106.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5953
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !5953
  %i.eo = and i64 %i.en, 9223372036854775807
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.av, !prof !58

bb.av:                                            ; preds = %bb.au
  %i.eq = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.eq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store atomic i8 1, ptr %i.ai monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.er = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.es = icmp eq i32 %i.er, 2
  br i1 %i.es, label %bb.ax, label %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit", !prof !47

bb.ax:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z)
  br label %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"

bb.ay:                                            ; preds = %bb.bb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.az:                                            ; preds = %bb.ai, %bb.t
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ev = load ptr, ptr %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !5953, !noundef !45 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = load i64, ptr %i.ev, align 8, !noalias !5987, !noundef !45
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.ev, align 8, !noalias !5987
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.bb, label %.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i)
          to label %.thread.i.i unwind label %bb.ay

.thread.i.i:                                      ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aa, %bb.z, %.body.i.i.i
  %.pn.pn120.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.eu, %bb.ba ], [ %i.eu, %bb.bb ], [ %i.eu, %bb.az ], [ %.pn.i.i.i, %bb.aa ], [ %.pn.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5988)
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !5988, !noalias !5953
  %i.fa = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.fa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.bc

bb.bc:                                            ; preds = %.thread.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !5988, !noalias !5953, !nonnull !45, !noundef !45
  call void @mi_free(ptr noundef nonnull %.val1.i.i.i) #38, !noalias !5988
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5951
  store ptr %i.ej, ptr %i.t, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5989)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.val.i = load i8, ptr %i.fc, align 8, !range !57, !noalias !5989, !noundef !45
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5989
  call void @llvm.experimental.noalias.scope.decl(metadata !5990)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2218)
          to label %.noexc unwind label %bb.bo

.noexc:                                           ; preds = %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fe, i64 32, i1 false), !alias.scope !5991, !noalias !5989
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.fg, align 8, !alias.scope !5992, !noalias !5989
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  %i.fi = invoke fastcc ptr @"_ZN336_$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$u20$as$u20$actix_service..ServiceFactory$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$11new_service17hfe4bd13bfceb9ab1E"(ptr noundef nonnull align 8 %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc6 unwind label %bb.bo   ; 3 uses

.noexc6:                                          ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5989
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 224
  %i.fk = load i8, ptr %i.fj, align 8, !range !52, !noalias !5989, !noundef !45
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.bd, label %bb.be
end_hunk_0
begin_hunk_1_@"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$6create17hb7e05a939ff15fe2E":bb.a
bb.bg:                                            ; preds = %bb.be
  %.val.i.i.i4 = load i64, ptr %i.fn, align 8, !noalias !5989, !noundef !45 ; 2 uses
  %i.fp = icmp ne i64 %.val.i.i.i4, 0
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add i64 %.val.i.i.i4, 1                 ; 2 uses
  store i64 %i.fq, ptr %i.fn, align 8, !noalias !5989
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.bh, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i, !prof !47

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i, %bb.be
  %i.fs = phi <2 x ptr> [ %i.fy, %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i ], [ <ptr null, ptr undef>, %bb.be ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 200 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !5989, !nonnull !45, !noundef !45 ; 2 uses
  %.val.i14.i.i = load i64, ptr %i.fu, align 8, !noalias !5989, !noundef !45 ; 2 uses
  %i.fv = icmp ne i64 %.val.i14.i.i, 0
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add i64 %.val.i14.i.i, 1                ; 2 uses
  store i64 %i.fw, ptr %i.fu, align 8, !noalias !5989
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.bj, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i, !prof !47

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i: ; preds = %bb.bg
  %i.fy = load <2 x ptr>, ptr %i.fm, align 8, !noalias !5989
  br label %bb.bi

_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i: ; preds = %bb.bi
  %i.fz = load ptr, ptr %i.ft, align 8, !noalias !5989, !nonnull !45, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5989
  store i64 1, ptr %i.b, align 8, !noalias !5989
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.ga, align 8, !noalias !5989
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.gb, align 8, !noalias !5989
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fi, ptr %i.gc, align 8, !noalias !5989
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @993, ptr %i.gd, align 8, !noalias !5989
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.fz, ptr %i.ge, align 8, !noalias !5989
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store <2 x ptr> %i.fs, ptr %i.gf, align 8, !noalias !5989
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i8 0, ptr %i.gg, align 8, !noalias !5989
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5993
  %i.gh = call noundef ptr @mi_malloc_aligned(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5993 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.bk, label %bb.bq, !prof !61

bb.bk:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #43
          to label %.noexc15.i.i unwind label %bb.bl, !noalias !5989

.noexc15.i.i:                                     ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr6335drop_in_place$LT$$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$u20$as$u20$actix_service..ServiceFactory$LT$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17he48e58c6e0763df2E"(ptr noundef nonnull align 8 dereferenceable(104) %i.b) #44
          to label %.body7 unwind label %bb.bm, !noalias !5989

bb.bm:                                            ; preds = %bb.bl
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5989
  unreachable

bb.bn:                                            ; preds = %.thread.i.i5, %bb.bf
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !5989
  unreachable

.thread.i.i5:                                     ; preds = %bb.bf
  invoke fastcc void @"_ZN4core3ptr3417drop_in_place$LT$actix_service..map_err..MapErrServiceFuture$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$GT$17h4d7799596b787bb8E"(ptr nonnull %i.fi, ptr nonnull @993) #44
          to label %.body7 unwind label %bb.bn, !noalias !5989

bb.bo:                                            ; preds = %.noexc, %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.bl, %.thread.i.i5, %bb.bo
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.gm, %bb.bo ], [ %i.fo, %.thread.i.i5 ], [ %i.gj, %bb.bl ] ; 2 uses
  %i.gn = load i64, ptr %i.ej, align 8, !noalias !5994, !noundef !45
  %i.go = add i64 %i.gn, -1                       ; 2 uses
  store i64 %i.go, ptr %i.ej, align 8, !noalias !5994
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bp, label %common.resume

bb.bp:                                            ; preds = %.body7
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9ff7ce6c66506ac7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t)
          to label %common.resume unwind label %bb.bx

bb.bq:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.gh, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !5989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5989
  %i.gq = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i8 %.val.i, ptr %i.gq, align 8, !alias.scope !5989
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.gh, ptr %i.gr, align 8, !alias.scope !5989
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @669, ptr %i.gs, align 8, !alias.scope !5989
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  store i8 3, ptr %i.gt, align 1, !alias.scope !5989
  store ptr null, ptr %i.u, align 8, !alias.scope !5989
  %i.gu = load i64, ptr %i.ej, align 8, !noalias !5995, !noundef !45
  %i.gv = add i64 %i.gu, -1                       ; 2 uses
  store i64 %i.gv, ptr %i.ej, align 8, !noalias !5995
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.br, label %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9ff7ce6c66506ac7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12" unwind label %bb.bw

"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12": ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gx, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  store i64 %i.w, ptr %i.s, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %i.gy, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5996
  %i.gz = call noundef ptr @mi_malloc_aligned(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !5996 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.bs, label %bb.bv, !prof !61

bb.bs:                                            ; preds = %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #43
          to label %.noexc13 unwind label %bb.bt

.noexc13:                                         ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr2276drop_in_place$LT$$LT$actix_server..service..StreamNewService$LT$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$..create..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7d3900482ca3b4c2E"(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #44
          to label %common.resume unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.bv:                                            ; preds = %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.gz, ptr noundef nonnull align 8 dereferenceable(128) %i.s, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hd = insertvalue { ptr, ptr } poison, ptr %i.gz, 0
  %i.he = insertvalue { ptr, ptr } %i.hd, ptr @307, 1
  ret { ptr, ptr } %i.he

bb.bw:                                            ; preds = %bb.br
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr18745drop_in_place$LT$actix_service..and_then..AndThenServiceFactoryResponse$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$C$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_http..error..DispatchError$C$$LP$$RP$$GT$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$GT$17h6ab877d1cd8cc1d5E"(ptr noalias noundef align 8 dereferenceable(56) %i.u) #44
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bp, %bb.bw
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$6create17hb81bfdaf41511070E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1272) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [232 x i8], align 8               ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [232 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [112 x i8], align 8               ; 8 uses
  %.sroa.09.sroa.6.i.i.i = alloca [68 x i8], align 4 ; 5 uses
  %i.k = alloca [112 x i8], align 8               ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [232 x i8], align 8               ; 20 uses
  %i.r = alloca [56 x i8], align 8                ; 5 uses
  %i.s = alloca [176 x i8], align 8               ; 6 uses
  %i.t = alloca [112 x i8], align 8               ; 16 uses
  %i.u = alloca [208 x i8], align 8               ; 9 uses
  %i.v = alloca [128 x i8], align 8               ; 4 uses
  %i.w = alloca [120 x i8], align 8               ; 4 uses
  %i.x = alloca [120 x i8], align 8               ; 4 uses
  %i.y = alloca [112 x i8], align 8               ; 8 uses
  %i.z = alloca [112 x i8], align 8               ; 19 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [272 x i8], align 8              ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [128 x i8], align 8              ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.af = load i64, ptr %i.ae, align 8, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6217
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !6219, !nonnull !45, !noundef !45 ; 17 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 6 uses
  %i.aj = cmpxchg ptr %i.ai, i32 0, i32 1 acquire monotonic, align 4, !noalias !6220
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.ai), !noalias !6221
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !6220
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i", label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !6221
  %i.ap = xor i1 %i.ao, true
  %i.aq = zext i1 %i.ap to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i": ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.aq, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  %i.as = load atomic i8, ptr %i.ar monotonic, align 1, !noalias !6221
  %.not132.i.i = icmp eq i8 %i.as, 0
  br i1 %.not132.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i", label %bb.e, !prof !58

bb.e:                                             ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6222
  store ptr %i.ai, ptr %i.n, align 8, !noalias !6222
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.at, align 8, !noalias !6222
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1078, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2212) #43
          to label %bb.g unwind label %bb.f, !noalias !6223

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr128drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$$GT$17hb1196e0c92340069E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #44
          to label %common.resume unwind label %bb.h, !noalias !6223

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6223
  unreachable

common.resume:                                    ; preds = %bb.dq, %bb.dk, %.body6, %common.ret.sink.split.i, %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" ], [ %i.au, %bb.f ], [ %i.mc, %bb.dq ], [ %eh.lpad-body7, %.body6 ], [ %eh.lpad-body7, %bb.dk ], [ %i.ly, %common.ret.sink.split.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc9696752501fb3d3E.exit.i.i"
  %i.aw = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6219
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !102, !noundef !45
  %.not.i.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6219
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1341)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h968d9fc2c8cf67deE.exit.i.i"
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6219
  store ptr %i.az, ptr %i.o, align 8, !noalias !6219
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hebfa5708b1795796E", ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6224
  store ptr @0, ptr %i.m, align 8, !noalias !6225
  %.sroa.4109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %.sroa.4109.0..sroa_idx.i.i, align 8, !noalias !6225
  %.sroa.5110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %.sroa.5110.0..sroa_idx.i.i, align 8, !noalias !6225
  %.sroa.6111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.6111.0..sroa_idx.i.i, align 8, !noalias !6225
  %.sroa.7112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7112.0..sroa_idx.i.i, align 8, !noalias !6225
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.l unwind label %bb.k

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i": ; preds = %bb.cr, %.thread.i.i, %bb.cm, %.critedge32.thread.i.i.i, %bb.bs, %bb.aq, %bb.ap, %.thread.i.i.i, %bb.k
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %.pn.pn115.i.i, %bb.cr ], [ %.pn.pn115.i.i, %.thread.i.i ], [ %i.gw, %bb.bs ], [ %.pn237298107110.i.i.i, %.critedge32.thread.i.i.i ], [ %i.is, %bb.cm ], [ %i.eh, %.thread.i.i.i ], [ %i.eh, %bb.aq ], [ %i.eh, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$actix_web..server..Config$GT$$GT$17h95aa0bfb5bd9df1cE"(ptr nonnull %i.ai, i8 %.sroa.01.0.i.i.i.i) #44
          to label %common.resume unwind label %bb.cn

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6219
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6219
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !range !65, !noundef !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !45
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !range !83, !noundef !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.bk = load i8, ptr %i.bj, align 8, !range !52, !noundef !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.bo = load i32, ptr %i.bn, align 8, !range !83, !noundef !45
  store i64 %i.bg, ptr %i.z, align 8, !noalias !6219
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.bi, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.4.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.bm, ptr %.sroa.4.0..sroa_idx1.i.i, align 8, !noalias !6219
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 %i.bo, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.bc, ptr %.sroa.6.sroa.0.sroa.4.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 %i.be, ptr %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  store i16 2, ptr %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 3 uses
  store ptr null, ptr %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.11.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  store i32 2097152, ptr %.sroa.6.sroa.0.sroa.11.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.0.sroa.12.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 100 ; 2 uses
  store i32 1048576, ptr %.sroa.6.sroa.0.sroa.12.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 4, !noalias !6219
  %.sroa.6.sroa.0.sroa.13.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i8 0, ptr %.sroa.6.sroa.0.sroa.13.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 105
  store i8 %i.bk, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 1, !noalias !6219
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 106
  store i8 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 2, !noalias !6219
  %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 107
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 129
  %i.bq = load i8, ptr %i.bp, align 1, !range !57, !noundef !45
  store i8 %i.bq, ptr %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i, align 1, !noalias !6219
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !range !104, !noundef !45
  %i.bt = trunc nuw i32 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !45
  store i32 %i.bv, ptr %.sroa.6.sroa.0.sroa.12.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 4, !noalias !6219
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bx = load i32, ptr %i.bw, align 8, !range !104, !noundef !45
  %i.by = trunc nuw i32 %i.bx to i1
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !45
  store i32 %i.ca, ptr %.sroa.6.sroa.0.sroa.11.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !6219
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !6219, !noundef !45 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.not59.i.i = icmp eq ptr %i.cc, null
  br i1 %.not59.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.ag, label %bb.u

bb.t:                                             ; preds = %bb.ah, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6219
  invoke fastcc void @"_ZN11meilisearch8run_http28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc33544addc78b307E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1208) %0)
          to label %bb.ai unwind label %bb.co

bb.u:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.cd, align 8, !alias.scope !6219, !nonnull !45, !align !48, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !noalias !6219
  call void @llvm.experimental.noalias.scope.decl(metadata !6226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6227
  store i64 1, ptr %i.l, align 8, !noalias !6227
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.ch, align 8, !noalias !6227
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.cc, ptr %i.ci, align 8, !noalias !6227
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.cg, ptr %i.cj, align 8, !noalias !6227
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6228
  %i.ck = call noundef ptr @mi_malloc_aligned(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !6228 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.v, label %bb.ab, !prof !61

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc.i.i.i unwind label %bb.w, !noalias !6229

.noexc.i.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !6230
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.x, label %.body.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke fastcc void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdf0bc4f28ecdfc2dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ci)
          to label %.body.i.i.i unwind label %bb.y, !noalias !6229

bb.y:                                             ; preds = %bb.x
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6229
  unreachable

.body.i.i.i:                                      ; preds = %bb.ae, %bb.x, %bb.w
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %i.cm, %bb.x ], [ %i.cm, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6231)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6232)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !6233, !noalias !6219, !noundef !45 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %.body.i.i.i
  %i.ct = load i64, ptr %i.cr, align 8, !noalias !6234, !noundef !45
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cu, ptr %i.cr, align 8, !noalias !6234
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.aa, label %.thread.i.i

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hfa6bccda13e704fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cq)
          to label %.thread.i.i unwind label %bb.af, !noalias !6235

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !6229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6227
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !6237, !noalias !6219, !noundef !45 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load i64, ptr %i.cx, align 8, !noalias !6238, !noundef !45
  %i.da = add i64 %i.cz, -1                       ; 2 uses
  store i64 %i.da, ptr %i.cx, align 8, !noalias !6238
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hfa6bccda13e704fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cw)
          to label %bb.ah unwind label %bb.ae, !noalias !6235

bb.ae:                                            ; preds = %bb.ad
  %i.dc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ck, ptr %i.cw, align 8, !alias.scope !6226, !noalias !6219
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr @148, ptr %i.dd, align 8, !alias.scope !6226, !noalias !6219
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6229
  unreachable

bb.ag:                                            ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store ptr %i.ck, ptr %i.cw, align 8, !alias.scope !6226, !noalias !6219
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr @148, ptr %i.df, align 8, !alias.scope !6226, !noalias !6219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.z, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6219
  br label %bb.t

bb.ai:                                            ; preds = %bb.t
  invoke fastcc void @"_ZN371_$LT$actix_web..app..App$LT$T$GT$$u20$as$u20$actix_service..IntoServiceFactory$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$12into_factory17hf4fe530717c79ae0E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.v)
          to label %bb.aj unwind label %bb.co

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.x, ptr noundef nonnull align 8 dereferenceable(120) %i.w, i64 120, i1 false), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6219
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.dh = load i32, ptr %i.dg, align 8, !range !105, !noundef !45 ; 2 uses
  %.not60.i.i = icmp eq i32 %i.dh, 1000000000     ; 2 uses
  br i1 %.not60.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.dj = load i64, ptr %i.di, align 8, !noundef !45
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.041.0.i.i = phi i64 [ %i.dj, %bb.ak ], [ undef, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.t, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !6219
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.dk, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6239)
  call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.x, i64 120, i1 false), !alias.scope !6241, !noalias !6219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.r, i64 56, i1 false), !alias.scope !6242, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6243)
  call void @llvm.experimental.noalias.scope.decl(metadata !6244)
  call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6246
  invoke void @_ZN10actix_http6config20ServiceConfigBuilder3new17h53a8c93cdbd2de42E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j)
          to label %bb.am unwind label %bb.ao, !noalias !6247

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !6244, !noalias !6219
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.dq = load i32, ptr %i.dp, align 8, !range !65, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.do, ptr %i.dr, align 8, !noalias !6246
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 %i.dq, ptr %i.ds, align 8, !noalias !6246
  %.sroa.632.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.632.0.copyload.i.i.i = load i32, ptr %.sroa.632.0..sroa_idx.i.i.i, align 4, !noalias !6246
  %.sroa.836.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.09.sroa.6.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.836.0..sroa_idx.i.i.i, i64 68, i1 false), !noalias !6246
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !6246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6246
  %i.dt = load i64, ptr %i.t, align 8, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !range !83, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !range !83, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 107
  %i.eb = load i8, ptr %i.ea, align 1, !range !57, !alias.scope !6244, !noalias !6219, !noundef !45
  %.sroa.620.106.insert.ext.i.i.i = zext nneg i8 %i.eb to i64
  %.sroa.620.106.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.620.106.insert.ext.i.i.i, 16
  %.sroa.620.106.insert.mask.i.i.i = and i64 %.sroa.11.0.copyload.i.i.i, -16777216
  %.sroa.620.106.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.shift.i.i.i, %.sroa.620.106.insert.mask.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %1 = load i8, ptr %i.ec, align 8, !range !52, !alias.scope !6244, !noalias !6219, !noundef !45
  %.sroa.616.104.insert.ext.i.i.i = zext nneg i8 %1 to i64
  %.sroa.616.104.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.insert.i.i.i, %.sroa.616.104.insert.ext.i.i.i
  %.sroa.09.sroa.6.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.sroa.6.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.09.sroa.6.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, i64 32, i1 false), !noalias !6219
  %2 = getelementptr inbounds nuw i8, ptr %i.t, i64 105
  %3 = load i8, ptr %2, align 1, !range !52, !alias.scope !6244, !noalias !6219, !noundef !45
  %.sroa.6.105.insert.ext.i.i.i = zext nneg i8 %3 to i64
  %.sroa.6.105.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.105.insert.ext.i.i.i, 8
  %.sroa.6.105.insert.insert.i.i.i = or disjoint i64 %.sroa.6.105.insert.shift.i.i.i, %.sroa.616.104.insert.insert.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i64 %i.dt, ptr %i.k, align 8, !noalias !6246
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.dv, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6246
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %.sroa.632.0.copyload.i.i.i, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !6246
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.dx, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6246
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %i.dz, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6246
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.09.sroa.6.i.i.i, i64 68, i1 false), !noalias !6246
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.ee = load <2 x i32>, ptr %i.ed, align 8, !alias.scope !6244, !noalias !6219
  store <2 x i32> %i.ee, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !noalias !6246
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 %.sroa.6.105.insert.insert.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i, align 8, !noalias !6246
  %i.ef = invoke noundef nonnull ptr @_ZN10actix_http6config20ServiceConfigBuilder5build17ha6f103bd7972c2f0E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.k)
          to label %bb.ar unwind label %bb.ao, !noalias !6247

bb.an:                                            ; preds = %bb.aq, %bb.ao
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6248
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr5847drop_in_place$LT$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$GT$17h4a31248ae8127475E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.s) #44
          to label %.thread.i.i.i unwind label %bb.an, !noalias !6248

.thread.i.i.i:                                    ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !6250, !noalias !6219, !noundef !45 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %.thread.i.i.i
  %i.el = load i64, ptr %i.ej, align 8, !noalias !6251, !noundef !45
  %i.em = add i64 %i.el, -1                       ; 2 uses
  store i64 %i.em, ptr %i.ej, align 8, !noalias !6251
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.aq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hfa6bccda13e704fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ei)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" unwind label %bb.an, !noalias !6243

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(176) %i.s, i64 176, i1 false), !alias.scope !6252, !noalias !6219
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 106
  %i.ep = load i8, ptr %i.eo, align 2, !range !52, !alias.scope !6244, !noalias !6219, !noundef !45
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !6253, !noalias !6219
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.er = load <2 x ptr>, ptr %i.eq, align 8, !alias.scope !6244, !noalias !6219
  store <2 x ptr> %i.er, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !6253, !noalias !6219
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  store i8 %i.ep, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !6253, !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6219
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 920
  invoke fastcc void @"_ZN80_$LT$rustls..server..server_conn..ServerConfig$u20$as$u20$core..clone..Clone$GT$5clone17h27ce2993b8a0bb3cE"(ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.es)
          to label %bb.as unwind label %bb.cm

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  call void @llvm.experimental.noalias.scope.decl(metadata !6255)
  %i.et = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !6254, !noalias !6219, !nonnull !45, !noundef !45
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 122
  %i.ev = load i8, ptr %i.eu, align 2, !range !57, !noalias !6256, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6257
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6256
  %i.ew = call noundef ptr @mi_malloc_aligned(i64 noundef 48, i64 noundef 8) #38, !noalias !6256 ; 9 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.au, label %bb.av, !prof !47

bb.at:                                            ; preds = %bb.au
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i70.i.i

bb.au:                                            ; preds = %bb.as
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #43
          to label %bb.bw unwind label %bb.at, !noalias !6256

bb.av:                                            ; preds = %bb.as
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6258
  %i.ez = call noundef ptr @mi_malloc_aligned(i64 noundef 2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6258 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2135) #43
          to label %.noexc.i72.i.i unwind label %bb.ay, !noalias !6256

.noexc.i72.i.i:                                   ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i", %bb.ay
  %.pn.i71.i.i = phi { ptr, i32 } [ %i.fe, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i" ], [ %i.fb, %bb.ay ]
  call void @mi_free(ptr noundef nonnull %i.ew) #38, !noalias !6256
  br label %.thread.i70.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.av
  store i16 12904, ptr %i.ez, align 1, !noalias !6259
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6260
  %i.fc = call noundef ptr @mi_malloc_aligned(i64 noundef 8, i64 noundef range(i64 1, 9) 1) #38, !noalias !6260 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2135) #43
          to label %.noexc41.i.i.i unwind label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i", !noalias !6256

.noexc41.i.i.i:                                   ; preds = %bb.ba
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0124006278fc829dE.exit.i.i.i": ; preds = %bb.ba
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.ez) #38, !noalias !6256
  br label %bb.ax

bb.bb:                                            ; preds = %bb.az
  store i64 3543824036607063144, ptr %i.fc, align 1, !noalias !6261
  store i64 2, ptr %i.ew, align 8, !noalias !6256
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ez, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i, align 8, !noalias !6256
  %.sroa.7.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 2, ptr %.sroa.7.0..sroa.0.0..sroa_idx.i.i.i, align 8, !noalias !6256
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i64 8, ptr %i.ff, align 8, !noalias !6256
  %.sroa.4.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store ptr %i.fc, ptr %.sroa.4.0..sroa_idx.i69.i.i, align 8, !noalias !6256
  %.sroa.566.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i64 8, ptr %.sroa.566.0..sroa_idx.i.i.i, align 8, !noalias !6256
  store i64 2, ptr %i.i, align 8, !alias.scope !6262, !noalias !6257
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.fg, align 8, !alias.scope !6262, !noalias !6257
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 2, ptr %i.fh, align 8, !alias.scope !6262, !noalias !6257
  %i.fi = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !6255, !noalias !6219, !nonnull !45, !noundef !45 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !6255, !noalias !6219, !noundef !45 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6263)
  %.not116.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not116.i.i.i, label %.loopexit.thread.i.i.i, label %bb.bc, !prof !58

.loopexit.thread.i.i.i:                           ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !6257
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc5ca8df5e4240e2E.exit.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hef594eaabfc18d82E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 2, i64 noundef %i.fm, i64 noundef 8, i64 noundef 24)
          to label %.preheader.i.preheader.i.i.i unwind label %.thread94.i.i.i, !noalias !6256

.thread94.i.i.i:                                  ; preds = %bb.bc
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.preheader.i.preheader.i.i.i:                     ; preds = %bb.bc
  %.pre.i.i.i.i = load i64, ptr %i.fh, align 8, !alias.scope !6263, !noalias !6257
  %.pre.i.i.i = load ptr, ptr %i.fg, align 8, !alias.scope !6263, !noalias !6257
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bf, %.preheader.i.preheader.i.i.i
  %.val20.i.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.bf ], [ %.pre.i.i.i.i, %.preheader.i.preheader.i.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i.i.i = phi i64 [ %i.fx, %bb.bf ], [ 0, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %.sroa.06.0.i.i.i.i.i.i.i ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %.val21.i.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !noalias !6264, !nonnull !45, !noundef !45
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  %.val22.i.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !noalias !6264, !noundef !45 ; 7 uses
  %i.fr = icmp slt i64 %.val22.i.i.i.i.i.i.i, 0
  br i1 %i.fr, label %bb.be, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i
  %i.fs = icmp eq i64 %.val22.i.i.i.i.i.i.i, 0
  br i1 %i.fs, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6265
  %i.ft = call noundef ptr @mi_malloc_aligned(i64 noundef %.val22.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #38, !noalias !6265 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
end_hunk_1
