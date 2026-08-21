Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN119_$LT$actix_server..service..StreamNewService$LT$F$C$Io$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$6create17hb7e05a939ff15fe2E":bb.a
  %i.dg = load i64, ptr %i.m, align 8, !alias.scope !6141, !noalias !6147, !noundef !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !range !2026, !alias.scope !6141, !noalias !6147, !noundef !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6141, !noalias !6147, !noundef !27
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !range !2026, !alias.scope !6141, !noalias !6147, !noundef !27
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 107
  %i.do = load i8, ptr %i.dn, align 1, !range !214, !alias.scope !6141, !noalias !6147, !noundef !27
  %.sroa.620.106.insert.ext.i.i.i = zext nneg i8 %i.do to i64
  %.sroa.620.106.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.620.106.insert.ext.i.i.i, 16
  %.sroa.620.106.insert.mask.i.i.i = and i64 %.sroa.11.0.copyload.i.i.i, -16777216
  %.sroa.620.106.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.shift.i.i.i, %.sroa.620.106.insert.mask.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.dq = load i8, ptr %i.dp, align 8, !range !188, !alias.scope !6141, !noalias !6147, !noundef !27
  %.sroa.616.104.insert.ext.i.i.i = zext nneg i8 %i.dq to i64
  %.sroa.616.104.insert.insert.i.i.i = or disjoint i64 %.sroa.620.106.insert.insert.i.i.i, %.sroa.616.104.insert.ext.i.i.i
  %.sroa.09.sroa.6.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.sroa.6.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.09.sroa.6.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.6.sroa.7.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, i64 32, i1 false), !noalias !6070
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 105
  %i.ds = load i8, ptr %i.dr, align 1, !range !188, !alias.scope !6141, !noalias !6147, !noundef !27
  %.sroa.6.105.insert.ext.i.i.i = zext nneg i8 %i.ds to i64
  %.sroa.6.105.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.105.insert.ext.i.i.i, 8
  %.sroa.6.105.insert.insert.i.i.i = or disjoint i64 %.sroa.6.105.insert.shift.i.i.i, %.sroa.616.104.insert.insert.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i64 %i.dg, ptr %i.e, align 8, !noalias !6145
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.di, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6145
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.632.0.copyload.i.i.i, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !6145
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.dk, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !6145
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dm, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6145
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.09.sroa.6.i.i.i, i64 68, i1 false), !noalias !6145
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.du = load <2 x i32>, ptr %i.dt, align 8, !alias.scope !6141, !noalias !6147
  store <2 x i32> %i.du, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !noalias !6145
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.6.105.insert.insert.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i, align 8, !noalias !6145
  %i.dv = invoke noundef nonnull ptr @_ZN10actix_http6config20ServiceConfigBuilder5build17ha6f103bd7972c2f0E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.e)
          to label %bb.ap unwind label %bb.am, !noalias !6146 ; 2 uses

bb.al:                                            ; preds = %bb.ao, %bb.am
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6148
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr5811drop_in_place$LT$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$GT$17hb4ee6b4dfc2491ddE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.l) #44
          to label %.thread.i.i.i unwind label %bb.al, !noalias !6148

.thread.i.i.i:                                    ; preds = %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !6152, !noalias !6147, !noundef !27 ; 3 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.an

bb.an:                                            ; preds = %.thread.i.i.i
  %i.eb = load i64, ptr %i.dz, align 8, !noalias !6153, !noundef !27
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  store i64 %i.ec, ptr %i.dz, align 8, !noalias !6153
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.dy)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" unwind label %bb.al, !noalias !6138

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0106.i.i, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false), !alias.scope !6158, !noalias !6159
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 106
  %i.ef = load i8, ptr %i.ee, align 2, !range !188, !alias.scope !6141, !noalias !6147, !noundef !27
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6070
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 122
  %.sroa.4.i.sroa.0.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.0.i.i, i64 7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.ek = load <2 x ptr>, ptr %i.eg, align 8, !alias.scope !6141, !noalias !6147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6070
  %i.el = load i8, ptr %i.eh, align 2, !range !214, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %.sroa.4.i.sroa.0.7..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0106.i.i, i64 176, i1 false), !noalias !6070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6160
  store i64 1, ptr %i.c, align 8, !noalias !6160
  store i64 1, ptr %i.ei, align 8, !noalias !6160
  store i8 %i.el, ptr %i.ej, align 8, !noalias !6160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.0..sroa_idx.i66.i.i, ptr noundef nonnull align 1 dereferenceable(183) %.sroa.4.i.sroa.0.i.i, i64 183, i1 false), !noalias !6160
  store ptr %i.dv, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !6160
  store <2 x ptr> %i.ek, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !6160
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i8 %i.ef, ptr %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i66.sroa_idx.i.i, align 8, !noalias !6160
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6163
  %i.em = call noundef ptr @mi_malloc_aligned(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !6163 ; 14 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.aq, label %bb.at, !prof !304

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #43
          to label %.noexc.i67.i.i unwind label %bb.ar, !noalias !6166

.noexc.i67.i.i:                                   ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr18654drop_in_place$LT$$LP$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$C$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_http..error..DispatchError$C$$LP$$RP$$GT$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$RP$$GT$17h61ce96f9cdb1510cE"(ptr noalias noundef align 8 dereferenceable(216) %i.ej)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i" unwind label %bb.as, !noalias !6166

bb.as:                                            ; preds = %bb.ar
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6166
  unreachable

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.em, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !6166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0106.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6070
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !6070
  %i.er = and i64 %i.eq, 9223372036854775807
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.av, !prof !222

bb.av:                                            ; preds = %bb.au
  %i.et = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.et, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store atomic i8 1, ptr %i.ai monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.eu = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.ev = icmp eq i32 %i.eu, 2
  br i1 %i.ev, label %bb.ax, label %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit", !prof !29

bb.ax:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z)
  br label %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"

bb.ay:                                            ; preds = %bb.bb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.az:                                            ; preds = %bb.ai, %bb.t
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ey = load ptr, ptr %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !6070, !noundef !27 ; 3 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fa = load i64, ptr %i.ey, align 8, !noalias !6167, !noundef !27
  %i.fb = add i64 %i.fa, -1                       ; 2 uses
  store i64 %i.fb, ptr %i.ey, align 8, !noalias !6167
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.bb, label %.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %.sroa.04.sroa.6.sroa.10.0..sroa.04.sroa.6.0..sroa_idx.sroa_idx.i.i)
          to label %.thread.i.i unwind label %bb.ay

.thread.i.i:                                      ; preds = %bb.bb, %bb.ba, %bb.az, %bb.aa, %bb.z, %.body.i.i.i
  %.pn.pn120.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.ex, %bb.ba ], [ %i.ex, %bb.bb ], [ %i.ex, %bb.az ], [ %.pn.i.i.i, %bb.aa ], [ %.pn.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6176)
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !6176, !noalias !6070
  %i.fd = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i", label %bb.bc

bb.bc:                                            ; preds = %.thread.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !6176, !noalias !6070, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val1.i.i.i) #38, !noalias !6176
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17haa6b05cad5d2dbeeE.exit.i.i"

"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6064
  store ptr %i.em, ptr %i.t, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6179)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %.val.i = load i8, ptr %i.ff, align 1, !range !214, !noalias !6179, !noundef !27
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6179
  call void @llvm.experimental.noalias.scope.decl(metadata !6182)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2226)
          to label %.noexc unwind label %bb.bo

.noexc:                                           ; preds = %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fh, i64 32, i1 false), !alias.scope !6185, !noalias !6179
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.fj, align 8, !alias.scope !6187, !noalias !6188
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.fl = invoke fastcc ptr @"_ZN336_$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$u20$as$u20$actix_service..ServiceFactory$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$11new_service17hfe4bd13bfceb9ab1E"(ptr noundef nonnull align 8 %i.fk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc6 unwind label %bb.bo   ; 3 uses

.noexc6:                                          ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6179
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 224
  %i.fn = load i8, ptr %i.fm, align 8, !range !188, !noalias !6179, !noundef !27
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.noexc6
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @690, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1049) #43
          to label %.noexc.i.i unwind label %bb.bf, !noalias !6179

.noexc.i.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %.noexc6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 208 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !6179, !noundef !27 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i3, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$actix_utils..future..ready..Ready$LT$core..result..Result$LT$actix_http..h1..expect..ExpectHandler$C$actix_http..error..Error$GT$$GT$$GT$17hb61cad79c416a66aE"(i64 1, ptr null) #44
          to label %.thread.i.i5 unwind label %bb.bn, !noalias !6179

bb.bg:                                            ; preds = %bb.be
  %.val.i.i.i4 = load i64, ptr %i.fq, align 8, !noalias !6179, !noundef !27 ; 2 uses
  %i.fs = icmp ne i64 %.val.i.i.i4, 0
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add i64 %.val.i.i.i4, 1                 ; 2 uses
  store i64 %i.ft, ptr %i.fq, align 8, !noalias !6179
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.bh, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i, !prof !29

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i, %bb.be
  %i.fv = phi <2 x ptr> [ %i.gb, %_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i ], [ <ptr null, ptr undef>, %bb.be ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 200 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !6179, !nonnull !27, !noundef !27 ; 2 uses
  %.val.i14.i.i = load i64, ptr %i.fx, align 8, !noalias !6179, !noundef !27 ; 2 uses
  %i.fy = icmp ne i64 %.val.i14.i.i, 0
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add i64 %.val.i14.i.i, 1                ; 2 uses
  store i64 %i.fz, ptr %i.fx, align 8, !noalias !6179
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.bj, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i, !prof !29

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17ha1159b7163cde41fE.exit.i.i: ; preds = %bb.bg
  %i.gb = load <2 x ptr>, ptr %i.fp, align 8, !noalias !6179
  br label %bb.bi

_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i: ; preds = %bb.bi
  %i.gc = load ptr, ptr %i.fw, align 8, !noalias !6179, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6179
  store i64 1, ptr %i.b, align 8, !noalias !6179
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.gd, align 8, !noalias !6179
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.ge, align 8, !noalias !6179
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.fl, ptr %i.gf, align 8, !noalias !6179
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @993, ptr %i.gg, align 8, !noalias !6179
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.gc, ptr %i.gh, align 8, !noalias !6179
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store <2 x ptr> %i.fv, ptr %i.gi, align 8, !noalias !6179
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i8 0, ptr %i.gj, align 8, !noalias !6179
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6189
  %i.gk = call noundef ptr @mi_malloc_aligned(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !6189 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.bk, label %bb.bq, !prof !304

bb.bk:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #43
          to label %.noexc15.i.i unwind label %bb.bl, !noalias !6179

.noexc15.i.i:                                     ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr6335drop_in_place$LT$$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$u20$as$u20$actix_service..ServiceFactory$LT$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$GT$$GT$..new_service..$u7b$$u7b$closure$u7d$$u7d$$GT$17he48e58c6e0763df2E"(ptr noundef nonnull align 8 dereferenceable(104) %i.b) #44
          to label %.body7 unwind label %bb.bm, !noalias !6179

bb.bm:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6179
  unreachable

bb.bn:                                            ; preds = %.thread.i.i5, %bb.bf
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !6179
  unreachable

.thread.i.i5:                                     ; preds = %bb.bf
  invoke fastcc void @"_ZN4core3ptr3417drop_in_place$LT$actix_service..map_err..MapErrServiceFuture$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$GT$17h4d7799596b787bb8E"(ptr nonnull %i.fl, ptr nonnull @993) #44
          to label %.body7 unwind label %bb.bn, !noalias !6179

bb.bo:                                            ; preds = %.noexc, %"_ZN74_$LT$F$u20$as$u20$actix_server..service..ServerServiceFactory$LT$I$GT$$GT$6create17h3cbe8580502b9eb3E.exit"
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.bl, %.thread.i.i5, %bb.bo
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.gp, %bb.bo ], [ %i.fr, %.thread.i.i5 ], [ %i.gm, %bb.bl ] ; 2 uses
  %i.gq = load i64, ptr %i.em, align 8, !noalias !6192, !noundef !27
  %i.gr = add i64 %i.gq, -1                       ; 2 uses
  store i64 %i.gr, ptr %i.em, align 8, !noalias !6192
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.bp, label %common.resume

bb.bp:                                            ; preds = %.body7
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9ff7ce6c66506ac7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t)
          to label %common.resume unwind label %bb.bx

bb.bq:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h93f297c93263757dE.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.gk, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !6179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6179
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i8 %.val.i, ptr %i.gt, align 8, !alias.scope !6179
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.gk, ptr %i.gu, align 8, !alias.scope !6179
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr @669, ptr %i.gv, align 8, !alias.scope !6179
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  store i8 3, ptr %i.gw, align 1, !alias.scope !6179
  store ptr null, ptr %i.u, align 8, !alias.scope !6179
  %i.gx = load i64, ptr %i.em, align 8, !noalias !6199, !noundef !27
  %i.gy = add i64 %i.gx, -1                       ; 2 uses
  store i64 %i.gy, ptr %i.em, align 8, !noalias !6199
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.br, label %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9ff7ce6c66506ac7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12" unwind label %bb.bw

"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12": ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ha, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false)
  store i64 %i.w, ptr %i.s, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i8 0, ptr %i.hb, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6206
  %i.hc = call noundef ptr @mi_malloc_aligned(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !6206 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.bs, label %bb.bv, !prof !304

bb.bs:                                            ; preds = %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #43
          to label %.noexc13 unwind label %bb.bt

.noexc13:                                         ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr2276drop_in_place$LT$$LT$actix_server..service..StreamNewService$LT$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$GT$$u20$as$u20$actix_server..service..InternalServiceFactory$GT$..create..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7d3900482ca3b4c2E"(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #44
          to label %common.resume unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.bv:                                            ; preds = %"_ZN4core3ptr18737drop_in_place$LT$actix_service..and_then..AndThenServiceFactory$LT$actix_service..fn_service..FnServiceFactory$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRe12"
end_hunk_0
begin_hunk_1_@"_ZN2h25share19SendStream$LT$B$GT$9send_data17hcde1c04e43a9433fE":bb.a
  store atomic i8 1, ptr %i.cd monotonic, align 1, !noalias !17142
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.dz, %.noexc24.i, %bb.dx, %bb.dw
  %i.nx = atomicrmw xchg ptr %i.bt, i32 0 release, align 4, !noalias !17142
  %i.ny = icmp eq i32 %i.nx, 2
  br i1 %i.ny, label %bb.ea, label %"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E.exit.i", !prof !29

bb.ea:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.bt)
          to label %"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E.exit.i" unwind label %bb.m, !noalias !17142

"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E.exit.i": ; preds = %bb.ea, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17142
  br i1 %i.bk, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i, label %bb.eb

bb.eb:                                            ; preds = %"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E.exit.i"
  %i.nz = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !17142
  %i.oa = and i64 %i.nz, 9223372036854775807
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i, label %.noexc27.i, !prof !222

.noexc27.i:                                       ; preds = %bb.eb
  %i.oc = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !17142
  br i1 %i.oc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc27.i
  store atomic i8 1, ptr %i.bf monotonic, align 1, !noalias !17142
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i: ; preds = %bb.ec, %.noexc27.i, %bb.eb, %"_ZN4core3ptr123drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$17h677130d5ecff7219E.exit.i"
  %i.od = atomicrmw xchg ptr %i.aw, i32 0 release, align 4, !noalias !17142
  %i.oe = icmp eq i32 %i.od, 2
  br i1 %i.oe, label %bb.ed, label %"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit", !prof !29

bb.ed:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.aw), !noalias !17142
  br label %"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit"

bb.ee:                                            ; preds = %.body5.thread.i, %.body22.i, %.body.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17137
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit.i": ; preds = %.body5.thread.i, %bb.d
  %.pn344.i = phi { ptr, i32 } [ %.pn345.i, %.body5.thread.i ], [ %.pn.i, %bb.d ]
  resume { ptr, i32 } %.pn344.i

.body5.thread.i:                                  ; preds = %bb.g, %.body5.thread48.i, %bb.d
  %.pn345.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body5.thread48.i ], [ %.pn.i, %bb.d ], [ %i.bi, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17286)
  call void @llvm.experimental.noalias.scope.decl(metadata !17289)
  %i.og = load ptr, ptr %2, align 8, !alias.scope !17292, !noalias !17137, !nonnull !27, !align !148, !noundef !27
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !17293, !nonnull !27, !noundef !27
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !17292, !noalias !17137, !noundef !27
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.on = load i64, ptr %i.om, align 8, !alias.scope !17292, !noalias !17137, !noundef !27
  invoke void %i.oi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef %i.ol, i64 noundef %i.on)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h502274557bcf9bdcE.exit.i" unwind label %bb.ee, !noalias !17137, !inline_history !1185

"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i26.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.not = icmp eq i8 %.sroa.0.0.i.i.i.i, 12
  br i1 %.not, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit"
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i.i.i.i, ptr %.sroa.44.0..sroa_idx, align 1
  br label %bb.eg

bb.eg:                                            ; preds = %"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit", %bb.ef
  %.sink = phi i8 [ 3, %bb.ef ], [ 5, %"_ZN2h25proto7streams7streams18StreamRef$LT$B$GT$9send_data17ha756a6e7fe244b35E.exit" ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN2h26server21SendResponse$LT$B$GT$13send_response17h877030ac1f2ef7cfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [288 x i8], align 8               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [136 x i8], align 8               ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = zext i1 %3 to i8
  store i8 %i.l, ptr %i.k, align 1, !noalias !17299
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17297, !noalias !17294, !align !148, !noundef !27 ; 7 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17300)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17300, !noalias !17299, !noundef !27 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17303)
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !17306, !noalias !17299, !nonnull !27, !noundef !27 ; 5 uses
  %.val13.i.i.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !17307
  %i.s = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = bitcast <16 x i1> %i.s to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i", %bb.c
  %.sroa.07.018.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.07.1.i.i.i, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.6.1.i.i.i, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i = phi i16 [ %i.u, %bb.c ], [ %i.ad, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.ag, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i" ]
  %.not13.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h29b049deb7d206fdE.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.sroa.6.017.i.i.i, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.07.018.i.i.i, %bb.d ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !17310
  %i.x = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -512 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.x to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h29b049deb7d206fdE.exit.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h29b049deb7d206fdE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.017.i.i.i, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i ]
  %.sroa.07.1.i.i.i = phi ptr [ %.sroa.07.018.i.i.i, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aa = add i16 %.lcssa.i.i.i.i, -1
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = and i16 %i.aa, %.lcssa.i.i.i.i
  %i.ae = sub nsw i64 0, %i.ac
  %i.af = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = add i64 %.sroa.109.015.i.i.i, -1        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 -16
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !17313 ; 5 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 -8
  %.val6.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !17313, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.aj = load ptr, ptr %.val6.i.i.i, align 8, !invariant.load !27, !noalias !17313 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h29b049deb7d206fdE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.aj(ptr noundef nonnull %.val.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !17313

bb.f:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h29b049deb7d206fdE.exit.i.i.i"
  %i.ak = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !28, !invariant.load !27, !noalias !17313
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !17313
  br label %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !28, !invariant.load !27, !noalias !17313
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.g
  tail call void @mi_free(ptr noundef nonnull %.val.i.i.i) #38, !noalias !17313
  br label %.body.i.i

"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.f
  %i.ar = icmp eq i64 %i.ag, 0
  br i1 %i.ar, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h4e141dd40fd7a632E.exit.i.i, label %bb.d

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !17300, !noalias !17299, !noundef !27 ; 5 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.body.i.i
  %i.av = add i64 %i.at, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 -1, i64 %i.av, i1 false), !noalias !17314
  %i.aw = icmp ult i64 %i.at, 8
  %i.ax = add i64 %i.at, 1
  %i.ay = lshr i64 %i.ax, 3
  %i.az = mul nuw i64 %i.ay, 7
  %spec.select.i.i.i.i.i = select i1 %i.aw, i64 %i.at, i64 %i.az
  br label %bb.j

_ZN9hashbrown3raw13RawTableInner13drop_elements17h4e141dd40fd7a632E.exit.i.i: ; preds = %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17hd7bc5815e8f36c1eE.exit.i.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !17300, !noalias !17299, !noundef !27 ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %"_ZN4core3ptr419drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h680b49a0c48a140dE.exit5.i.i", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h4e141dd40fd7a632E.exit.i.i
  %i.bd = add i64 %i.bb, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 -1, i64 %i.bd, i1 false), !noalias !17314
  %i.be = icmp ult i64 %i.bb, 8
  %i.bf = add i64 %i.bb, 1
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = mul nuw i64 %i.bg, 7
  %spec.select.i.i.i4.i.i = select i1 %i.be, i64 %i.bb, i64 %i.bh
  br label %"_ZN4core3ptr419drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h680b49a0c48a140dE.exit5.i.i"

"_ZN4core3ptr419drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h680b49a0c48a140dE.exit5.i.i": ; preds = %bb.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h4e141dd40fd7a632E.exit.i.i
  %i.bi = phi i64 [ %spec.select.i.i.i4.i.i, %bb.i ], [ 0, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h4e141dd40fd7a632E.exit.i.i ]
  store i64 0, ptr %i.o, align 8, !alias.scope !17300, !noalias !17299
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !alias.scope !17300, !noalias !17299
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i"

bb.j:                                             ; preds = %bb.h, %.body.i.i
  %i.bk = phi i64 [ %spec.select.i.i.i.i.i, %bb.h ], [ 0, %.body.i.i ]
  store i64 0, ptr %i.o, align 8, !alias.scope !17300, !noalias !17299
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.bk, ptr %i.bl, align 8, !alias.scope !17300, !noalias !17299
  br label %.body5.thread.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i": ; preds = %"_ZN4core3ptr419drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h680b49a0c48a140dE.exit5.i.i", %bb.b, %bb.a
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !17294, !noalias !17297, !nonnull !27, !noundef !27 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 6 uses
  %i.bo = cmpxchg ptr %i.bn, i32 0, i32 1 acquire monotonic, align 4, !noalias !17315
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  br i1 %i.bp, label %.noexc.i, label %bb.k, !prof !222

bb.k:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i"
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc.i unwind label %.body5.thread51.i, !noalias !17299

.noexc.i:                                         ; preds = %bb.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17hbe030e80ce627310E.exit.i"
  %i.bq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !17315
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.l, !prof !222

bb.l:                                             ; preds = %.noexc.i
  %i.bt = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc17.i unwind label %.body5.thread51.i, !noalias !17299

.noexc17.i:                                       ; preds = %bb.l
  %i.bu = xor i1 %i.bt, true
  %i.bv = zext i1 %i.bu to i8
  br label %bb.n

bb.m:                                             ; preds = %.body.i
  br i1 %.sroa.0.2.i, label %.body5.thread.i, label %bb.ar

.body5.thread51.i:                                ; preds = %bb.l, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body5.thread.i

bb.n:                                             ; preds = %.noexc17.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.bv, %.noexc17.i ], [ 0, %.noexc.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 20 ; 2 uses
  %i.bx = load atomic i8, ptr %i.bw monotonic, align 1, !noalias !17315
  %.not54.i = icmp eq i8 %i.bx, 0
  br i1 %.not54.i, label %bb.s, label %bb.o, !prof !222

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17318
  store ptr %i.bn, ptr %i.e, align 8, !noalias !17318
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.by, align 8, !noalias !17318
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1083, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @881) #43
          to label %bb.q unwind label %bb.p, !noalias !17322

bb.p:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr137drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17haa3b397d98123c1eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #44
          to label %.body5.thread.i unwind label %bb.r, !noalias !17322

bb.q:                                             ; preds = %bb.o
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17322
  unreachable

bb.s:                                             ; preds = %bb.n
  %i.cb = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 456
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cg = load <2 x i32>, ptr %i.ce, align 8, !alias.scope !17294, !noalias !17297
  store <2 x i32> %i.cg, ptr %i.cf, align 8, !noalias !17299
  store ptr %i.cd, ptr %i.j, align 8, !noalias !17299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17299
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  store ptr %i.ch, ptr %i.i, align 8, !noalias !17299
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !17294, !noalias !17297, !nonnull !27, !noundef !27 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 6 uses
  %i.cl = cmpxchg ptr %i.ck, i32 0, i32 1 acquire monotonic, align 4, !noalias !17323
  %i.cm = extractvalue { i32, i1 } %i.cl, 1
  br i1 %i.cm, label %.noexc20.i, label %bb.t, !prof !222

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.ck)
          to label %.noexc20.i unwind label %bb.v, !noalias !17299

.noexc20.i:                                       ; preds = %bb.t, %bb.s
  %i.cn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !17323
  %i.co = and i64 %i.cn, 9223372036854775807
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.w, label %bb.u, !prof !222

bb.u:                                             ; preds = %.noexc20.i
  %i.cq = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc21.i unwind label %bb.v, !noalias !17299

.noexc21.i:                                       ; preds = %bb.u
  %i.cr = xor i1 %i.cq, true
  %i.cs = zext i1 %i.cr to i8
  br label %bb.w

.body.i:                                          ; preds = %.body25.i, %bb.y, %bb.v
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body26.i, %.body25.i ], [ %i.ct, %bb.v ], [ %i.cx, %bb.y ] ; 2 uses
  %.sroa.0.2.i = phi i1 [ false, %.body25.i ], [ %.sroa.0.3.i, %bb.v ], [ true, %bb.y ]
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..streams..Inner$GT$$GT$17he31f0f29d265bd64E"(ptr nonnull %i.bn, i8 %.sroa.01.0.i.i.i) #44
          to label %bb.m unwind label %bb.aq, !noalias !17299

bb.v:                                             ; preds = %bb.am, %bb.ak, %bb.u, %bb.t
  %.sroa.0.3.i = phi i1 [ false, %bb.am ], [ true, %bb.u ], [ true, %bb.t ], [ false, %bb.ak ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %.noexc21.i, %.noexc20.i
  %.sroa.01.0.i.i18.i = phi i8 [ %i.cs, %.noexc21.i ], [ 0, %.noexc20.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 20 ; 2 uses
  %i.cv = load atomic i8, ptr %i.cu monotonic, align 1, !noalias !17323
  %.not55.i = icmp eq i8 %i.cv, 0
  br i1 %.not55.i, label %bb.ab, label %bb.x, !prof !222

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17326
  store ptr %i.ck, ptr %i.f, align 8, !noalias !17326
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.01.0.i.i18.i, ptr %i.cw, align 8, !noalias !17326
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1072, i64 noundef 43, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1080, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @882) #43
          to label %bb.z unwind label %bb.y, !noalias !17330

bb.y:                                             ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr161drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$h2..proto..streams..buffer..Buffer$LT$h2..frame..Frame$GT$$GT$$GT$$GT$17h257f001828eb7f4bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #44
          to label %.body.i unwind label %bb.aa, !noalias !17330

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17330
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.cz = trunc nuw i8 %.sroa.01.0.i.i18.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17299
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.da, ptr %i.h, align 8, !noalias !17299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(112) %2, i64 112, i1 false), !noalias !17294
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.k, ptr %i.db, align 8, !noalias !17299
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr %i.i, ptr %i.dc, align 8, !noalias !17299
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %i.h, ptr %i.dd, align 8, !noalias !17299
  %i.de = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.ac unwind label %bb.af, !noalias !17331

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !range !6276, !noalias !17331, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17335
  %i.dh = invoke noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %.noexc.i.i unwind label %bb.ad, !noalias !17337

.noexc.i.i:                                       ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 276
  %i.dj = load i32, ptr %i.di, align 4, !noalias !17337, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(112) %2, i64 112, i1 false), !noalias !17294
  %i.dk = load i8, ptr %i.k, align 1, !range !188, !noalias !17337, !noundef !27
  %i.dl = trunc nuw i8 %i.dk to i1
  invoke void @_ZN2h26server4Peer20convert_send_message17hd8879862587a93faE(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.c, i32 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.b, i1 noundef zeroext %i.dl)
          to label %.noexc22.i unwind label %bb.ah, !noalias !17299

.noexc22.i:                                       ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17341
end_hunk_1
begin_hunk_2_@"_ZN336_$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$u20$as$u20$actix_service..ServiceFactory$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$11new_service17hfe4bd13bfceb9ab1E":bb.a
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$17h56669510de544051E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.ii)
          to label %"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he23cb79174a69969E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bz, !noalias !17544

bb.bz:                                            ; preds = %bb.ca, %"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he23cb79174a69969E.exit.i.i.i.i.i.i.i.i.i.i", %bb.by
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17541
  unreachable

"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he23cb79174a69969E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.by, %bb.bx
  invoke fastcc void @"_ZN4core3ptr195drop_in_place$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$17h18ca1866fc3b99cfE"(ptr nonnull %i.il, ptr nonnull %i.im) #44
          to label %bb.ca unwind label %bb.bz, !noalias !17541

bb.ca:                                            ; preds = %"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$17he23cb79174a69969E.exit.i.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17h888e2c636a884af5E"(ptr noalias noundef align 8 dereferenceable(152) %i.o) #44
          to label %bb.cb unwind label %bb.bz, !noalias !17541

bb.cb:                                            ; preds = %bb.ca
  invoke fastcc void @"_ZN4core3ptr424drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$GT$$GT$17he471f50c191cac48E"(ptr nonnull %.sroa.2.0.copyload, ptr nonnull %.sroa.4.014.i.i.i.i.i.i.i.i) #44
          to label %.body.i.i.i.i.i unwind label %bb.cc, !noalias !17547

bb.cc:                                            ; preds = %bb.cb
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17547
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b8b287e01955a16E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %i.o, i64 152, i1 false), !noalias !17547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.014.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.4.sroa.0.i.i.i.i.i.i.i.i.i, i64 152, i1 false), !noalias !17547
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014.i.i.i.i.i.i.i.i, i64 152
  store ptr %i.il, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !17547
  %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014.i.i.i.i.i.i.i.i, i64 160
  store ptr %i.im, ptr %.sroa.4.sroa.5.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !17547
  %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014.i.i.i.i.i.i.i.i, i64 168
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !17547
  %.sroa.4.sroa.7.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.014.i.i.i.i.i.i.i.i, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ii, i64 24, i1 false), !noalias !17533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17533
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.id
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.bw

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b8b287e01955a16E.exit.i.i.i.i.i.i.i.i", %bb.bv
  %i.is = phi ptr [ %.sroa.2.0.copyload, %bb.bv ], [ %i.id, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b8b287e01955a16E.exit.i.i.i.i.i.i.i.i" ] ; 6 uses
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iu = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.iv = sub nuw i64 %i.it, %i.iu                ; 7 uses
  %i.iw = udiv exact i64 %i.iv, 200               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17548
  store ptr %.sroa.2.0.copyload, ptr %i.q, align 8, !noalias !17548
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.iw, ptr %i.ix, align 8, !noalias !17548
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.0181.0.copyload, ptr %i.iy, align 8, !noalias !17548
  call void @llvm.experimental.noalias.scope.decl(metadata !17549)
  %i.iz = ptrtoint ptr %i.id to i64
  %i.ja = sub nuw i64 %i.iz, %i.it
  %i.jb = udiv exact i64 %i.ja, 200               ; 3 uses
  store i64 0, ptr %.sroa.0183.sroa.5.0..sroa_idx, align 8, !alias.scope !17552, !noalias !17532
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !17552, !noalias !17532
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0183.sroa.4.0..sroa_idx, align 8, !alias.scope !17552, !noalias !17532
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0183.sroa.6.0..sroa_idx, align 8, !alias.scope !17552, !noalias !17532
  %i.jc = icmp eq ptr %i.id, %i.is
  br i1 %i.jc, label %._crit_edge, label %.lr.ph

bb.cd:                                            ; preds = %.lr.ph
  %i.jd = icmp eq i64 %i.jf, %i.jb
  br i1 %i.jd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i.i.i.i.i, %bb.cd
  %.sroa.0.0.i.i.i.i.i.i.i74 = phi i64 [ %i.jf, %bb.cd ], [ 0, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw [200 x i8], ptr %i.is, i64 %.sroa.0.0.i.i.i.i.i.i.i74
  %i.jf = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i74, 1 ; 4 uses
  invoke fastcc void @"_ZN4core3ptr431drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$17h2a8767f7010fc518E"(ptr noalias noundef align 8 dereferenceable(200) %i.je)
          to label %bb.cd unwind label %bb.cf, !noalias !17553

bb.ce:                                            ; preds = %.lr.ph77
  %i.jg = add i64 %.sroa.0.1.i.i.i.i.i.i.i75, 1   ; 2 uses
  %i.jh = icmp eq i64 %i.jg, %i.jb
  br i1 %i.jh, label %.body5.i.i.i.i.i, label %.lr.ph77

bb.cf:                                            ; preds = %.lr.ph
  %i.ji = landingpad { ptr, i32 }
          cleanup
  %i.jj = icmp eq i64 %i.jf, %i.jb
  br i1 %i.jj, label %.body5.i.i.i.i.i, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.cf, %bb.ce
  %.sroa.0.1.i.i.i.i.i.i.i75 = phi i64 [ %i.jg, %bb.ce ], [ %i.jf, %bb.cf ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [200 x i8], ptr %i.is, i64 %.sroa.0.1.i.i.i.i.i.i.i75
  invoke fastcc void @"_ZN4core3ptr431drop_in_place$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$GT$17h2a8767f7010fc518E"(ptr noalias noundef align 8 dereferenceable(200) %i.jk) #44
          to label %bb.ce unwind label %bb.cg, !noalias !17553

bb.cg:                                            ; preds = %.lr.ph77
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17553
  unreachable

.body5.i.i.i.i.i:                                 ; preds = %bb.ce, %bb.cf
  invoke fastcc void @"_ZN4core3ptr850drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$C$core..option..Option$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$$RP$$C$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$GT$$GT$17hb4380c75598859f3E"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #44
          to label %.body.i.i.i.i.i unwind label %bb.ch, !noalias !17548

bb.ch:                                            ; preds = %.body5.i.i.i.i.i, %.body.i.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17548
  unreachable

._crit_edge:                                      ; preds = %bb.cd, %.loopexit.i.i.i.i.i
  store i64 %.sroa.0181.0.copyload, ptr %i.al, align 8, !alias.scope !17554, !noalias !17555
  %i.jn = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.jn, align 8, !alias.scope !17554, !noalias !17555
  %i.jo = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.iw, ptr %i.jo, align 8, !alias.scope !17554, !noalias !17555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17500
  %i.jp = icmp ugt i64 %.sroa.0181.0.copyload, %i.iw
  br i1 %i.jp, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %._crit_edge
  %i.jq = icmp eq ptr %i.is, %.sroa.2.0.copyload
  br i1 %i.jq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", label %bb.cj

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.ci
  call void @mi_free(ptr noundef nonnull %.sroa.2.0.copyload) #38, !noalias !17556
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.jr = call noundef ptr @mi_realloc_aligned(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef range(i64 1, 0) %i.iv, i64 noundef range(i64 1, 9) 8) #38, !noalias !17556 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.iv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @992) #43
          to label %.noexc.i104 unwind label %bb.cl, !noalias !17565

.noexc.i104:                                      ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr401drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$GT$$GT$17h5342125336e418ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.al) #44
          to label %.body101 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !17565
  unreachable

bb.cn:                                            ; preds = %bb.cj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %._crit_edge
  %.sroa.42.0.copyload.i = phi ptr [ %i.jr, %bb.cj ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ %.sroa.2.0.copyload, %._crit_edge ] ; 3 uses
  %i.jv = icmp ult i64 %i.iv, -9223372036854775616
  call void @llvm.assume(i1 %i.jv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.jw = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.iv)
          to label %.noexc.i107 unwind label %bb.cs, !noalias !17566 ; 2 uses

.noexc.i107:                                      ; preds = %bb.cn
  %i.jx = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.iv)
          to label %.noexc22.i unwind label %bb.cs, !noalias !17566 ; 2 uses

.noexc22.i:                                       ; preds = %.noexc.i107
  %i.jy = extractvalue { i64, i64 } %i.jx, 0      ; 2 uses
  %i.jz = extractvalue { i64, i64 } %i.jx, 1      ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.noexc22.i
  %i.kb = inttoptr i64 %i.jy to ptr
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h636a14514981a43dE.exit.i.i.i.i"

bb.cp:                                            ; preds = %.noexc22.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !17569
  %i.kc = call noundef ptr @mi_malloc_aligned(i64 noundef %i.jz, i64 noundef range(i64 1, -9223372036854775807) %i.jy) #38, !noalias !17569
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h636a14514981a43dE.exit.i.i.i.i"

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h636a14514981a43dE.exit.i.i.i.i": ; preds = %bb.cp, %bb.co
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.kb, %bb.co ], [ %i.kc, %bb.cp ] ; 5 uses
  %i.kd = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i, null
  br i1 %i.kd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h636a14514981a43dE.exit.i.i.i.i"
  %i.ke = extractvalue { i64, i64 } %i.jw, 1
  %i.kf = extractvalue { i64, i64 } %i.jw, 0
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.kf, i64 noundef %i.ke) #43
          to label %.noexc23.i unwind label %bb.cs, !noalias !17566

.noexc23.i:                                       ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h636a14514981a43dE.exit.i.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !noalias !17569
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.kg, align 8, !noalias !17569
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kh, ptr nonnull align 8 %.sroa.42.0.copyload.i, i64 %i.iv, i1 false)
  %i.ki = icmp eq ptr %i.is, %.sroa.2.0.copyload
  br i1 %i.ki, label %bb.cu, label %"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i"

"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i": ; preds = %bb.cr
  call void @mi_free(ptr noundef nonnull align 8 %.sroa.42.0.copyload.i) #38
  %.pre = load ptr, ptr %i.am, align 8
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq, %.noexc.i107, %bb.cn
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr413drop_in_place$LT$alloc..boxed..Box$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h74fa3aaae0b20d3dE"(ptr nonnull align 8 %.sroa.42.0.copyload.i, i64 range(i64 0, 46116860184273880) %i.iw) #44
          to label %..body101_crit_edge unwind label %bb.ct

..body101_crit_edge:                              ; preds = %bb.cs
  %.pre429 = load ptr, ptr %i.am, align 8, !alias.scope !17493
  br label %.body101

bb.ct:                                            ; preds = %bb.cs
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.cu:                                            ; preds = %"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i", %bb.cr
  %i.kl = phi ptr [ %.pre, %"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i" ], [ %i.ib, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store ptr %.sroa.07.0.i.i.i.i.i.i.i, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.iw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.kl, ptr %.sroa.5.0..sroa_idx, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 6 uses
  %i.kp = load i64, ptr %i.ko, align 8, !noundef !27
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @996) #43
          to label %bb.gk unwind label %bb.gr

bb.cw:                                            ; preds = %bb.cu
  store i64 -1, ptr %i.ko, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17572)
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !17572, !noundef !27 ; 3 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.df, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !17575)
  %i.ku = load i64, ptr %i.ks, align 8, !noalias !17578, !noundef !27
  %i.kv = add i64 %i.ku, -1                       ; 2 uses
  store i64 %i.kv, ptr %i.ks, align 8, !noalias !17578
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %bb.cy, label %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h38720c95b5756ccdE.exit.i.i"

bb.cy:                                            ; preds = %bb.cx
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he24a478c1366d808E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kr)
          to label %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h38720c95b5756ccdE.exit.i.i" unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kn, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17583)
  call void @llvm.experimental.noalias.scope.decl(metadata !17586)
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !17589, !nonnull !27, !noundef !27 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !noalias !17590, !noundef !27
  %i.lb = add i64 %i.la, -1                       ; 2 uses
  store i64 %i.lb, ptr %i.kz, align 8, !noalias !17590
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %bb.da, label %.body111

bb.da:                                            ; preds = %bb.cz
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ky)
          to label %.body111 unwind label %bb.dc

"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h38720c95b5756ccdE.exit.i.i": ; preds = %bb.cy, %bb.cx
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kn, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17591)
  call void @llvm.experimental.noalias.scope.decl(metadata !17594)
  %i.le = load ptr, ptr %i.ld, align 8, !alias.scope !17597, !nonnull !27, !noundef !27 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !noalias !17598, !noundef !27
  %i.lg = add i64 %i.lf, -1                       ; 2 uses
  store i64 %i.lg, ptr %i.le, align 8, !noalias !17598
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %bb.db, label %bb.df

bb.db:                                            ; preds = %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h38720c95b5756ccdE.exit.i.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ld)
          to label %bb.df unwind label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body111

.body111:                                         ; preds = %bb.cz, %bb.da, %bb.dd
  %eh.lpad-body112 = phi { ptr, i32 } [ %i.lj, %bb.dd ], [ %i.kx, %bb.da ], [ %i.kx, %bb.cz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.lk = load i64, ptr %i.ko, align 8, !noundef !27
  %i.ll = add i64 %i.lk, 1
  store i64 %i.ll, ptr %i.ko, align 8
  br label %bb.gs

bb.de:                                            ; preds = %bb.dg
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.df:                                            ; preds = %bb.db, %bb.cw, %"_ZN4core3ptr409drop_in_place$LT$alloc..rc..Rc$LT$$u5b$$LP$actix_router..resource..ResourceDef$C$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$C$core..cell..RefCell$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..guard..Guard$GT$$GT$$GT$$GT$$RP$$u5d$$GT$$GT$17h38720c95b5756ccdE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ln = load i64, ptr %i.ko, align 8, !noundef !27
  %i.lo = add i64 %i.ln, 1
  store i64 %i.lo, ptr %i.ko, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.lq = load i64, ptr %i.lp, align 8, !noundef !27
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @995) #43
          to label %bb.gk unwind label %bb.de

.body118:                                         ; preds = %.body.i.i, %bb.dl, %bb.di
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.di ], [ %i.mn, %.body.i.i ], [ %i.mn, %bb.dl ]
  %i.ls = load i64, ptr %i.lp, align 8, !noundef !27
  %i.lt = add i64 %i.ls, 1
  store i64 %i.lt, ptr %i.lp, align 8
  br label %bb.gs

bb.dh:                                            ; preds = %bb.df
  store i64 -1, ptr %i.lp, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.0195.0.copyload = load i64, ptr %i.lu, align 8 ; 3 uses
  %.sroa.4196.0..sroa.029.0.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.4196.0.copyload = load ptr, ptr %.sroa.4196.0..sroa.029.0.sroa_idx, align 8, !nonnull !27, !noundef !27 ; 6 uses
  %.sroa.5197.0..sroa.029.0.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.5197.0.copyload = load i64, ptr %.sroa.5197.0..sroa.029.0.sroa_idx, align 8 ; 3 uses
  store i64 0, ptr %i.lu, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4196.0..sroa.029.0.sroa_idx, align 8
  store i64 0, ptr %.sroa.5197.0..sroa.029.0.sroa_idx, align 8
  %i.lv = icmp ult i64 %.sroa.5197.0.copyload, 60680079189834052
  call void @llvm.assume(i1 %i.lv)
  %.idx351 = mul nuw nsw i64 %.sroa.5197.0.copyload, 152
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.4196.0.copyload, i64 %.idx351 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %.sroa.4196.0.copyload, ptr %i.ak, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.0195.0.copyload, ptr %.sroa.5193.0..sroa_idx, align 8
  %.sroa.6194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.lw, ptr %.sroa.6194.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.lx = icmp eq i64 %.sroa.5197.0.copyload, 0
  br i1 %i.lx, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.lr.ph": ; preds = %bb.dh
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit"

bb.di:                                            ; preds = %bb.go, %bb.dj
  %.pn51 = phi { ptr, i32 } [ %i.ly, %bb.dj ], [ %i.uh, %bb.go ]
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$actix_router..resource..ResourceDef$GT$$GT$17hf831d7ee22c06fd8E"(ptr noalias noundef align 8 dereferenceable(32) %i.ak) #44
          to label %.body118 unwind label %bb.gi

bb.dj:                                            ; preds = %bb.gp
  %i.ly = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ma, ptr %.sroa.4192.0..sroa_idx, align 8
  br label %bb.di

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.lr.ph", %bb.gq
  %i.lz = phi ptr [ %.sroa.4196.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.lr.ph" ], [ %i.ma, %bb.gq ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 152 ; 5 uses
  %.sroa.0200.0.copyload201 = load i64, ptr %i.lz, align 8, !noalias !17599 ; 2 uses
  %.sroa.7.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx202, i64 144, i1 false), !noalias !17599
  %.not46 = icmp eq i64 %.sroa.0200.0.copyload201, 2
  br i1 %.not46, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.thread", label %bb.dk

bb.dk:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 %.sroa.0200.0.copyload201, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7, i64 144, i1 false)
  invoke void @_ZN9actix_web4rmap11ResourceMap3add17h2dd1882f0dcb8eccE(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.aj, ptr noundef null)
          to label %bb.gp unwind label %bb.go

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit", %bb.gq, %bb.dh
  %i.mb = phi ptr [ %.sroa.4196.0.copyload, %bb.dh ], [ %i.ma, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1fffb4096bf1f75dE.exit" ], [ %i.lw, %bb.gq ] ; 4 uses
end_hunk_2
begin_hunk_3_@"_ZN336_$LT$actix_web..app_service..AppInitService$LT$T$C$B$GT$$u20$as$u20$actix_service..Service$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$4call17hecb883afe6a62ec5E":bb.a

.thread82:                                        ; preds = %bb.u, %.body56, %.thread100
  %.sroa.09.095 = phi i1 [ true, %.thread100 ], [ false, %bb.u ], [ %.sroa.09.3, %.body56 ]
  %.sroa.010.193 = phi i1 [ true, %.thread100 ], [ false, %bb.u ], [ %.sroa.010.6, %.body56 ]
  %.sroa.011.191 = phi i1 [ true, %.thread100 ], [ false, %bb.u ], [ %.sroa.011.6, %.body56 ] ; 2 uses
  %.pn1989 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread100 ], [ %i.eh, %bb.u ], [ %.pn17, %.body56 ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hb4d88b82aebe5b43E"(ptr noalias noundef align 8 dereferenceable(24) %i.bx) #44
          to label %.thread96 unwind label %bb.mx

bb.nx:                                            ; preds = %.thread96
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h748ab6fed99f6cc4E"(ptr noalias noundef align 8 dereferenceable(8) %i.by) #44
          to label %bb.j unwind label %bb.mx

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66": ; preds = %bb.ny, %.thread73, %bb.nz, %bb.j
  %.sroa.011.079 = phi i1 [ %.sroa.011.191, %bb.j ], [ %.sroa.011.080, %bb.nz ], [ %.sroa.011.080, %.thread73 ], [ %.sroa.011.080, %bb.ny ]
  %.pn19.pn77 = phi { ptr, i32 } [ %.pn1989, %bb.j ], [ %.pn19.pn78, %bb.nz ], [ %.pn19.pn78, %.thread73 ], [ %.pn19.pn78, %bb.ny ] ; 3 uses
  br i1 %.sroa.011.079, label %bb.oa, label %.thread

.thread73:                                        ; preds = %bb.h, %bb.k, %bb.j
  %.sroa.011.080 = phi i1 [ %.sroa.011.191, %bb.j ], [ true, %bb.k ], [ true, %bb.h ] ; 3 uses
  %.pn19.pn78 = phi { ptr, i32 } [ %.pn1989, %bb.j ], [ %i.cw, %bb.k ], [ %i.cs, %bb.h ] ; 3 uses
  %i.aqz = icmp eq ptr %i.cj, null
  br i1 %i.aqz, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66", label %bb.ny

bb.ny:                                            ; preds = %.thread73
  %i.ara = load i64, ptr %i.cj, align 8, !noalias !19109, !noundef !27
  %i.arb = add i64 %i.ara, -1                     ; 2 uses
  store i64 %i.arb, ptr %i.cj, align 8, !noalias !19109
  %i.arc = icmp eq i64 %i.arb, 0
  br i1 %i.arc, label %bb.nz, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66"

bb.nz:                                            ; preds = %bb.ny
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66" unwind label %bb.mx

bb.oa:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66"
  %i.ard = load i64, ptr %i.ce, align 8, !noalias !19116, !noundef !27
  %i.are = add i64 %i.ard, -1                     ; 2 uses
  store i64 %i.are, ptr %i.ce, align 8, !noalias !19116
  %i.arf = icmp eq i64 %i.are, 0
  br i1 %i.arf, label %bb.ob, label %.thread

bb.ob:                                            ; preds = %bb.oa
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h51ddc8fe4b8f33f4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %.thread unwind label %bb.mx

.thread:                                          ; preds = %.thread158.thread.i.i, %.thread.i.i, %.thread.i, %bb.oa, %bb.ob, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66", %bb.oc
  %.pn19.pn.pn72 = phi { ptr, i32 } [ %i.cg, %bb.oc ], [ %.pn19.pn77, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit66" ], [ %.pn19.pn77, %bb.ob ], [ %.pn19.pn77, %bb.oa ], [ %.pn8144.i.i, %.thread.i.i ], [ %.pn43178.i, %.thread.i ], [ %.pn6.ph.i.i, %.thread158.thread.i.i ]
  resume { ptr, i32 } %.pn19.pn.pn72

bb.oc:                                            ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr255drop_in_place$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hf406fab2121f504fE"(ptr noalias noundef align 8 dereferenceable(80) %2) #44
          to label %.thread unwind label %bb.mx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3806ae596b40e51aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @80, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h3a0fff3711e2c9afE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @663, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7705f57adaa3ebe8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 1 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h90764588a7140bc4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1001, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hb1c76c172ed1f138E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @664, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hde3aa853ee81494cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @665, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf4d9fef1b488bcdaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1002, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN371_$LT$actix_web..app..App$LT$T$GT$$u20$as$u20$actix_service..IntoServiceFactory$LT$actix_web..app_service..AppInit$LT$T$C$B$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$12into_factory17hf4fe530717c79ae0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx30, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 9 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.6.0.copyload
  br i1 %i.e, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.f = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", label %bb.c

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.b
  tail call void @mi_free(ptr noundef nonnull %.sroa.4.0.copyload) #38, !noalias !19121
  br label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %.sroa.6.0.copyload, 4       ; 2 uses
  %i.h = tail call noundef ptr @mi_realloc_aligned(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 9) 8) #38, !noalias !19121 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1004) #43
          to label %.noexc.i unwind label %bb.e, !noalias !19130

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr351drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$GT$$GT$17h5491489f77ec8c79E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.d) #44
          to label %.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !19130
  unreachable

._crit_edge.i:                                    ; preds = %bb.a, %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  %.sroa.42.0.copyload.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ %.sroa.4.0.copyload, %bb.a ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.6.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.l)
  %i.m = shl nuw nsw i64 %.sroa.6.0.copyload, 4   ; 3 uses
  %i.n = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775793) %i.m)
          to label %.noexc.i11 unwind label %bb.k, !noalias !19131 ; 2 uses

.noexc.i11:                                       ; preds = %._crit_edge.i
  %i.o = invoke { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef range(i64 0, 9223372036854775793) %i.m)
          to label %.noexc22.i unwind label %bb.k, !noalias !19131 ; 2 uses

.noexc22.i:                                       ; preds = %.noexc.i11
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc22.i
  %i.s = inttoptr i64 %i.p to ptr
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h2cb131b69d52c34eE.exit.i.i.i.i"

bb.h:                                             ; preds = %.noexc22.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !19134
  %i.t = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.p) #38, !noalias !19134
  br label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h2cb131b69d52c34eE.exit.i.i.i.i"

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h2cb131b69d52c34eE.exit.i.i.i.i": ; preds = %bb.h, %bb.g
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 8 uses
  %i.u = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h2cb131b69d52c34eE.exit.i.i.i.i"
  %i.v = extractvalue { i64, i64 } %i.n, 1
  %i.w = extractvalue { i64, i64 } %i.n, 0
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.w, i64 noundef %i.v) #43
          to label %.noexc23.i unwind label %bb.k, !noalias !19131

.noexc23.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$19allocate_for_ptr_in28_$u7b$$u7b$closure$u7d$$u7d$17h2cb131b69d52c34eE.exit.i.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !noalias !19134
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.x, align 8, !noalias !19134
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 8 %.sroa.42.0.copyload.i, i64 %i.m, i1 false)
  %i.z = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.z, label %bb.m, label %"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i"

"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i": ; preds = %bb.j
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.42.0.copyload.i) #38
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %.noexc.i11, %._crit_edge.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr363drop_in_place$LT$alloc..boxed..Box$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$core..future..future..Future$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..data..DataFactory$GT$$C$$LP$$RP$$GT$$GT$$GT$$GT$$u5d$$GT$$GT$17hce74658b96e5f214E"(ptr nonnull align 8 %.sroa.42.0.copyload.i, i64 range(i64 0, 576460752303423488) %.sroa.6.0.copyload) #44
          to label %.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.m:                                             ; preds = %"_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf0a52d1d7eaa4853E.exit.i.i.i", %bb.j
  store ptr %.sroa.07.0.i.i.i.i.i.i.i, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !27, !noundef !27 ; 4 uses
  store ptr %i.ae, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ag, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !19137
  %i.ah = tail call noundef ptr @mi_malloc_aligned(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !19137 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.n, label %bb.r, !prof !304

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #43
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$17h94ebeecb40b31986E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.body:                                            ; preds = %bb.o
  %i.al = load i64, ptr %i.ae, align 8, !noalias !19140, !noundef !27
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ae, align 8, !noalias !19140
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.q, label %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit"

bb.q:                                             ; preds = %.body
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h83a314a90446d6daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit" unwind label %bb.s

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !27
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !27, !noundef !27
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  store ptr %i.ae, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0.i.i.i.i.i.i.i, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aq, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.y, %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit", %.noexc17
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit": ; preds = %.body, %bb.q
  %i.bc = load i64, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !noalias !19147, !noundef !27
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %.sroa.07.0.i.i.i.i.i.i.i, align 8, !noalias !19147
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.t, label %.critedge

bb.t:                                             ; preds = %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit"
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h7008d446501a7b04E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %.critedge unwind label %bb.s

.thread:                                          ; preds = %bb.k, %bb.e
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.aa, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19158)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !19161, !nonnull !27, !noundef !27 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !19161, !noundef !27
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !noalias !19161
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %.noexc17

bb.u:                                             ; preds = %.thread
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h83a314a90446d6daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf)
          to label %.noexc17 unwind label %bb.s

.critedge:                                        ; preds = %bb.t, %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit", %.noexc17
  %.pn24 = phi { ptr, i32 } [ %i.aj, %bb.t ], [ %eh.lpad-body10, %.noexc17 ], [ %i.aj, %"_ZN4core3ptr725drop_in_place$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$17h30e28fc9dca34c41E.exit" ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19162)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !19162, !noundef !27 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit", label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.bn = load i64, ptr %i.bl, align 8, !noalias !19165, !noundef !27
  %i.bo = add i64 %i.bn, -1                       ; 2 uses
  store i64 %i.bo, ptr %i.bl, align 8, !noalias !19165
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit"

bb.w:                                             ; preds = %bb.v
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23cf1d30feee96e4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit" unwind label %bb.s

.noexc17:                                         ; preds = %bb.u, %.thread
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_web..service..AppServiceFactory$GT$$GT$$GT$17h94ebeecb40b31986E"(ptr noalias noundef align 8 dereferenceable(24) %1) #44
          to label %.critedge unwind label %bb.s

"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit": ; preds = %bb.v, %.critedge, %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19173)
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !19176, !nonnull !27, !noundef !27 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !noalias !19176, !noundef !27
  %i.bt = add i64 %i.bs, -1                       ; 2 uses
  store i64 %i.bt, ptr %i.br, align 8, !noalias !19176
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.x, label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit"

bb.x:                                             ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3069c76db93285fbE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit" unwind label %bb.s

"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit": ; preds = %"_ZN4core3ptr244drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_service..boxed..BoxServiceFactory$LT$$LP$$RP$$C$actix_web..service..ServiceRequest$C$actix_web..service..ServiceResponse$C$actix_web..error..error..Error$C$$LP$$RP$$GT$$GT$$GT$$GT$17ha02a8552c44d8fe0E.exit", %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..ResourceDef$GT$$GT$17hbc5787c02571e451E"(ptr noalias noundef align 8 dereferenceable(24) %i.bv) #44
          to label %bb.y unwind label %bb.s

bb.y:                                             ; preds = %"_ZN4core3ptr138drop_in_place$LT$alloc..rc..Rc$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h446f88bc8c9cbd04E.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17hd3d4caa3dba4a253E"(ptr noalias noundef align 8 dereferenceable(32) %i.bw) #44
          to label %bb.z unwind label %bb.s

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %.pn24
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3log13__private_api3log17h5a6be5e50303a4e3E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, i64 noundef range(i64 1, 6) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19180)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !19180, !noalias !19177, !nonnull !27, !align !206, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19180, !noalias !19177, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !19180, !noalias !19177, !nonnull !27, !align !206, !noundef !27
end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hfdca6ffc91baf815E":bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 2920
  br i1 %i.bx, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add i64 %.sroa.5.057.i.i.i.i, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i, i64 2912
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !32551 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !32561
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 2914
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !32544, !noundef !27
  %i.ce = icmp ult i16 %i.cb, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @mi_free(ptr noundef nonnull %.sroa.0.058.i.i.i.i) #38, !noalias !32561
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1236) #43
          to label %.noexc.i.i unwind label %bb.k, !noalias !32562

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #43, !noalias !32563
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bk, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !32536, !noalias !32539
  store i64 0, ptr %i.al, align 8, !alias.scope !32536, !noalias !32539
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !32536, !noalias !32539
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hbc77a00aa15350e7E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h11d6ce416886ca56E.exit"
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h4191e58517461e8bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !27 ; 4 uses
  tail call fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h805ee70502373705E"(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32564)
  %i.b = load i64, ptr %0, align 8, !range !28, !alias.scope !32564, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32564, !noundef !27 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !32564, !noundef !27 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %.not.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i, label %bb.b, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.d                       ; 4 uses
  %i.i = sub i64 %i.f, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not3.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32564, !nonnull !27, !noundef !27 ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.d
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.l
  %i.q = mul i64 %i.h, 88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !32564
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !32564
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !32564, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %i.a
  %i.u = mul i64 %i.i, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !32564
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit": ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(408) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hbde4888c4ecb5a86E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.14.i.i.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i = alloca [32 x i8], align 8      ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [40 x i8], align 8        ; 4 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 4 uses
  %.sroa.9.i.i = alloca [55 x i8], align 1        ; 4 uses
  %.sroa.11.i.i = alloca [72 x i8], align 8       ; 4 uses
  %.sroa.12.i.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.13.i.i = alloca [48 x i8], align 8       ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 40 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !27
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !27
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32567)
  %i.x = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32567 ; 2 uses
  %i.y = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32567 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = inttoptr i64 %i.z to ptr
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32567
  %i.ad = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.z) #38, !noalias !32567
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"

"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i": ; preds = %bb.e, %bb.d
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.ad, %bb.e ] ; 21 uses
  %i.ae = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i, null
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"
  %i.af = extractvalue { i64, i64 } %i.x, 1
  %i.ag = extractvalue { i64, i64 } %i.x, 0
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.ag, i64 noundef %i.af) #43, !noalias !32567
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ah = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32570 ; 2 uses
  %i.ai = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32570 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = inttoptr i64 %i.aj to ptr
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32570
  %i.an = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #38, !noalias !32570
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"

"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10": ; preds = %bb.i, %bb.h
  %.sroa.07.0.i.i.i.i.i.i11 = phi ptr [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 6 uses
  %i.ao = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i11, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"
  %i.ap = extractvalue { i64, i64 } %i.ah, 1
  %i.aq = extractvalue { i64, i64 } %i.ah, 0
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.aq, i64 noundef %i.ap) #43, !noalias !32570
  unreachable

bb.k:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i11, align 8, !noalias !32570
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i11, i64 8
  store i64 1, ptr %i.ar, align 8, !noalias !32570
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i11, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(408) %i.at, ptr noundef nonnull align 1 dereferenceable(408) %i.as, i64 408, i1 false)
  %i.au = load <2 x i64>, ptr %i.q, align 8
  %i.av = add <2 x i64> %i.au, splat (i64 -1)
  store <2 x i64> %i.av, ptr %i.q, align 8
  store ptr %.sroa.07.0.i.i.i.i.i.i11, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %"_ZN4core3ptr66drop_in_place$LT$alloc..rc..Rc$LT$actix_cors..inner..Inner$GT$$GT$17h20cd1a0b316407b2E.exit"
  %i.aw = phi ptr [ %.sroa.07.0.i.i.i.i.i.i11, %bb.k ], [ %i.q, %bb.b ], [ %.sroa.3.0.copyload, %"_ZN4core3ptr66drop_in_place$LT$alloc..rc..Rc$LT$actix_cors..inner..Inner$GT$$GT$17h20cd1a0b316407b2E.exit" ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  ret ptr %i.ax

bb.m:                                             ; preds = %.thread, %.thread24
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body27, %.thread24 ], [ %i.no, %.thread ]
  resume { ptr, i32 } %.pn5

bb.n:                                             ; preds = %.thread24
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.thread28:                                        ; preds = %bb.t, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread24

bb.o:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i, align 8, !noalias !32567
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.az, align 8, !noalias !32567
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %.sroa.07.0.i.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !32567
  store i64 8, ptr %i.p, align 8, !alias.scope !32567
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 408, ptr %i.bb, align 8, !alias.scope !32567
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store i8 1, ptr %i.bc, align 8, !alias.scope !32567
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !32573, !noundef !27 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32576)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !32576, !noalias !32579 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32581)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !32584, !noalias !32585, !noundef !27 ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32587
  %i.bl = add i64 %i.bj, 1                        ; 2 uses
  %i.bm = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bl, i64 40) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.s, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = add nuw i64 %i.bo, 8
  %i.bq = and i64 %i.bp, -16                      ; 3 uses
  %i.br = add i64 %i.bj, 17                       ; 2 uses
  %i.bs = add i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = icmp ult i64 %i.bs, %i.bq
  %i.bu = icmp ugt i64 %i.bs, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i, !prof !3784

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %bb.u, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32588
  %i.bw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !32588 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc13 unwind label %.thread28

bb.t:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.bz = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bs)
          to label %.noexc13 unwind label %.thread28

.noexc13:                                         ; preds = %bb.t, %bb.s
  %.pn.i.i.i.i.i.i = phi { i64, i64 } [ %i.by, %bb.s ], [ %i.bz, %bb.t ] ; 2 uses
  %.sroa.7.0.ph.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i, 1
  %.pre.i.i.i.i.i = add i64 %.sroa.7.0.ph.i.i.i.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"

bb.u:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i.i.i.i = phi ptr [ %i.bw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i.i.i.i, i64 %i.bq
  %i.cb = icmp ult i64 %i.bj, 8
  %i.cc = lshr i64 %i.bl, 3
  %i.cd = mul nuw nsw i64 %i.cc, 7
  %.sroa.02.0.i.i.i.i.i.i.i = select i1 %i.cb, i64 %i.bj, i64 %i.cd
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i": ; preds = %bb.u, %.noexc13
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %.noexc13 ], [ %i.br, %bb.u ]
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i.i.i.i, %.noexc13 ], [ %.sroa.02.0.i.i.i.i.i.i.i, %bb.u ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i, %.noexc13 ], [ %i.bj, %bb.u ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %.noexc13 ], [ %i.ca, %bb.u ] ; 4 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !32587
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32587
  %.sroa.52.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32587
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32596)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i, ptr nonnull align 1 %i.bf, i64 %.pre-phi.i.i.i.i.i, i1 false), !noalias !32599
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !32602, !noalias !32603, !noundef !27 ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !32604
  %i.ch = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cl = ptrtoint ptr %i.bf to i64
  br label %bb.w

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr305drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..value..HeaderValue$C$$LP$$RP$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$http..header..value..HeaderValue$C$$LP$$RP$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1546868492289ad0E"(i64 %.sroa.015.029.i.i.i.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #44
          to label %.body.i.i.i.i.i unwind label %bb.y, !noalias !32607

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.015.029.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dp, %bb.x ]
  %.sroa.016.028.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.016.1.i.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.6.027.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.817.026.i.i.i.i.i.i.i = phi i16 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.1018.025.i.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.de, %bb.x ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.817.026.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cn = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.027.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.co = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.016.028.i.i.i.i.i.i.i, %bb.w ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cn, align 16, !noalias !32608
  %i.cp = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -640 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.w
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.027.i.i.i.i.i.i.i, %bb.w ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.016.028.i.i.i.i.i.i.i, %bb.w ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.817.026.i.i.i.i.i.i.i, %bb.w ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [40 x i8], ptr %.sroa.016.1.i.i.i.i.i.i.i, i64 %i.cu ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32599
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !32611)
  call void @llvm.experimental.noalias.scope.decl(metadata !32614)
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !32617, !nonnull !27, !align !148, !noundef !27
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !32617, !nonnull !27, !noundef !27
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -16
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 -32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !32617, !noundef !27
  %i.dc = getelementptr inbounds i8, ptr %i.cv, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !32617, !noundef !27
  invoke void %i.cy(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.cz, ptr noundef %i.db, i64 noundef %i.dd)
          to label %bb.x unwind label %bb.v, !noalias !32599, !inline_history !32618

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.de = add i64 %.sroa.1018.025.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.df = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.dg = and i16 %i.df, %.lcssa.i.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds i8, ptr %i.cv, i64 -8
  %i.di = load i8, ptr %i.dh, align 8, !range !188, !noalias !32617, !noundef !27
  store i8 %i.di, ptr %i.ck, align 8, !alias.scope !32619, !noalias !32599
  %i.dj = ptrtoint ptr %i.cv to i64
  %i.dk = sub i64 %i.cl, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 40                ; 2 uses
  %i.dm = sub nsw i64 0, %i.dl
end_hunk_4
begin_hunk_5_@"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$3pop17ha6176c7ab64fe7baE":bb.a

bb.f:                                             ; preds = %bb.d
  store ptr %i.z, ptr %i.o, align 8, !alias.scope !33018
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 3584 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !noalias !33018
  %i.ac = load atomic ptr, ptr %2 acquire, align 8, !noalias !33018, !nonnull !27, !noundef !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3584
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !33018, !noundef !27
  %i.af = add i64 %i.ae, 32
  store i64 %i.af, ptr %i.ab, align 8, !noalias !33018
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 3592
  %i.ah = cmpxchg ptr %i.ag, ptr null, ptr %i.p acq_rel acquire, align 8, !noalias !33018 ; 2 uses
  %.not.i.i = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %.not.i.i, label %"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i.i.i = extractvalue { ptr, i1 } %i.ah, 0 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 3584
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !33018, !noundef !27
  %i.ak = add i64 %i.aj, 32
  store i64 %i.ak, ptr %i.ab, align 8, !noalias !33018
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 3592
  %i.am = cmpxchg ptr %i.al, ptr null, ptr %i.p acq_rel acquire, align 8, !noalias !33018 ; 2 uses
  %.not.1.i.i = extractvalue { ptr, i1 } %i.am, 1
  br i1 %.not.1.i.i, label %"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.01.0.i.i.1.i.i = extractvalue { ptr, i1 } %i.am, 0 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.1.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.1.i.i, i64 3584
  %i.ao = load i64, ptr %i.an, align 8, !noalias !33018, !noundef !27
  %i.ap = add i64 %i.ao, 32
  store i64 %i.ap, ptr %i.ab, align 8, !noalias !33018
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.1.i.i, i64 3592
  %i.ar = cmpxchg ptr %i.aq, ptr null, ptr %i.p acq_rel acquire, align 8, !noalias !33018
  %.not.2.i.i = extractvalue { ptr, i1 } %i.ar, 1
  br i1 %.not.2.i.i, label %"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @mi_free(ptr noundef nonnull %i.p) #38, !noalias !33018
  br label %"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i"

"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  tail call void @llvm.x86.sse2.pause() #38, !noalias !33018
  %i.as = load ptr, ptr %1, align 8, !alias.scope !33018, !nonnull !27, !noundef !27
  %.not.i3 = icmp eq ptr %i.z, %i.as
  br i1 %.not.i3, label %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit.loopexit", label %.lr.ph.i2

"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit.loopexit": ; preds = %"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$13reclaim_block17ha5d826e7c2614576E.exit.i", %bb.c, %.lr.ph.i2
  %.pre = load ptr, ptr %1, align 8
  br label %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit"

"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit": ; preds = %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit.loopexit", %.loopexit
  %i.at = phi ptr [ %.pre, %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit.loopexit" ], [ %i.n, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.au = load i64, ptr %i.a, align 8, !noundef !27
  %i.av = and i64 %i.au, 31                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 3600
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !33021 ; 2 uses
  %i.ay = shl nuw nsw i64 1, %i.av
  %i.az = and i64 %i.ay, %i.ax
  %.not.i4 = icmp eq i64 %i.az, 0
  br i1 %.not.i4, label %bb.j, label %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit"

bb.j:                                             ; preds = %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit"
  %i.ba = and i64 %i.ax, 8589934592
  %.not1.i = icmp eq i64 %i.ba, 0
  %spec.select = select i1 %.not1.i, i8 2, i8 1
  br label %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit.thread"

"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit": ; preds = %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$14reclaim_blocks17h1ff9352f01734cf1E.exit"
  %i.bb = getelementptr inbounds nuw [112 x i8], ptr %i.at, i64 %i.av ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(7) %i.bb, i64 7, i1 false)
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %.sroa.4.0.copyload6 = load i8, ptr %.sroa.4.0..sroa_idx5, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx7, i64 104, i1 false)
  %cond = icmp eq i8 %.sroa.4.0.copyload6, 0
  br i1 %cond, label %bb.l, label %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit.thread"

bb.k:                                             ; preds = %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit.thread", %"_ZN5tokio4sync4mpsc4list11Rx$LT$T$GT$18try_advancing_head17h70ca48f801daa16bE.exit"
  ret void

"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit.thread": ; preds = %bb.j, %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit", %bb.l
  %.sroa.4.011 = phi i8 [ 0, %bb.l ], [ %.sroa.4.0.copyload6, %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit" ], [ %spec.select, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.0, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sroa.4.011, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.k

bb.l:                                             ; preds = %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit"
  %i.bc = load i64, ptr %i.a, align 8, !noundef !27
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.a, align 8
  br label %"_ZN5tokio4sync4mpsc5block14Block$LT$T$GT$4read17h94f7e6250c6282fbE.exit.thread"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h147f7e5234387581E(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(1672) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.412.i.i.i = alloca [1676 x i8], align 4  ; 4 uses
  %i.c = alloca [1792 x i8], align 128            ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33024
  %.sroa.412.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1672) %.sroa.412.8..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(1672) %1, i64 1672, i1 false), !noalias !33032
  store i64 204, ptr %i.c, align 128, !noalias !33024
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !33024
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @1291, ptr %.sroa.56.0..sroa_idx.i.i.i, align 16, !noalias !33024
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !33024
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 32, !noalias !33024
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.d, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !33024
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 16, !noalias !33024
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1676) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(1676) %.sroa.412.i.i.i, i64 1676, i1 false), !noalias !33024
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1728
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1760
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 32, !noalias !33024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !33024
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !33033
  %i.k = tail call noundef ptr @mi_malloc_aligned(i64 noundef 1792, i64 noundef range(i64 1, -9223372036854775807) 128) #38, !noalias !33033 ; 24 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN5tokio7runtime4task8new_task17hfb792303c814318fE.exit.i, !prof !304

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 1792) #43
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !33024

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr3690drop_in_place$LT$tokio..runtime..task..core..Cell$LT$$LT$actix_http..h2..dispatcher..Dispatcher$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$u20$as$u20$core..future..future..Future$GT$..poll..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17he33a5f9a7bb808b8E"(ptr noundef nonnull align 128 dereferenceable(1792) %i.c) #44
          to label %common.resume unwind label %bb.g, !noalias !33024

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33024
  unreachable

common.resume:                                    ; preds = %bb.z, %.noexc, %bb.f, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", %.noexc14.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" ], [ %i.m, %bb.f ], [ %i.ap, %.noexc14.i ], [ %i.ap, %bb.v ], [ %i.aw, %.noexc ], [ %i.aw, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZN5tokio7runtime4task8new_task17hfb792303c814318fE.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(1792) %i.k, ptr noundef nonnull align 128 dereferenceable(1792) %i.c, i64 1792, i1 false), !noalias !33024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33024
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i)
  %i.p = load i64, ptr %i.o, align 8, !range !361, !noalias !33036, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.p, ptr %i.q, align 8, !noalias !33036
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.s = load i8, ptr %i.r, align 8, !range !188, !noalias !33036, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN5tokio7runtime4task8new_task17hfb792303c814318fE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33036
  store ptr %i.k, ptr %i.b, align 8, !noalias !33040
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !33037, !noalias !33036, !noundef !27 ; 5 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %bb.j, label %bb.i, !prof !749

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !33040, !nonnull !27, !align !148, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noalias !33040, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !noalias !33040
  %i.ad = load ptr, ptr %i.x, align 8, !noalias !33040, !nonnull !27, !align !148, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noalias !33040, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  store ptr null, ptr %i.ag, align 8, !noalias !33040
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33040
  store ptr null, ptr %i.a, align 8, !noalias !33040
  invoke void @_ZN4core9panicking13assert_failed17h25379667b0dca6f8E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1270) #43
          to label %.noexc.i unwind label %bb.p, !noalias !33036

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !33040, !nonnull !27, !align !148, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !33040, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store ptr %i.k, ptr %i.al, align 8, !noalias !33040
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  store ptr %i.k, ptr %i.u, align 8, !alias.scope !33037, !noalias !33036
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !33037, !noalias !33036, !noundef !27
  %.not2.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !33037, !noalias !33036
  br label %bb.x

bb.n:                                             ; preds = %_ZN5tokio7runtime4task8new_task17hfb792303c814318fE.exit.i
  %i.ao = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc7.i unwind label %bb.p, !noalias !33036

.noexc7.i:                                        ; preds = %bb.n
  br i1 %i.ao, label %bb.o, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i"

bb.o:                                             ; preds = %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" unwind label %bb.p, !noalias !33036

bb.p:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.o, %bb.n, %bb.j
  %.sroa.02.0.i = phi i1 [ false, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" ], [ true, %bb.o ], [ false, %bb.j ], [ true, %bb.n ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aq = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc9.i unwind label %bb.r, !noalias !33036

.noexc9.i:                                        ; preds = %bb.p
  br i1 %i.aq, label %bb.q, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"

bb.q:                                             ; preds = %.noexc9.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i" unwind label %bb.r, !noalias !33036

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i": ; preds = %bb.o, %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask8shutdown17hf9ad53cba5631027E(ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h5c6bbe52425ebcb0E.exit.thread" unwind label %bb.p, !noalias !33036

bb.r:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33036
  unreachable

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i": ; preds = %bb.q, %.noexc9.i
  br i1 %i.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", label %bb.s

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i": ; preds = %bb.t, %.noexc11.i, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  br i1 %.sroa.02.0.i, label %bb.u, label %common.resume

bb.s:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  %i.as = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc11.i unwind label %bb.r, !noalias !33036

.noexc11.i:                                       ; preds = %bb.s
  br i1 %i.as, label %bb.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"

bb.t:                                             ; preds = %.noexc11.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" unwind label %bb.r, !noalias !33036

bb.u:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"
  %i.at = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc14.i unwind label %bb.r, !noalias !33036

.noexc14.i:                                       ; preds = %bb.u
  br i1 %i.at, label %bb.v, label %common.resume

bb.v:                                             ; preds = %.noexc14.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.r, !noalias !33036

bb.w:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33036
  %i.au = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  invoke void @_ZN5tokio4task5local6Shared8schedule17h80f2403c1ff2fab3E(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h5c6bbe52425ebcb0E.exit.thread" unwind label %bb.y

"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h5c6bbe52425ebcb0E.exit.thread": ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.x
  ret ptr %i.k

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.y
  br i1 %i.ax, label %bb.z, label %common.resume

bb.z:                                             ; preds = %.noexc
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h1e374db9310b4375E(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(2632) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.412.i.i.i = alloca [2636 x i8], align 4  ; 4 uses
  %i.c = alloca [2816 x i8], align 128            ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33041
  %.sroa.412.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2632) %.sroa.412.8..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(2632) %1, i64 2632, i1 false), !noalias !33049
  store i64 204, ptr %i.c, align 128, !noalias !33041
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !33041
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @1288, ptr %.sroa.56.0..sroa_idx.i.i.i, align 16, !noalias !33041
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !33041
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 32, !noalias !33041
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.d, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !33041
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 16, !noalias !33041
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2636) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(2636) %.sroa.412.i.i.i, i64 2636, i1 false), !noalias !33041
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2688
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2720
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 32, !noalias !33041
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !33041
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !33050
  %i.k = tail call noundef ptr @mi_malloc_aligned(i64 noundef 2816, i64 noundef range(i64 1, -9223372036854775807) 128) #38, !noalias !33050 ; 24 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN5tokio7runtime4task8new_task17h3b5d2ba0567657e8E.exit.i, !prof !304

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 2816) #43
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !33041

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr16395drop_in_place$LT$tokio..runtime..task..core..Cell$LT$$LT$actix_server..service..StreamService$LT$actix_service..and_then..AndThenService$LT$actix_service..fn_service..FnService$LT$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$$C$actix_http..service..HttpService$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..tcp..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$tokio..net..tcp..stream..TcpStream$C$$LP$tokio..net..tcp..stream..TcpStream$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_http..error..DispatchError$GT$$C$actix_http..service..HttpServiceHandler$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$u20$as$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h6597a6ed9dca08daE"(ptr noundef nonnull align 128 dereferenceable(2816) %i.c) #44
          to label %common.resume unwind label %bb.g, !noalias !33041

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33041
  unreachable

common.resume:                                    ; preds = %bb.z, %.noexc, %bb.f, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", %.noexc14.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" ], [ %i.m, %bb.f ], [ %i.ap, %.noexc14.i ], [ %i.ap, %bb.v ], [ %i.aw, %.noexc ], [ %i.aw, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZN5tokio7runtime4task8new_task17h3b5d2ba0567657e8E.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(2816) %i.k, ptr noundef nonnull align 128 dereferenceable(2816) %i.c, i64 2816, i1 false), !noalias !33041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33041
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i)
  %i.p = load i64, ptr %i.o, align 8, !range !361, !noalias !33053, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.p, ptr %i.q, align 8, !noalias !33053
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.s = load i8, ptr %i.r, align 8, !range !188, !noalias !33053, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h3b5d2ba0567657e8E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33053
  store ptr %i.k, ptr %i.b, align 8, !noalias !33057
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !33054, !noalias !33053, !noundef !27 ; 5 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %bb.j, label %bb.i, !prof !749

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !33057, !nonnull !27, !align !148, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noalias !33057, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !noalias !33057
  %i.ad = load ptr, ptr %i.x, align 8, !noalias !33057, !nonnull !27, !align !148, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noalias !33057, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  store ptr null, ptr %i.ag, align 8, !noalias !33057
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33057
  store ptr null, ptr %i.a, align 8, !noalias !33057
  invoke void @_ZN4core9panicking13assert_failed17h25379667b0dca6f8E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1270) #43
          to label %.noexc.i unwind label %bb.p, !noalias !33053

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !33057, !nonnull !27, !align !148, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !33057, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store ptr %i.k, ptr %i.al, align 8, !noalias !33057
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  store ptr %i.k, ptr %i.u, align 8, !alias.scope !33054, !noalias !33053
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !33054, !noalias !33053, !noundef !27
  %.not2.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !33054, !noalias !33053
  br label %bb.x

bb.n:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h3b5d2ba0567657e8E.exit.i
  %i.ao = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc7.i unwind label %bb.p, !noalias !33053

.noexc7.i:                                        ; preds = %bb.n
  br i1 %i.ao, label %bb.o, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i"

bb.o:                                             ; preds = %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" unwind label %bb.p, !noalias !33053

bb.p:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.o, %bb.n, %bb.j
  %.sroa.02.0.i = phi i1 [ false, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" ], [ true, %bb.o ], [ false, %bb.j ], [ true, %bb.n ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aq = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc9.i unwind label %bb.r, !noalias !33053

.noexc9.i:                                        ; preds = %bb.p
  br i1 %i.aq, label %bb.q, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"

bb.q:                                             ; preds = %.noexc9.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i" unwind label %bb.r, !noalias !33053

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i": ; preds = %bb.o, %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask8shutdown17hf9ad53cba5631027E(ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h9b5abe90dffebbd0E.exit.thread" unwind label %bb.p, !noalias !33053

bb.r:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33053
  unreachable

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i": ; preds = %bb.q, %.noexc9.i
  br i1 %i.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", label %bb.s

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i": ; preds = %bb.t, %.noexc11.i, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  br i1 %.sroa.02.0.i, label %bb.u, label %common.resume

bb.s:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  %i.as = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc11.i unwind label %bb.r, !noalias !33053

.noexc11.i:                                       ; preds = %bb.s
  br i1 %i.as, label %bb.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"

bb.t:                                             ; preds = %.noexc11.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" unwind label %bb.r, !noalias !33053

bb.u:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"
  %i.at = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc14.i unwind label %bb.r, !noalias !33053

.noexc14.i:                                       ; preds = %bb.u
  br i1 %i.at, label %bb.v, label %common.resume

bb.v:                                             ; preds = %.noexc14.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.r, !noalias !33053

bb.w:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33053
  %i.au = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  invoke void @_ZN5tokio4task5local6Shared8schedule17h80f2403c1ff2fab3E(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h9b5abe90dffebbd0E.exit.thread" unwind label %bb.y

"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h9b5abe90dffebbd0E.exit.thread": ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.x
  ret ptr %i.k

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.y
  br i1 %i.ax, label %bb.z, label %common.resume

bb.z:                                             ; preds = %.noexc
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17h648328b4356549bcE(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(4984) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.412.i.i.i = alloca [4988 x i8], align 4  ; 4 uses
  %i.c = alloca [5120 x i8], align 128            ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33058
  %.sroa.412.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4984) %.sroa.412.8..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(4984) %1, i64 4984, i1 false), !noalias !33066
  store i64 204, ptr %i.c, align 128, !noalias !33058
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !33058
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @1281, ptr %.sroa.56.0..sroa_idx.i.i.i, align 16, !noalias !33058
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !33058
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 32, !noalias !33058
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.d, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !33058
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 16, !noalias !33058
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4988) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(4988) %.sroa.412.i.i.i, i64 4988, i1 false), !noalias !33058
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 5040
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5072
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !noalias !33058
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !33058
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !33067
  %i.k = tail call noundef ptr @mi_malloc_aligned(i64 noundef 5120, i64 noundef range(i64 1, -9223372036854775807) 128) #38, !noalias !33067 ; 24 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN5tokio7runtime4task8new_task17h6b6356c9d7d2435dE.exit.i, !prof !304

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 5120) #43
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !33058

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr17798drop_in_place$LT$tokio..runtime..task..core..Cell$LT$$LT$actix_server..service..StreamService$LT$actix_service..and_then..AndThenService$LT$actix_service..and_then..AndThenService$LT$actix_service..map_err..MapErr$LT$actix_tls..accept..rustls_0_23..AcceptorService$C$tokio..net..tcp..stream..TcpStream$C$actix_tls..accept..TlsError$LT$std..io..error..Error$C$core..convert..Infallible$GT$..into_service_error$LT$actix_http..error..DispatchError$GT$$C$actix_tls..accept..TlsError$LT$std..io..error..Error$C$actix_http..error..DispatchError$GT$$GT$$C$actix_service..fn_service..FnService$LT$actix_http..service..rustls_0_23..$LT$impl$u20$actix_http..service..HttpService$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$GT$..rustls_0_23_with_config..$u7b$$u7b$closure$u7d$$u7d$$C$actix_http..service..rustls_0_23..$LT$impl$u20$actix_http..service..HttpService$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_config..MapConfig$LT$actix_service..map_err..MapErrServiceFactory$LT$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$GT$..rustls_0_23_with_config..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$LP$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_tls..accept..TlsError$LT$std..io..error..Error$C$actix_http..error..DispatchError$GT$$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_err..MapErr$LT$actix_http..service..HttpServiceHandler$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$C$$LP$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_http..Protocol$C$core..option..Option$LT$core..net..socket_addr..SocketAddr$GT$$RP$$C$actix_tls..accept..TlsError$LT$std..io..error..Error$C$actix_http..error..DispatchError$GT$..Service$C$actix_tls..accept..TlsError$LT$std..io..error..Error$C$actix_http..error..DispatchError$GT$$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$C$tokio..net..tcp..stream..TcpStream$GT$$u20$as$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h6f6fa5bb7fee5bfcE"(ptr noundef nonnull align 128 dereferenceable(5120) %i.c) #44
          to label %common.resume unwind label %bb.g, !noalias !33058

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33058
  unreachable

common.resume:                                    ; preds = %bb.z, %.noexc, %bb.f, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", %.noexc14.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" ], [ %i.m, %bb.f ], [ %i.ap, %.noexc14.i ], [ %i.ap, %bb.v ], [ %i.aw, %.noexc ], [ %i.aw, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZN5tokio7runtime4task8new_task17h6b6356c9d7d2435dE.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(5120) %i.k, ptr noundef nonnull align 128 dereferenceable(5120) %i.c, i64 5120, i1 false), !noalias !33058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33058
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i)
  %i.p = load i64, ptr %i.o, align 8, !range !361, !noalias !33070, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.p, ptr %i.q, align 8, !noalias !33070
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.s = load i8, ptr %i.r, align 8, !range !188, !noalias !33070, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h6b6356c9d7d2435dE.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33070
  store ptr %i.k, ptr %i.b, align 8, !noalias !33074
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !33071, !noalias !33070, !noundef !27 ; 5 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %bb.j, label %bb.i, !prof !749

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !33074, !nonnull !27, !align !148, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noalias !33074, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !noalias !33074
  %i.ad = load ptr, ptr %i.x, align 8, !noalias !33074, !nonnull !27, !align !148, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noalias !33074, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  store ptr null, ptr %i.ag, align 8, !noalias !33074
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33074
  store ptr null, ptr %i.a, align 8, !noalias !33074
  invoke void @_ZN4core9panicking13assert_failed17h25379667b0dca6f8E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1270) #43
          to label %.noexc.i unwind label %bb.p, !noalias !33070

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !33074, !nonnull !27, !align !148, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !33074, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store ptr %i.k, ptr %i.al, align 8, !noalias !33074
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  store ptr %i.k, ptr %i.u, align 8, !alias.scope !33071, !noalias !33070
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !33071, !noalias !33070, !noundef !27
  %.not2.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !33071, !noalias !33070
  br label %bb.x

bb.n:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h6b6356c9d7d2435dE.exit.i
  %i.ao = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc7.i unwind label %bb.p, !noalias !33070

.noexc7.i:                                        ; preds = %bb.n
  br i1 %i.ao, label %bb.o, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i"

bb.o:                                             ; preds = %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" unwind label %bb.p, !noalias !33070

bb.p:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.o, %bb.n, %bb.j
  %.sroa.02.0.i = phi i1 [ false, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" ], [ true, %bb.o ], [ false, %bb.j ], [ true, %bb.n ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aq = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc9.i unwind label %bb.r, !noalias !33070

.noexc9.i:                                        ; preds = %bb.p
  br i1 %i.aq, label %bb.q, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"

bb.q:                                             ; preds = %.noexc9.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i" unwind label %bb.r, !noalias !33070

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i": ; preds = %bb.o, %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask8shutdown17hf9ad53cba5631027E(ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h6030567045d5ac36E.exit.thread" unwind label %bb.p, !noalias !33070

bb.r:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33070
  unreachable

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i": ; preds = %bb.q, %.noexc9.i
  br i1 %i.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", label %bb.s

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i": ; preds = %bb.t, %.noexc11.i, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  br i1 %.sroa.02.0.i, label %bb.u, label %common.resume

bb.s:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  %i.as = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc11.i unwind label %bb.r, !noalias !33070

.noexc11.i:                                       ; preds = %bb.s
  br i1 %i.as, label %bb.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"

bb.t:                                             ; preds = %.noexc11.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" unwind label %bb.r, !noalias !33070

bb.u:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"
  %i.at = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc14.i unwind label %bb.r, !noalias !33070

.noexc14.i:                                       ; preds = %bb.u
  br i1 %i.at, label %bb.v, label %common.resume

bb.v:                                             ; preds = %.noexc14.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.r, !noalias !33070

bb.w:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33070
  %i.au = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  invoke void @_ZN5tokio4task5local6Shared8schedule17h80f2403c1ff2fab3E(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h6030567045d5ac36E.exit.thread" unwind label %bb.y

"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17h6030567045d5ac36E.exit.thread": ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.x
  ret ptr %i.k

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.y
  br i1 %i.ax, label %bb.z, label %common.resume

bb.z:                                             ; preds = %.noexc
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5tokio4task5local7Context5spawn17ha4a40c9711f29884E(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(1672) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.412.i.i.i = alloca [1676 x i8], align 4  ; 4 uses
  %i.c = alloca [1792 x i8], align 128            ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33075
  %.sroa.412.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1672) %.sroa.412.8..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(1672) %1, i64 1672, i1 false), !noalias !33083
  store i64 204, ptr %i.c, align 128, !noalias !33075
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !noalias !33075
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @1283, ptr %.sroa.56.0..sroa_idx.i.i.i, align 16, !noalias !33075
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !33075
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.i, align 32, !noalias !33075
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.d, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !33075
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i, align 16, !noalias !33075
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1676) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(1676) %.sroa.412.i.i.i, i64 1676, i1 false), !noalias !33075
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1728
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1760
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i, align 32, !noalias !33075
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !noalias !33075
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !33084
  %i.k = tail call noundef ptr @mi_malloc_aligned(i64 noundef 1792, i64 noundef range(i64 1, -9223372036854775807) 128) #38, !noalias !33084 ; 24 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN5tokio7runtime4task8new_task17h0076609713963301E.exit.i, !prof !304

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 1792) #43
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !33075

.noexc.i.i.i:                                     ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr3623drop_in_place$LT$tokio..runtime..task..core..Cell$LT$$LT$actix_http..h2..dispatcher..Dispatcher$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$u20$as$u20$core..future..future..Future$GT$..poll..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17haac8b43faa49bbcdE"(ptr noundef nonnull align 128 dereferenceable(1792) %i.c) #44
          to label %common.resume unwind label %bb.g, !noalias !33075

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33075
  unreachable

common.resume:                                    ; preds = %bb.z, %.noexc, %bb.f, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", %.noexc14.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" ], [ %i.m, %bb.f ], [ %i.ap, %.noexc14.i ], [ %i.ap, %bb.v ], [ %i.aw, %.noexc ], [ %i.aw, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZN5tokio7runtime4task8new_task17h0076609713963301E.exit.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(1792) %i.k, ptr noundef nonnull align 128 dereferenceable(1792) %i.c, i64 1792, i1 false), !noalias !33075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33075
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i)
  %i.p = load i64, ptr %i.o, align 8, !range !361, !noalias !33087, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.p, ptr %i.q, align 8, !noalias !33087
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.s = load i8, ptr %i.r, align 8, !range !188, !noalias !33087, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h0076609713963301E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33087
  store ptr %i.k, ptr %i.b, align 8, !noalias !33091
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !33088, !noalias !33087, !noundef !27 ; 5 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %bb.j, label %bb.i, !prof !749

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !33091, !nonnull !27, !align !148, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !noalias !33091, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !noalias !33091
  %i.ad = load ptr, ptr %i.x, align 8, !noalias !33091, !nonnull !27, !align !148, !noundef !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noalias !33091, !noundef !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  store ptr null, ptr %i.ag, align 8, !noalias !33091
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33091
  store ptr null, ptr %i.a, align 8, !noalias !33091
  invoke void @_ZN4core9panicking13assert_failed17h25379667b0dca6f8E(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1270) #43
          to label %.noexc.i unwind label %bb.p, !noalias !33087

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !33091, !nonnull !27, !align !148, !noundef !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !33091, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ak
  store ptr %i.k, ptr %i.al, align 8, !noalias !33091
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  store ptr %i.k, ptr %i.u, align 8, !alias.scope !33088, !noalias !33087
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !33088, !noalias !33087, !noundef !27
  %.not2.i.i = icmp eq ptr %i.an, null
  br i1 %.not2.i.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  store ptr %i.k, ptr %i.am, align 8, !alias.scope !33088, !noalias !33087
  br label %bb.x

bb.n:                                             ; preds = %_ZN5tokio7runtime4task8new_task17h0076609713963301E.exit.i
  %i.ao = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc7.i unwind label %bb.p, !noalias !33087

.noexc7.i:                                        ; preds = %bb.n
  br i1 %i.ao, label %bb.o, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i"

bb.o:                                             ; preds = %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" unwind label %bb.p, !noalias !33087

bb.p:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.o, %bb.n, %bb.j
  %.sroa.02.0.i = phi i1 [ false, %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i" ], [ true, %bb.o ], [ false, %bb.j ], [ true, %bb.n ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aq = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc9.i unwind label %bb.r, !noalias !33087

.noexc9.i:                                        ; preds = %bb.p
  br i1 %i.aq, label %bb.q, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"

bb.q:                                             ; preds = %.noexc9.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i" unwind label %bb.r, !noalias !33087

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i": ; preds = %bb.o, %.noexc7.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask8shutdown17hf9ad53cba5631027E(ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17hb884243b24d1b5e0E.exit.thread" unwind label %bb.p, !noalias !33087

bb.r:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !33087
  unreachable

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i": ; preds = %bb.q, %.noexc9.i
  br i1 %i.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i", label %bb.s

"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i": ; preds = %bb.t, %.noexc11.i, %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  br i1 %.sroa.02.0.i, label %bb.u, label %common.resume

bb.s:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17h771cd6189f53703bE.exit.i"
  %i.as = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc11.i unwind label %bb.r, !noalias !33087

.noexc11.i:                                       ; preds = %bb.s
  br i1 %i.as, label %bb.t, label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"

bb.t:                                             ; preds = %.noexc11.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i" unwind label %bb.r, !noalias !33087

bb.u:                                             ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit13.i"
  %i.at = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc14.i unwind label %bb.r, !noalias !33087

.noexc14.i:                                       ; preds = %bb.u
  br i1 %i.at, label %bb.v, label %common.resume

bb.v:                                             ; preds = %.noexc14.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.r, !noalias !33087

bb.w:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33087
  %i.au = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  invoke void @_ZN5tokio4task5local6Shared8schedule17h80f2403c1ff2fab3E(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull %i.k)
          to label %"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17hb884243b24d1b5e0E.exit.thread" unwind label %bb.y

"_ZN5tokio7runtime4task4list24LocalOwnedTasks$LT$S$GT$4bind17hb884243b24d1b5e0E.exit.thread": ; preds = %"_ZN4core3ptr109drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h03afd08ba36007bdE.exit.i", %bb.x
  ret ptr %i.k

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.y
  br i1 %i.ax, label %bb.z, label %common.resume

bb.z:                                             ; preds = %.noexc
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN5tokio4task5local8LocalSet9run_until28_$u7b$$u7b$closure$u7d$$u7d$17h6d48b8320fab9887E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [4 x i8], align 4                 ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [1 x i8], align 1                ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10336 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !178, !noundef !27
  switch i8 %i.ad, label %default.unreachable22 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.b
  ]

default.unreachable22:                            ; preds = %.noexc3.i.i.i.i, %bb.g, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !33092
  br label %bb.g

"_ZN4core3ptr103drop_in_place$LT$tokio..task..local..RunUntil$LT$meilisearch..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he335ba872ef9b2fcE.exit17": ; preds = %.body, %bb.bt, %bb.c
  %.pn10 = phi { ptr, i32 } [ %i.ae, %bb.c ], [ %.pn, %bb.bt ], [ %.pn, %.body ]
  store i8 2, ptr %i.ac, align 8
  resume { ptr, i32 } %.pn10

bb.c:                                             ; preds = %bb.bs
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$tokio..task..local..RunUntil$LT$meilisearch..main..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he335ba872ef9b2fcE.exit17"

bb.d:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %i.af, ptr %i.ah, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5160) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(5160) %i.ag, i64 5160, i1 false)
  br label %bb.g

end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sink.i553.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i553.sroa.gep73 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i553.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.i553.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i553.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.i553.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.i553.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i553.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i553.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i553.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i553.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.i553.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.i553.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i553.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.i553.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.i553.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i553.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.i553.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br i1 %i.ar, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.as = icmp eq i64 %i.aq, 0                    ; 3 uses
  br i1 %i.as, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34243
  %i.at = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34243 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = ptrtoint ptr %i.at to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !34248
  unreachable

bb.e:                                             ; preds = %.invoke2924, %.invoke, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.av, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.ax = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  invoke void @_ZN6brotli3enc14block_splitter23CopyLiteralsToByteArray17h2efc995e39fc9311E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %i.ax, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34252)
  %i.ay = udiv i64 %i.aq, 544
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 99) ; 8 uses
  %spec.store.select.i = add nuw nsw i64 %i.az, 1 ; 17 uses
  br i1 %i.as, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread, label %bb.h

_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.ba, align 8, !alias.scope !34252, !noalias !34249
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i64 %i.aq, 128
  br i1 %i.bb, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bc = mul nuw nsw i64 %spec.store.select.i, 1040 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34254
  %i.bd = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #38, !noalias !34254 ; 17 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.invoke2924, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.not101.i = icmp samesign ult i64 %i.aq, 544
  br i1 %.not101.i, label %.loopexit115.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.bf = add nsw i64 %i.az, -1
  %xtraiter = and i64 %i.az, 7                    ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.az, 120
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !34263
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !34263
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !34263
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !34263
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !34263
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !34263
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !34263
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !34263
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit115.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val110.i = load ptr, ptr %7, align 8, !alias.scope !34252, !noalias !34249, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val111.i = load i64, ptr %i.bp, align 8, !alias.scope !34252, !noalias !34249, !noundef !27 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !34252, !noalias !34249, !noundef !27 ; 6 uses
  %i.bs = add i64 %i.br, 1                        ; 7 uses
  %i.bt = icmp ult i64 %.val111.i, %i.bs
  br i1 %i.bt, label %bb.gh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i"

.thread.i:                                        ; preds = %bb.m, %.split24.us.i.invoke.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

.loopexit115.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ]
  %lcmp.mod4656 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4656)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !34263
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !34266

.loopexit115.i:                                   ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i" ], [ %i.bo, %.loopexit115.i.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !34262
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !34263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34270)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %xtraiter4657 = and i64 %spec.store.select.i, 7 ; 2 uses
  %lcmp.mod4658.not = icmp eq i64 %xtraiter4657, 0
  br i1 %lcmp.mod4658.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.loopexit115.i, %.lr.ph.i.i.i.prol
  %.sroa.02.05.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.prol ], [ %i.bd, %.loopexit115.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.loopexit115.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1040 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.by, align 8, !alias.scope !34276, !noalias !34275
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4657
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !34279

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.loopexit115.i
  %.sroa.02.05.i.i.i.unr = phi ptr [ %i.bd, %.loopexit115.i ], [ %i.bx, %.lr.ph.i.i.i.prol ]
  %i.bz = icmp ult i64 %i.aq, 3808
  br i1 %i.bz, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.02.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1040
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.i, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cb, align 8, !alias.scope !34276, !noalias !34275
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2080
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ca, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cd, align 8, !alias.scope !34276, !noalias !34275
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3120
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cc, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cf, align 8, !alias.scope !34276, !noalias !34275
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4160
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.ch, align 8, !alias.scope !34276, !noalias !34275
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5200
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cj, align 8, !alias.scope !34276, !noalias !34275
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6240
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cl, align 8, !alias.scope !34276, !noalias !34275
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7280
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cn, align 8, !alias.scope !34276, !noalias !34275
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8320 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.cm, i8 0, i64 1032, i1 false), !alias.scope !34272, !noalias !34275
  store float 3.402000e+38, ptr %i.cp, align 8, !alias.scope !34276, !noalias !34275
  %i.cq = icmp eq ptr %i.co, %i.bw
  br i1 %i.cq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.cr = udiv i64 %i.aq, %spec.store.select.i
  %i.cs = add nsw i64 %i.aq, -71
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i: ; preds = %.preheader.i.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.07.019.i.i, %i.az
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i
  %.sroa.0.020.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.019.i.i = phi i64 [ %i.ct, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.07.019.i.i, 1
  %i.cu = mul i64 %.sroa.07.019.i.i, %i.aq
  %i.cv = udiv i64 %i.cu, %spec.store.select.i    ; 2 uses
  %i.cw = icmp eq i64 %.sroa.07.019.i.i, 0
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cv, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %i.dd, %bb.k ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.020.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i, %bb.k ]
  %i.cx = add i64 %.sroa.04.0.i.i, 70
  %.not.i.i = icmp ult i64 %i.cx, %i.aq
  %spec.select.i.i = select i1 %.not.i.i, i64 %.sroa.04.0.i.i, i64 %i.cs ; 4 uses
  %i.cy = icmp ugt i64 %spec.select.i.i, %i.aq
  br i1 %i.cy, label %.split24.us.i.invoke.i, label %bb.l, !prof !29

bb.k:                                             ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %i.cz = icmp eq i32 %.sroa.0.020.i.i, 0
  %i.da = mul i32 %.sroa.0.020.i.i, 16807
  %spec.store.select.i.i = select i1 %i.cz, i32 1, i32 %i.da ; 2 uses
  %i.db = zext i32 %spec.store.select.i.i to i64
  %i.dc = urem i64 %i.db, %i.cr
  %i.dd = add i64 %i.dc, %i.cv
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34283)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !34285, !noalias !34288, !noundef !27
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !34289, !noalias !34288
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !202

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph220 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph221 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph222 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph223 = phi ptr [ @1934, %bb.l ], [ @1573, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph220, i64 noundef %.ph221, i64 noundef %.ph222, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph223) #43
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !34262

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !34292, !noalias !34295, !noundef !27
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !34296, !noalias !34288, !noundef !27
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !34296, !noalias !34288
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !34292, !noalias !34295, !noundef !27
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !34296, !noalias !34288, !noundef !27
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !34296, !noalias !34288
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, label %.preheader.i.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34300)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, %.lr.ph.i.i
  %.sroa.03.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.lr.ph.i.i ], [ %spec.store.select.i.i.i, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !34302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false), !noalias !34302
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !34303, !noalias !34302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34309)
  %i.ef = mul i32 %.sroa.0.017.i.i, 16807
  %i.eg = icmp eq i32 %.sroa.0.017.i.i, 0
  %spec.store.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ef ; 2 uses
  %i.eh = zext i32 %spec.store.select.i.i.i to i64
  %i.ei = urem i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34314)
  store i64 70, ptr %i.ec, align 8, !alias.scope !34316, !noalias !34319
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %i.ek = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !alias.scope !34321, !noalias !34324, !noundef !27
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !34325, !noalias !34319, !noundef !27
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !alias.scope !34325, !noalias !34319
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.eq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !alias.scope !34321, !noalias !34324, !noundef !27
  %i.er = zext i8 %i.eq to i64
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !34325, !noalias !34319, !noundef !27
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !alias.scope !34325, !noalias !34319
  %i.ev = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70
  br i1 %i.ev, label %vector.ph, label %.preheader.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i
  %i.ew = urem i64 %.sroa.03.018.i.i, %spec.store.select.i
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1024 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !34326, !noalias !34329, !noundef !27
  %i.fa = add i64 %i.ez, 70
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !34332, !noalias !34335
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !alias.scope !34300, !noalias !34335
  %wide.load3726 = load <4 x i32>, ptr %i.fc, align 4, !alias.scope !34300, !noalias !34335
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load3727 = load <4 x i32>, ptr %i.fd, align 8, !noalias !34302
  %wide.load3728 = load <4 x i32>, ptr %i.fe, align 8, !noalias !34302
  %i.ff = add <4 x i32> %wide.load3727, %wide.load
  %i.fg = add <4 x i32> %wide.load3728, %wide.load3726
  store <4 x i32> %i.ff, ptr %i.fb, align 4, !alias.scope !34300, !noalias !34335
  store <4 x i32> %i.fg, ptr %i.fc, align 4, !alias.scope !34300, !noalias !34335
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index.next ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !34300, !noalias !34335
  %wide.load3726.1 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !34300, !noalias !34335
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index.next ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load3727.1 = load <4 x i32>, ptr %i.fj, align 8, !noalias !34302
  %wide.load3728.1 = load <4 x i32>, ptr %i.fk, align 8, !noalias !34302
  %i.fl = add <4 x i32> %wide.load3727.1, %wide.load.1
  %i.fm = add <4 x i32> %wide.load3728.1, %wide.load3726.1
  store <4 x i32> %i.fl, ptr %i.fh, align 4, !alias.scope !34300, !noalias !34335
  store <4 x i32> %i.fm, ptr %i.fi, align 4, !alias.scope !34300, !noalias !34335
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next.1, 256
  br i1 %i.fn, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, label %vector.body, !llvm.loop !34336

_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i: ; preds = %vector.body
  %i.fo = add nuw i64 %.sroa.03.018.i.i, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !34302
  %exitcond27.not.i.i = icmp eq i64 %i.fo, %i.eb
  br i1 %exitcond27.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34337
  %i.fp = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34337 ; 15 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i143.i

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc142.i unwind label %.thread.i, !noalias !34262

.noexc142.i:                                      ; preds = %bb.m
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i143.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.fr = add nuw nsw i64 %i.az, 8
  %i.fs = lshr i64 %i.fr, 3                       ; 19 uses
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  store i8 %i.aln, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.029.4.2.i.i = phi float [ %i.alk, %bb.fj ], [ %.sroa.029.4.1.i.i, %bb.fi ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 12 ; 2 uses
  %i.alp = load float, ptr %i.alo, align 4, !alias.scope !34588, !noalias !34597, !noundef !27
  %i.alq = fadd float %.sroa.7.0.copyload.i.i, %i.alp ; 3 uses
  store float %i.alq, ptr %i.alo, align 4, !alias.scope !34588, !noalias !34597
  %i.alr = fcmp olt float %i.alq, %.sroa.029.4.2.i.i
  br i1 %i.alr, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.als = trunc i64 %i.aca to i8
  %i.alt = or disjoint i8 %i.als, 3
  store i8 %i.alt, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.029.4.3.i.i = phi float [ %i.alq, %bb.fl ], [ %.sroa.029.4.2.i.i, %bb.fk ] ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 16 ; 2 uses
  %i.alv = load float, ptr %i.alu, align 4, !alias.scope !34588, !noalias !34597, !noundef !27
  %i.alw = fadd float %.sroa.8.0.copyload.i.i, %i.alv ; 3 uses
  store float %i.alw, ptr %i.alu, align 4, !alias.scope !34588, !noalias !34597
  %i.alx = fcmp olt float %i.alw, %.sroa.029.4.3.i.i
  br i1 %i.alx, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aly = trunc i64 %i.aca to i8
  %i.alz = or disjoint i8 %i.aly, 4
  store i8 %i.alz, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.029.4.4.i.i = phi float [ %i.alw, %bb.fn ], [ %.sroa.029.4.3.i.i, %bb.fm ] ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 20 ; 2 uses
  %i.amb = load float, ptr %i.ama, align 4, !alias.scope !34588, !noalias !34597, !noundef !27
  %i.amc = fadd float %.sroa.9.0.copyload.i.i, %i.amb ; 3 uses
  store float %i.amc, ptr %i.ama, align 4, !alias.scope !34588, !noalias !34597
  %i.amd = fcmp olt float %i.amc, %.sroa.029.4.4.i.i
  br i1 %i.amd, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ame = trunc i64 %i.aca to i8
  %i.amf = or disjoint i8 %i.ame, 5
  store i8 %i.amf, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.029.4.5.i.i = phi float [ %i.amc, %bb.fp ], [ %.sroa.029.4.4.i.i, %bb.fo ] ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 24 ; 2 uses
  %i.amh = load float, ptr %i.amg, align 4, !alias.scope !34588, !noalias !34597, !noundef !27
  %i.ami = fadd float %.sroa.10.0.copyload.i.i, %i.amh ; 3 uses
  store float %i.ami, ptr %i.amg, align 4, !alias.scope !34588, !noalias !34597
  %i.amj = fcmp olt float %i.ami, %.sroa.029.4.5.i.i
  br i1 %i.amj, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amk = trunc i64 %i.aca to i8
  %i.aml = or disjoint i8 %i.amk, 6
  store i8 %i.aml, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.029.4.6.i.i = phi float [ %i.ami, %bb.fr ], [ %.sroa.029.4.5.i.i, %bb.fq ] ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 28 ; 2 uses
  %i.amn = load float, ptr %i.amm, align 4, !alias.scope !34588, !noalias !34597, !noundef !27
  %i.amo = fadd float %.sroa.11.0.copyload.i.i, %i.amn ; 3 uses
  store float %i.amo, ptr %i.amm, align 4, !alias.scope !34588, !noalias !34597
  %i.amp = fcmp olt float %i.amo, %.sroa.029.4.6.i.i
  br i1 %i.amp, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.amq = trunc i64 %i.aca to i8
  %i.amr = or disjoint i8 %i.amq, 7
  store i8 %i.amr, ptr %i.abr, align 1, !alias.scope !34592, !noalias !34594
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.029.4.7.i.i = phi float [ %i.amo, %bb.ft ], [ %.sroa.029.4.6.i.i, %bb.fs ] ; 2 uses
  %i.ams = icmp eq ptr %i.aby, %i.ym
  br i1 %i.ams, label %._crit_edge416.i.i, label %.lr.ph415.i.i

bb.fv:                                            ; preds = %bb.fx, %.split.i178.i
  %i.amt = phi i64 [ 1, %.split.i178.i ], [ %i.and, %bb.fx ] ; 4 uses
  %.sroa.071.0400.i.i = phi i64 [ 0, %.split.i178.i ], [ %i.amt, %bb.fx ] ; 4 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.071.0400.i.i
  %i.amv = load float, ptr %i.amu, align 4, !alias.scope !34586, !noalias !34596, !noundef !27
  %exitcond481.not.i.i = icmp eq i64 %i.amt, %i.gr
  br i1 %exitcond481.not.i.i, label %.invoke.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.sroa.071.0400.i.i
  %i.amw = load i32, ptr %gep.i.i, align 4, !alias.scope !34584, !noalias !34617, !noundef !27
  %i.amx = zext i32 %i.amw to i64
  %i.amy = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.amx)
          to label %.noexc198.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i", !noalias !34262

.noexc198.i:                                      ; preds = %bb.fw
  %i.amz = add nuw nsw i64 %.sroa.071.0400.i.i, %i.yk ; 3 uses
  %i.ana = icmp ult i64 %i.amz, %i.ft
  br i1 %i.ana, label %bb.fx, label %.invoke.i

bb.fx:                                            ; preds = %.noexc198.i
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.amz
  %i.anc = fsub float %i.amv, %i.amy
  store float %i.anc, ptr %i.anb, align 4, !alias.scope !34586, !noalias !34596
  %i.and = add nuw nsw i64 %i.amt, 1
  %exitcond482.not.i.i = icmp eq i64 %i.amt, %.sroa.0.0423.i
  br i1 %exitcond482.not.i.i, label %.loopexit358.i.i, label %bb.fv

bb.fy:                                            ; preds = %bb.dt
  %i.ane = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 1024
  %i.ang = load i64, ptr %i.anf, align 8, !alias.scope !34618, !noalias !34617, !noundef !27
  %i.anh = and i64 %i.ang, 4294967295             ; 3 uses
  %i.ani = icmp samesign ult i64 %i.anh, 256
  br i1 %i.ani, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.anj = uitofp nneg i64 %i.anh to float
  %i.ank = tail call float @llvm.log2.f32(float %i.anj)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.016.0.i.i = phi float [ %i.ano, %bb.gb ], [ %i.ank, %bb.fz ]
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.069.0399.i.i
  store float %.sroa.016.0.i.i, ptr %i.anl, align 4, !alias.scope !34586, !noalias !34596
  %i.anm = add nuw nsw i64 %i.yg, 1
  %exitcond479.not.i.i = icmp eq i64 %i.yg, %.sroa.0.0423.i
  br i1 %exitcond479.not.i.i, label %.split.i178.i, label %bb.dt

bb.gb:                                            ; preds = %bb.fy
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.anh
  %i.ano = load float, ptr %i.ann, align 4, !noalias !34603, !noundef !27
  br label %bb.ga

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader4591, %bb.gc
  %i.anp = phi i64 [ %i.anr, %bb.gc ], [ %.ph4592, %.preheader.i.i.preheader4591 ] ; 4 uses
  %.sroa.066.0449.i.i = phi i64 [ %i.anp, %bb.gc ], [ %.sroa.066.0449.i.i.ph, %.preheader.i.i.preheader4591 ] ; 2 uses
  %exitcond487.not.i.i = icmp eq i64 %i.anp, %i.gv
  br i1 %exitcond487.not.i.i, label %.invoke.i, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.066.0449.i.i
  store i8 0, ptr %i.anq, align 1, !alias.scope !34592, !noalias !34594
  %i.anr = add i64 %i.anp, 1
  %exitcond488.not.i.i = icmp eq i64 %i.anp, %i.aq
  br i1 %exitcond488.not.i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !34621

.loopexit.i:                                      ; preds = %bb.dx, %bb.gc, %bb.dq
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.dq ], [ 1, %bb.gc ], [ %.sroa.03.1.i.i, %bb.dx ] ; 32 uses
  %i.ans = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias noundef nonnull align 2 %i.gn, i64 noundef %spec.store.select.i, i64 noundef %.sroa.0.0423.i)
          to label %bb.gd unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i", !noalias !34262 ; 5 uses

bb.gd:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34627)
  %.not.i.i204.i = icmp ugt i64 %i.ans, %spec.store.select.i
  br i1 %.not.i.i204.i, label %.invoke1149.i, label %bb.ge, !prof !2480

bb.ge:                                            ; preds = %bb.gd
  %.idx.i.i205.i = mul i64 %i.ans, 1040           ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i205.i
  %i.anu = icmp eq i64 %i.ans, 0
  br i1 %i.anu, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i206.i.preheader

.lr.ph.i.i206.i.preheader:                        ; preds = %bb.ge
  %i.anv = add i64 %.idx.i.i205.i, -1040          ; 2 uses
  %i.anw = udiv i64 %i.anv, 1040
  %i.anx = add nuw nsw i64 %i.anw, 1
  %xtraiter4659 = and i64 %i.anx, 7               ; 2 uses
  %lcmp.mod4660.not = icmp eq i64 %xtraiter4659, 0
  br i1 %lcmp.mod4660.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol

.lr.ph.i.i206.i.prol:                             ; preds = %.lr.ph.i.i206.i.preheader, %.lr.ph.i.i206.i.prol
  %.sroa.02.05.i.i207.i.prol = phi ptr [ %i.any, %.lr.ph.i.i206.i.prol ], [ %i.bd, %.lr.ph.i.i206.i.preheader ] ; 3 uses
  %prol.iter4661 = phi i64 [ %prol.iter4661.next, %.lr.ph.i.i206.i.prol ], [ 0, %.lr.ph.i.i206.i.preheader ]
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 1040 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i207.i.prol, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.anz, align 8, !alias.scope !34633, !noalias !34632
  %prol.iter4661.next = add i64 %prol.iter4661, 1 ; 2 uses
  %prol.iter4661.cmp.not = icmp eq i64 %prol.iter4661.next, %xtraiter4659
  br i1 %prol.iter4661.cmp.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol, !llvm.loop !34636

.lr.ph.i.i206.i.prol.loopexit:                    ; preds = %.lr.ph.i.i206.i.prol, %.lr.ph.i.i206.i.preheader
  %.sroa.02.05.i.i207.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i206.i.preheader ], [ %i.any, %.lr.ph.i.i206.i.prol ]
  %i.aoa = icmp ult i64 %i.anv, 7280
  br i1 %i.aoa, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i206.i

.lr.ph.i.i206.i:                                  ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i
  %.sroa.02.05.i.i207.i = phi ptr [ %i.aop, %.lr.ph.i.i206.i ], [ %.sroa.02.05.i.i207.i.unr, %.lr.ph.i.i206.i.prol.loopexit ] ; 17 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 1040
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i207.i, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aoc, align 8, !alias.scope !34633, !noalias !34632
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2080
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aob, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aoe, align 8, !alias.scope !34633, !noalias !34632
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 3120
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aod, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aog, align 8, !alias.scope !34633, !noalias !34632
  %i.aoh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 4160
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aof, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aoi, align 8, !alias.scope !34633, !noalias !34632
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5200
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aoh, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aok, align 8, !alias.scope !34633, !noalias !34632
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 6240
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aoj, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aom, align 8, !alias.scope !34633, !noalias !34632
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 7280
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aol, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aoo, align 8, !alias.scope !34633, !noalias !34632
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8320 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.aon, i8 0, i64 1032, i1 false), !alias.scope !34629, !noalias !34632
  store float 3.402000e+38, ptr %i.aoq, align 8, !alias.scope !34633, !noalias !34632
  %i.aor = icmp eq ptr %i.aop, %i.ant
  br i1 %i.aor, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i206.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i, %bb.ge
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, %bb.gf
  %.sroa.01.010.i.i = phi i64 [ %i.aov, %bb.gf ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader ] ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.01.010.i.i
  %i.aot = load i8, ptr %i.aos, align 1, !alias.scope !34625, !noalias !34637, !noundef !27
  %i.aou = zext i8 %i.aot to i64                  ; 3 uses
  %.not102.i = icmp samesign ult i64 %i.az, %i.aou
  br i1 %.not102.i, label %.invoke.i, label %bb.gf

bb.gf:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i
  %i.aov = add nuw i64 %.sroa.01.010.i.i, 1       ; 2 uses
  %i.aow = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.aou ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.010.i.i
  %i.aoy = load i8, ptr %i.aox, align 1, !alias.scope !34638, !noalias !34641, !noundef !27
  %i.aoz = zext i8 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %i.aoz ; 2 uses
  %i.apb = load i32, ptr %i.apa, align 4, !alias.scope !34642, !noalias !34632, !noundef !27
  %i.apc = add i32 %i.apb, 1
  store i32 %i.apc, ptr %i.apa, align 4, !alias.scope !34642, !noalias !34632
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aow, i64 1024 ; 2 uses
  %i.ape = load i64, ptr %i.apd, align 8, !alias.scope !34645, !noalias !34632, !noundef !27
  %i.apf = add i64 %i.ape, 1
  store i64 %i.apf, ptr %i.apd, align 8, !alias.scope !34648, !noalias !34632
  %exitcond17.not.i.i = icmp eq i64 %i.aov, %i.aq
  br i1 %exitcond17.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

.invoke.i:                                        ; preds = %bb.dt, %.lr.ph434.split.i.i, %.lr.ph447.i.i, %.preheader.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i, %.noexc198.i, %bb.fv, %.lr.ph424.preheader.i.i, %.lr.ph424.i.i.1, %.lr.ph424.i.i.2, %.lr.ph424.i.i.3, %.lr.ph424.i.i.4, %.lr.ph424.i.i.5, %.lr.ph424.i.i.6, %.lr.ph430.i.i
  %i.apg = phi i64 [ %i.aou, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.abf, %.lr.ph447.i.i ], [ %i.aii, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %.sroa.066.0449.i.i, %.preheader.i.i ], [ %i.aai, %.lr.ph424.i.i.6 ], [ %.sroa.071.0400.i.i, %bb.fv ], [ %i.yu, %.lr.ph424.preheader.i.i ], [ %i.yz, %.lr.ph424.i.i.1 ], [ %i.zh, %.lr.ph424.i.i.2 ], [ %i.zq, %.lr.ph424.i.i.3 ], [ %i.zw, %.lr.ph424.i.i.4 ], [ %i.aac, %.lr.ph424.i.i.5 ], [ %i.amz, %.noexc198.i ], [ %.sroa.069.0399.i.i, %bb.dt ]
  %i.aph = phi i64 [ %spec.store.select.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.ge, %.lr.ph447.i.i ], [ %i.ge, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %i.aq, %.preheader.i.i ], [ %i.fs, %.lr.ph424.preheader.i.i ], [ %spec.store.select.i, %bb.fv ], [ %i.fs, %.lr.ph424.i.i.6 ], [ %i.fs, %.lr.ph424.i.i.5 ], [ %i.fs, %.lr.ph424.i.i.4 ], [ %i.fs, %.lr.ph424.i.i.3 ], [ %i.fs, %.lr.ph424.i.i.2 ], [ %i.fs, %.lr.ph424.i.i.1 ], [ %i.ft, %.noexc198.i ], [ %spec.store.select.i, %bb.dt ]
  %i.api = phi ptr [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ @1531, %.lr.ph447.i.i ], [ @1576, %.lr.ph430.i.i ], [ @1532, %.lr.ph434.split.i.i ], [ @1546, %.preheader.i.i ], [ @1537, %.lr.ph424.preheader.i.i ], [ @1542, %bb.fv ], [ @1537, %.lr.ph424.i.i.6 ], [ @1537, %.lr.ph424.i.i.5 ], [ @1537, %.lr.ph424.i.i.4 ], [ @1537, %.lr.ph424.i.i.3 ], [ @1537, %.lr.ph424.i.i.2 ], [ @1537, %.lr.ph424.i.i.1 ], [ @1543, %.noexc198.i ], [ @1544, %bb.dt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.apg, i64 noundef %i.aph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.api) #43
          to label %.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !34262

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i": ; preds = %bb.fw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i": ; preds = %.loopexit.i
  %lpad.loopexit111.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %.split440.us.i.invoke.i, %.invoke1149.i
  %lpad.loopexit.split-lp112.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i"
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i" ], [ %lpad.loopexit111.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit.split-lp112.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i" ]
  call void @mi_free(ptr noundef nonnull %i.gn) #38, !noalias !34262
  br label %bb.gg

bb.gg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i", %.thread55.i
  %.pn62.i = phi { ptr, i32 } [ %i.gp, %.thread55.i ], [ %lpad.phi.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i" ]
  br i1 %i.gg, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i": ; preds = %bb.gg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @mi_free(ptr noundef nonnull %i.gl) #38, !noalias !34262
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i213.i", %bb.gg
  call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !34262
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i", %.thread39.i
  %.pn.pn.pn44.i = phi { ptr, i32 } [ %i.gd, %.thread39.i ], [ %i.gk, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i" ], [ %.pn62.i, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i" ]
  call void @mi_free(ptr noundef nonnull %i.fv) #38, !noalias !34262
  call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !34262
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %bb.dp, %.body.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.xs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i, %bb.dp ], [ %.pn230.pn.pn.pn.pn.pn.pn85931.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i" ]
  tail call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !34262
  br label %.body

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.thread.i", %.thread.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %i.bu, %.thread.i ], [ %.pn.pn.pn44.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i" ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.bd) #38, !noalias !34262
  br label %.body

bb.gh:                                            ; preds = %bb.i
  %i.apj = icmp eq i64 %.val111.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.apj, i64 %i.bs, i64 %.val111.i
  br label %bb.gi

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i", %bb.gk, %bb.i
  %.val.i = phi ptr [ %i.apq, %bb.gk ], [ %i.apq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val110.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.gk ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val111.i, %bb.i ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val90.i = load ptr, ptr %i.apk, align 8, !alias.scope !34252, !noalias !34249, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val91.i = load i64, ptr %i.apl, align 8, !alias.scope !34252, !noalias !34249, !noundef !27 ; 5 uses
  %i.apm = icmp ult i64 %.val91.i, %i.bs
  br i1 %i.apm, label %bb.gl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.gh ], [ %i.apo, %bb.gi ] ; 9 uses
  %i.apn = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.apo = shl i64 %.sroa.014.1.i, 1
  br i1 %i.apn, label %bb.gi, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.app = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.app, label %.invoke2924, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i: ; preds = %bb.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34651
  %i.apq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34651 ; 5 uses
  %i.apr = icmp eq ptr %i.apq, null
  br i1 %i.apr, label %.invoke2924, label %bb.gk

bb.gk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apq, ptr nonnull readonly align 1 %.val110.i, i64 %.val111.i, i1 false), !alias.scope !34656, !noalias !34660
  store ptr %i.apq, ptr %7, align 8, !alias.scope !34252, !noalias !34249
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !34252, !noalias !34249
  br i1 %i.apj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i": ; preds = %bb.gk
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i) #38, !noalias !34262
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i"

bb.gl:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i"
  %i.aps = icmp eq i64 %.val91.i, 0               ; 2 uses
  %spec.select100.i = select i1 %i.aps, i64 %i.bs, i64 %.val91.i
  br label %bb.gm

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i", %bb.gq, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i"
  %.val94.i = phi ptr [ %i.aqg, %bb.gq ], [ %i.aqg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val90.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i" ]
  %.val95.i = phi i64 [ %.sroa.017.1.i, %bb.gq ], [ %.sroa.017.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val91.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit226.i" ] ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.apt, align 8, !alias.scope !34252, !noalias !34249
  %i.apu = icmp ult i64 %i.br, %.val63.i
  br i1 %i.apu, label %bb.gr, label %.invoke

bb.gm:                                            ; preds = %bb.gm, %bb.gl
  %.sroa.017.1.i = phi i64 [ %spec.select100.i, %bb.gl ], [ %i.apw, %bb.gm ] ; 8 uses
  %i.apv = icmp ult i64 %.sroa.017.1.i, %i.bs
  %i.apw = shl i64 %.sroa.017.1.i, 1
  br i1 %i.apv, label %bb.gm, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.apx = shl i64 %.sroa.017.1.i, 2              ; 5 uses
  %i.apy = icmp ugt i64 %.sroa.017.1.i, 4611686018427387903
  %i.apz = icmp ugt i64 %i.apx, 9223372036854775804
  %or.cond.i.i.i.i227.i = or i1 %i.apy, %i.apz
  br i1 %or.cond.i.i.i.i227.i, label %.invoke2924, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i: ; preds = %bb.gn
  %i.aqa = icmp eq i64 %i.apx, 0
  br i1 %i.aqa, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34662
  %i.aqb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.apx, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34662 ; 2 uses
  %i.aqc = icmp eq ptr %i.aqb, null
  br i1 %i.aqc, label %.invoke2924, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aqd = ptrtoint ptr %i.aqb to i64
  br label %bb.gq

.invoke2924:                                      ; preds = %bb.gn, %bb.go, %bb.gj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.aqe = phi i64 [ 0, %bb.gj ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ 4, %bb.go ], [ 0, %bb.gn ]
  %i.aqf = phi i64 [ %.sroa.014.1.i, %bb.gj ], [ %i.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.014.1.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ %i.apx, %bb.go ], [ %i.apx, %bb.gn ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aqe, i64 %i.aqf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2925 unwind label %bb.e

.cont2925:                                        ; preds = %.invoke2924
  unreachable

bb.gq:                                            ; preds = %bb.gp, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  %.sroa.10.0.i.i229.i = phi i64 [ %i.aqd, %bb.gp ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i ]
  %i.aqg = inttoptr i64 %.sroa.10.0.i.i229.i to ptr ; 5 uses
  %i.aqh = icmp samesign ult i64 %.sroa.017.1.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aqh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqg) ]
  %i.aqi = shl nuw nsw i64 %.val91.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aqg, ptr nonnull readonly align 4 %.val90.i, i64 %i.aqi, i1 false), !alias.scope !34667, !noalias !34671
  store ptr %i.aqg, ptr %i.apk, align 8, !alias.scope !34252, !noalias !34249
  store i64 %.sroa.017.1.i, ptr %i.apl, align 8, !alias.scope !34252, !noalias !34249
  br i1 %i.aps, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i": ; preds = %bb.gq
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i) #38, !noalias !34262
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

bb.gr:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %i.aqj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.br
  store i8 0, ptr %i.aqj, align 1, !noalias !34262
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.art = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.aru = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.arx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3797
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arr, i64 28
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ars, i64 44
  %i.asb = getelementptr inbounds nuw i8, ptr %i.art, i64 60
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aru, i64 76
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arv, i64 92
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arw, i64 108
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arx, i64 124
  %i.asg = load i16, ptr %i.ary, align 4, !alias.scope !34680, !noundef !27
  %i.ash = load i16, ptr %i.arz, align 4, !alias.scope !34680, !noundef !27
  %i.asi = load i16, ptr %i.asa, align 4, !alias.scope !34680, !noundef !27
  %i.asj = load i16, ptr %i.asb, align 4, !alias.scope !34680, !noundef !27
  %i.ask = load i16, ptr %i.asc, align 4, !alias.scope !34680, !noundef !27
  %i.asl = load i16, ptr %i.asd, align 4, !alias.scope !34680, !noundef !27
  %i.asm = load i16, ptr %i.ase, align 4, !alias.scope !34680, !noundef !27
  %i.asn = load i16, ptr %i.asf, align 4, !alias.scope !34680, !noundef !27
  %i.aso = insertelement <8 x i16> poison, i16 %i.asg, i64 0
  %i.asp = insertelement <8 x i16> %i.aso, i16 %i.ash, i64 1
  %i.asq = insertelement <8 x i16> %i.asp, i16 %i.asi, i64 2
  %i.asr = insertelement <8 x i16> %i.asq, i16 %i.asj, i64 3
  %i.ass = insertelement <8 x i16> %i.asr, i16 %i.ask, i64 4
  %i.ast = insertelement <8 x i16> %i.ass, i16 %i.asl, i64 5
  %i.asu = insertelement <8 x i16> %i.ast, i16 %i.asm, i64 6
  %i.asv = insertelement <8 x i16> %i.asu, i16 %i.asn, i64 7
  %i.asw = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %index3797
  store <8 x i16> %i.asv, ptr %i.asw, align 2, !alias.scope !34683, !noalias !34680
  %index.next3798 = add nuw i64 %index3797, 8     ; 2 uses
  %i.asx = icmp eq i64 %index.next3798, %n.vec3795
  br i1 %i.asx, label %scalar.ph3792.preheader, label %vector.body3796, !llvm.loop !34685

.body434.thread:                                  ; preds = %.invoke2928, %.invoke2926
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

._crit_edge:                                      ; preds = %scalar.ph3792.prol.loopexit, %scalar.ph3792, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ara) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34689)
  %i.asz = udiv i64 %2, 530
  %i.ata = tail call i64 @llvm.umin.i64(i64 %i.asz, i64 49) ; 8 uses
  %spec.store.select.i44 = add nuw nsw i64 %i.ata, 1 ; 18 uses
  %i.atb = icmp eq i64 %2, 0                      ; 2 uses
  br i1 %i.atb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread", label %bb.gv

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread": ; preds = %._crit_edge
  %i.atc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.atc, align 8, !alias.scope !34689, !noalias !34686
  br label %bb.op

bb.gv:                                            ; preds = %._crit_edge
  %i.atd = icmp samesign ult i64 %2, 128
  br i1 %i.atd, label %bb.gw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45: ; preds = %bb.gv
  %i.ate = mul nuw nsw i64 %spec.store.select.i44, 2832 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34691
  %i.atf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ate, i64 noundef range(i64 1, 9) 8) #38, !noalias !34691 ; 17 uses
  %i.atg = icmp eq ptr %i.atf, null
  br i1 %i.atg, label %.invoke2926, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

.invoke2926:                                      ; preds = %bb.og, %bb.oh, %bb.oc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %i.ath = phi i64 [ 0, %bb.oc ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ 4, %bb.oh ], [ 0, %bb.og ]
  %i.ati = phi i64 [ %.sroa.014.1.i432, %bb.oc ], [ %i.ate, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ %.sroa.014.1.i432, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ %i.ciq, %bb.oh ], [ %i.ciq, %bb.og ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ath, i64 %i.ati, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2927 unwind label %.body434.thread

.cont2927:                                        ; preds = %.invoke2926
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %.not92.i = icmp samesign ult i64 %2, 530
  br i1 %.not92.i, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.atj = add nsw i64 %i.ata, -1
  %xtraiter4687 = and i64 %i.ata, 7               ; 3 uses
  %i.atk = icmp ult i64 %i.atj, 7
  br i1 %i.atk, label %.lr.ph.i.i.i.i46.epil.preheader, label %.lr.ph.i.i.i.i46.preheader.new

.lr.ph.i.i.i.i46.preheader.new:                   ; preds = %.lr.ph.i.i.i.i46.preheader
  %unroll_iter4692 = and i64 %i.ata, 56
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46, %.lr.ph.i.i.i.i46.preheader.new
  %.sroa.0.08.i.i.i.i47 = phi ptr [ %i.atf, %.lr.ph.i.i.i.i46.preheader.new ], [ %i.ats, %.lr.ph.i.i.i.i46 ] ; 17 uses
  %niter4693 = phi i64 [ 0, %.lr.ph.i.i.i.i46.preheader.new ], [ %niter4693.next.7, %.lr.ph.i.i.i.i46 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49, align 8, !noalias !34700
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atl, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1, align 8, !noalias !34700
  %i.atm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atm, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2, align 8, !noalias !34700
  %i.atn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atn, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3, align 8, !noalias !34700
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ato, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4, align 8, !noalias !34700
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atp, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5, align 8, !noalias !34700
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atq, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6, align 8, !noalias !34700
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atr, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7, align 8, !noalias !34700
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22656 ; 3 uses
  %niter4693.next.7 = add i64 %niter4693, 8       ; 2 uses
  %niter4693.ncmp.7 = icmp eq i64 %niter4693.next.7, %unroll_iter4692
  br i1 %niter4693.ncmp.7, label %.loopexit109.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i46

bb.gw:                                            ; preds = %bb.gv
  %.val110.i421 = load ptr, ptr %8, align 8, !alias.scope !34689, !noalias !34686, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.att = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val111.i422 = load i64, ptr %i.att, align 8, !alias.scope !34689, !noalias !34686, !noundef !27 ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.atv = load i64, ptr %i.atu, align 8, !alias.scope !34689, !noalias !34686, !noundef !27 ; 6 uses
  %i.atw = add i64 %i.atv, 1                      ; 7 uses
  %i.atx = icmp ult i64 %.val111.i422, %i.atw
  br i1 %i.atx, label %bb.oa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"

.thread.i60:                                      ; preds = %bb.hc, %.split32.us.i.invoke.i, %.split29.us.i.invoke.i
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

.loopexit109.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i46
  %lcmp.mod4689.not = icmp eq i64 %xtraiter4687, 0
  br i1 %lcmp.mod4689.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil.preheader

.lr.ph.i.i.i.i46.epil.preheader:                  ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.preheader
  %.sroa.0.08.i.i.i.i47.epil.init = phi ptr [ %i.atf, %.lr.ph.i.i.i.i46.preheader ], [ %i.ats, %.loopexit109.i.loopexit.unr-lcssa ]
  %lcmp.mod4691 = icmp ne i64 %xtraiter4687, 0
  call void @llvm.assume(i1 %lcmp.mod4691)
  br label %.lr.ph.i.i.i.i46.epil

.lr.ph.i.i.i.i46.epil:                            ; preds = %.lr.ph.i.i.i.i46.epil, %.lr.ph.i.i.i.i46.epil.preheader
  %.sroa.0.08.i.i.i.i47.epil = phi ptr [ %i.atz, %.lr.ph.i.i.i.i46.epil ], [ %.sroa.0.08.i.i.i.i47.epil.init, %.lr.ph.i.i.i.i46.epil.preheader ] ; 3 uses
  %epil.iter4688 = phi i64 [ %epil.iter4688.next, %.lr.ph.i.i.i.i46.epil ], [ 0, %.lr.ph.i.i.i.i46.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47.epil, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil, align 8, !noalias !34700
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2832 ; 2 uses
  %epil.iter4688.next = add i64 %epil.iter4688, 1 ; 2 uses
  %epil.iter4688.cmp.not = icmp eq i64 %epil.iter4688.next, %xtraiter4687
  br i1 %epil.iter4688.cmp.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil, !llvm.loop !34703

.loopexit109.i:                                   ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i51 = phi ptr [ %i.atf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.ats, %.loopexit109.i.loopexit.unr-lcssa ], [ %i.atz, %.lr.ph.i.i.i.i46.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i51, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i51, i8 0, i64 2824, i1 false), !noalias !34699
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52, align 8, !noalias !34700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34707)
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.ate
  %xtraiter4694 = and i64 %spec.store.select.i44, 7 ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol

.lr.ph.i.i.i53.prol:                              ; preds = %.loopexit109.i, %.lr.ph.i.i.i53.prol
  %.sroa.02.05.i.i.i54.prol = phi ptr [ %i.aub, %.lr.ph.i.i.i53.prol ], [ %i.atf, %.loopexit109.i ] ; 3 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %.lr.ph.i.i.i53.prol ], [ 0, %.loopexit109.i ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2832 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54.prol, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auc, align 8, !alias.scope !34713, !noalias !34712
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol, !llvm.loop !34716

.lr.ph.i.i.i53.prol.loopexit:                     ; preds = %.lr.ph.i.i.i53.prol, %.loopexit109.i
  %.sroa.02.05.i.i.i54.unr = phi ptr [ %i.atf, %.loopexit109.i ], [ %i.aub, %.lr.ph.i.i.i53.prol ]
  %i.aud = icmp samesign ult i64 %2, 3710
  br i1 %i.aud, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %.lr.ph.i.i.i53.prol.loopexit, %.lr.ph.i.i.i53
  %.sroa.02.05.i.i.i54 = phi ptr [ %i.aus, %.lr.ph.i.i.i53 ], [ %.sroa.02.05.i.i.i54.unr, %.lr.ph.i.i.i53.prol.loopexit ] ; 17 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2832
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i.i54, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auf, align 8, !alias.scope !34713, !noalias !34712
  %i.aug = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5664
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aue, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auh, align 8, !alias.scope !34713, !noalias !34712
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8496
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aug, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.auj, align 8, !alias.scope !34713, !noalias !34712
  %i.auk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11328
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aui, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aul, align 8, !alias.scope !34713, !noalias !34712
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14160
  %i.aun = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auk, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aun, align 8, !alias.scope !34713, !noalias !34712
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16992
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.aum, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aup, align 8, !alias.scope !34713, !noalias !34712
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19824
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auo, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aur, align 8, !alias.scope !34713, !noalias !34712
  %i.aus = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22656 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.auq, i8 0, i64 2824, i1 false), !alias.scope !34709, !noalias !34712
  store float 3.402000e+38, ptr %i.aut, align 8, !alias.scope !34713, !noalias !34712
  %i.auu = icmp eq ptr %i.aus, %i.aua
  br i1 %i.auu, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i53, %.lr.ph.i.i.i53.prol.loopexit
  %i.auv = udiv i64 %2, %spec.store.select.i44
  %i.auw = add nsw i64 %2, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i: ; preds = %bb.ha
  %exitcond.not.i.i67 = icmp eq i64 %.sroa.07.024.i.i, %i.ata
  br i1 %exitcond.not.i.i67, label %.lr.ph.i.i68, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i
  %.sroa.0.025.i.i = phi i32 [ %.sroa.0.1.i.i57, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i = phi i64 [ %i.aux, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 5 uses
  %i.aux = add nuw nsw i64 %.sroa.07.024.i.i, 1
  %i.auy = mul i64 %.sroa.07.024.i.i, %2
  %i.auz = udiv i64 %i.auy, %spec.store.select.i44 ; 2 uses
  %i.ava = icmp eq i64 %.sroa.07.024.i.i, 0
  br i1 %i.ava, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gy, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i56 = phi i64 [ %i.auz, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %i.avh, %bb.gy ] ; 2 uses
  %.sroa.0.1.i.i57 = phi i32 [ %.sroa.0.025.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i55, %bb.gy ]
  %i.avb = add i64 %.sroa.04.0.i.i56, 40
  %.not.i.i58 = icmp ult i64 %i.avb, %2
  %spec.select.i.i59 = select i1 %.not.i.i58, i64 %.sroa.04.0.i.i56, i64 %i.auw ; 4 uses
  %i.avc = icmp ugt i64 %spec.select.i.i59, %2
  br i1 %i.avc, label %.split29.us.i.invoke.i, label %bb.gz, !prof !29

bb.gy:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %i.avd = icmp eq i32 %.sroa.0.025.i.i, 0
  %i.ave = mul i32 %.sroa.0.025.i.i, 16807
  %spec.store.select.i.i55 = select i1 %i.avd, i32 1, i32 %i.ave ; 2 uses
  %i.avf = zext i32 %spec.store.select.i.i55 to i64
  %i.avg = urem i64 %i.avf, %i.auv
  %i.avh = add i64 %i.avg, %i.auz
  br label %bb.gx

bb.gz:                                            ; preds = %bb.gx
  %i.avi = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %.sroa.07.024.i.i ; 3 uses
  %i.avj = sub nuw nsw i64 %2, %spec.select.i.i59 ; 2 uses
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %spec.select.i.i59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34720)
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avi, i64 2816 ; 2 uses
  %i.avm = load i64, ptr %i.avl, align 8, !alias.scope !34722, !noalias !34725, !noundef !27
  %i.avn = add i64 %i.avm, 40
  store i64 %i.avn, ptr %i.avl, align 8, !alias.scope !34726, !noalias !34725
  %i.avo = icmp samesign ugt i64 %i.avj, 39
  br i1 %i.avo, label %.preheader.i.i.i63, label %.split29.us.i.invoke.i, !prof !202

.split29.us.i.invoke.i:                           ; preds = %bb.gz, %bb.gx
  %.ph180 = phi i64 [ 0, %bb.gz ], [ %spec.select.i.i59, %bb.gx ]
  %.ph181 = phi i64 [ 40, %bb.gz ], [ %2, %bb.gx ]
  %.ph182 = phi i64 [ %i.avj, %bb.gz ], [ %2, %bb.gx ]
  %.ph183 = phi ptr [ @1934, %bb.gz ], [ @1573, %bb.gx ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph180, i64 noundef %.ph181, i64 noundef %.ph182, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph183) #43
          to label %.split29.us.i.cont.i unwind label %.thread.i60, !noalias !34699

.split29.us.i.cont.i:                             ; preds = %.split29.us.i.invoke.i
  unreachable

.preheader.i.i.i63:                               ; preds = %bb.gz, %bb.ha
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.ha ], [ 0, %bb.gz ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.avk, i64 %.sroa.02.0.idx7.i.i.i64
  %i.avp = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !34729, !noalias !34732, !noundef !27 ; 2 uses
  %i.avq = zext i16 %i.avp to i64                 ; 2 uses
  %i.avr = icmp ult i16 %i.avp, 704
  br i1 %i.avr, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.avq ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !alias.scope !34733, !noalias !34725, !noundef !27
  %i.avu = add i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !alias.scope !34733, !noalias !34725
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avk, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.avv, i64 2
  %i.avw = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !34729, !noalias !34732, !noundef !27 ; 2 uses
  %i.avx = zext i16 %i.avw to i64                 ; 2 uses
  %i.avy = icmp ult i16 %i.avw, 704
  br i1 %i.avy, label %bb.ha, label %.split32.us.i.invoke.i

bb.ha:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %i.avx ; 2 uses
  %i.awa = load i32, ptr %i.avz, align 4, !alias.scope !34733, !noalias !34725, !noundef !27
  %i.awb = add i32 %i.awa, 1
  store i32 %i.awb, ptr %i.avz, align 4, !alias.scope !34733, !noalias !34725
  %i.awc = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.awc, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i70, %.preheader.i.i.i.i70.1
  %i.awd = phi i64 [ %i.axa, %.preheader.i.i.i.i70.1 ], [ %i.awt, %.preheader.i.i.i.i70 ], [ %i.avq, %.preheader.i.i.i63 ], [ %i.avx, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.awd, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1933) #43
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !34699

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable

.lr.ph.i.i68:                                     ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34737)
  %i.awe = udiv i64 %i.aqt, 40
  %i.awf = add nuw nsw i64 %i.awe, 99
  %i.awg = add nuw nsw i64 %i.awf, %spec.store.select.i44 ; 2 uses
  %i.awh = urem i64 %i.awg, %spec.store.select.i44
  %i.awi = sub nuw nsw i64 %i.awg, %i.awh
  %i.awj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2816 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.ab, i64 2824
  %i.awl = add nsw i64 %2, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, %.lr.ph.i.i68
  %.sroa.03.022.i.i = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.awm, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.lr.ph.i.i68 ], [ %spec.store.select.i.i.i69, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34739
  %i.awm = add nuw i64 %.sroa.03.022.i.i, 1       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.ab, i8 0, i64 2816, i1 false), !noalias !34739
  store float 3.402000e+38, ptr %i.awk, align 8, !alias.scope !34740, !noalias !34739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34746)
  %i.awn = mul i32 %.sroa.0.021.i.i, 16807
  %i.awo = icmp eq i32 %.sroa.0.021.i.i, 0
  %spec.store.select.i.i.i69 = select i1 %i.awo, i32 1, i32 %i.awn ; 2 uses
  %i.awp = zext i32 %spec.store.select.i.i.i69 to i64
  %i.awq = urem i64 %i.awp, %i.awl
  %i.awr = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %i.awq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34751)
  store i64 40, ptr %i.awj, align 8, !alias.scope !34753, !noalias !34756
  br label %.preheader.i.i.i.i70

.preheader.i.i.i.i70:                             ; preds = %bb.hb, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i71 = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i73.1, %bb.hb ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %i.awr, i64 %.sroa.02.0.idx7.i.i.i.i71
  %i.aws = load i16, ptr %.sroa.02.0.ptr.i.i.i.i72, align 2, !alias.scope !34758, !noalias !34761, !noundef !27 ; 2 uses
  %i.awt = zext i16 %i.aws to i64                 ; 2 uses
  %i.awu = icmp ult i16 %i.aws, 704
  br i1 %i.awu, label %.preheader.i.i.i.i70.1, label %.split32.us.i.invoke.i

.preheader.i.i.i.i70.1:                           ; preds = %.preheader.i.i.i.i70
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.awt ; 2 uses
  %i.aww = load i32, ptr %i.awv, align 4, !alias.scope !34762, !noalias !34756, !noundef !27
  %i.awx = add i32 %i.aww, 1
  store i32 %i.awx, ptr %i.awv, align 4, !alias.scope !34762, !noalias !34756
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awr, i64 %.sroa.02.0.idx7.i.i.i.i71
  %.sroa.02.0.ptr.i.i.i.i72.1 = getelementptr inbounds nuw i8, ptr %i.awy, i64 2
  %i.awz = load i16, ptr %.sroa.02.0.ptr.i.i.i.i72.1, align 2, !alias.scope !34758, !noalias !34761, !noundef !27 ; 2 uses
  %i.axa = zext i16 %i.awz to i64                 ; 2 uses
  %i.axb = icmp ult i16 %i.awz, 704
  br i1 %i.axb, label %bb.hb, label %.split32.us.i.invoke.i

bb.hb:                                            ; preds = %.preheader.i.i.i.i70.1
  %.sroa.02.0.add.i.i.i.i73.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i71, 4 ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.axa ; 2 uses
  %i.axd = load i32, ptr %i.axc, align 4, !alias.scope !34762, !noalias !34756, !noundef !27
  %i.axe = add i32 %i.axd, 1
  store i32 %i.axe, ptr %i.axc, align 4, !alias.scope !34762, !noalias !34756
  %i.axf = icmp eq i64 %.sroa.02.0.add.i.i.i.i73.1, 80
  br i1 %i.axf, label %vector.ph3802, label %.preheader.i.i.i.i70

vector.ph3802:                                    ; preds = %bb.hb
  %i.axg = urem i64 %.sroa.03.022.i.i, %spec.store.select.i44
  %i.axh = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %i.axg ; 3 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 2816 ; 2 uses
  %i.axj = load i64, ptr %i.axi, align 8, !alias.scope !34763, !noalias !34766, !noundef !27
  %i.axk = load i64, ptr %i.awj, align 8, !alias.scope !34769, !noalias !34739, !noundef !27
  %i.axl = add i64 %i.axk, %i.axj
  store i64 %i.axl, ptr %i.axi, align 8, !alias.scope !34772, !noalias !34775
  br label %vector.body3803

vector.body3803:                                  ; preds = %vector.body3803, %vector.ph3802
  %index3804 = phi i64 [ 0, %vector.ph3802 ], [ %index.next3809.1, %vector.body3803 ] ; 4 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %index3804 ; 3 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 16 ; 2 uses
  %wide.load3805 = load <4 x i32>, ptr %i.axm, align 4, !alias.scope !34737, !noalias !34775
  %wide.load3806 = load <4 x i32>, ptr %i.axn, align 4, !alias.scope !34737, !noalias !34775
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index3804 ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 16
  %wide.load3807 = load <4 x i32>, ptr %i.axo, align 8, !noalias !34739
  %wide.load3808 = load <4 x i32>, ptr %i.axp, align 8, !noalias !34739
  %i.axq = add <4 x i32> %wide.load3807, %wide.load3805
  %i.axr = add <4 x i32> %wide.load3808, %wide.load3806
  store <4 x i32> %i.axq, ptr %i.axm, align 4, !alias.scope !34737, !noalias !34775
  store <4 x i32> %i.axr, ptr %i.axn, align 4, !alias.scope !34737, !noalias !34775
  %index.next3809 = or disjoint i64 %index3804, 8 ; 2 uses
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %index.next3809 ; 3 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16 ; 2 uses
  %wide.load3805.1 = load <4 x i32>, ptr %i.axs, align 4, !alias.scope !34737, !noalias !34775
  %wide.load3806.1 = load <4 x i32>, ptr %i.axt, align 4, !alias.scope !34737, !noalias !34775
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next3809 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %wide.load3807.1 = load <4 x i32>, ptr %i.axu, align 8, !noalias !34739
  %wide.load3808.1 = load <4 x i32>, ptr %i.axv, align 8, !noalias !34739
  %i.axw = add <4 x i32> %wide.load3807.1, %wide.load3805.1
  %i.axx = add <4 x i32> %wide.load3808.1, %wide.load3806.1
  store <4 x i32> %i.axw, ptr %i.axs, align 4, !alias.scope !34737, !noalias !34775
  store <4 x i32> %i.axx, ptr %i.axt, align 4, !alias.scope !34737, !noalias !34775
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  store i8 %i.cef, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.029.4.2.i.i142 = phi float [ %i.cec, %bb.nc ], [ %.sroa.029.4.1.i.i141, %bb.nb ] ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 12 ; 2 uses
  %i.ceh = load float, ptr %i.ceg, align 4, !alias.scope !35037, !noalias !35046, !noundef !27
  %i.cei = fadd float %.sroa.7.0.copyload.i.i131, %i.ceh ; 3 uses
  store float %i.cei, ptr %i.ceg, align 4, !alias.scope !35037, !noalias !35046
  %i.cej = fcmp olt float %i.cei, %.sroa.029.4.2.i.i142
  br i1 %i.cej, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cek = trunc i64 %i.bus to i8
  %i.cel = or disjoint i8 %i.cek, 3
  store i8 %i.cel, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.sroa.029.4.3.i.i143 = phi float [ %i.cei, %bb.ne ], [ %.sroa.029.4.2.i.i142, %bb.nd ] ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 16 ; 2 uses
  %i.cen = load float, ptr %i.cem, align 4, !alias.scope !35037, !noalias !35046, !noundef !27
  %i.ceo = fadd float %.sroa.8.0.copyload.i.i133, %i.cen ; 3 uses
  store float %i.ceo, ptr %i.cem, align 4, !alias.scope !35037, !noalias !35046
  %i.cep = fcmp olt float %i.ceo, %.sroa.029.4.3.i.i143
  br i1 %i.cep, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.ceq = trunc i64 %i.bus to i8
  %i.cer = or disjoint i8 %i.ceq, 4
  store i8 %i.cer, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.029.4.4.i.i144 = phi float [ %i.ceo, %bb.ng ], [ %.sroa.029.4.3.i.i143, %bb.nf ] ; 2 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 20 ; 2 uses
  %i.cet = load float, ptr %i.ces, align 4, !alias.scope !35037, !noalias !35046, !noundef !27
  %i.ceu = fadd float %.sroa.9.0.copyload.i.i135, %i.cet ; 3 uses
  store float %i.ceu, ptr %i.ces, align 4, !alias.scope !35037, !noalias !35046
  %i.cev = fcmp olt float %i.ceu, %.sroa.029.4.4.i.i144
  br i1 %i.cev, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.cew = trunc i64 %i.bus to i8
  %i.cex = or disjoint i8 %i.cew, 5
  store i8 %i.cex, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.sroa.029.4.5.i.i145 = phi float [ %i.ceu, %bb.ni ], [ %.sroa.029.4.4.i.i144, %bb.nh ] ; 2 uses
  %i.cey = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 24 ; 2 uses
  %i.cez = load float, ptr %i.cey, align 4, !alias.scope !35037, !noalias !35046, !noundef !27
  %i.cfa = fadd float %.sroa.10.0.copyload.i.i137, %i.cez ; 3 uses
  store float %i.cfa, ptr %i.cey, align 4, !alias.scope !35037, !noalias !35046
  %i.cfb = fcmp olt float %i.cfa, %.sroa.029.4.5.i.i145
  br i1 %i.cfb, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfc = trunc i64 %i.bus to i8
  %i.cfd = or disjoint i8 %i.cfc, 6
  store i8 %i.cfd, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.029.4.6.i.i146 = phi float [ %i.cfa, %bb.nk ], [ %.sroa.029.4.5.i.i145, %bb.nj ] ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i119, i64 28 ; 2 uses
  %i.cff = load float, ptr %i.cfe, align 4, !alias.scope !35037, !noalias !35046, !noundef !27
  %i.cfg = fadd float %.sroa.11.0.copyload.i.i139, %i.cff ; 3 uses
  store float %i.cfg, ptr %i.cfe, align 4, !alias.scope !35037, !noalias !35046
  %i.cfh = fcmp olt float %i.cfg, %.sroa.029.4.6.i.i146
  br i1 %i.cfh, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.cfi = trunc i64 %i.bus to i8
  %i.cfj = or disjoint i8 %i.cfi, 7
  store i8 %i.cfj, ptr %i.buj, align 1, !alias.scope !35041, !noalias !35043
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %.sroa.029.4.7.i.i147 = phi float [ %i.cfg, %bb.nm ], [ %.sroa.029.4.6.i.i146, %bb.nl ] ; 2 uses
  %i.cfk = icmp eq ptr %i.buq, %i.bre
  br i1 %i.cfk, label %._crit_edge416.i.i148, label %.lr.ph415.i.i117

bb.no:                                            ; preds = %bb.nq, %.split.i180.i
  %i.cfl = phi i64 [ 1, %.split.i180.i ], [ %i.cfv, %bb.nq ] ; 4 uses
  %.sroa.071.0400.i.i87 = phi i64 [ 0, %.split.i180.i ], [ %i.cfl, %bb.nq ] ; 4 uses
  %i.cfm = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %.sroa.071.0400.i.i87
  %i.cfn = load float, ptr %i.cfm, align 4, !alias.scope !35035, !noalias !35045, !noundef !27
  %exitcond482.not.i.i88 = icmp eq i64 %i.cfl, %i.azb
  br i1 %exitcond482.not.i.i88, label %.invoke.i98, label %bb.np

bb.np:                                            ; preds = %bb.no
  %gep.i.i89 = getelementptr [2832 x i8], ptr %invariant.gep.i.i86, i64 %.sroa.071.0400.i.i87
  %i.cfo = load i32, ptr %gep.i.i89, align 4, !alias.scope !35033, !noalias !35066, !noundef !27
  %i.cfp = zext i32 %i.cfo to i64
  %i.cfq = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.cfp)
          to label %.noexc200.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i90", !noalias !34699

.noexc200.i:                                      ; preds = %bb.np
  %i.cfr = add nuw nsw i64 %.sroa.071.0400.i.i87, %i.brc ; 3 uses
  %i.cfs = icmp ult i64 %i.cfr, %i.ayd
  br i1 %i.cfs, label %bb.nq, label %.invoke.i98

bb.nq:                                            ; preds = %.noexc200.i
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.cfr
  %i.cfu = fsub float %i.cfn, %i.cfq
  store float %i.cfu, ptr %i.cft, align 4, !alias.scope !35035, !noalias !35045
  %i.cfv = add nuw nsw i64 %i.cfl, 1
  %exitcond483.not.i.i = icmp eq i64 %i.cfl, %.sroa.0.0441.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i101, label %bb.no

bb.nr:                                            ; preds = %bb.lm
  %i.cfw = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %.sroa.069.0399.i.i83
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 2816
  %i.cfy = load i64, ptr %i.cfx, align 8, !alias.scope !35067, !noalias !35066, !noundef !27
  %i.cfz = and i64 %i.cfy, 4294967295             ; 3 uses
  %i.cga = icmp samesign ult i64 %i.cfz, 256
  br i1 %i.cga, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cgb = uitofp nneg i64 %i.cfz to float
  %i.cgc = tail call float @llvm.log2.f32(float %i.cgb)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nu, %bb.ns
  %.sroa.016.0.i.i84 = phi float [ %i.cgg, %bb.nu ], [ %i.cgc, %bb.ns ]
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %.sroa.069.0399.i.i83
  store float %.sroa.016.0.i.i84, ptr %i.cgd, align 4, !alias.scope !35035, !noalias !35045
  %i.cge = add nuw nsw i64 %i.bqy, 1
  %exitcond480.not.i.i = icmp eq i64 %i.bqy, %.sroa.0.0441.i
  br i1 %exitcond480.not.i.i, label %.split.i180.i, label %bb.lm

bb.nu:                                            ; preds = %bb.nr
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.cfz
  %i.cgg = load float, ptr %i.cgf, align 4, !noalias !35052, !noundef !27
  br label %bb.nt

.preheader.i.i413:                                ; preds = %.preheader.i.i413.preheader4377, %bb.nv
  %i.cgh = phi i64 [ %i.cgj, %bb.nv ], [ %.ph4378, %.preheader.i.i413.preheader4377 ] ; 4 uses
  %.sroa.066.0449.i.i414 = phi i64 [ %i.cgh, %bb.nv ], [ %.sroa.066.0449.i.i414.ph, %.preheader.i.i413.preheader4377 ] ; 2 uses
  %exitcond488.not.i.i415 = icmp eq i64 %i.cgh, %i.azf
  br i1 %exitcond488.not.i.i415, label %.invoke.i98, label %bb.nv

bb.nv:                                            ; preds = %.preheader.i.i413
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.066.0449.i.i414
  store i8 0, ptr %i.cgi, align 1, !alias.scope !35041, !noalias !35043
  %i.cgj = add nuw nsw i64 %i.cgh, 1
  %exitcond489.not.i.i = icmp eq i64 %i.cgh, %2
  br i1 %exitcond489.not.i.i, label %.loopexit.i204, label %.preheader.i.i413, !llvm.loop !35070

.loopexit.i204:                                   ; preds = %bb.lq, %bb.nv, %bb.li
  %.sroa.0.0.i.i205 = phi i64 [ 0, %bb.li ], [ 1, %bb.nv ], [ %.sroa.03.1.i.i202, %bb.lq ] ; 32 uses
  %i.cgk = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.axz, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.ayx, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0441.i)
          to label %bb.nw unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i206", !noalias !34699 ; 5 uses

bb.nw:                                            ; preds = %.loopexit.i204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35076)
  %.not.i.i206.i = icmp ugt i64 %i.cgk, %spec.store.select.i44
  br i1 %.not.i.i206.i, label %.invoke1203.i, label %bb.nx, !prof !2480

bb.nx:                                            ; preds = %bb.nw
  %.idx.i.i207.i = mul i64 %i.cgk, 2832           ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.atf, i64 %.idx.i.i207.i
  %i.cgm = icmp eq i64 %i.cgk, 0
  br i1 %i.cgm, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i208.i.preheader

.lr.ph.i.i208.i.preheader:                        ; preds = %bb.nx
  %i.cgn = add i64 %.idx.i.i207.i, -2832          ; 2 uses
  %i.cgo = udiv i64 %i.cgn, 2832
  %i.cgp = add nuw nsw i64 %i.cgo, 1
  %xtraiter4697 = and i64 %i.cgp, 7               ; 2 uses
  %lcmp.mod4698.not = icmp eq i64 %xtraiter4697, 0
  br i1 %lcmp.mod4698.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol

.lr.ph.i.i208.i.prol:                             ; preds = %.lr.ph.i.i208.i.preheader, %.lr.ph.i.i208.i.prol
  %.sroa.02.05.i.i209.i.prol = phi ptr [ %i.cgq, %.lr.ph.i.i208.i.prol ], [ %i.atf, %.lr.ph.i.i208.i.preheader ] ; 3 uses
  %prol.iter4699 = phi i64 [ %prol.iter4699.next, %.lr.ph.i.i208.i.prol ], [ 0, %.lr.ph.i.i208.i.preheader ]
  %i.cgq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2832 ; 2 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i.prol, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.cgr, align 8, !alias.scope !35082, !noalias !35081
  %prol.iter4699.next = add i64 %prol.iter4699, 1 ; 2 uses
  %prol.iter4699.cmp.not = icmp eq i64 %prol.iter4699.next, %xtraiter4697
  br i1 %prol.iter4699.cmp.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol, !llvm.loop !35085

.lr.ph.i.i208.i.prol.loopexit:                    ; preds = %.lr.ph.i.i208.i.prol, %.lr.ph.i.i208.i.preheader
  %.sroa.02.05.i.i209.i.unr = phi ptr [ %i.atf, %.lr.ph.i.i208.i.preheader ], [ %i.cgq, %.lr.ph.i.i208.i.prol ]
  %i.cgs = icmp ult i64 %i.cgn, 19824
  br i1 %i.cgs, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i208.i

.lr.ph.i.i208.i:                                  ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i
  %.sroa.02.05.i.i209.i = phi ptr [ %i.chh, %.lr.ph.i.i208.i ], [ %.sroa.02.05.i.i209.i.unr, %.lr.ph.i.i208.i.prol.loopexit ] ; 17 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2832
  %i.cgu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.cgu, align 8, !alias.scope !35082, !noalias !35081
  %i.cgv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5664
  %i.cgw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cgt, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.cgw, align 8, !alias.scope !35082, !noalias !35081
  %i.cgx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8496
  %i.cgy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cgv, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.cgy, align 8, !alias.scope !35082, !noalias !35081
  %i.cgz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11328
  %i.cha = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cgx, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.cha, align 8, !alias.scope !35082, !noalias !35081
  %i.chb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14160
  %i.chc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.cgz, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.chc, align 8, !alias.scope !35082, !noalias !35081
  %i.chd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16992
  %i.che = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.chb, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.che, align 8, !alias.scope !35082, !noalias !35081
  %i.chf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19824
  %i.chg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.chd, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.chg, align 8, !alias.scope !35082, !noalias !35081
  %i.chh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22656 ; 2 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.chf, i8 0, i64 2824, i1 false), !alias.scope !35078, !noalias !35081
  store float 3.402000e+38, ptr %i.chi, align 8, !alias.scope !35082, !noalias !35081
  %i.chj = icmp eq ptr %i.chh, %i.cgl
  br i1 %i.chj, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i208.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader: ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i, %bb.nx
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.chk, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader ] ; 3 uses
  %i.chk = add nuw i64 %.sroa.01.013.i.i, 1       ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.01.013.i.i
  %i.chm = load i8, ptr %i.chl, align 1, !alias.scope !35074, !noalias !35086, !noundef !27
  %i.chn = zext i8 %i.chm to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.ata, %i.chn
  br i1 %.not93.i, label %.invoke.i98, label %bb.ny

bb.ny:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i
  %i.cho = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.01.013.i.i
  %i.chp = load i16, ptr %i.cho, align 2, !alias.scope !35087, !noalias !35090, !noundef !27 ; 2 uses
  %i.chq = zext i16 %i.chp to i64                 ; 2 uses
  %i.chr = icmp ult i16 %i.chp, 704
  br i1 %i.chr, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i, label %.invoke.i98

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i: ; preds = %bb.ny
  %i.chs = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %i.chn ; 2 uses
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.chs, i64 %i.chq ; 2 uses
  %i.chu = load i32, ptr %i.cht, align 4, !alias.scope !35091, !noalias !35081, !noundef !27
  %i.chv = add i32 %i.chu, 1
  store i32 %i.chv, ptr %i.cht, align 4, !alias.scope !35091, !noalias !35081
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chs, i64 2816 ; 2 uses
  %i.chx = load i64, ptr %i.chw, align 8, !alias.scope !35094, !noalias !35081, !noundef !27
  %i.chy = add i64 %i.chx, 1
  store i64 %i.chy, ptr %i.chw, align 8, !alias.scope !35097, !noalias !35081
  %exitcond24.not.i.i = icmp eq i64 %i.chk, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

.invoke.i98:                                      ; preds = %bb.lm, %.lr.ph434.split.i.i112, %.lr.ph447.i.i194, %.preheader.i.i413, %bb.ny, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i, %.noexc200.i, %bb.no, %.lr.ph424.preheader.i.i152, %.lr.ph424.i.i154.1, %.lr.ph424.i.i154.2, %.lr.ph424.i.i154.3, %.lr.ph424.i.i154.4, %.lr.ph424.i.i154.5, %.lr.ph424.i.i154.6, %.lr.ph430.i.i165
  %i.chz = phi i64 [ %i.chq, %bb.ny ], [ %i.btx, %.lr.ph447.i.i194 ], [ %i.cba, %.lr.ph430.i.i165 ], [ %2, %.lr.ph434.split.i.i112 ], [ %.sroa.066.0449.i.i414, %.preheader.i.i413 ], [ %i.bta, %.lr.ph424.i.i154.6 ], [ %.sroa.071.0400.i.i87, %bb.no ], [ %i.brm, %.lr.ph424.preheader.i.i152 ], [ %i.brr, %.lr.ph424.i.i154.1 ], [ %i.brz, %.lr.ph424.i.i154.2 ], [ %i.bsi, %.lr.ph424.i.i154.3 ], [ %i.bso, %.lr.ph424.i.i154.4 ], [ %i.bsu, %.lr.ph424.i.i154.5 ], [ %i.cfr, %.noexc200.i ], [ %i.chn, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %.sroa.069.0399.i.i83, %bb.lm ]
  %i.cia = phi i64 [ 704, %bb.ny ], [ %i.ayo, %.lr.ph447.i.i194 ], [ %i.ayo, %.lr.ph430.i.i165 ], [ %2, %.lr.ph434.split.i.i112 ], [ %2, %.preheader.i.i413 ], [ %i.ayc, %.lr.ph424.preheader.i.i152 ], [ %spec.store.select.i44, %bb.no ], [ %i.ayc, %.lr.ph424.i.i154.6 ], [ %i.ayc, %.lr.ph424.i.i154.5 ], [ %i.ayc, %.lr.ph424.i.i154.4 ], [ %i.ayc, %.lr.ph424.i.i154.3 ], [ %i.ayc, %.lr.ph424.i.i154.2 ], [ %i.ayc, %.lr.ph424.i.i154.1 ], [ %i.ayd, %.noexc200.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %spec.store.select.i44, %bb.lm ]
  %i.cib = phi ptr [ @1932, %bb.ny ], [ @1531, %.lr.ph447.i.i194 ], [ @1576, %.lr.ph430.i.i165 ], [ @1532, %.lr.ph434.split.i.i112 ], [ @1546, %.preheader.i.i413 ], [ @1537, %.lr.ph424.preheader.i.i152 ], [ @1542, %bb.no ], [ @1537, %.lr.ph424.i.i154.6 ], [ @1537, %.lr.ph424.i.i154.5 ], [ @1537, %.lr.ph424.i.i154.4 ], [ @1537, %.lr.ph424.i.i154.3 ], [ @1537, %.lr.ph424.i.i154.2 ], [ @1537, %.lr.ph424.i.i154.1 ], [ @1543, %.noexc200.i ], [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ @1544, %bb.lm ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.chz, i64 noundef %i.cia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cib) #43
          to label %.cont.i100 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i99", !noalias !34699

.cont.i100:                                       ; preds = %.invoke.i98
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i90": ; preds = %bb.np
  %lpad.loopexit.i91 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i206": ; preds = %.loopexit.i204
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i99": ; preds = %.invoke.i98, %.split440.us.i.invoke.i122, %.invoke1203.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i99", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i206", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i90"
  %lpad.phi.i93 = phi { ptr, i32 } [ %lpad.loopexit.i91, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i90" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i206" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i99" ]
  call void @mi_free(ptr noundef nonnull %i.ayx) #38, !noalias !34699
  br label %bb.nz

bb.nz:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92", %.thread55.i416
  %.pn62.i94 = phi { ptr, i32 } [ %i.ayz, %.thread55.i416 ], [ %lpad.phi.i93, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i92" ]
  br i1 %i.ayq, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i95", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i": ; preds = %bb.nz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ayv) ]
  call void @mi_free(ptr noundef nonnull %i.ayv) #38, !noalias !34699
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i95"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i", %bb.nz
  call void @mi_free(ptr noundef nonnull %i.ayj) #38, !noalias !34699
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i96"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i96": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i95", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i417", %.thread39.i419
  %.pn.pn.pn44.i97 = phi { ptr, i32 } [ %i.ayn, %.thread39.i419 ], [ %i.ayu, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i417" ], [ %.pn62.i94, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i95" ]
  call void @mi_free(ptr noundef nonnull %i.ayf) #38, !noalias !34699
  call void @mi_free(ptr noundef nonnull %i.axz) #38, !noalias !34699
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %bb.lh, %.body.i406
  %.pn.pn.pn.pn.i267 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i407, %.body.i406 ], [ %i.bqk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i266, %bb.lh ], [ %.pn230.pn.pn.pn.pn.pn.pn85958.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ]
  tail call void @mi_free(ptr noundef nonnull %i.axz) #38, !noalias !34699
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i96", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.aty, %.thread.i60 ], [ %.pn.pn.pn44.i97, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i96" ], [ %i.ayh, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.atf) #38, !noalias !34699
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

bb.oa:                                            ; preds = %bb.gw
  %i.cic = icmp eq i64 %.val111.i422, 0           ; 2 uses
  %spec.select.i431 = select i1 %i.cic, i64 %i.atw, i64 %.val111.i422
  br label %bb.ob

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i", %bb.od, %bb.gw
  %.val.i423 = phi ptr [ %i.cij, %bb.od ], [ %i.cij, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val110.i421, %bb.gw ]
  %.val63.i424 = phi i64 [ %.sroa.014.1.i432, %bb.od ], [ %.sroa.014.1.i432, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val111.i422, %bb.gw ] ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val90.i425 = load ptr, ptr %i.cid, align 8, !alias.scope !34689, !noalias !34686, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val91.i426 = load i64, ptr %i.cie, align 8, !alias.scope !34689, !noalias !34686, !noundef !27 ; 5 uses
  %i.cif = icmp ult i64 %.val91.i426, %i.atw
  br i1 %i.cif, label %bb.oe, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"

bb.ob:                                            ; preds = %bb.ob, %bb.oa
  %.sroa.014.1.i432 = phi i64 [ %spec.select.i431, %bb.oa ], [ %i.cih, %bb.ob ] ; 9 uses
  %i.cig = icmp ult i64 %.sroa.014.1.i432, %i.atw
  %i.cih = shl i64 %.sroa.014.1.i432, 1
  br i1 %i.cig, label %bb.ob, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.cii = icmp slt i64 %.sroa.014.1.i432, 0
  br i1 %i.cii, label %.invoke2926, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i: ; preds = %bb.oc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35100
  %i.cij = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i432, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35100 ; 5 uses
  %i.cik = icmp eq ptr %i.cij, null
  br i1 %i.cik, label %.invoke2926, label %bb.od

bb.od:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cij, ptr nonnull readonly align 1 %.val110.i421, i64 %.val111.i422, i1 false), !alias.scope !35105, !noalias !35109
  store ptr %i.cij, ptr %8, align 8, !alias.scope !34689, !noalias !34686
  store i64 %.sroa.014.1.i432, ptr %i.att, align 8, !alias.scope !34689, !noalias !34686
  br i1 %i.cic, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i": ; preds = %bb.od
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i421) #38, !noalias !34699
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"

bb.oe:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"
  %i.cil = icmp eq i64 %.val91.i426, 0            ; 2 uses
  %spec.select91.i = select i1 %i.cil, i64 %i.atw, i64 %.val91.i426
  br label %bb.of

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i", %bb.oj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"
  %.val94.i428 = phi ptr [ %i.cix, %bb.oj ], [ %i.cix, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val90.i425, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ]
  %.val95.i429 = phi i64 [ %.sroa.017.1.i430, %bb.oj ], [ %.sroa.017.1.i430, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val91.i426, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ] ; 2 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.cim, align 8, !alias.scope !34689, !noalias !34686
  %i.cin = icmp ult i64 %i.atv, %.val63.i424
  br i1 %i.cin, label %bb.ok, label %.invoke2928

bb.of:                                            ; preds = %bb.of, %bb.oe
  %.sroa.017.1.i430 = phi i64 [ %spec.select91.i, %bb.oe ], [ %i.cip, %bb.of ] ; 8 uses
  %i.cio = icmp ult i64 %.sroa.017.1.i430, %i.atw
  %i.cip = shl i64 %.sroa.017.1.i430, 1
  br i1 %i.cio, label %bb.of, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ciq = shl i64 %.sroa.017.1.i430, 2           ; 5 uses
  %i.cir = icmp ugt i64 %.sroa.017.1.i430, 4611686018427387903
  %i.cis = icmp ugt i64 %i.ciq, 9223372036854775804
  %or.cond.i.i.i.i230.i = or i1 %i.cir, %i.cis
  br i1 %or.cond.i.i.i.i230.i, label %.invoke2926, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i: ; preds = %bb.og
  %i.cit = icmp eq i64 %i.ciq, 0
  br i1 %i.cit, label %bb.oj, label %bb.oh

bb.oh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35111
  %i.ciu = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ciq, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35111 ; 2 uses
  %i.civ = icmp eq ptr %i.ciu, null
  br i1 %i.civ, label %.invoke2926, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ciw = ptrtoint ptr %i.ciu to i64
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  %.sroa.10.0.i.i232.i = phi i64 [ %i.ciw, %bb.oi ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i ]
  %i.cix = inttoptr i64 %.sroa.10.0.i.i232.i to ptr ; 5 uses
  %i.ciy = icmp samesign ult i64 %.sroa.017.1.i430, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ciy)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cix) ]
  %i.ciz = shl nuw nsw i64 %.val91.i426, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cix, ptr nonnull readonly align 4 %.val90.i425, i64 %i.ciz, i1 false), !alias.scope !35116, !noalias !35120
  store ptr %i.cix, ptr %i.cid, align 8, !alias.scope !34689, !noalias !34686
  store i64 %.sroa.017.1.i430, ptr %i.cie, align 8, !alias.scope !34689, !noalias !34686
  br i1 %i.cil, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i": ; preds = %bb.oj
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i425) #38, !noalias !34699
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"

bb.ok:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"
  %i.cja = getelementptr inbounds nuw i8, ptr %.val.i423, i64 %i.atv
  store i8 0, ptr %i.cja, align 1, !noalias !34699
  %i.cjb = icmp ult i64 %i.atv, %.val95.i429
  br i1 %i.cjb, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93, label %.invoke2928

.invoke2928:                                      ; preds = %bb.ok, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"
  %i.cjc = phi i64 [ %.val63.i424, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427" ], [ %.val95.i429, %bb.ok ]
end_hunk_9
begin_hunk_10_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.cji = add nuw nsw i64 %i.cjh, 1
  %i.cjj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.cji, ptr %i.cjj, align 8, !alias.scope !34883, !noalias !34884
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bdp) #38, !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i208) #38, !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 4 %i.azy) #38, !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34822
  tail call void @mi_free(ptr noundef nonnull align 1 %i.axz) #38, !noalias !34699
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443: ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93
  tail call void @mi_free(ptr noundef nonnull align 2 %i.ara) #38
  br i1 %i.aqw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446", label %bb.ol

bb.ol:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35122
  %i.cjk = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aqt, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35122 ; 2 uses
  %i.cjl = icmp eq ptr %i.cjk, null
  br i1 %i.cjl, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.cjm = ptrtoint ptr %i.cjk to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446"

bb.on:                                            ; preds = %bb.ol
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.aqt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35127
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443, %bb.om
  %.sroa.10.0.i.i444 = phi i64 [ %i.cjm, %bb.om ], [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i443 ]
  %i.cjn = inttoptr i64 %.sroa.10.0.i.i444 to ptr ; 16 uses
  br label %.lr.ph934

.lr.ph934:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446", %bb.wl
  %.sroa.01.0933 = phi i64 [ %.sroa.01.1, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446" ] ; 6 uses
  %.sroa.011.0932 = phi i64 [ %i.cjo, %bb.wl ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446" ] ; 3 uses
  %i.cjo = add nuw i64 %.sroa.011.0932, 1         ; 2 uses
  %exitcond1731.not = icmp eq i64 %.sroa.011.0932, %1
  br i1 %exitcond1731.not, label %.invoke2930, label %bb.wj

bb.oo:                                            ; preds = %.invoke2932, %.invoke2930
  %i.cjp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

._crit_edge935:                                   ; preds = %bb.wl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cjn) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35131)
  %i.cjq = udiv i64 %.sroa.01.1, 544
  %i.cjr = tail call i64 @llvm.umin.i64(i64 %i.cjq, i64 49) ; 8 uses
  %spec.store.select.i447 = add nuw nsw i64 %i.cjr, 1 ; 18 uses
  %i.cjs = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.cjs, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread", %._crit_edge935
  %i.cjt = phi ptr [ inttoptr (i64 2 to ptr), %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit446.thread" ], [ %i.cjn, %._crit_edge935 ]
  %i.cju = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.cju, align 8, !alias.scope !35131, !noalias !35128
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.oq:                                            ; preds = %._crit_edge935
  %i.cjv = icmp ult i64 %.sroa.01.1, 128
  br i1 %i.cjv, label %bb.or, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448: ; preds = %bb.oq
  %i.cjw = mul nuw nsw i64 %spec.store.select.i447, 2192 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35133
  %i.cjx = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cjw, i64 noundef range(i64 1, 9) 8) #38, !noalias !35133 ; 17 uses
  %i.cjy = icmp eq ptr %i.cjx, null
  br i1 %i.cjy, label %.invoke2932, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448
  %.not92.i449 = icmp ult i64 %.sroa.01.1, 544
  br i1 %.not92.i449, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.preheader

.lr.ph.i.i.i.i450.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.cjz = add nsw i64 %i.cjr, -1
  %xtraiter4722 = and i64 %i.cjr, 7               ; 3 uses
  %i.cka = icmp ult i64 %i.cjz, 7
  br i1 %i.cka, label %.lr.ph.i.i.i.i450.epil.preheader, label %.lr.ph.i.i.i.i450.preheader.new

.lr.ph.i.i.i.i450.preheader.new:                  ; preds = %.lr.ph.i.i.i.i450.preheader
  %unroll_iter4727 = and i64 %i.cjr, 56
  br label %.lr.ph.i.i.i.i450

.lr.ph.i.i.i.i450:                                ; preds = %.lr.ph.i.i.i.i450, %.lr.ph.i.i.i.i450.preheader.new
  %.sroa.0.08.i.i.i.i451 = phi ptr [ %i.cjx, %.lr.ph.i.i.i.i450.preheader.new ], [ %i.cki, %.lr.ph.i.i.i.i450 ] ; 17 uses
  %niter4728 = phi i64 [ 0, %.lr.ph.i.i.i.i450.preheader.new ], [ %niter4728.next.7, %.lr.ph.i.i.i.i450 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i451, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !35142
  %i.ckb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckb, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !35142
  %i.ckc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckc, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !35142
  %i.ckd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckd, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !35142
  %i.cke = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cke, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !35142
  %i.ckf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckf, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !35142
  %i.ckg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckg, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !35142
  %i.ckh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ckh, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !35142
  %i.cki = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451, i64 17536 ; 3 uses
  %niter4728.next.7 = add i64 %niter4728, 8       ; 2 uses
  %niter4728.ncmp.7 = icmp eq i64 %niter4728.next.7, %unroll_iter4727
  br i1 %niter4728.ncmp.7, label %.loopexit109.i454.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i450

bb.or:                                            ; preds = %bb.oq
  %.val110.i1003 = load ptr, ptr %9, align 8, !alias.scope !35131, !noalias !35128, !nonnull !27, !align !206, !noundef !27 ; 3 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val111.i1004 = load i64, ptr %i.ckj, align 8, !alias.scope !35131, !noalias !35128, !noundef !27 ; 5 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ckl = load i64, ptr %i.ckk, align 8, !alias.scope !35131, !noalias !35128, !noundef !27 ; 7 uses
  %i.ckm = add i64 %i.ckl, 1                      ; 7 uses
  %i.ckn = icmp ult i64 %.val111.i1004, %i.ckm
  br i1 %i.ckn, label %bb.vy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005"

.thread.i466:                                     ; preds = %bb.oy, %.split32.us.i.invoke.i473, %.split29.us.i.invoke.i465
  %i.cko = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

.loopexit109.i454.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i450
  %lcmp.mod4724.not = icmp eq i64 %xtraiter4722, 0
  br i1 %lcmp.mod4724.not, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.epil.preheader

.lr.ph.i.i.i.i450.epil.preheader:                 ; preds = %.loopexit109.i454.loopexit.unr-lcssa, %.lr.ph.i.i.i.i450.preheader
  %.sroa.0.08.i.i.i.i451.epil.init = phi ptr [ %i.cjx, %.lr.ph.i.i.i.i450.preheader ], [ %i.cki, %.loopexit109.i454.loopexit.unr-lcssa ]
  %lcmp.mod4726 = icmp ne i64 %xtraiter4722, 0
  call void @llvm.assume(i1 %lcmp.mod4726)
  br label %.lr.ph.i.i.i.i450.epil

.lr.ph.i.i.i.i450.epil:                           ; preds = %.lr.ph.i.i.i.i450.epil, %.lr.ph.i.i.i.i450.epil.preheader
  %.sroa.0.08.i.i.i.i451.epil = phi ptr [ %i.ckp, %.lr.ph.i.i.i.i450.epil ], [ %.sroa.0.08.i.i.i.i451.epil.init, %.lr.ph.i.i.i.i450.epil.preheader ] ; 3 uses
  %epil.iter4723 = phi i64 [ %epil.iter4723.next, %.lr.ph.i.i.i.i450.epil ], [ 0, %.lr.ph.i.i.i.i450.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i451.epil, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !35142
  %i.ckp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i451.epil, i64 2192 ; 2 uses
  %epil.iter4723.next = add i64 %epil.iter4723, 1 ; 2 uses
  %epil.iter4723.cmp.not = icmp eq i64 %epil.iter4723.next, %xtraiter4722
  br i1 %epil.iter4723.cmp.not, label %.loopexit109.i454, label %.lr.ph.i.i.i.i450.epil, !llvm.loop !35145

.loopexit109.i454:                                ; preds = %.loopexit109.i454.loopexit.unr-lcssa, %.lr.ph.i.i.i.i450.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i455 = phi ptr [ %i.cjx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.cki, %.loopexit109.i454.loopexit.unr-lcssa ], [ %i.ckp, %.lr.ph.i.i.i.i450.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i455, i8 0, i64 2184, i1 false), !noalias !35141
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i455, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !35142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35149)
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.cjx, i64 %i.cjw
  %xtraiter4729 = and i64 %spec.store.select.i447, 7 ; 2 uses
  %lcmp.mod4730.not = icmp eq i64 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.lr.ph.i.i.i456.prol.loopexit, label %.lr.ph.i.i.i456.prol

.lr.ph.i.i.i456.prol:                             ; preds = %.loopexit109.i454, %.lr.ph.i.i.i456.prol
  %.sroa.02.05.i.i.i457.prol = phi ptr [ %i.ckr, %.lr.ph.i.i.i456.prol ], [ %i.cjx, %.loopexit109.i454 ] ; 3 uses
  %prol.iter4731 = phi i64 [ %prol.iter4731.next, %.lr.ph.i.i.i456.prol ], [ 0, %.loopexit109.i454 ]
  %i.ckr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457.prol, i64 2192 ; 2 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i457.prol, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.cks, align 8, !alias.scope !35155, !noalias !35154
  %prol.iter4731.next = add i64 %prol.iter4731, 1 ; 2 uses
  %prol.iter4731.cmp.not = icmp eq i64 %prol.iter4731.next, %xtraiter4729
  br i1 %prol.iter4731.cmp.not, label %.lr.ph.i.i.i456.prol.loopexit, label %.lr.ph.i.i.i456.prol, !llvm.loop !35158

.lr.ph.i.i.i456.prol.loopexit:                    ; preds = %.lr.ph.i.i.i456.prol, %.loopexit109.i454
  %.sroa.02.05.i.i.i457.unr = phi ptr [ %i.cjx, %.loopexit109.i454 ], [ %i.ckr, %.lr.ph.i.i.i456.prol ]
  %i.ckt = icmp ult i64 %.sroa.01.1, 3808
  br i1 %i.ckt, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i456

.lr.ph.i.i.i456:                                  ; preds = %.lr.ph.i.i.i456.prol.loopexit, %.lr.ph.i.i.i456
  %.sroa.02.05.i.i.i457 = phi ptr [ %i.cli, %.lr.ph.i.i.i456 ], [ %.sroa.02.05.i.i.i457.unr, %.lr.ph.i.i.i456.prol.loopexit ] ; 17 uses
  %i.cku = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 2192
  %i.ckv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i457, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckv, align 8, !alias.scope !35155, !noalias !35154
  %i.ckw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 4384
  %i.ckx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cku, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckx, align 8, !alias.scope !35155, !noalias !35154
  %i.cky = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 6576
  %i.ckz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.ckw, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.ckz, align 8, !alias.scope !35155, !noalias !35154
  %i.cla = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 8768
  %i.clb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cky, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clb, align 8, !alias.scope !35155, !noalias !35154
  %i.clc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 10960
  %i.cld = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cla, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.cld, align 8, !alias.scope !35155, !noalias !35154
  %i.cle = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 13152
  %i.clf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.clc, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clf, align 8, !alias.scope !35155, !noalias !35154
  %i.clg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 15344
  %i.clh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.cle, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clh, align 8, !alias.scope !35155, !noalias !35154
  %i.cli = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 17536 ; 2 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i457, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.clg, i8 0, i64 2184, i1 false), !alias.scope !35151, !noalias !35154
  store float 3.402000e+38, ptr %i.clj, align 8, !alias.scope !35155, !noalias !35154
  %i.clk = icmp eq ptr %i.cli, %i.ckq
  br i1 %i.clk, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i456

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i456, %.lr.ph.i.i.i456.prol.loopexit
  %i.cll = udiv i64 %.sroa.01.1, %spec.store.select.i447
  %i.clm = add i64 %.sroa.01.1, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i: ; preds = %bb.ov
  %exitcond.not.i.i476 = icmp eq i64 %.sroa.07.024.i.i459, %i.cjr
  br i1 %exitcond.not.i.i476, label %.lr.ph.i.i477, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i
  %.sroa.0.025.i.i458 = phi i32 [ %.sroa.0.1.i.i462, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i459 = phi i64 [ %i.cln, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 5 uses
  %i.cln = add nuw nsw i64 %.sroa.07.024.i.i459, 1
  %i.clo = mul i64 %.sroa.07.024.i.i459, %.sroa.01.1
  %i.clp = udiv i64 %i.clo, %spec.store.select.i447 ; 2 uses
  %i.clq = icmp eq i64 %.sroa.07.024.i.i459, 0
  br i1 %i.clq, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.ot, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i461 = phi i64 [ %i.clp, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %i.clx, %bb.ot ] ; 2 uses
  %.sroa.0.1.i.i462 = phi i32 [ %.sroa.0.025.i.i458, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i460, %bb.ot ]
  %i.clr = add i64 %.sroa.04.0.i.i461, 40
  %.not.i.i463 = icmp ult i64 %i.clr, %.sroa.01.1
  %spec.select.i.i464 = select i1 %.not.i.i463, i64 %.sroa.04.0.i.i461, i64 %i.clm ; 4 uses
  %i.cls = icmp ugt i64 %spec.select.i.i464, %2
  br i1 %i.cls, label %.split29.us.i.invoke.i465, label %bb.ou, !prof !29

bb.ot:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %i.clt = icmp eq i32 %.sroa.0.025.i.i458, 0
  %i.clu = mul i32 %.sroa.0.025.i.i458, 16807
  %spec.store.select.i.i460 = select i1 %i.clt, i32 1, i32 %i.clu ; 2 uses
  %i.clv = zext i32 %spec.store.select.i.i460 to i64
  %i.clw = urem i64 %i.clv, %i.cll
  %i.clx = add i64 %i.clw, %i.clp
  br label %bb.os

bb.ou:                                            ; preds = %bb.os
  %i.cly = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %.sroa.07.024.i.i459 ; 3 uses
  %i.clz = sub nuw nsw i64 %2, %spec.select.i.i464 ; 2 uses
  %i.cma = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %spec.select.i.i464 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35162)
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cly, i64 2176 ; 2 uses
  %i.cmc = load i64, ptr %i.cmb, align 8, !alias.scope !35164, !noalias !35167, !noundef !27
  %i.cmd = add i64 %i.cmc, 40
  store i64 %i.cmd, ptr %i.cmb, align 8, !alias.scope !35168, !noalias !35167
  %i.cme = icmp samesign ugt i64 %i.clz, 39
  br i1 %i.cme, label %.preheader.i.i.i470, label %.split29.us.i.invoke.i465, !prof !202

.split29.us.i.invoke.i465:                        ; preds = %bb.ou, %bb.os, %bb.ow, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cmf = phi i64 [ 0, %bb.ow ], [ %i.cnl, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 0, %bb.ou ], [ %spec.select.i.i464, %bb.os ]
  %i.cmg = phi i64 [ 40, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 40, %bb.ou ], [ %2, %bb.os ]
  %i.cmh = phi i64 [ %i.cnn, %bb.ow ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ %i.clz, %bb.ou ], [ %2, %bb.os ]
  %i.cmi = phi ptr [ @1934, %bb.ow ], [ @1547, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ @1934, %bb.ou ], [ @1573, %bb.os ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cmf, i64 noundef %i.cmg, i64 noundef %i.cmh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cmi) #43
          to label %.split29.us.i.cont.i469 unwind label %.thread.i466, !noalias !35141

.split29.us.i.cont.i469:                          ; preds = %.split29.us.i.invoke.i465
  unreachable

.preheader.i.i.i470:                              ; preds = %bb.ou, %bb.ov
  %.sroa.02.0.idx7.i.i.i471 = phi i64 [ %.sroa.02.0.add.i.i.i475.1, %bb.ov ], [ 0, %bb.ou ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i472 = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sroa.02.0.idx7.i.i.i471
  %i.cmj = load i16, ptr %.sroa.02.0.ptr.i.i.i472, align 2, !alias.scope !35171, !noalias !35174, !noundef !27 ; 2 uses
  %i.cmk = zext i16 %i.cmj to i64                 ; 2 uses
  %i.cml = icmp ult i16 %i.cmj, 544
  br i1 %i.cml, label %.preheader.i.i.i470.1, label %.split32.us.i.invoke.i473

.preheader.i.i.i470.1:                            ; preds = %.preheader.i.i.i470
  %i.cmm = getelementptr inbounds nuw [4 x i8], ptr %i.cly, i64 %i.cmk ; 2 uses
  %i.cmn = load i32, ptr %i.cmm, align 4, !alias.scope !35175, !noalias !35167, !noundef !27
  %i.cmo = add i32 %i.cmn, 1
  store i32 %i.cmo, ptr %i.cmm, align 4, !alias.scope !35175, !noalias !35167
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cma, i64 %.sroa.02.0.idx7.i.i.i471
  %.sroa.02.0.ptr.i.i.i472.1 = getelementptr inbounds nuw i8, ptr %i.cmp, i64 2
  %i.cmq = load i16, ptr %.sroa.02.0.ptr.i.i.i472.1, align 2, !alias.scope !35171, !noalias !35174, !noundef !27 ; 2 uses
  %i.cmr = zext i16 %i.cmq to i64                 ; 2 uses
  %i.cms = icmp ult i16 %i.cmq, 544
  br i1 %i.cms, label %bb.ov, label %.split32.us.i.invoke.i473

bb.ov:                                            ; preds = %.preheader.i.i.i470.1
  %.sroa.02.0.add.i.i.i475.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i471, 4 ; 2 uses
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.cly, i64 %i.cmr ; 2 uses
  %i.cmu = load i32, ptr %i.cmt, align 4, !alias.scope !35175, !noalias !35167, !noundef !27
  %i.cmv = add i32 %i.cmu, 1
  store i32 %i.cmv, ptr %i.cmt, align 4, !alias.scope !35175, !noalias !35167
  %i.cmw = icmp eq i64 %.sroa.02.0.add.i.i.i475.1, 80
  br i1 %i.cmw, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, label %.preheader.i.i.i470

.split32.us.i.invoke.i473:                        ; preds = %.preheader.i.i.i470, %.preheader.i.i.i470.1, %.preheader.i.i.i.i481, %.preheader.i.i.i.i481.1
  %i.cmx = phi i64 [ %i.cny, %.preheader.i.i.i.i481.1 ], [ %i.cnr, %.preheader.i.i.i.i481 ], [ %i.cmk, %.preheader.i.i.i470 ], [ %i.cmr, %.preheader.i.i.i470.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cmx, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1933) #43
          to label %.split32.us.i.cont.i474 unwind label %.thread.i466, !noalias !35141

.split32.us.i.cont.i474:                          ; preds = %.split32.us.i.invoke.i473
  unreachable

.lr.ph.i.i477:                                    ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35179)
  %i.cmy = shl i64 %.sroa.01.1, 1                 ; 2 uses
  %i.cmz = udiv i64 %i.cmy, 40
  %i.cna = add nuw nsw i64 %i.cmz, 99
  %i.cnb = add nuw nsw i64 %i.cna, %spec.store.select.i447 ; 2 uses
  %i.cnc = urem i64 %i.cnb, %spec.store.select.i447
  %i.cnd = sub nuw nsw i64 %i.cnb, %i.cnc
  %i.cne = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.cng = add i64 %.sroa.01.1, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, %.lr.ph.i.i477
  %.sroa.03.022.i.i478 = phi i64 [ 0, %.lr.ph.i.i477 ], [ %i.cnh, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i479 = phi i32 [ 7, %.lr.ph.i.i477 ], [ %spec.store.select.i.i.i480, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35181
  %i.cnh = add nuw i64 %.sroa.03.022.i.i478, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.n, i8 0, i64 2176, i1 false), !noalias !35181
  store float 3.402000e+38, ptr %i.cne, align 8, !alias.scope !35182, !noalias !35181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35188)
  %i.cni = mul i32 %.sroa.0.021.i.i479, 16807
  %i.cnj = icmp eq i32 %.sroa.0.021.i.i479, 0
  %spec.store.select.i.i.i480 = select i1 %i.cnj, i32 1, i32 %i.cni ; 2 uses
  %i.cnk = zext i32 %spec.store.select.i.i.i480 to i64
  %i.cnl = urem i64 %i.cnk, %i.cng                ; 4 uses
  %i.cnm = icmp samesign ugt i64 %i.cnl, %2
  br i1 %i.cnm, label %.split29.us.i.invoke.i465, label %bb.ow, !prof !29

bb.ow:                                            ; preds = %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cnn = sub nuw nsw i64 %2, %i.cnl             ; 2 uses
  %i.cno = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %i.cnl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35193)
  store i64 40, ptr %i.cnf, align 8, !alias.scope !35195, !noalias !35198
  %i.cnp = icmp samesign ugt i64 %i.cnn, 39
  br i1 %i.cnp, label %.preheader.i.i.i.i481, label %.split29.us.i.invoke.i465, !prof !202

.preheader.i.i.i.i481:                            ; preds = %bb.ow, %bb.ox
  %.sroa.02.0.idx7.i.i.i.i482 = phi i64 [ %.sroa.02.0.add.i.i.i.i484.1, %bb.ox ], [ 0, %bb.ow ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i483 = getelementptr inbounds nuw i8, ptr %i.cno, i64 %.sroa.02.0.idx7.i.i.i.i482
  %i.cnq = load i16, ptr %.sroa.02.0.ptr.i.i.i.i483, align 2, !alias.scope !35200, !noalias !35203, !noundef !27 ; 2 uses
  %i.cnr = zext i16 %i.cnq to i64                 ; 2 uses
  %i.cns = icmp ult i16 %i.cnq, 544
  br i1 %i.cns, label %.preheader.i.i.i.i481.1, label %.split32.us.i.invoke.i473

.preheader.i.i.i.i481.1:                          ; preds = %.preheader.i.i.i.i481
  %i.cnt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cnr ; 2 uses
  %i.cnu = load i32, ptr %i.cnt, align 4, !alias.scope !35204, !noalias !35198, !noundef !27
  %i.cnv = add i32 %i.cnu, 1
  store i32 %i.cnv, ptr %i.cnt, align 4, !alias.scope !35204, !noalias !35198
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cno, i64 %.sroa.02.0.idx7.i.i.i.i482
  %.sroa.02.0.ptr.i.i.i.i483.1 = getelementptr inbounds nuw i8, ptr %i.cnw, i64 2
  %i.cnx = load i16, ptr %.sroa.02.0.ptr.i.i.i.i483.1, align 2, !alias.scope !35200, !noalias !35203, !noundef !27 ; 2 uses
  %i.cny = zext i16 %i.cnx to i64                 ; 2 uses
  %i.cnz = icmp ult i16 %i.cnx, 544
  br i1 %i.cnz, label %bb.ox, label %.split32.us.i.invoke.i473

bb.ox:                                            ; preds = %.preheader.i.i.i.i481.1
  %.sroa.02.0.add.i.i.i.i484.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i482, 4 ; 2 uses
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cny ; 2 uses
  %i.cob = load i32, ptr %i.coa, align 4, !alias.scope !35204, !noalias !35198, !noundef !27
  %i.coc = add i32 %i.cob, 1
  store i32 %i.coc, ptr %i.coa, align 4, !alias.scope !35204, !noalias !35198
  %i.cod = icmp eq i64 %.sroa.02.0.add.i.i.i.i484.1, 80
  br i1 %i.cod, label %vector.ph3887, label %.preheader.i.i.i.i481

vector.ph3887:                                    ; preds = %bb.ox
  %i.coe = urem i64 %.sroa.03.022.i.i478, %spec.store.select.i447
  %i.cof = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %i.coe ; 3 uses
  %i.cog = getelementptr inbounds nuw i8, ptr %i.cof, i64 2176 ; 2 uses
  %i.coh = load i64, ptr %i.cog, align 8, !alias.scope !35205, !noalias !35208, !noundef !27
  %i.coi = load i64, ptr %i.cnf, align 8, !alias.scope !35211, !noalias !35181, !noundef !27
  %i.coj = add i64 %i.coi, %i.coh
  store i64 %i.coj, ptr %i.cog, align 8, !alias.scope !35214, !noalias !35217
  br label %vector.body3888

vector.body3888:                                  ; preds = %vector.body3888, %vector.ph3887
  %index3889 = phi i64 [ 0, %vector.ph3887 ], [ %index.next3894.1, %vector.body3888 ] ; 4 uses
  %i.cok = getelementptr inbounds nuw [4 x i8], ptr %i.cof, i64 %index3889 ; 3 uses
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 16 ; 2 uses
  %wide.load3890 = load <4 x i32>, ptr %i.cok, align 4, !alias.scope !35179, !noalias !35217
  %wide.load3891 = load <4 x i32>, ptr %i.col, align 4, !alias.scope !35179, !noalias !35217
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index3889 ; 2 uses
  %i.con = getelementptr inbounds nuw i8, ptr %i.com, i64 16
  %wide.load3892 = load <4 x i32>, ptr %i.com, align 8, !noalias !35181
  %wide.load3893 = load <4 x i32>, ptr %i.con, align 8, !noalias !35181
  %i.coo = add <4 x i32> %wide.load3892, %wide.load3890
  %i.cop = add <4 x i32> %wide.load3893, %wide.load3891
  store <4 x i32> %i.coo, ptr %i.cok, align 4, !alias.scope !35179, !noalias !35217
  store <4 x i32> %i.cop, ptr %i.col, align 4, !alias.scope !35179, !noalias !35217
  %index.next3894 = or disjoint i64 %index3889, 8 ; 2 uses
  %i.coq = getelementptr inbounds nuw [4 x i8], ptr %i.cof, i64 %index.next3894 ; 3 uses
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coq, i64 16 ; 2 uses
  %wide.load3890.1 = load <4 x i32>, ptr %i.coq, align 4, !alias.scope !35179, !noalias !35217
  %wide.load3891.1 = load <4 x i32>, ptr %i.cor, align 4, !alias.scope !35179, !noalias !35217
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index.next3894 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  store i8 %i.dvi, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy
  %.sroa.029.4.2.i.i572 = phi float [ %i.dvf, %bb.uz ], [ %.sroa.029.4.1.i.i571, %bb.uy ] ; 2 uses
  %i.dvj = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i549, i64 12 ; 2 uses
  %i.dvk = load float, ptr %i.dvj, align 4, !alias.scope !35479, !noalias !35488, !noundef !27
  %i.dvl = fadd float %.sroa.7.0.copyload.i.i561, %i.dvk ; 3 uses
  store float %i.dvl, ptr %i.dvj, align 4, !alias.scope !35479, !noalias !35488
  %i.dvm = fcmp olt float %i.dvl, %.sroa.029.4.2.i.i572
  br i1 %i.dvm, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.dvn = trunc i64 %i.dlv to i8
  %i.dvo = or disjoint i8 %i.dvn, 3
  store i8 %i.dvo, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  %.sroa.029.4.3.i.i573 = phi float [ %i.dvl, %bb.vb ], [ %.sroa.029.4.2.i.i572, %bb.va ] ; 2 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i549, i64 16 ; 2 uses
  %i.dvq = load float, ptr %i.dvp, align 4, !alias.scope !35479, !noalias !35488, !noundef !27
  %i.dvr = fadd float %.sroa.8.0.copyload.i.i563, %i.dvq ; 3 uses
  store float %i.dvr, ptr %i.dvp, align 4, !alias.scope !35479, !noalias !35488
  %i.dvs = fcmp olt float %i.dvr, %.sroa.029.4.3.i.i573
  br i1 %i.dvs, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.dvt = trunc i64 %i.dlv to i8
  %i.dvu = or disjoint i8 %i.dvt, 4
  store i8 %i.dvu, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc
  %.sroa.029.4.4.i.i574 = phi float [ %i.dvr, %bb.vd ], [ %.sroa.029.4.3.i.i573, %bb.vc ] ; 2 uses
  %i.dvv = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i549, i64 20 ; 2 uses
  %i.dvw = load float, ptr %i.dvv, align 4, !alias.scope !35479, !noalias !35488, !noundef !27
  %i.dvx = fadd float %.sroa.9.0.copyload.i.i565, %i.dvw ; 3 uses
  store float %i.dvx, ptr %i.dvv, align 4, !alias.scope !35479, !noalias !35488
  %i.dvy = fcmp olt float %i.dvx, %.sroa.029.4.4.i.i574
  br i1 %i.dvy, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  %i.dvz = trunc i64 %i.dlv to i8
  %i.dwa = or disjoint i8 %i.dvz, 5
  store i8 %i.dwa, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vf, %bb.ve
  %.sroa.029.4.5.i.i575 = phi float [ %i.dvx, %bb.vf ], [ %.sroa.029.4.4.i.i574, %bb.ve ] ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i549, i64 24 ; 2 uses
  %i.dwc = load float, ptr %i.dwb, align 4, !alias.scope !35479, !noalias !35488, !noundef !27
  %i.dwd = fadd float %.sroa.10.0.copyload.i.i567, %i.dwc ; 3 uses
  store float %i.dwd, ptr %i.dwb, align 4, !alias.scope !35479, !noalias !35488
  %i.dwe = fcmp olt float %i.dwd, %.sroa.029.4.5.i.i575
  br i1 %i.dwe, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg
  %i.dwf = trunc i64 %i.dlv to i8
  %i.dwg = or disjoint i8 %i.dwf, 6
  store i8 %i.dwg, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.vg
  %.sroa.029.4.6.i.i576 = phi float [ %i.dwd, %bb.vh ], [ %.sroa.029.4.5.i.i575, %bb.vg ] ; 2 uses
  %i.dwh = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i549, i64 28 ; 2 uses
  %i.dwi = load float, ptr %i.dwh, align 4, !alias.scope !35479, !noalias !35488, !noundef !27
  %i.dwj = fadd float %.sroa.11.0.copyload.i.i569, %i.dwi ; 3 uses
  store float %i.dwj, ptr %i.dwh, align 4, !alias.scope !35479, !noalias !35488
  %i.dwk = fcmp olt float %i.dwj, %.sroa.029.4.6.i.i576
  br i1 %i.dwk, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %bb.vi
  %i.dwl = trunc i64 %i.dlv to i8
  %i.dwm = or disjoint i8 %i.dwl, 7
  store i8 %i.dwm, ptr %i.dlm, align 1, !alias.scope !35483, !noalias !35485
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vi
  %.sroa.029.4.7.i.i577 = phi float [ %i.dwj, %bb.vj ], [ %.sroa.029.4.6.i.i576, %bb.vi ] ; 2 uses
  %i.dwn = icmp eq ptr %i.dlt, %i.dih
  br i1 %i.dwn, label %._crit_edge416.i.i578, label %.lr.ph415.i.i547

bb.vl:                                            ; preds = %bb.vn, %.split.i180.i508
  %i.dwo = phi i64 [ 1, %.split.i180.i508 ], [ %i.dwy, %bb.vn ] ; 4 uses
  %.sroa.071.0400.i.i511 = phi i64 [ 0, %.split.i180.i508 ], [ %i.dwo, %bb.vn ] ; 4 uses
  %i.dwp = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %.sroa.071.0400.i.i511
  %i.dwq = load float, ptr %i.dwp, align 4, !alias.scope !35477, !noalias !35487, !noundef !27
  %exitcond482.not.i.i512 = icmp eq i64 %i.dwo, %i.cqa
  br i1 %exitcond482.not.i.i512, label %.invoke.i524, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %gep.i.i513 = getelementptr [2192 x i8], ptr %invariant.gep.i.i510, i64 %.sroa.071.0400.i.i511
  %i.dwr = load i32, ptr %gep.i.i513, align 4, !alias.scope !35475, !noalias !35508, !noundef !27
  %i.dws = zext i32 %i.dwr to i64
  %i.dwt = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.dws)
          to label %.noexc200.i523 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i514", !noalias !35141

.noexc200.i523:                                   ; preds = %bb.vm
  %i.dwu = add nuw nsw i64 %.sroa.071.0400.i.i511, %i.dif ; 3 uses
  %i.dwv = icmp ult i64 %i.dwu, %i.cpc
  br i1 %i.dwv, label %bb.vn, label %.invoke.i524

bb.vn:                                            ; preds = %.noexc200.i523
  %i.dww = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %i.dwu
  %i.dwx = fsub float %i.dwq, %i.dwt
  store float %i.dwx, ptr %i.dww, align 4, !alias.scope !35477, !noalias !35487
  %i.dwy = add nuw nsw i64 %i.dwo, 1
  %exitcond483.not.i.i528 = icmp eq i64 %i.dwo, %.sroa.0.0441.i500
  br i1 %exitcond483.not.i.i528, label %.loopexit358.i.i529, label %bb.vl

bb.vo:                                            ; preds = %bb.tj
  %i.dwz = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %.sroa.069.0399.i.i504
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwz, i64 2176
  %i.dxb = load i64, ptr %i.dxa, align 8, !alias.scope !35509, !noalias !35508, !noundef !27
  %i.dxc = and i64 %i.dxb, 4294967295             ; 3 uses
  %i.dxd = icmp samesign ult i64 %i.dxc, 256
  br i1 %i.dxd, label %bb.vr, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.dxe = uitofp nneg i64 %i.dxc to float
  %i.dxf = tail call float @llvm.log2.f32(float %i.dxe)
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vr, %bb.vp
  %.sroa.016.0.i.i506 = phi float [ %i.dxj, %bb.vr ], [ %i.dxf, %bb.vp ]
  %i.dxg = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %.sroa.069.0399.i.i504
  store float %.sroa.016.0.i.i506, ptr %i.dxg, align 4, !alias.scope !35477, !noalias !35487
  %i.dxh = add nuw nsw i64 %i.dib, 1
  %exitcond480.not.i.i507 = icmp eq i64 %i.dib, %.sroa.0.0441.i500
  br i1 %exitcond480.not.i.i507, label %.split.i180.i508, label %bb.tj

bb.vr:                                            ; preds = %bb.vo
  %i.dxi = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.dxc
  %i.dxj = load float, ptr %i.dxi, align 4, !noalias !35494, !noundef !27
  br label %bb.vq

.preheader.i.i986:                                ; preds = %.preheader.i.i986.preheader4142, %bb.vs
  %i.dxk = phi i64 [ %i.dxm, %bb.vs ], [ %.ph4143, %.preheader.i.i986.preheader4142 ] ; 4 uses
  %.sroa.066.0449.i.i987 = phi i64 [ %i.dxk, %bb.vs ], [ %.sroa.066.0449.i.i987.ph, %.preheader.i.i986.preheader4142 ] ; 2 uses
  %exitcond488.not.i.i988 = icmp eq i64 %i.dxk, %i.cqe
  br i1 %exitcond488.not.i.i988, label %.invoke.i524, label %bb.vs

bb.vs:                                            ; preds = %.preheader.i.i986
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.066.0449.i.i987
  store i8 0, ptr %i.dxl, align 1, !alias.scope !35483, !noalias !35485
  %i.dxm = add i64 %i.dxk, 1
  %exitcond489.not.i.i989 = icmp eq i64 %i.dxk, %.sroa.01.1
  br i1 %exitcond489.not.i.i989, label %.loopexit.i634, label %.preheader.i.i986, !llvm.loop !35512

.loopexit.i634:                                   ; preds = %bb.tn, %bb.vs, %bb.tf
  %.sroa.0.0.i.i635 = phi i64 [ 0, %bb.tf ], [ 1, %bb.vs ], [ %.sroa.03.1.i.i632, %bb.tn ] ; 32 uses
  %i.dxn = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.coy, i64 noundef %.sroa.01.1, i64 noundef %.sroa.01.1, ptr noalias noundef nonnull align 2 %i.cpw, i64 noundef %spec.store.select.i447, i64 noundef %.sroa.0.0441.i500)
          to label %bb.vt unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i636", !noalias !35141 ; 5 uses

bb.vt:                                            ; preds = %.loopexit.i634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35518)
  %.not.i.i206.i638 = icmp ugt i64 %i.dxn, %spec.store.select.i447
  br i1 %.not.i.i206.i638, label %.invoke1203.i980, label %bb.vu, !prof !2480

bb.vu:                                            ; preds = %bb.vt
  %.idx.i.i207.i639 = mul i64 %i.dxn, 2192        ; 2 uses
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.cjx, i64 %.idx.i.i207.i639
  %i.dxp = icmp eq i64 %i.dxn, 0
  br i1 %i.dxp, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i208.i640.preheader

.lr.ph.i.i208.i640.preheader:                     ; preds = %bb.vu
  %i.dxq = add i64 %.idx.i.i207.i639, -2192       ; 2 uses
  %i.dxr = udiv i64 %i.dxq, 2192
  %i.dxs = add nuw nsw i64 %i.dxr, 1
  %xtraiter4732 = and i64 %i.dxs, 7               ; 2 uses
  %lcmp.mod4733.not = icmp eq i64 %xtraiter4732, 0
  br i1 %lcmp.mod4733.not, label %.lr.ph.i.i208.i640.prol.loopexit, label %.lr.ph.i.i208.i640.prol

.lr.ph.i.i208.i640.prol:                          ; preds = %.lr.ph.i.i208.i640.preheader, %.lr.ph.i.i208.i640.prol
  %.sroa.02.05.i.i209.i641.prol = phi ptr [ %i.dxt, %.lr.ph.i.i208.i640.prol ], [ %i.cjx, %.lr.ph.i.i208.i640.preheader ] ; 3 uses
  %prol.iter4734 = phi i64 [ %prol.iter4734.next, %.lr.ph.i.i208.i640.prol ], [ 0, %.lr.ph.i.i208.i640.preheader ]
  %i.dxt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641.prol, i64 2192 ; 2 uses
  %i.dxu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i209.i641.prol, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dxu, align 8, !alias.scope !35524, !noalias !35523
  %prol.iter4734.next = add i64 %prol.iter4734, 1 ; 2 uses
  %prol.iter4734.cmp.not = icmp eq i64 %prol.iter4734.next, %xtraiter4732
  br i1 %prol.iter4734.cmp.not, label %.lr.ph.i.i208.i640.prol.loopexit, label %.lr.ph.i.i208.i640.prol, !llvm.loop !35527

.lr.ph.i.i208.i640.prol.loopexit:                 ; preds = %.lr.ph.i.i208.i640.prol, %.lr.ph.i.i208.i640.preheader
  %.sroa.02.05.i.i209.i641.unr = phi ptr [ %i.cjx, %.lr.ph.i.i208.i640.preheader ], [ %i.dxt, %.lr.ph.i.i208.i640.prol ]
  %i.dxv = icmp ult i64 %i.dxq, 15344
  br i1 %i.dxv, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i208.i640

.lr.ph.i.i208.i640:                               ; preds = %.lr.ph.i.i208.i640.prol.loopexit, %.lr.ph.i.i208.i640
  %.sroa.02.05.i.i209.i641 = phi ptr [ %i.dyk, %.lr.ph.i.i208.i640 ], [ %.sroa.02.05.i.i209.i641.unr, %.lr.ph.i.i208.i640.prol.loopexit ] ; 17 uses
  %i.dxw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 2192
  %i.dxx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i209.i641, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dxx, align 8, !alias.scope !35524, !noalias !35523
  %i.dxy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 4384
  %i.dxz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dxw, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dxz, align 8, !alias.scope !35524, !noalias !35523
  %i.dya = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 6576
  %i.dyb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dxy, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyb, align 8, !alias.scope !35524, !noalias !35523
  %i.dyc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 8768
  %i.dyd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dya, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyd, align 8, !alias.scope !35524, !noalias !35523
  %i.dye = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 10960
  %i.dyf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dyc, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyf, align 8, !alias.scope !35524, !noalias !35523
  %i.dyg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 13152
  %i.dyh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dye, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyh, align 8, !alias.scope !35524, !noalias !35523
  %i.dyi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 15344
  %i.dyj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dyg, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyj, align 8, !alias.scope !35524, !noalias !35523
  %i.dyk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 17536 ; 2 uses
  %i.dyl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i641, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dyi, i8 0, i64 2184, i1 false), !alias.scope !35520, !noalias !35523
  store float 3.402000e+38, ptr %i.dyl, align 8, !alias.scope !35524, !noalias !35523
  %i.dym = icmp eq ptr %i.dyk, %i.dxo
  br i1 %i.dym, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i208.i640

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader: ; preds = %.lr.ph.i.i208.i640.prol.loopexit, %.lr.ph.i.i208.i640, %bb.vu
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %.sroa.01.013.i.i642 = phi i64 [ %i.dyn, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader ] ; 4 uses
  %i.dyn = add nuw nsw i64 %.sroa.01.013.i.i642, 1 ; 2 uses
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.01.013.i.i642
  %i.dyp = load i8, ptr %i.dyo, align 1, !alias.scope !35516, !noalias !35528, !noundef !27
  %i.dyq = zext i8 %i.dyp to i64                  ; 3 uses
  %.not93.i643 = icmp samesign ult i64 %i.cjr, %i.dyq
  br i1 %.not93.i643, label %.invoke.i524, label %bb.vv

bb.vv:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i
  %exitcond23.not.i.i644 = icmp eq i64 %.sroa.01.013.i.i642, %2
  br i1 %exitcond23.not.i.i644, label %.invoke.i524, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.dyr = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.01.013.i.i642
  %i.dys = load i16, ptr %i.dyr, align 2, !alias.scope !35529, !noalias !35532, !noundef !27 ; 2 uses
  %i.dyt = zext i16 %i.dys to i64                 ; 2 uses
  %i.dyu = icmp ult i16 %i.dys, 544
  br i1 %i.dyu, label %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i, label %.invoke.i524

_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i: ; preds = %bb.vw
  %i.dyv = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %i.dyq ; 2 uses
  %i.dyw = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.dyt ; 2 uses
  %i.dyx = load i32, ptr %i.dyw, align 4, !alias.scope !35533, !noalias !35523, !noundef !27
  %i.dyy = add i32 %i.dyx, 1
  store i32 %i.dyy, ptr %i.dyw, align 4, !alias.scope !35533, !noalias !35523
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyv, i64 2176 ; 2 uses
  %i.dza = load i64, ptr %i.dyz, align 8, !alias.scope !35536, !noalias !35523, !noundef !27
  %i.dzb = add i64 %i.dza, 1
  store i64 %i.dzb, ptr %i.dyz, align 8, !alias.scope !35539, !noalias !35523
  %exitcond24.not.i.i645 = icmp eq i64 %i.dyn, %.sroa.01.1
  br i1 %exitcond24.not.i.i645, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

.invoke.i524:                                     ; preds = %bb.tj, %.lr.ph434.split.i.i542, %.lr.ph447.i.i624, %.preheader.i.i986, %bb.vw, %bb.vv, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i, %.noexc200.i523, %bb.vl, %.lr.ph424.preheader.i.i582, %.lr.ph424.i.i584.1, %.lr.ph424.i.i584.2, %.lr.ph424.i.i584.3, %.lr.ph424.i.i584.4, %.lr.ph424.i.i584.5, %.lr.ph424.i.i584.6, %.lr.ph430.i.i595
  %i.dzc = phi i64 [ %i.dyq, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %i.dla, %.lr.ph447.i.i624 ], [ %i.dsd, %.lr.ph430.i.i595 ], [ %.sroa.01.1, %.lr.ph434.split.i.i542 ], [ %.sroa.066.0449.i.i987, %.preheader.i.i986 ], [ %i.dkd, %.lr.ph424.i.i584.6 ], [ %.sroa.071.0400.i.i511, %bb.vl ], [ %i.dip, %.lr.ph424.preheader.i.i582 ], [ %i.diu, %.lr.ph424.i.i584.1 ], [ %i.djc, %.lr.ph424.i.i584.2 ], [ %i.djl, %.lr.ph424.i.i584.3 ], [ %i.djr, %.lr.ph424.i.i584.4 ], [ %i.djx, %.lr.ph424.i.i584.5 ], [ %i.dwu, %.noexc200.i523 ], [ %2, %bb.vv ], [ %i.dyt, %bb.vw ], [ %.sroa.069.0399.i.i504, %bb.tj ]
  %i.dzd = phi i64 [ %spec.store.select.i447, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %i.cpn, %.lr.ph447.i.i624 ], [ %i.cpn, %.lr.ph430.i.i595 ], [ %.sroa.01.1, %.lr.ph434.split.i.i542 ], [ %.sroa.01.1, %.preheader.i.i986 ], [ %i.cpb, %.lr.ph424.preheader.i.i582 ], [ %spec.store.select.i447, %bb.vl ], [ %i.cpb, %.lr.ph424.i.i584.6 ], [ %i.cpb, %.lr.ph424.i.i584.5 ], [ %i.cpb, %.lr.ph424.i.i584.4 ], [ %i.cpb, %.lr.ph424.i.i584.3 ], [ %i.cpb, %.lr.ph424.i.i584.2 ], [ %i.cpb, %.lr.ph424.i.i584.1 ], [ %i.cpc, %.noexc200.i523 ], [ %2, %bb.vv ], [ 544, %bb.vw ], [ %spec.store.select.i447, %bb.tj ]
  %i.dze = phi ptr [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ @1531, %.lr.ph447.i.i624 ], [ @1576, %.lr.ph430.i.i595 ], [ @1532, %.lr.ph434.split.i.i542 ], [ @1546, %.preheader.i.i986 ], [ @1537, %.lr.ph424.preheader.i.i582 ], [ @1542, %bb.vl ], [ @1537, %.lr.ph424.i.i584.6 ], [ @1537, %.lr.ph424.i.i584.5 ], [ @1537, %.lr.ph424.i.i584.4 ], [ @1537, %.lr.ph424.i.i584.3 ], [ @1537, %.lr.ph424.i.i584.2 ], [ @1537, %.lr.ph424.i.i584.1 ], [ @1543, %.noexc200.i523 ], [ @1575, %bb.vv ], [ @1932, %bb.vw ], [ @1544, %bb.tj ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dzc, i64 noundef %i.dzd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dze) #43
          to label %.cont.i527 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i525", !noalias !35141

.cont.i527:                                       ; preds = %.invoke.i524
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i514": ; preds = %bb.vm
  %lpad.loopexit.i515 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i636": ; preds = %.loopexit.i634
  %lpad.loopexit105.i637 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i525": ; preds = %.invoke.i524, %.split440.us.i.invoke.i552, %.invoke1203.i980
  %lpad.loopexit.split-lp106.i526 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i525", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i636", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i514"
  %lpad.phi.i517 = phi { ptr, i32 } [ %lpad.loopexit.i515, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i514" ], [ %lpad.loopexit105.i637, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i636" ], [ %lpad.loopexit.split-lp106.i526, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i525" ]
  call void @mi_free(ptr noundef nonnull %i.cpw) #38, !noalias !35141
  br label %bb.vx

bb.vx:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516", %.thread55.i990
  %.pn62.i518 = phi { ptr, i32 } [ %i.cpy, %.thread55.i990 ], [ %lpad.phi.i517, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i516" ]
  br i1 %i.cpp, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i520", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i519"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i519": ; preds = %bb.vx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cpu) ]
  call void @mi_free(ptr noundef nonnull %i.cpu) #38, !noalias !35141
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i520"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i520": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i519", %bb.vx
  call void @mi_free(ptr noundef nonnull %i.cpi) #38, !noalias !35141
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i521"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i521": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i520", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i993", %.thread39.i997
  %.pn.pn.pn44.i522 = phi { ptr, i32 } [ %i.cpm, %.thread39.i997 ], [ %i.cpt, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i993" ], [ %.pn62.i518, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i520" ]
  call void @mi_free(ptr noundef nonnull %i.cpe) #38, !noalias !35141
  call void @mi_free(ptr noundef nonnull %i.coy) #38, !noalias !35141
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i714": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i712", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973", %bb.td, %.body.i976
  %.pn.pn.pn.pn.i715 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i977, %.body.i976 ], [ %i.dhj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i710, %bb.td ], [ %.pn230.pn.pn.pn.pn.pn.pn85958.i.i713, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i712" ]
  tail call void @mi_free(ptr noundef nonnull %i.coy) #38, !noalias !35141
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i521", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i999", %.thread.i466
  %.pn.pn.pn.pn.pn38.i467 = phi { ptr, i32 } [ %i.cko, %.thread.i466 ], [ %.pn.pn.pn44.i522, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i521" ], [ %i.cpg, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i999" ]
  call void @mi_free(ptr noundef nonnull %i.cjx) #38, !noalias !35141
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

bb.vy:                                            ; preds = %bb.or
  %i.dzf = icmp eq i64 %.val111.i1004, 0          ; 2 uses
  %spec.select.i1020 = select i1 %i.dzf, i64 %i.ckm, i64 %.val111.i1004
  br label %bb.vz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1023", %bb.wb, %bb.or
  %.val.i1006 = phi ptr [ %i.dzm, %bb.wb ], [ %i.dzm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1023" ], [ %.val110.i1003, %bb.or ]
  %.val63.i1007 = phi i64 [ %.sroa.014.1.i1021, %bb.wb ], [ %.sroa.014.1.i1021, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1023" ], [ %.val111.i1004, %bb.or ] ; 2 uses
  %i.dzg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val90.i1008 = load ptr, ptr %i.dzg, align 8, !alias.scope !35131, !noalias !35128, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.dzh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val91.i1009 = load i64, ptr %i.dzh, align 8, !alias.scope !35131, !noalias !35128, !noundef !27 ; 5 uses
  %i.dzi = icmp ult i64 %.val91.i1009, %i.ckm
  br i1 %i.dzi, label %bb.wc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i1010"

bb.vz:                                            ; preds = %bb.vz, %bb.vy
  %.sroa.014.1.i1021 = phi i64 [ %spec.select.i1020, %bb.vy ], [ %i.dzk, %bb.vz ] ; 9 uses
  %i.dzj = icmp ult i64 %.sroa.014.1.i1021, %i.ckm
  %i.dzk = shl i64 %.sroa.014.1.i1021, 1
  br i1 %i.dzj, label %bb.vz, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.dzl = icmp slt i64 %.sroa.014.1.i1021, 0
  br i1 %i.dzl, label %.invoke2932, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022: ; preds = %bb.wa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35542
  %i.dzm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i1021, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35542 ; 5 uses
  %i.dzn = icmp eq ptr %i.dzm, null
  br i1 %i.dzn, label %.invoke2932, label %bb.wb

bb.wb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dzm, ptr nonnull readonly align 1 %.val110.i1003, i64 %.val111.i1004, i1 false), !alias.scope !35547, !noalias !35551
  store ptr %i.dzm, ptr %9, align 8, !alias.scope !35131, !noalias !35128
  store i64 %.sroa.014.1.i1021, ptr %i.ckj, align 8, !alias.scope !35131, !noalias !35128
  br i1 %i.dzf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1023"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1023": ; preds = %bb.wb
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i1003) #38, !noalias !35141
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005"

bb.wc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005"
  %i.dzo = icmp eq i64 %.val91.i1009, 0           ; 2 uses
  %spec.select91.i1013 = select i1 %i.dzo, i64 %i.ckm, i64 %.val91.i1009
  br label %bb.wd

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i1010": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1018", %bb.wh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005"
  %.val94.i1011 = phi ptr [ %i.eac, %bb.wh ], [ %i.eac, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1018" ], [ %.val90.i1008, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005" ]
  %.val95.i1012 = phi i64 [ %.sroa.017.1.i1014, %bb.wh ], [ %.sroa.017.1.i1014, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1018" ], [ %.val91.i1009, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i1005" ] ; 2 uses
  %i.dzp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.dzp, align 8, !alias.scope !35131, !noalias !35128
  %i.dzq = icmp ult i64 %i.ckl, %.val63.i1007
  br i1 %i.dzq, label %bb.wi, label %.invoke2930

bb.wd:                                            ; preds = %bb.wd, %bb.wc
  %.sroa.017.1.i1014 = phi i64 [ %spec.select91.i1013, %bb.wc ], [ %i.dzs, %bb.wd ] ; 8 uses
  %i.dzr = icmp ult i64 %.sroa.017.1.i1014, %i.ckm
  %i.dzs = shl i64 %.sroa.017.1.i1014, 1
  br i1 %i.dzr, label %bb.wd, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.dzt = shl i64 %.sroa.017.1.i1014, 2          ; 5 uses
  %i.dzu = icmp ugt i64 %.sroa.017.1.i1014, 4611686018427387903
  %i.dzv = icmp ugt i64 %i.dzt, 9223372036854775804
  %or.cond.i.i.i.i230.i1015 = or i1 %i.dzu, %i.dzv
  br i1 %or.cond.i.i.i.i230.i1015, label %.invoke2932, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1016, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1016: ; preds = %bb.we
  %i.dzw = icmp eq i64 %i.dzt, 0
  br i1 %i.dzw, label %bb.wh, label %bb.wf

bb.wf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1016
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35553
  %i.dzx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dzt, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35553 ; 2 uses
  %i.dzy = icmp eq ptr %i.dzx, null
  br i1 %i.dzy, label %.invoke2932, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.dzz = ptrtoint ptr %i.dzx to i64
  br label %bb.wh

.invoke2932:                                      ; preds = %bb.we, %bb.wf, %bb.wa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448
  %i.eaa = phi i64 [ 0, %bb.wa ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022 ], [ 4, %bb.wf ], [ 0, %bb.we ]
  %i.eab = phi i64 [ %.sroa.014.1.i1021, %bb.wa ], [ %i.cjw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i448 ], [ %.sroa.014.1.i1021, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1022 ], [ %i.dzt, %bb.wf ], [ %i.dzt, %bb.we ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.eaa, i64 %i.eab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2933 unwind label %bb.oo

.cont2933:                                        ; preds = %.invoke2932
  unreachable

bb.wh:                                            ; preds = %bb.wg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1016
  %.sroa.10.0.i.i232.i1017 = phi i64 [ %i.dzz, %bb.wg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1016 ]
  %i.eac = inttoptr i64 %.sroa.10.0.i.i232.i1017 to ptr ; 5 uses
  %i.ead = icmp samesign ult i64 %.sroa.017.1.i1014, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ead)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eac) ]
  %i.eae = shl nuw nsw i64 %.val91.i1009, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eac, ptr nonnull readonly align 4 %.val90.i1008, i64 %i.eae, i1 false), !alias.scope !35558, !noalias !35562
  store ptr %i.eac, ptr %i.dzg, align 8, !alias.scope !35131, !noalias !35128
  store i64 %.sroa.017.1.i1014, ptr %i.dzh, align 8, !alias.scope !35131, !noalias !35128
  br i1 %i.dzo, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i1010", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1018"
end_hunk_11
begin_hunk_12_@_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE:bb.a
  %index119 = phi i64 [ 0, %vector.ph117 ], [ %index.next124.1, %vector.body118 ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index119 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load120 = load <4 x i32>, ptr %i.es, align 8
  %wide.load121 = load <4 x i32>, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index119 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load122 = load <4 x i32>, ptr %i.eu, align 8
  %wide.load123 = load <4 x i32>, ptr %i.ev, align 8
  %i.ew = add <4 x i32> %wide.load122, %wide.load120
  %i.ex = add <4 x i32> %wide.load123, %wide.load121
  store <4 x i32> %i.ew, ptr %i.es, align 8
  store <4 x i32> %i.ex, ptr %i.et, align 8
  %index.next124 = or disjoint i64 %index119, 8   ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next124 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load120.1 = load <4 x i32>, ptr %i.ey, align 8
  %wide.load121.1 = load <4 x i32>, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index.next124 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load122.1 = load <4 x i32>, ptr %i.fa, align 8
  %wide.load123.1 = load <4 x i32>, ptr %i.fb, align 8
  %i.fc = add <4 x i32> %wide.load122.1, %wide.load120.1
  %i.fd = add <4 x i32> %wide.load123.1, %wide.load121.1
  store <4 x i32> %i.fc, ptr %i.ey, align 8
  store <4 x i32> %i.fd, ptr %i.ez, align 8
  %index.next124.1 = add nuw nsw i64 %index119, 16 ; 2 uses
  %i.fe = icmp eq i64 %index.next124.1, 704
  br i1 %i.fe, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.1, label %vector.body118, !llvm.loop !39191

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.1: ; preds = %vector.body118
  %i.ff = call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.as, i64 noundef 704, i64 noundef %i.am) ; 2 uses
  %i.fg = extractvalue { float, i64 } %i.ff, 0    ; 2 uses
  %i.fh = extractvalue { float, i64 } %i.ff, 1
  %i.fi = uitofp i64 %i.fh to float               ; 2 uses
  %i.fj = fcmp olt float %i.fg, %i.fi
  %.sroa.08.0.1 = select i1 %i.fj, float %i.fi, float %i.fg ; 2 uses
  %i.fk = fsub float %.sroa.08.0.1, %.sroa.06.0
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fm = load float, ptr %i.fl, align 4, !noundef !27
  %i.fn = fsub float %i.fk, %i.fm                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !27 ; 5 uses
  %i.fq = icmp ult i64 %i.fp, 256
  br i1 %i.fq, label %bb.q, label %bb.r

bb.ao:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, %bb.p
  %.lcssa = phi i64 [ %i.au, %bb.p ], [ %i.ek, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit ]
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1981) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 4               ; 7 uses
  %i.b = alloca [52 x i8], align 4                ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 36 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !27 ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 11 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !27
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val126 = load i64, ptr %i.n, align 8, !noundef !27
  %.not98 = icmp eq i64 %.val126, 0
  br i1 %.not98, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val125 = load ptr, ptr %i.o, align 8, !nonnull !27, !align !603, !noundef !27
  %i.p = trunc i64 %i.j to i32
  store i32 %i.p, ptr %.val125, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val118 = load i64, ptr %i.q, align 8, !noundef !27
  %.not99 = icmp eq i64 %.val118, 0
  br i1 %.not99, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1989) #43
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val117 = load ptr, ptr %1, align 8, !nonnull !27, !align !206, !noundef !27
  store i8 0, ptr %.val117, align 1
  %.not102 = icmp eq i64 %i.d, 0
  br i1 %.not102, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = add i64 %3, 1
  %umax175 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.u = add i64 %umax175, 1
  %i.v = sub i64 %i.u, %i.d
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1990) #43
  unreachable

bb.j:                                             ; preds = %.lr.ph94, %bb.u
  %i.w = phi i64 [ 1, %.lr.ph94 ], [ %i.bu, %bb.u ] ; 6 uses
  %.sroa.026.092 = phi i64 [ 0, %.lr.ph94 ], [ %i.w, %bb.u ] ; 5 uses
  %exitcond173.not = icmp eq i64 %i.w, %i.t
  br i1 %exitcond173.not, label %bb.r, label %bb.q

._crit_edge95:                                    ; preds = %bb.u, %bb.h
  %i.x = load i64, ptr %i.k, align 8, !noundef !27
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.k, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noundef !27
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !27
  %i.ae = add i64 %i.ad, %i.d                     ; 6 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = load i64, ptr %4, align 8, !noundef !27
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit

bb.k:                                             ; preds = %._crit_edge95
  %i.ah = icmp ugt i64 %i.ae, %3
  br i1 %i.ah, label %bb.o, label %bb.l, !prof !29

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.m, %._crit_edge95
  store i64 0, ptr %i.e, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ai = sub nuw i64 %3, %i.ae                   ; 2 uses
  %i.aj = load i64, ptr %i.c, align 8, !noundef !27 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39192)
  %.not.i = icmp ugt i64 %i.aj, %i.ai
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !2480

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ae ; 3 uses
  %.idx.i = mul i64 %i.aj, 1040                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.an = add i64 %.idx.i, -1040                  ; 2 uses
  %i.ao = udiv i64 %i.an, 1040
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter383 = and i64 %i.ap, 7                 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.05.i.prol = phi ptr [ %i.aq, %.lr.ph.i.prol ], [ %i.ak, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1040 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.prol, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ar, align 8, !alias.scope !39195
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !39198

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.02.05.i.unr = phi ptr [ %i.ak, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.as = icmp ult i64 %i.an, 7280
  br i1 %i.as, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.aj, i64 noundef %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1931) #43, !noalias !39192
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.sroa.02.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1040
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.au, align 8, !alias.scope !39195
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2080
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.at, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.aw, align 8, !alias.scope !39195
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3120
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.av, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ay, align 8, !alias.scope !39195
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4160
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ax, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.ba, align 8, !alias.scope !39195
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5200
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.az, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bc, align 8, !alias.scope !39195
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6240
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bb, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.be, align 8, !alias.scope !39195
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7280
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bd, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bg, align 8, !alias.scope !39195
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false), !alias.scope !39192
  store float 3.402000e+38, ptr %i.bi, align 8, !alias.scope !39195
  %i.bj = icmp eq ptr %i.bh, %i.al
  br i1 %i.bj, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ae, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1991) #43
  unreachable

bb.p:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", %bb.e, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit
  br i1 %5, label %bb.bd, label %bb.bc

bb.q:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %.sroa.026.092
  %i.bl = load i64, ptr %i.r, align 8, !noundef !27
  %i.bm = tail call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef 256, i64 noundef %i.bl) ; 2 uses
  %i.bn = extractvalue { float, i64 } %i.bm, 0    ; 2 uses
  %i.bo = extractvalue { float, i64 } %i.bm, 1
  %i.bp = uitofp i64 %i.bo to float               ; 2 uses
  %i.bq = fcmp olt float %i.bn, %i.bp
  %.sroa.020.0 = select i1 %i.bq, float %i.bp, float %i.bn ; 2 uses
  %exitcond174.not = icmp eq i64 %i.w, 27
  br i1 %exitcond174.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1992) #43
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.026.092
  store float %.sroa.020.0, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.sroa.026.092, %i.d    ; 2 uses
  %exitcond176.not = icmp eq i64 %i.w, %i.v
  br i1 %exitcond176.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.026.092, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1993) #43
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bs
  store float %.sroa.020.0, ptr %i.bt, align 4
  %i.bu = add nuw nsw i64 %i.w, 1
  %exitcond177.not = icmp eq i64 %i.w, %i.d
  br i1 %exitcond177.not, label %._crit_edge95, label %bb.j

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bs, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1994) #43
  unreachable

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.bv = shl i64 %i.d, 1                         ; 14 uses
  %i.bw = mul i64 %i.d, 2080                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.bv, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.w
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39199
  %i.by = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bw, i64 noundef range(i64 1, 9) 8) #38, !noalias !39199 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39207
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.by, %bb.x ] ; 12 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.bv, %bb.x ]
  %i.ca = icmp samesign ule i64 %i.bv, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.ca)
  %.not10 = icmp eq i64 %i.bv, 0                  ; 3 uses
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"
  %i.cb = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cc = add nsw i64 %i.bv, -2
  %xtraiter = and i64 %i.cb, 7
  %i.cd = icmp ult i64 %i.cc, 7
  br i1 %i.cd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i ]
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.ce, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !39208
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !39211

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !39208
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.cm, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !39208
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cf, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !39208
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !39208
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ch, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !39208
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !39208
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !39208
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !39208
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !39208
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %.not96 = icmp eq i64 %i.d, 0                   ; 4 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = mul i64 %i.d, 1040                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %i.cs = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bw
  %scevgep329 = getelementptr i8, ptr %i.cs, i64 -16
  %i.ct = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.cr
  %scevgep334 = getelementptr i8, ptr %i.ct, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.oy, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ri, %.loopexit ]
  %.sroa.028.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.028.1, %.loopexit ] ; 3 uses
  %.sroa.028.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.028.175, %.loopexit ] ; 12 uses
  %i.cu = load i64, ptr %i.cn, align 8, !noundef !27
  %i.cv = add i64 %i.cu, %.sroa.028.074           ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %3
  br i1 %i.cw, label %bb.cf, label %.invoke300

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.oy, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.ri, %.loopexit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !27 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !noundef !27
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = load float, ptr %i.dc, align 8, !noundef !27 ; 2 uses
  %i.de = fcmp ogt float %.sroa.0.1, %i.dd
  %i.df = fcmp ogt float %.sroa.7.1, %i.dd
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.dg = fadd float %.sroa.0.1, -2.000000e+01
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %i.fl = icmp ult i64 %i.fk, %.val128
  br i1 %i.fl, label %bb.ao, label %.invoke300

bb.ao:                                            ; preds = %bb.an
  %i.fm = icmp ult i64 %i.fj, %.val128
  br i1 %i.fm, label %bb.ap, label %.invoke300

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1, !noundef !27
  %i.fp = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.fj
  store i8 %i.fo, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.fr = load i64, ptr %i.fq, align 8            ; 2 uses
  store i64 %i.fr, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.fq, align 8
  br i1 %.not96, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = load i64, ptr %i.ft, align 8
  br label %bb.ar

._crit_edge87:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, %bb.ap
  store i64 0, ptr %i.e, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.fv, align 8
  %i.fw = load <2 x i64>, ptr %i.g, align 8
  %i.fx = add <2 x i64> %i.fw, <i64 0, i64 1>
  %i.fy = shufflevector <2 x i64> %i.fx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.fy, ptr %i.k, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge87, %._crit_edge81, %bb.ae, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.aq
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i) #38
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit"

bb.ar:                                            ; preds = %.lr.ph86, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit
  %.sroa.032.184 = phi i64 [ 1, %.lr.ph86 ], [ %.sroa.032.1, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit ] ; 3 uses
  %.sroa.032.083 = phi i64 [ 0, %.lr.ph86 ], [ %.sroa.032.184, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit ] ; 6 uses
  %i.fz = add nuw nsw i64 %.sroa.032.083, %i.d    ; 7 uses
  %i.ga = icmp ult i64 %i.fz, %i.bv
  br i1 %i.ga, label %bb.as, label %.invoke300

bb.as:                                            ; preds = %bb.ar
  %i.gb = add nuw i64 %.sroa.032.083, %i.fr       ; 3 uses
  %i.gc = icmp ult i64 %i.gb, %3
  br i1 %i.gc, label %bb.at, label %.invoke

bb.at:                                            ; preds = %bb.as
  %i.gd = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.fz
  %i.ge = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.gb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ge, ptr noundef nonnull align 8 dereferenceable(1040) %i.gd, i64 1040, i1 false)
  %i.gf = icmp samesign ult i64 %.sroa.032.083, 26
  br i1 %i.gf, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.gg = icmp ult i64 %i.fz, 26
  br i1 %i.gg, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.032.083 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !noundef !27
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fz
  store float %i.gi, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fz
  %i.gl = load float, ptr %i.gk, align 4, !noundef !27
  store float %i.gl, ptr %i.gh, align 4
  %i.gm = add nuw i64 %i.fu, %.sroa.032.083       ; 3 uses
  %i.gn = icmp ult i64 %i.gm, %3
  br i1 %i.gn, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit: ; preds = %bb.av
  %i.go = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.gm ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.go, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.gp, align 8, !alias.scope !39215
  %i.gq = icmp ult i64 %.sroa.032.184, %i.d       ; 2 uses
  %i.gr = zext i1 %i.gq to i64
  %.sroa.032.1 = add nuw i64 %.sroa.032.184, %i.gr
  br i1 %i.gq, label %bb.ar, label %._crit_edge87

bb.aw:                                            ; preds = %bb.aa
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val124 = load i64, ptr %i.gs, align 8, !noundef !27 ; 2 uses
  %i.gt = load i64, ptr %i.k, align 8, !noundef !27 ; 3 uses
  %i.gu = icmp ult i64 %i.gt, %.val124
  br i1 %i.gu, label %bb.ax, label %.invoke300

bb.ax:                                            ; preds = %bb.aw
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val123 = load ptr, ptr %i.gv, align 8, !nonnull !27, !align !603, !noundef !27
  %i.gw = load i64, ptr %i.e, align 8, !noundef !27
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val123, i64 %i.gt
  %i.gy = trunc i64 %i.gw to i32
  store i32 %i.gy, ptr %i.gx, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val114 = load i64, ptr %i.gz, align 8, !noundef !27 ; 2 uses
  %i.ha = load i64, ptr %i.k, align 8, !noundef !27 ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %.val114
  br i1 %i.hb, label %bb.ay, label %.invoke300

bb.ay:                                            ; preds = %bb.ax
  %.val = load ptr, ptr %1, align 8, !nonnull !27, !align !206, !noundef !27
  %i.hc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ha
  %i.hd = trunc i64 %i.cy to i8
  store i8 %i.hd, ptr %i.hc, align 1
  %i.he = load i64, ptr %0, align 8, !noundef !27
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8
  %i.hg = mul i64 %i.cy, %i.d
  store i64 %i.hg, ptr %0, align 8
  br i1 %.not96, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.ay
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.hi = add i64 %umax, 1
  %i.hj = sub i64 %i.hi, %i.d                     ; 14 uses
  %i.hk = add i64 %i.d, 1                         ; 15 uses
  %exitcond170.not = icmp eq i64 %i.hj, 1
  br i1 %exitcond170.not, label %.invoke300, label %bb.be

._crit_edge91:                                    ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ay
  %i.hl = load i64, ptr %i.k, align 8, !noundef !27
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.k, align 8
  %i.hn = add nuw i64 %i.cy, 1
  store i64 %i.hn, ptr %i.cx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !27
  %i.hq = add i64 %i.hp, %i.d                     ; 6 uses
  store i64 %i.hq, ptr %i.ho, align 8
  %i.hr = load i64, ptr %4, align 8, !noundef !27
  %i.hs = icmp ult i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.az, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146

bb.az:                                            ; preds = %._crit_edge91
  %i.ht = icmp ugt i64 %i.hq, %3
  br i1 %i.ht, label %.invoke302, label %bb.ba, !prof !29

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146: ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143, %bb.bb, %._crit_edge91
  store i64 0, ptr %i.e, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.hu, align 8
  %i.hv = load i64, ptr %i.g, align 8, !noundef !27
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.hv, ptr %i.hw, align 8
  br label %bb.aq

bb.ba:                                            ; preds = %bb.az
  %i.hx = sub nuw i64 %3, %i.hq                   ; 2 uses
  %i.hy = load i64, ptr %i.c, align 8, !noundef !27 ; 4 uses
  %.not.i141 = icmp ugt i64 %i.hy, %i.hx
  br i1 %.not.i141, label %.invoke302, label %bb.bb, !prof !2480

bb.bb:                                            ; preds = %bb.ba
  %i.hz = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.hq ; 3 uses
  %.idx.i142 = mul i64 %i.hy, 1040                ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx.i142
  %i.ib = icmp eq i64 %i.hy, 0
  br i1 %i.ib, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %bb.bb
  %i.ic = add i64 %.idx.i142, -1040               ; 2 uses
  %i.id = udiv i64 %i.ic, 1040
  %i.ie = add nuw nsw i64 %i.id, 1
  %xtraiter381 = and i64 %i.ie, 7                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph.i143.prol.loopexit, label %.lr.ph.i143.prol

.lr.ph.i143.prol:                                 ; preds = %.lr.ph.i143.preheader, %.lr.ph.i143.prol
  %.sroa.02.05.i144.prol = phi ptr [ %i.if, %.lr.ph.i143.prol ], [ %i.hz, %.lr.ph.i143.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i143.prol ], [ 0, %.lr.ph.i143.preheader ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144.prol, i64 1040 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i144.prol, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.ig, align 8, !alias.scope !39221
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter381
  br i1 %prol.iter.cmp.not, label %.lr.ph.i143.prol.loopexit, label %.lr.ph.i143.prol, !llvm.loop !39224

.lr.ph.i143.prol.loopexit:                        ; preds = %.lr.ph.i143.prol, %.lr.ph.i143.preheader
  %.sroa.02.05.i144.unr = phi ptr [ %i.hz, %.lr.ph.i143.preheader ], [ %i.if, %.lr.ph.i143.prol ]
  %i.ih = icmp ult i64 %i.ic, 7280
  br i1 %i.ih, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.prol.loopexit, %.lr.ph.i143
  %.sroa.02.05.i144 = phi ptr [ %i.iw, %.lr.ph.i143 ], [ %.sroa.02.05.i144.unr, %.lr.ph.i143.prol.loopexit ] ; 17 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 1040
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i144, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.ij, align 8, !alias.scope !39221
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 2080
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ii, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.il, align 8, !alias.scope !39221
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 3120
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ik, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.in, align 8, !alias.scope !39221
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 4160
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.im, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.ip, align 8, !alias.scope !39221
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 5200
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.io, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.ir, align 8, !alias.scope !39221
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 6240
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.iq, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.it, align 8, !alias.scope !39221
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 7280
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.is, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.iv, align 8, !alias.scope !39221
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 8320 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i144, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.iu, i8 0, i64 1032, i1 false), !alias.scope !39218
  store float 3.402000e+38, ptr %i.ix, align 8, !alias.scope !39221
  %i.iy = icmp eq ptr %i.iw, %i.ia
  br i1 %i.iy, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit146, label %.lr.ph.i143

.invoke302:                                       ; preds = %bb.az, %bb.ba
  %i.iz = phi i64 [ 0, %bb.ba ], [ %i.hq, %bb.az ]
  %i.ja = phi i64 [ %i.hy, %bb.ba ], [ %3, %bb.az ]
  %i.jb = phi i64 [ %i.hx, %bb.ba ], [ %3, %bb.az ]
  %i.jc = phi ptr [ @1931, %bb.ba ], [ @2011, %bb.az ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.iz, i64 noundef %i.ja, i64 noundef %i.jb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc) #43
          to label %.cont303 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont303:                                         ; preds = %.invoke302
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.bc:                                            ; preds = %bb.bd, %bb.p
  ret void

bb.bd:                                            ; preds = %bb.p
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !noundef !27
  %i.jf = mul i64 %i.je, %i.d
  store i64 %i.jf, ptr %4, align 8
  %i.jg = load i64, ptr %i.k, align 8, !noundef !27
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.jg, ptr %i.jh, align 8
  br label %bb.bc

bb.be:                                            ; preds = %.lr.ph90
  %i.ji = load float, ptr %i.hh, align 8, !noundef !27
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.d
  store float %i.ji, ptr %i.jj, align 4
  %i.jk = load float, ptr %i.b, align 4, !noundef !27
  store float %i.jk, ptr %i.hh, align 8
  %exitcond172.not = icmp eq i64 %i.hk, 2
  br i1 %exitcond172.not, label %._crit_edge91, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %exitcond170.1.not = icmp eq i64 %i.hj, 2
  br i1 %exitcond170.1.not, label %.invoke300, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !noundef !27
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hk
  store float %i.jm, ptr %i.jn, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !noundef !27
  store float %i.jp, ptr %i.jl, align 4
  %exitcond172.1.not = icmp eq i64 %i.hk, 3
  br i1 %exitcond172.1.not, label %._crit_edge91, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = add nuw nsw i64 %i.d, 2                 ; 2 uses
  %exitcond170.2.not = icmp eq i64 %i.hj, 3
  br i1 %exitcond170.2.not, label %.invoke300, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.js = load float, ptr %i.jr, align 8, !noundef !27
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jq
  store float %i.js, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jv = load float, ptr %i.ju, align 4, !noundef !27
  store float %i.jv, ptr %i.jr, align 8
  %exitcond172.2.not = icmp eq i64 %i.hk, 4
  br i1 %exitcond172.2.not, label %._crit_edge91, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jw = add nuw nsw i64 %i.d, 3                 ; 2 uses
  %exitcond170.3.not = icmp eq i64 %i.hj, 4
  br i1 %exitcond170.3.not, label %.invoke300, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !noundef !27
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jw
  store float %i.jy, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.kb = load float, ptr %i.ka, align 4, !noundef !27
  store float %i.kb, ptr %i.jx, align 4
  %exitcond172.3.not = icmp eq i64 %i.hk, 5
  br i1 %exitcond172.3.not, label %._crit_edge91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kc = add nuw nsw i64 %i.d, 4                 ; 2 uses
  %exitcond170.4.not = icmp eq i64 %i.hj, 5
  br i1 %exitcond170.4.not, label %.invoke300, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 8, !noundef !27
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.kc
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.kh = load float, ptr %i.kg, align 4, !noundef !27
  store float %i.kh, ptr %i.kd, align 8
  %exitcond172.4.not = icmp eq i64 %i.hk, 6
  br i1 %exitcond172.4.not, label %._crit_edge91, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ki = add nuw nsw i64 %i.d, 5                 ; 2 uses
  %exitcond170.5.not = icmp eq i64 %i.hj, 6
  br i1 %exitcond170.5.not, label %.invoke300, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !noundef !27
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ki
  store float %i.kk, ptr %i.kl, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.kn = load float, ptr %i.km, align 4, !noundef !27
  store float %i.kn, ptr %i.kj, align 4
  %exitcond172.5.not = icmp eq i64 %i.hk, 7
  br i1 %exitcond172.5.not, label %._crit_edge91, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ko = add nuw nsw i64 %i.d, 6                 ; 2 uses
  %exitcond170.6.not = icmp eq i64 %i.hj, 7
  br i1 %exitcond170.6.not, label %.invoke300, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 8, !noundef !27
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ko
  store float %i.kq, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.kt = load float, ptr %i.ks, align 4, !noundef !27
  store float %i.kt, ptr %i.kp, align 8
  %exitcond172.6.not = icmp eq i64 %i.hk, 8
  br i1 %exitcond172.6.not, label %._crit_edge91, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ku = add nuw nsw i64 %i.d, 7                 ; 2 uses
  %exitcond170.7.not = icmp eq i64 %i.hj, 8
  br i1 %exitcond170.7.not, label %.invoke300, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !noundef !27
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ku
  store float %i.kw, ptr %i.kx, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.kz = load float, ptr %i.ky, align 4, !noundef !27
  store float %i.kz, ptr %i.kv, align 4
  %exitcond172.7.not = icmp eq i64 %i.hk, 9
  br i1 %exitcond172.7.not, label %._crit_edge91, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.la = add nuw nsw i64 %i.d, 8                 ; 2 uses
  %exitcond170.8.not = icmp eq i64 %i.hj, 9
  br i1 %exitcond170.8.not, label %.invoke300, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 8, !noundef !27
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.la
  store float %i.lc, ptr %i.ld, align 4
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lf = load float, ptr %i.le, align 4, !noundef !27
  store float %i.lf, ptr %i.lb, align 8
  %exitcond172.8.not = icmp eq i64 %i.hk, 10
  br i1 %exitcond172.8.not, label %._crit_edge91, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lg = add nuw nsw i64 %i.d, 9                 ; 2 uses
  %exitcond170.9.not = icmp eq i64 %i.hj, 10
  br i1 %exitcond170.9.not, label %.invoke300, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !noundef !27
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lg
  store float %i.li, ptr %i.lj, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ll = load float, ptr %i.lk, align 4, !noundef !27
  store float %i.ll, ptr %i.lh, align 4
  %exitcond172.9.not = icmp eq i64 %i.hk, 11
  br i1 %exitcond172.9.not, label %._crit_edge91, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lm = add nuw nsw i64 %i.d, 10                ; 2 uses
  %exitcond170.10.not = icmp eq i64 %i.hj, 11
  br i1 %exitcond170.10.not, label %.invoke300, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8, !noundef !27
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.lm
  store float %i.lo, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.lr = load float, ptr %i.lq, align 4, !noundef !27
  store float %i.lr, ptr %i.ln, align 8
  %exitcond172.10.not = icmp eq i64 %i.hk, 12
  br i1 %exitcond172.10.not, label %._crit_edge91, label %bb.bz
end_hunk_13
begin_hunk_14_@_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E:bb.a
bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56
  br i1 %i.cb, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57"

.thread.i:                                        ; preds = %bb.t
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39300, !noalias !39309
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39300, !noalias !39309
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57": ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %.val61.i51, i64 %.val62.i, i1 false), !alias.scope !39316, !noalias !39320
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39300, !noalias !39309
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39300, !noalias !39309
  tail call void @mi_free(ptr noundef nonnull align 1 %.val61.i51) #38, !noalias !39307
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

bb.u:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ch = icmp eq i64 %.val46.i, 0                ; 2 uses
  %spec.select7.i = select i1 %i.ch, i64 %i.ak, i64 %.val46.i
  br label %bb.w

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i", %.thread14.i75, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.ci, align 8, !alias.scope !39300, !noalias !39309
  %i.cj = mul nuw nsw i64 %.sroa.0.0.i.i50, %7    ; 5 uses
  store i64 %i.cj, ptr %i.aj, align 8, !alias.scope !39305, !noalias !39322
  %i.ck = mul nuw nsw i64 %i.cj, 1040             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39323
  %i.cl = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ck, i64 noundef range(i64 1, 9) 8) #38, !noalias !39323 ; 7 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.v, label %.lr.ph.i.i.i.i65.preheader

.lr.ph.i.i.i.i65.preheader:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  %i.cn = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.co = add nsw i64 %i.cj, -2
  %xtraiter552 = and i64 %i.cn, 7                 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 7
  br i1 %i.cp, label %.lr.ph.i.i.i.i65.epil.preheader, label %.lr.ph.i.i.i.i65.preheader.new

.lr.ph.i.i.i.i65.preheader.new:                   ; preds = %.lr.ph.i.i.i.i65.preheader
  %unroll_iter558 = and i64 %i.cn, -8
  br label %.lr.ph.i.i.i.i65

bb.v:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39331
  unreachable

._crit_edge.thread.i.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i65
  %lcmp.mod554.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod554.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil.preheader

.lr.ph.i.i.i.i65.epil.preheader:                  ; preds = %._crit_edge.thread.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i65.preheader
  %.sroa.0.08.i.i.i.i66.epil.init = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader ], [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter552, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph.i.i.i.i65.epil

.lr.ph.i.i.i.i65.epil:                            ; preds = %.lr.ph.i.i.i.i65.epil, %.lr.ph.i.i.i.i65.epil.preheader
  %.sroa.0.08.i.i.i.i66.epil = phi ptr [ %i.cq, %.lr.ph.i.i.i.i65.epil ], [ %.sroa.0.08.i.i.i.i66.epil.init, %.lr.ph.i.i.i.i65.epil.preheader ] ; 4 uses
  %epil.iter553 = phi i64 [ %epil.iter553.next, %.lr.ph.i.i.i.i65.epil ], [ 0, %.lr.ph.i.i.i.i65.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66.epil, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil, align 8, !noalias !39332
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1040 ; 2 uses
  %epil.iter553.next = add i64 %epil.iter553, 1   ; 2 uses
  %epil.iter553.cmp.not = icmp eq i64 %epil.iter553.next, %xtraiter552
  br i1 %epil.iter553.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil, !llvm.loop !39335

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i65.epil, %._crit_edge.thread.i.i.i.i.unr-lcssa
  %.sroa.0.08.i.i.i.i66.lcssa = phi ptr [ %i.cz, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %.sroa.0.08.i.i.i.i66.epil, %.lr.ph.i.i.i.i65.epil ]
  %.lcssa547 = phi ptr [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %i.cq, %.lr.ph.i.i.i.i65.epil ]
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.lcssa, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.lcssa547, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70, align 8, !noalias !39332
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %.val64.i = load i64, ptr %i.cr, align 8, !alias.scope !39303, !noalias !39336, !noundef !27
  %i.cs = icmp eq i64 %.val64.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.lr.ph.i.i.i.i65:                                 ; preds = %.lr.ph.i.i.i.i65, %.lr.ph.i.i.i.i65.preheader.new
  %.sroa.0.08.i.i.i.i66 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader.new ], [ %i.da, %.lr.ph.i.i.i.i65 ] ; 17 uses
  %niter559 = phi i64 [ 0, %.lr.ph.i.i.i.i65.preheader.new ], [ %niter559.next.7, %.lr.ph.i.i.i.i65 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68, align 8, !noalias !39332
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ct, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1, align 8, !noalias !39332
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2, align 8, !noalias !39332
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cv, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3, align 8, !noalias !39332
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cw, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4, align 8, !noalias !39332
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cx, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5, align 8, !noalias !39332
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cy, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6, align 8, !noalias !39332
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7280 ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false), !noalias !39307
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7, align 8, !noalias !39332
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8320 ; 3 uses
  %niter559.next.7 = add i64 %niter559, 8         ; 2 uses
  %niter559.ncmp.7 = icmp eq i64 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %._crit_edge.thread.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i65

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %._crit_edge.thread.i.i.i.i
  %.val63.i = load ptr, ptr %i.ai, align 8, !alias.scope !39303, !noalias !39336, !nonnull !27, !noundef !27
  tail call void @mi_free(ptr noundef nonnull %.val63.i) #38, !noalias !39307
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

bb.w:                                             ; preds = %bb.w, %bb.u
  %.sroa.09.1.i61 = phi i64 [ %spec.select7.i, %bb.u ], [ %i.db, %bb.w ] ; 7 uses
  %.not29.i62 = icmp ugt i64 %.sroa.09.1.i61, %.sroa.08.0.lcssa
  %i.db = shl nuw nsw i64 %.sroa.09.1.i61, 1
  br i1 %.not29.i62, label %bb.x, label %bb.w

bb.x:                                             ; preds = %bb.w
  %i.dc = shl i64 %.sroa.09.1.i61, 2              ; 3 uses
  %i.dd = icmp ugt i64 %.sroa.09.1.i61, 4611686018427387903
  %i.de = icmp ugt i64 %i.dc, 9223372036854775804
  %or.cond.i.i.i.i.i63 = or i1 %i.dd, %i.de
  br i1 %or.cond.i.i.i.i.i63, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i: ; preds = %bb.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39337
  %i.df = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39337 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, %bb.x
  %.sroa.4.0.ph.i.i69.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i ], [ 0, %bb.x ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i69.i, i64 %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39342
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i
  %i.dh = icmp samesign ult i64 %.sroa.09.1.i61, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dh)
  br i1 %i.ch, label %.thread14.i75, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i"

.thread14.i75:                                    ; preds = %bb.z
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39300, !noalias !39309
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39300, !noalias !39309
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i": ; preds = %bb.z
  %i.di = shl nuw nsw i64 %.val46.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr nonnull readonly align 4 %.val45.i59, i64 %i.di, i1 false), !alias.scope !39343, !noalias !39347
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39300, !noalias !39309
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39300, !noalias !39309
  tail call void @mi_free(ptr noundef nonnull align 4 %.val45.i59) #38, !noalias !39307
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %._crit_edge.thread.i.i.i.i
  store ptr %i.cl, ptr %i.ai, align 8, !alias.scope !39303, !noalias !39336
  store i64 %i.cj, ptr %i.cr, align 8, !alias.scope !39303, !noalias !39336
  %.idx.i.i = mul nuw nsw i64 %7, 1040            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  %i.dk = add nsw i64 %.idx.i.i, -1040            ; 2 uses
  %i.dl = udiv i64 %i.dk, 1040
  %i.dm = add nuw nsw i64 %i.dl, 1
  %xtraiter560 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i", %.lr.ph.i.i.prol
  %.sroa.02.05.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.prol ], [ %i.cl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1040 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.do, align 8, !alias.scope !39352, !noalias !39307
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter560
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !39355

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"
  %.sroa.02.05.i.i.unr = phi ptr [ %i.cl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ], [ %i.dn, %.lr.ph.i.i.prol ]
  %i.dp = icmp ult i64 %i.dk, 7280
  br i1 %i.dp, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1040
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.dr, align 8, !alias.scope !39352, !noalias !39307
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2080
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dq, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.dt, align 8, !alias.scope !39352, !noalias !39307
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3120
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ds, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.dv, align 8, !alias.scope !39352, !noalias !39307
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4160
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.du, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.dx, align 8, !alias.scope !39352, !noalias !39307
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5200
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dw, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.dz, align 8, !alias.scope !39352, !noalias !39307
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6240
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.dy, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.eb, align 8, !alias.scope !39352, !noalias !39307
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7280
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ea, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !39352, !noalias !39307
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8320 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.ec, i8 0, i64 1032, i1 false), !alias.scope !39349, !noalias !39307
  store float 3.402000e+38, ptr %i.ef, align 8, !alias.scope !39352, !noalias !39307
  %i.eg = icmp eq ptr %i.ee, %i.dj
  br i1 %i.eg, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, label %.lr.ph.i.i

_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i8 0, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit
  %.sroa.5.sroa.9.sroa.5.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 512, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.10.0 = phi float [ 4.000000e+02, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 0.000000e+00, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.7.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %.zext.i, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.6.0 = phi i64 [ 512, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %7, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.013.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 1, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ] ; 2 uses
  store i64 %.sroa.013.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 256, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 512, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %.sroa.5.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i64 16, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float %.sroa.5.sroa.10.0, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i64 104, i1 false)
  %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float 4.000000e+02, ptr %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39361)
  %i.ek = lshr i64 %12, 10                        ; 6 uses
  %i.el = add nuw nsw i64 %i.ek, 1                ; 4 uses
  %.sroa.0.0.i.i76 = tail call noundef i64 @llvm.umin.i64(i64 %i.el, i64 257) ; 5 uses
  %.val60.i77 = load ptr, ptr %i.eh, align 8, !alias.scope !39356, !noalias !39363, !nonnull !27, !align !206, !noundef !27 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %.val61.i78 = load i64, ptr %i.em, align 8, !alias.scope !39356, !noalias !39363, !noundef !27 ; 4 uses
  %.not.i79 = icmp ugt i64 %.val61.i78, %i.ek
  br i1 %.not.i79, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = icmp eq i64 %.val61.i78, 0              ; 2 uses
  %spec.select.i80 = select i1 %i.en, i64 %i.el, i64 %.val61.i78
  br label %bb.ac

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84", %.thread14.i112, %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %.val44.i86 = load ptr, ptr %i.eo, align 8, !alias.scope !39356, !noalias !39363, !nonnull !27, !align !603, !noundef !27 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %.val45.i87 = load i64, ptr %i.ep, align 8, !alias.scope !39356, !noalias !39363, !noundef !27 ; 4 uses
  %.not28.i88 = icmp ugt i64 %.val45.i87, %i.ek
  br i1 %.not28.i88, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95", label %bb.ae

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.06.1.i81 = phi i64 [ %spec.select.i80, %bb.ab ], [ %i.eq, %bb.ac ] ; 6 uses
  %.not26.i82 = icmp ugt i64 %.sroa.06.1.i81, %i.ek
  %i.eq = shl nuw nsw i64 %.sroa.06.1.i81, 1
  br i1 %.not26.i82, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83, label %bb.ac

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83: ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39365
  %i.er = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39365 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.noexc.i113, label %bb.ad

.noexc.i113:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39370
  unreachable

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  br i1 %i.en, label %.thread14.i112, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84"

.thread14.i112:                                   ; preds = %bb.ad
  store ptr %i.er, ptr %i.eh, align 8, !alias.scope !39356, !noalias !39363
  store i64 %.sroa.06.1.i81, ptr %i.em, align 8, !alias.scope !39356, !noalias !39363
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84": ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr nonnull readonly align 1 %.val60.i77, i64 %.val61.i78, i1 false), !alias.scope !39371, !noalias !39375
  store ptr %i.er, ptr %i.eh, align 8, !alias.scope !39356, !noalias !39363
  store i64 %.sroa.06.1.i81, ptr %i.em, align 8, !alias.scope !39356, !noalias !39363
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i77) #38, !noalias !39370
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

bb.ae:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.et = icmp eq i64 %.val45.i87, 0              ; 2 uses
  %spec.select15.i89 = select i1 %i.et, i64 %i.el, i64 %.val45.i87
  br label %bb.ag

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94", %bb.aj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %i.el, ptr %i.eu, align 8, !alias.scope !39356, !noalias !39363
  store i64 %.sroa.0.0.i.i76, ptr %i.ej, align 8, !alias.scope !39361, !noalias !39377
  %i.ev = mul nuw nsw i64 %.sroa.0.0.i.i76, 2832  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39378
  %i.ew = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ev, i64 noundef range(i64 1, 9) 8) #38, !noalias !39378 ; 7 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

bb.af:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ev, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39386
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  %.not16.i96 = icmp eq i64 %i.ek, 0
  br i1 %.not16.i96, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.preheader

.lr.ph.i.i.i.i97.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.ey = add nsw i64 %.sroa.0.0.i.i76, -1        ; 2 uses
  %i.ez = add nsw i64 %.sroa.0.0.i.i76, -2
  %xtraiter569 = and i64 %i.ey, 7                 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 7
  br i1 %i.fa, label %.lr.ph.i.i.i.i97.epil.preheader, label %.lr.ph.i.i.i.i97.preheader.new

.lr.ph.i.i.i.i97.preheader.new:                   ; preds = %.lr.ph.i.i.i.i97.preheader
  %unroll_iter574 = and i64 %i.ey, -8
  br label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.preheader.new
  %.sroa.0.08.i.i.i.i98 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i97.preheader.new ], [ %i.fi, %.lr.ph.i.i.i.i97 ] ; 17 uses
  %niter575 = phi i64 [ 0, %.lr.ph.i.i.i.i97.preheader.new ], [ %niter575.next.7, %.lr.ph.i.i.i.i97 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100, align 8, !noalias !39387
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fb, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1, align 8, !noalias !39387
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fc, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2, align 8, !noalias !39387
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fd, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3, align 8, !noalias !39387
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fe, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4, align 8, !noalias !39387
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ff, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5, align 8, !noalias !39387
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fg, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6, align 8, !noalias !39387
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fh, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7, align 8, !noalias !39387
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22656 ; 3 uses
  %niter575.next.7 = add i64 %niter575, 8         ; 2 uses
  %niter575.ncmp.7 = icmp eq i64 %niter575.next.7, %unroll_iter574
  br i1 %niter575.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i97

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i97
  %lcmp.mod571.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod571.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil.preheader

.lr.ph.i.i.i.i97.epil.preheader:                  ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.preheader
  %.sroa.0.08.i.i.i.i98.epil.init = phi ptr [ %i.ew, %.lr.ph.i.i.i.i97.preheader ], [ %i.fi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod573 = icmp ne i64 %xtraiter569, 0
  tail call void @llvm.assume(i1 %lcmp.mod573)
  br label %.lr.ph.i.i.i.i97.epil

.lr.ph.i.i.i.i97.epil:                            ; preds = %.lr.ph.i.i.i.i97.epil, %.lr.ph.i.i.i.i97.epil.preheader
  %.sroa.0.08.i.i.i.i98.epil = phi ptr [ %i.fj, %.lr.ph.i.i.i.i97.epil ], [ %.sroa.0.08.i.i.i.i98.epil.init, %.lr.ph.i.i.i.i97.epil.preheader ] ; 3 uses
  %epil.iter570 = phi i64 [ %epil.iter570.next, %.lr.ph.i.i.i.i97.epil ], [ 0, %.lr.ph.i.i.i.i97.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98.epil, i8 0, i64 2824, i1 false), !noalias !39370
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil, align 8, !noalias !39387
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2832 ; 2 uses
  %epil.iter570.next = add i64 %epil.iter570, 1   ; 2 uses
  %epil.iter570.cmp.not = icmp eq i64 %epil.iter570.next, %xtraiter569
  br i1 %epil.iter570.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil, !llvm.loop !39390

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i102 = phi ptr [ %i.ew, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.fi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ], [ %i.fj, %.lr.ph.i.i.i.i97.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i102, i64 2824
end_hunk_14
