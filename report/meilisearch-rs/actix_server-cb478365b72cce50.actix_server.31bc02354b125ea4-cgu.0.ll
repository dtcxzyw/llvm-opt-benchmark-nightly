Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a
  %i.abk = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12
  %i.abl = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abk, i8 noundef %.sroa.06.028.i.i.i)
          to label %.noexc3.i unwind label %bb.jb, !noalias !1377

.noexc3.i:                                        ; preds = %.thread.i.i.i175
  br i1 %i.abl, label %bb.ik, label %.thread29.i.i.i

bb.ik:                                            ; preds = %.noexc3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1376
  %i.abm = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1376
  store ptr @223, ptr %i.x, align 8, !noalias !1376
  %i.abo = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.abo, align 8, !noalias !1376
  %i.abp = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.abp, align 8, !noalias !1376
  %i.abq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abq, align 8, !noalias !1376
  %i.abr = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.abr, align 8, !noalias !1376
  store ptr %i.x, ptr %i.y, align 8, !noalias !1376
  %i.abs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @51, ptr %i.abs, align 8, !noalias !1376
  store i64 1, ptr %i.z, align 8, !noalias !1376
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.abn, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1376
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc4.i unwind label %bb.jb, !noalias !1377

.noexc4.i:                                        ; preds = %bb.ik
  %i.abt = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !1378
  %i.abu = icmp eq i8 %i.abt, 0
  br i1 %i.abu, label %bb.il, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.il:                                            ; preds = %.noexc4.i
  %i.abv = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !1378 ; 2 uses
  %i.abw = icmp ult i64 %i.abv, 6
  call void @llvm.assume(i1 %i.abw)
  %i.abx = icmp samesign ugt i64 %i.abv, 4
  br i1 %i.abx, label %bb.im, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.im:                                            ; preds = %bb.il
  %i.aby = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1378, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8, !noalias !1376, !nonnull !12, !align !14, !noundef !12
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 40
  %i.acc = load i64, ptr %i.acb, align 8, !noalias !1376, !noundef !12
  store i64 5, ptr %i.q, align 8, !noalias !1378
  %.sroa.52.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aca, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !noalias !1378
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.acc, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1378
  %i.acd = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc5.i unwind label %bb.jb, !noalias !1377 ; 2 uses

.noexc5.i:                                        ; preds = %bb.im
  %i.ace = extractvalue { ptr, ptr } %i.acd, 0    ; 2 uses
  %i.acf = extractvalue { ptr, ptr } %i.acd, 1    ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load ptr, ptr %i.acg, align 8, !invariant.load !12, !noalias !1376, !nonnull !12
  %i.aci = invoke noundef zeroext i1 %i.ach(ptr noundef align 1 %i.ace, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc6.i unwind label %bb.jb, !noalias !1377, !inline_history !1093

.noexc6.i:                                        ; preds = %.noexc5.i
  br i1 %i.aci, label %bb.in, label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

bb.in:                                            ; preds = %.noexc6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1378
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aby, ptr noundef nonnull align 1 %i.ace, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc7.i unwind label %bb.jb, !noalias !1377

.noexc7.i:                                        ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1378
  br label %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"

"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i": ; preds = %.noexc7.i, %.noexc6.i, %bb.il, %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1376
  br label %bb.ir

.thread29.i.i.i:                                  ; preds = %.noexc3.i, %.noexc.i176, %bb.ii, %bb.ih
  %i.acj = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !1376
  %i.ack = icmp eq i8 %i.acj, 0
  br i1 %i.ack, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %.thread29.i.i.i
  %i.acl = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !1376 ; 2 uses
  %i.acm = icmp ult i64 %i.acl, 6
  call void @llvm.assume(i1 %i.acm)
  %i.acn = icmp samesign ugt i64 %i.acl, 4
  br i1 %i.acn, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %bb.io
  %i.aco = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acq = load ptr, ptr %i.acp, align 8, !noalias !1376, !nonnull !12, !align !14, !noundef !12
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 40
  %i.acs = load i64, ptr %i.acr, align 8, !noalias !1376, !noundef !12
  store i64 5, ptr %i.w, align 8, !noalias !1376
  %.sroa.520.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.acq, ptr %.sroa.520.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.7.0..sroa_idx.i.i.i174 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.acs, ptr %.sroa.7.0..sroa_idx.i.i.i174, align 8, !noalias !1376
  %i.act = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc8.i unwind label %bb.jb, !noalias !1377 ; 2 uses

.noexc8.i:                                        ; preds = %bb.ip
  %i.acu = extractvalue { ptr, ptr } %i.act, 0    ; 2 uses
  %i.acv = extractvalue { ptr, ptr } %i.act, 1    ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !invariant.load !12, !noalias !1376, !nonnull !12
  %i.acy = invoke noundef zeroext i1 %i.acx(ptr noundef align 1 %i.acu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc9.i unwind label %bb.jb, !noalias !1377, !inline_history !1093

.noexc9.i:                                        ; preds = %.noexc8.i
  br i1 %i.acy, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1376
  %i.acz = load ptr, ptr @_ZN12actix_server7signals9OsSignals3new10__CALLSITE17hec8d6af88b9f3a0cE, align 8, !noalias !1376, !nonnull !12, !align !13, !noundef !12
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1376
  store ptr @223, ptr %i.t, align 8, !noalias !1376
  %i.adb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.adb, align 8, !noalias !1376
  %i.adc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.adc, align 8, !noalias !1376
  %i.add = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.add, align 8, !noalias !1376
  %i.ade = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.ade, align 8, !noalias !1376
  store ptr %i.t, ptr %i.u, align 8, !noalias !1376
  %i.adf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @51, ptr %i.adf, align 8, !noalias !1376
  store i64 1, ptr %i.v, align 8, !noalias !1376
  %.sroa.416.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.416.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !1376
  %i.adg = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ada, ptr %i.adg, align 8, !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !1376
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aco, ptr noundef nonnull align 1 %i.acu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.acv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc10.i unwind label %bb.jb, !noalias !1377

.noexc10.i:                                       ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1376
  br label %bb.ir

bb.ir:                                            ; preds = %.noexc10.i, %.noexc9.i, %bb.io, %.thread29.i.i.i, %"_ZN12actix_server7signals9OsSignals3new28_$u7b$$u7b$closure$u7d$$u7d$17hd4e2a1d5c30bb0d0E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1376
  store i32 2, ptr %i.s, align 4, !noalias !1376
  %i.adh = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 1, ptr %i.adh, align 4, !noalias !1376
  %i.adi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 15, ptr %i.adi, align 4, !noalias !1376
  %i.adj = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 2, ptr %i.adj, align 4, !noalias !1376
  %i.adk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 3, ptr %i.adk, align 4, !noalias !1376
  %i.adl = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 3, ptr %i.adl, align 4, !noalias !1376
  %i.adm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1379
  store ptr %i.s, ptr %i.o, align 16, !noalias !1380
  %i.adn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.adm, ptr %i.adn, align 8, !noalias !1380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1380
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef align 8 dereferenceable(16) %i.o)
          to label %.noexc11.i unwind label %bb.jb, !noalias !1377

.noexc11.i:                                       ; preds = %bb.ir
  %i.ado = load i8, ptr %i.m, align 8, !range !29, !noalias !1380, !noundef !12
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ado, 4
  br i1 %.not.i.i.i.i.i.i.i, label %bb.is, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"

bb.is:                                            ; preds = %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1380
  br label %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i

bb.it:                                            ; preds = %bb.iu
  %i.adp = landingpad { ptr, i32 }
          cleanup
  %i.adq = extractelement <2 x ptr> %i.ads, i64 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adq) ]
  %i.adr = extractelement <2 x ptr> %i.ads, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adr) ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr nonnull %i.adq, ptr nonnull %i.adr) #36
          to label %.body.i unwind label %bb.ja, !noalias !1380

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc11.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !1380
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ads = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !1380 ; 3 uses
  %i.adt = load <2 x ptr>, ptr %i.o, align 16, !noalias !1380
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1381
  %i.adu = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #24, !noalias !1381 ; 6 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #35
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.it, !noalias !1380

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.iu
  unreachable

bb.iv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.adu, align 8, !noalias !1380
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store <2 x ptr> %i.ads, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1380
  store i64 4, ptr %i.n, align 8, !noalias !1380
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.adu, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1380
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1380
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1384
  store <2 x ptr> %i.adt, ptr %i.l, align 16, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1385
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %.noexc8.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1380

.noexc8.i.i.i.i.i.i.i:                            ; preds = %bb.iv
  %i.adw = load i8, ptr %i.k, align 8, !range !29, !noalias !1385, !noundef !12
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.adw, 4
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.loopexit13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc8.i.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.iw

bb.iw:                                            ; preds = %.noexc9.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.adx = phi ptr [ %i.adu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aed, %.noexc9.i.i.i.i.i.i.i ]
  %i.ady = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aef, %.noexc9.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !1385
  %i.adz = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i172, align 8, !noalias !1385 ; 3 uses
  %i.aea = icmp samesign ult i64 %i.ady, 384307168202282326
  call void @llvm.assume(i1 %i.aea)
  %i.aeb = load i64, ptr %i.n, align 8, !range !24, !alias.scope !1386, !noalias !1380, !noundef !12
  %i.aec = icmp eq i64 %i.ady, %i.aeb
  br i1 %i.aec, label %bb.iy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.iw
  %i.aed = phi ptr [ %.pre.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.adx, %bb.iw ] ; 2 uses
  %i.aee = getelementptr inbounds nuw [24 x i8], ptr %i.aed, i64 %i.ady ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.aee, align 8, !noalias !1385
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store <2 x ptr> %i.adz, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1385
  %i.aef = add nuw nsw i64 %i.ady, 1              ; 3 uses
  store i64 %i.aef, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1386, !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1385
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %.noexc9.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1380

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"
  %i.aeg = load i8, ptr %i.k, align 8, !range !29, !noalias !1385, !noundef !12
  %.not.i.i.i.i.i.i.i.i.i173 = icmp eq i8 %i.aeg, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i173, label %.loopexit13.i.i.i.i.loopexit.i.i.i, label %bb.iw

bb.ix:                                            ; preds = %bb.iy
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  %i.aei = extractelement <2 x ptr> %i.adz, i64 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aei) ]
  %i.aej = extractelement <2 x ptr> %i.adz, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aej) ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr nonnull %i.aei, ptr nonnull %i.aej) #36
          to label %.body.i.i.i.i.i.i.i unwind label %bb.iz, !noalias !1385

bb.iy:                                            ; preds = %bb.iw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ady, i64 noundef range(i64 1, 0) 1, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.ix

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.iy
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1386, !noalias !1380
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"

bb.iz:                                            ; preds = %bb.ix
  %i.aek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1385
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i", %bb.iv
  %lpad.loopexit.split-lp485 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ix
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aeh, %bb.ix ], [ %lpad.loopexit.split-lp485, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h88bbdf7578b1d887E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #36
          to label %.body.i unwind label %bb.ja, !noalias !1380

.loopexit13.i.i.i.i.loopexit.i.i.i:               ; preds = %.noexc9.i.i.i.i.i.i.i
  %.sroa.0.0.copyload21.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !1376
  %.sroa.3.0.copyload23.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1376
  br label %.loopexit13.i.i.i.i.i.i.i

.loopexit13.i.i.i.i.i.i.i:                        ; preds = %.loopexit13.i.i.i.i.loopexit.i.i.i, %.noexc8.i.i.i.i.i.i.i
  %.sroa.4.0.copyload26.i.i.i = phi i64 [ %i.aef, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ 1, %.noexc8.i.i.i.i.i.i.i ]
  %.sroa.3.0.copyload23.i.i.i = phi ptr [ %.sroa.3.0.copyload23.pre.i.i.i, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ %i.adu, %.noexc8.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload21.i.i.i = phi i64 [ %.sroa.0.0.copyload21.pre.i.i.i, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ 4, %.noexc8.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1384
  br label %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i

bb.ja:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.it
  %i.ael = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1380
  unreachable

_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i: ; preds = %.loopexit13.i.i.i.i.i.i.i, %bb.is
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.is ], [ %.sroa.4.0.copyload26.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  %.sroa.3.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.is ], [ %.sroa.3.0.copyload23.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.is ], [ %.sroa.0.0.copyload21.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1375
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"

bb.jb:                                            ; preds = %bb.ir, %bb.iq, %.noexc8.i, %bb.ip, %bb.in, %.noexc5.i, %bb.im, %bb.ik, %.thread.i.i.i175, %bb.ij
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.jb, %.body.i.i.i.i.i.i.i, %bb.it
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aem, %bb.jb ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.adp, %bb.it ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$actix_server..signals..StopSignal$GT$$GT$17h59f54f31eb622254E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.cd) #36
          to label %.body177 unwind label %bb.jc, !noalias !1387

bb.jc:                                            ; preds = %.body.i
  %i.aen = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1377
  unreachable

.body177:                                         ; preds = %.body.i
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h4e8f740e5a31ac37E"(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #36
          to label %bb.jl unwind label %bb.jk

"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit": ; preds = %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i, %bb.if, %bb.ig
  %.sroa.7.0222 = phi i64 [ %.sroa.4.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ %.sroa.7.0.copyload218.cast, %bb.if ], [ undef, %bb.ig ]
  %.sroa.6216.0 = phi ptr [ %.sroa.3.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ %i.aba, %bb.if ], [ undef, %bb.ig ]
  %.sroa.0214.0 = phi i64 [ %.sroa.0.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ -9223372036854775808, %bb.if ], [ -9223372036854775807, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aep = load ptr, ptr %i.aeo, align 8, !nonnull !12, !noundef !12
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.046, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.046.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.046.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.aeq, i64 32, i1 false)
  %.sroa.046.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.046.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aes = load i8, ptr %i.aer, align 4, !range !31, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.046, i64 80, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aav, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.aes, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.754.0..sroa_idx, align 1
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0214.0, ptr %.sroa.956.0..sroa_idx, align 8
  %.sroa.956.sroa.4.0..sroa.956.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.6216.0, ptr %.sroa.956.sroa.4.0..sroa.956.0..sroa_idx.sroa_idx, align 8
  %.sroa.956.sroa.5.0..sroa.956.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7.0222, ptr %.sroa.956.sroa.5.0..sroa.956.0..sroa_idx.sroa_idx, align 8
  %.sroa.1057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.aep, ptr %.sroa.1057.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %.val.i = load ptr, ptr %i.gc, align 8, !alias.scope !1388, !nonnull !12, !noundef !12 ; 2 uses
  %.val1.i = load i64, ptr %i.ge, align 8, !alias.scope !1388, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.aet = icmp eq i64 %.val1.i, 0
  br i1 %i.aet, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit", %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.aev, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit" ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.aev = add nuw i64 %.sroa.0.07.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %.val.i.i.i.i = load i64, ptr %i.aeu, align 8, !alias.scope !1391, !noalias !1388 ; 2 uses
  %i.aew = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.aew, label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i", label %bb.jd

bb.jd:                                            ; preds = %.lr.ph.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.aex, align 8, !alias.scope !1391, !noalias !1388, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1392
  br label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i": ; preds = %bb.jd, %.lr.ph.i.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 36
  %.val3.i.i.i.i179 = load i32, ptr %i.aey, align 4, !alias.scope !1391, !noalias !1388
  %i.aez = call noundef i32 @close(i32 noundef %.val3.i.i.i.i179) #24, !noalias !1392 ; 0 uses
  %i.afa = icmp eq i64 %i.aev, %.val1.i
  br i1 %i.afa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i", %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"
  %.val2.i = load i64, ptr %i.gb, align 8, !range !24, !alias.scope !1388, !noundef !12 ; 2 uses
  %i.afb = icmp eq i64 %.val2.i, 0
  br i1 %i.afb, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit", label %bb.je

bb.je:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i"
  %i.afc = mul nuw i64 %.val2.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.afc, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1388
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit": ; preds = %bb.je, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %.val.i.i180 = load ptr, ptr %i.ku, align 8, !alias.scope !1395, !nonnull !12, !noundef !12 ; 6 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 456
  %i.afe = atomicrmw add ptr %i.afd, i64 -1 acq_rel, align 8, !noalias !1395
  %i.aff = icmp eq i64 %i.afe, 1
  br i1 %i.aff, label %bb.jf, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i"

bb.jf:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 128
  %i.afh = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 136
  %i.afi = atomicrmw add ptr %i.afh, i64 1 acquire, align 8, !noalias !1395
  %i.afj = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he1ab7aef3f46240bE"(ptr noundef nonnull align 8 %i.afg, i64 noundef %i.afi)
          to label %.noexc.i.i181 unwind label %bb.jg, !noalias !1395

.noexc.i.i181:                                    ; preds = %bb.jf
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 784
  %i.afl = atomicrmw or ptr %i.afk, i64 8589934592 release, align 8, !noalias !1395 ; 0 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.afm)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i" unwind label %bb.jg, !noalias !1395

bb.jg:                                            ; preds = %.noexc.i.i181, %bb.jf
  %i.afn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afo = atomicrmw add ptr %.val.i.i180, i64 -1 release, align 8, !noalias !1396
  %i.afp = icmp eq i64 %i.afo, 1
  br i1 %i.afp, label %bb.jh, label %common.resume

bb.jh:                                            ; preds = %bb.jg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ku)
          to label %common.resume unwind label %bb.jj

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i": ; preds = %.noexc.i.i181, %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"
  %i.afq = atomicrmw add ptr %.val.i.i180, i64 -1 release, align 8, !noalias !1397
  %i.afr = icmp eq i64 %i.afq, 1
  br i1 %i.afr, label %bb.ji, label %"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit"

bb.ji:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ku)
  br label %"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit"

bb.jj:                                            ; preds = %bb.jh
  %i.afs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1395
  unreachable
end_hunk_0
begin_hunk_1_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E":bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2095
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2093, !nonnull !12, !noundef !12
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.ce ; 4 uses
  store i64 %i.cc, ptr %i.cl, align 8, !noalias !2093
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.sroa.05.0.copyload, ptr %.sroa.5151.0..sroa_idx, align 8, !noalias !2093
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %.sroa.2.0.copyload, ptr %.sroa.6152.0..sroa_idx, align 8, !noalias !2093
  %.sroa.8153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.sroa.4.0.copyload, ptr %.sroa.8153.0..sroa_idx, align 8, !noalias !2093
  %i.cm = add i64 %i.ce, 1
  store i64 %i.cm, ptr %i.cd, align 8, !alias.scope !2093
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2096
  %.phi.trans.insert228 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre229 = load ptr, ptr %.phi.trans.insert228, align 8, !alias.scope !2096
  br label %bb.c

bb.r:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.co, ptr %i.cn, align 8, !alias.scope !2096
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2097, !noundef !12 ; 2 uses
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !2097
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.cq, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %i.bb, align 8, !nonnull !12, !align !14, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !12, !align !13, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !12, !nonnull !12
  %i.cy = invoke { ptr, ptr } %i.cx(ptr noundef nonnull align 1 %i.ct)
          to label %bb.cv unwind label %bb.el     ; 2 uses

bb.s:                                             ; preds = %bb.c
  %.val86 = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.cz = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val87 = load ptr, ptr %i.cz, align 8
  %i.da = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E"(i64 %.val86, ptr %.val87, ptr noundef null)
          to label %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit" unwind label %bb.el ; 2 uses

"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit": ; preds = %bb.s
  %i.db = extractvalue { i64, ptr } %i.da, 0
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.t, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56", !prof !18

bb.t:                                             ; preds = %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit"
  %i.dd = extractvalue { i64, ptr } %i.da, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2098
  store ptr %i.dd, ptr %i.p, align 8, !noalias !2098
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #35
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.p, align 8, !alias.scope !2099, !noundef !12
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.body91, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
          to label %.body91 unwind label %bb.x

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56": ; preds = %"_ZN3std4sync4mpsc19SyncSender$LT$T$GT$4send17ha14352f29f055513E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  store i8 0, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  invoke fastcc void @_ZN12actix_server6worker20wrap_worker_services17h1c79521d68341434E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56"
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.body91

bb.z:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit56"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 182
  store i8 0, ptr %i.dl, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !12, !noundef !12 ; 5 uses
  store ptr %i.dn, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 0, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !12, !noundef !12 ; 5 uses
  store ptr %i.dq, ptr %i.u, align 8
  %i.dr = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5102d0efca7e040bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %.body93, %bb.ab
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %.body93 ], [ %i.ds, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.u) #36
          to label %bb.ct unwind label %bb.cr

bb.ab:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.dt = extractvalue { ptr, i64 } %i.dr, 0      ; 7 uses
  %i.du = extractvalue { ptr, i64 } %i.dr, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !12 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 0, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 0, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 1, ptr %i.o, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ee = load <2 x ptr>, ptr %i.dy, align 8
  store <2 x ptr> %i.ee, ptr %i.ed, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.eb, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2100
  %i.ef = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2100 ; 9 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ad, label %bb.ag, !prof !18

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..rc..RcInner$LT$$LP$actix_server..waker_queue..WakerQueue$C$actix_server..worker..Counter$RP$$GT$$GT$17h0b14940ec63f7c82E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o) #36
          to label %.body93 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.ef, ptr %i.t, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.dw, ptr %i.ej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 0, ptr %i.ek, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  %i.em = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hce03ab3e3e25f41fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eo = load i64, ptr %i.ef, align 8, !noalias !2101, !noundef !12
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr %i.ef, align 8, !noalias !2101
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.cs, label %.body93

bb.ai:                                            ; preds = %bb.ag
  %i.er = extractvalue { ptr, i64 } %i.em, 0      ; 5 uses
  %i.es = extractvalue { ptr, i64 } %i.em, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !noundef !12 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ew = load i32, ptr %i.ev, align 8, !range !43, !noundef !12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2102
  store i64 1, ptr %i.n, align 8
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.eu, ptr %.sroa.8182.0..sroa_idx, align 8
  %.sroa.9185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 %i.ew, ptr %.sroa.9185.0..sroa_idx, align 8
  %.sroa.10190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.dn, ptr %.sroa.10190.0..sroa_idx, align 8
  %.sroa.11193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.dq, ptr %.sroa.11193.0..sroa_idx, align 8
  %.sroa.12196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.ef, ptr %.sroa.12196.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i64 %i.dw, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %i.dt, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 %i.du, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store ptr %i.er, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.es, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.ex = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 17 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 8, !range !41, !noalias !2104, !noundef !12
  %.sink40.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink40.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink40.i.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink40.i.sroa.gep4.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sink40.i.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink40.i.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink40.i.sroa.gep9.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink40.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  switch i8 %i.ez, label %default.unreachable248 [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %.thread11.i.i.i
  ], !prof !44

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.ex, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc.i.i.i:                                     ; preds = %bb.aj
  store i8 1, ptr %i.ey, align 8, !noalias !2104
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc.i.i.i, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  %i.fa = load i64, ptr %i.ex, align 8, !noalias !2106, !noundef !12 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 9223372036854775807
  br i1 %i.fb, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #35
          to label %.noexc21.i.i.i unwind label %.thread.i.i.i.thread, !noalias !2102

.noexc21.i.i.i:                                   ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.fc = add nuw nsw i64 %i.fa, 1
  store i64 %i.fc, ptr %i.ex, align 8, !noalias !2106
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !range !39, !noalias !2106, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.fe, 2
  br i1 %.not.i.i.i.i.i, label %bb.by, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2107)
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !2108, !noalias !2106, !nonnull !12, !noundef !12 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 560
  %i.fj = load i64, ptr %i.fi, align 16, !noalias !2109, !noundef !12
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !range !41, !noalias !2110, !noundef !12
  switch i8 %i.fm, label %default.unreachable248 [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %bb.au
  ], !prof !44

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.fk, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc.i.i.i.i.i:                                 ; preds = %bb.aq
  store i8 1, ptr %i.fl, align 8, !noalias !2110
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc.i.i.i.i.i, %bb.ap
  %i.fn = load ptr, ptr %i.fk, align 8, !noalias !2110, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fn, align 8, !noalias !2109, !noundef !12 ; 2 uses
  %i.fo = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.fo)
  %i.fp = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8, !noalias !2109
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.at, label %bb.bs, !prof !18

bb.at:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ap
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc13.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc13.i.i.i.i.i:                               ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.ao
  %i.fr = invoke noundef zeroext i1 @_ZN5tokio7runtime9scheduler6Handle32can_spawn_local_on_local_runtime17h6025809b54a3bff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fd)
          to label %.noexc14.i.i.i.i.i unwind label %.thread.i.i.i.thread225, !noalias !2106

.noexc14.i.i.i.i.i:                               ; preds = %bb.av
  br i1 %i.fr, label %bb.aw, label %bb.ce

bb.aw:                                            ; preds = %.noexc14.i.i.i.i.i
  store i64 4, ptr %i.n, align 8, !alias.scope !2111, !noalias !2102
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.aw, %.preheader.i.i.i.i.i
  %i.fs = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !2110 ; 3 uses
  %.not20.i.i.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not20.i.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ft = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8, !noalias !2112
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bj, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2113
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 528 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 16, !noalias !2114, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = atomicrmw add ptr %i.fx, i64 1 monotonic, align 8, !noalias !2114
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = load <2 x ptr>, ptr %i.fw, align 16, !noalias !2114
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %i.gb = phi <2 x ptr> [ %i.ga, %bb.ba ], [ <ptr null, ptr undef>, %bb.ay ]
  %.sroa.8182.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.eu, ptr %.sroa.8182.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 32
  %.sroa.9185.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 %i.ew, ptr %.sroa.9185.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.10190.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.dn, ptr %.sroa.10190.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 16
  %.sroa.11193.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr %i.dq, ptr %.sroa.11193.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.12196.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.ef, ptr %.sroa.12196.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 128
  %.sroa.13.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %i.dw, ptr %.sroa.13.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.14.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr %i.dt, ptr %.sroa.14.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 16
  %.sroa.15.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store i64 %i.du, ptr %.sroa.15.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  %.sroa.16.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr %i.er, ptr %.sroa.16.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 32
  %.sroa.17.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  store i64 %i.es, ptr %.sroa.17.8..sroa.412.i.i.i.i.i.sroa.4.0..sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.sroa_idx, align 8
  store i64 204, ptr %i.e, align 128, !noalias !2113
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2113
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @345, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !2113
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2113
end_hunk_1
begin_hunk_2_@"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E":bb.a
bb.fh:                                            ; preds = %bb.fi, %.body134
  %.val = load i64, ptr %0, align 8, !range !39, !noundef !12
  %i.oa = getelementptr i8, ptr %0, i64 8
  %.val57 = load ptr, ptr %i.oa, align 8
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 %.val, ptr %.val57) #36
          to label %bb.fj unwind label %bb.cr

bb.fi:                                            ; preds = %.body134
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.ob) #36
          to label %bb.fh unwind label %bb.cr

bb.fj:                                            ; preds = %bb.fh
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.od = load i8, ptr %i.oc, align 2, !range !31, !noundef !12
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fl, %bb.fj
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.og = load i8, ptr %i.of, align 1, !range !31, !noundef !12
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.oi) #36
          to label %bb.fk unwind label %bb.cr

bb.fm:                                            ; preds = %bb.fn, %bb.fk
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ok = load i8, ptr %i.oj, align 4, !range !31, !noundef !12
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.fo, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"

bb.fn:                                            ; preds = %bb.fk
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.om) #36
          to label %bb.fm unwind label %bb.cr

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147": ; preds = %bb.fo, %bb.fp, %bb.fm
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.oo = load i8, ptr %i.on, align 1, !range !31, !noundef !12
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.fq, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.fo:                                            ; preds = %bb.fm
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !2173, !nonnull !12, !noundef !12
  %i.os = atomicrmw add ptr %i.or, i64 -1 release, align 8, !noalias !2173
  %i.ot = icmp eq i64 %i.os, 1
  br i1 %i.ot, label %bb.fp, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"

bb.fp:                                            ; preds = %bb.fo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.oq)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147" unwind label %bb.cr

bb.fq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit147"
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.ov = load ptr, ptr %i.ou, align 8, !alias.scope !2177, !nonnull !12, !noundef !12
  %i.ow = atomicrmw add ptr %i.ov, i64 -1 release, align 8, !noalias !2177
  %i.ox = icmp eq i64 %i.ow, 1
  br i1 %i.ox, label %bb.fr, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ou)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !16, !noundef !12
  switch i8 %i.i, label %default.unreachable39 [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

default.unreachable39:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i32 16843009, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.o, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.p = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5102d0efca7e040bE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.t = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.u = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i64, ptr %i.v, align 8, !noundef !12 ; 2 uses
  store i8 0, ptr %i.s, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.r, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i64, ptr %i.y, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load <2 x ptr>, ptr %i.x, align 8
  store <2 x ptr> %i.ac, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2198
  %i.ad = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2198 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %bb.h, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #35
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$alloc..rc..RcInner$LT$$LP$actix_server..waker_queue..WakerQueue$C$actix_server..worker..Counter$RP$$GT$$GT$17h0b14940ec63f7c82E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #36
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.w, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.j, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %i.aj = invoke fastcc { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hce03ab3e3e25f41fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = load i64, ptr %i.ad, align 8, !noalias !2199, !noundef !12
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ad, align 8, !noalias !2199
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %.body

bb.j:                                             ; preds = %bb.h
  %i.ao = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load i32, ptr %i.as, align 8, !range !43, !noundef !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 1, ptr %i.au, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ar, ptr %.sroa.723.0..sroa_idx, align 8
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.at, ptr %.sroa.824.0..sroa_idx, align 8
  %.sroa.1026.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.m, ptr %.sroa.1026.0..sroa_idx, align 8
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.o, ptr %.sroa.1127.0..sroa_idx, align 8
  %.sroa.1228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ad, ptr %.sroa.1228.0..sroa_idx, align 8
  %.sroa.1329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %.sroa.1329.0..sroa_idx, align 8
  %.sroa.1430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.t, ptr %.sroa.1430.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.u, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ao, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.ap, ptr %.sroa.17.0..sroa_idx, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.ab, %bb.l, %.body, %bb.ah, %bb.af, %bb.s, %bb.n, %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.l:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h87ece3ea74edb03aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d)
          to label %.body unwind label %bb.k

.body:                                            ; preds = %bb.i, %bb.l, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ak, %bb.i ], [ %i.ak, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..worker..WorkerService$u5d$$GT$$GT$17h717b9279385f994aE"(ptr %i.t, i64 %i.u) #36
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %.body, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.q, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.f) #36
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.g) #36
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #35
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #35
  unreachable

bb.r:                                             ; preds = %bb.a, %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ax = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..worker..ServerWorker$GT$17he7f6de17b97f4087E"(ptr noalias noundef align 8 dereferenceable(120) %i.aw) #36
          to label %bb.z unwind label %bb.k

bb.t:                                             ; preds = %bb.r
  br i1 %i.ax, label %common.ret, label %bb.u

common.ret:                                       ; preds = %bb.t, %bb.w
  %storemerge = phi i8 [ 1, %bb.w ], [ 3, %bb.t ]
  store i8 %storemerge, ptr %i.h, align 8
  ret i1 %i.ax

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_server..worker..ServerWorker$GT$17he7f6de17b97f4087E"(ptr noalias noundef align 8 dereferenceable(120) %i.aw)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !12
  %i.bc = invoke fastcc noundef zeroext i1 @"_ZN5tokio4sync7oneshot15Sender$LT$T$GT$4send17h6ead7fb9b088e416E"(ptr noundef %i.bb)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  br i1 %i.bc, label %bb.x, label %common.ret, !prof !18

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @316, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #35
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.v
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.s, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %.pn.pn.pn, %bb.o ], [ %i.ay, %bb.s ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bf = load i8, ptr %i.be, align 4, !range !31, !noundef !12
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.aa, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit": ; preds = %bb.aa, %bb.ab, %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.bi = load i8, ptr %i.bh, align 1, !range !31, !noundef !12
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ac, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !2203, !nonnull !12, !noundef !12
  %i.bm = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !2203
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ab, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit" unwind label %bb.k

"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit": ; preds = %bb.ad, %bb.ac, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bp = load i8, ptr %i.bo, align 2, !range !31, !noundef !12
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.af, label %bb.ae

bb.ac:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2207, !nonnull !12, !noundef !12
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !2207
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.ad, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.br)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.ae:                                            ; preds = %bb.af, %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.bw = load i8, ptr %i.bv, align 1, !range !31, !noundef !12
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %i.by) #36
          to label %bb.ae unwind label %bb.k

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn14

bb.ah:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$tokio..sync..oneshot..Sender$LT$$LP$$RP$$GT$$GT$17h48203d401bf13c9bE"(ptr noalias noundef align 8 dereferenceable(8) %i.bz) #36
          to label %bb.ag unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN12actix_server6worker18WorkerHandleServer4stop17h19f8f63a14c3ce76E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i8 2, ptr %.sroa.8.0..sroa_idx.i, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2234
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2234 ; 14 uses
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E":bb.a

bb.k:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.z)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.j
  %.pn4 = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %.pn2, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.aa) #36
          to label %bb.p unwind label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.ac)
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %bb.r, %bb.m
  %.pn6 = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %.pn4, %bb.m ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7160)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !7161, !nonnull !12, !noundef !12
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !7161
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit" unwind label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.s:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7164)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !7165, !nonnull !12, !noundef !12
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !7165
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.t, label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit16"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ai)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit16" unwind label %bb.v

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit": ; preds = %bb.p, %bb.q, %bb.v
  %.pn8 = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn6, %bb.q ], [ %.pn6, %bb.p ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7168)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7169, !nonnull !12, !noundef !12
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !7169
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.u:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.am)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit"

bb.v:                                             ; preds = %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"

"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit16": ; preds = %bb.s, %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7172)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !7173, !nonnull !12, !noundef !12
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !7173
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.w, label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit17"

bb.w:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit16"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ar)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit17"

"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit17": ; preds = %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit16", %bb.w
  ret void

bb.x:                                             ; preds = %bb.q, %.body, %bb.m, %bb.j, %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr50drop_in_place$LT$actix_server..worker..Counter$GT$17h661becc8fd2d99fcE.exit": ; preds = %bb.u, %"_ZN4core3ptr58drop_in_place$LT$actix_server..waker_queue..WakerQueue$GT$17h2a1a8b88987dda31E.exit"
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$$u5b$actix_server..worker..WorkerService$u5d$$GT$$GT$17h717b9279385f994aE"(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$$u5b$actix_server..worker..WorkerService$u5d$$GT$17h684e5b4f7c19f1b9E"(ptr noalias noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = icmp eq i64 %.8.val, 0
  br i1 %i.b, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.b
  %i.c = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef 8) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.8.val, 0
  br i1 %i.d, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.c
  %i.e = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.e, i64 noundef 8) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit5": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"
  ret void

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8dc0276cd6202aaE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i", %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17haceb59e96844710cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !12 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.p = icmp ult i64 %i.o, -9223372036854775807
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.o) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit5": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr %.8.val, ptr nofree readonly captures(none) %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.a = load ptr, ptr %.16.val, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.a(ptr noundef nonnull %.8.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.f = icmp ult i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %"_ZN4core3ptr48drop_in_place$LT$tokio..signal..unix..Signal$GT$17h5065359a339f1a02E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.e) #24
  br label %"_ZN4core3ptr48drop_in_place$LT$tokio..signal..unix..Signal$GT$17h5065359a339f1a02E.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !35, !invariant.load !12 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb923ddfdde5007bE.exit5.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb923ddfdde5007bE.exit5.i.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbb923ddfdde5007bE.exit5.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.d
  resume { ptr, i32 } %i.h

"_ZN4core3ptr48drop_in_place$LT$tokio..signal..unix..Signal$GT$17h5065359a339f1a02E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$17h72e547b82a784150E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7184)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7186)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7187, !noundef !12 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %.val.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !7188 ; 8 uses
  br i1 %i.d, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !7187 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.val1.i.i.i, %.val.pre.i.i
  %i.f = select i1 %.not.i.i.i.i, i64 0, i64 %.val.pre.i.i
  %.sroa.0.0.i.i.i.i = sub nuw i64 %.val1.i.i.i, %i.f ; 5 uses
  %i.g = sub i64 %.val.pre.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.g, %i.c       ; 2 uses
  %i.h = add i64 %.sroa.0.0.i.i.i.i, %i.c
  %.sroa.58.0.i.i.i = select i1 %.not11.i.i.i.i, i64 %.val.pre.i.i, i64 %i.h ; 2 uses
  %.sroa.11.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.g) ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !7187, !nonnull !12, !noundef !12 ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.l = sub i64 %.sroa.58.0.i.i.i, %.sroa.0.0.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7189)
  %i.m = icmp eq i64 %.sroa.58.0.i.i.i, %.sroa.0.0.i.i.i.i
  br i1 %i.m, label %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i", %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i"
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i" ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.0.012.i.i.i.i
  %i.o = add nuw i64 %.sroa.0.012.i.i.i.i, 1      ; 4 uses
  %.val7.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !7189, !noalias !7187, !nonnull !12, !noundef !12 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val7.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !7190

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  br i1 %i.p, label %bb.b, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i"

bb.b:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val7.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i" unwind label %bb.c, !noalias !7190

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i": ; preds = %bb.b, %.noexc.i.i.i.i
  %i.q = icmp eq i64 %i.o, %i.l
  br i1 %i.q, label %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.l
  br i1 %i.s, label %.body.i.i.i, label %.lr.ph15.i.i.i.i

.lr.ph15.i.i.i.i:                                 ; preds = %bb.c, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i"
  %.sroa.0.113.i.i.i.i = phi i64 [ %i.u, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i" ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.0.113.i.i.i.i
  %i.u = add i64 %.sroa.0.113.i.i.i.i, 1          ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !7189, !noalias !7187, !nonnull !12, !noundef !12 ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val.i.i.i.i)
          to label %.noexc9.i.i.i.i unwind label %bb.e, !noalias !7190

.noexc9.i.i.i.i:                                  ; preds = %.lr.ph15.i.i.i.i
  br i1 %i.v, label %bb.d, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i"

bb.d:                                             ; preds = %.noexc9.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i" unwind label %bb.e, !noalias !7190

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i": ; preds = %bb.d, %.noexc9.i.i.i.i
  %i.w = icmp eq i64 %i.u, %i.l
  br i1 %i.w, label %.body.i.i.i, label %.lr.ph15.i.i.i.i

bb.e:                                             ; preds = %bb.d, %.lr.ph15.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7190
  unreachable

.body.i.i.i:                                      ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i", %bb.c
  invoke fastcc void @"_ZN4core3ptr248drop_in_place$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h6abd47550c9542f6E"(ptr nonnull %i.j, i64 %.sroa.11.0.i.i.i) #36
          to label %.body.i.i unwind label %bb.j, !noalias !7187

"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i": ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i", %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7191)
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i"
  %.sroa.0.012.i.i.i.i.i.i = phi i64 [ %i.z, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i" ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.012.i.i.i.i.i.i
  %i.z = add nuw i64 %.sroa.0.012.i.i.i.i.i.i, 1  ; 4 uses
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7191, !noalias !7187, !nonnull !12, !noundef !12 ; 2 uses
  %i.aa = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val7.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !7192

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i"

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val7.i.i.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i" unwind label %bb.g, !noalias !7192

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i": ; preds = %bb.f, %.noexc.i.i.i.i.i.i
  %i.ab = icmp eq i64 %i.z, %.sroa.11.0.i.i.i
  br i1 %i.ab, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i", label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %.sroa.11.0.i.i.i
  br i1 %i.ad, label %.body.i.i, label %.lr.ph15.i.i.i.i.i.i

.lr.ph15.i.i.i.i.i.i:                             ; preds = %bb.g, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i"
  %.sroa.0.113.i.i.i.i.i.i = phi i64 [ %i.af, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i" ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.113.i.i.i.i.i.i
  %i.af = add i64 %.sroa.0.113.i.i.i.i.i.i, 1     ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !7191, !noalias !7187, !nonnull !12, !noundef !12 ; 2 uses
  %i.ag = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i)
          to label %.noexc9.i.i.i.i.i.i unwind label %bb.i, !noalias !7192

.noexc9.i.i.i.i.i.i:                              ; preds = %.lr.ph15.i.i.i.i.i.i
  br i1 %i.ag, label %bb.h, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i"

bb.h:                                             ; preds = %.noexc9.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i" unwind label %bb.i, !noalias !7192

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i": ; preds = %bb.h, %.noexc9.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.af, %.sroa.11.0.i.i.i
  br i1 %i.ah, label %.body.i.i, label %.lr.ph15.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %.lr.ph15.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7192
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7187
  unreachable

.body.i.i:                                        ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i", %bb.g, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %.body.i.i.i ], [ %i.ac, %bb.g ], [ %i.ac, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i" ]
  %i.ak = icmp eq i64 %.val.pre.i.i, 0
  br i1 %i.ak, label %.body.i, label %bb.k

bb.k:                                             ; preds = %.body.i.i
  %i.al = shl nuw i64 %.val.pre.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !7188
end_hunk_3
begin_hunk_4_@_ZN5tokio7runtime4task3raw21drop_join_handle_slow17hda2b46b79cfe490eE:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !24, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !35, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #24, !noalias !7955
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !24, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !35, !invariant.load !12, !noalias !7955 ; 2 uses
  %i.y = icmp ult i64 %i.x, -9223372036854775807
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.x) #24, !noalias !7955
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i" ], [ %i.t, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.m, %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"
  %i.aa = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.aa, label %bb.k, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit"

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i": ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit"

bb.m:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h87a68c4563a6c7ddE.exit.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZN5tokio7runtime4task4core7Trailer9set_waker17h4ecbb5fce603c1a0E(ptr noundef nonnull align 8 %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.j

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$21drop_join_handle_slow17h2840cdd03bcba41fE.exit": ; preds = %bb.j, %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h8d1cba1c4250ea72E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = alloca [256 x i8], align 8               ; 4 uses
  %i.d = alloca [256 x i8], align 8               ; 7 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %i.f = alloca [256 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [256 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7972
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !7973
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !7974, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7974
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !7974, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !7974
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !7972

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7974
  store ptr @356, ptr %i.h, align 8, !noalias !7974
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !7974
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !7974
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !7974
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !7974
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !7972

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7972
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7974
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7975
  store i32 2, ptr %i.i, align 8, !noalias !7975
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !7972

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7972
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h700b0ab1af89218fE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7972
  store i32 2, ptr %i.f, align 8, !noalias !7972
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !7972

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7972
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7972
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !7973 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7973
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !7973, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7976
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !7973
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !7973
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7973
  store i32 1, ptr %i.e, align 8, !noalias !7976
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !7973

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !7973 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7973
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7976
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !7977 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !7977

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !7977
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !7977 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !7977
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7972
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h35e00463a260c317E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17he8efe05ec5ad6e35E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17he40d5b15687bdcd0E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr242drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hcd5aa988f161cb20E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17hf4b0f298956e0369E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h1b0574cd3d7ab93eE.exit.thread.i", %bb.af, %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i.i", %"_ZN4core3ptr267drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h4af5f8a8b61232f3E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17h97543f300089c877E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [128 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7994
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !7995
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !7996, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7996
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !7996, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !7996
  %i.v = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !7994

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7996
  store ptr @356, ptr %i.h, align 8, !noalias !7996
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !7996
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !7996
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !7996
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !7996
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !7994

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7994
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7996
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7997
  store i32 2, ptr %i.i, align 8, !noalias !7997
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !7994

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7994
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h88eddf7f07b701c3E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7994
  store i32 2, ptr %i.f, align 8, !noalias !7994
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !7994

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7994
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7994
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !7995 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7995
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !7995, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7998
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !7995
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !7995
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7995
  store i32 1, ptr %i.e, align 8, !noalias !7998
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !7995

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !7995 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !7995
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7998
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !7999 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !7999

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !7999
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !7999 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !7999
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7994
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h5e306e30f0ff9211E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17haae3bcd2cab75582E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17heaab7690effae0faE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hb71a7039b7716641E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17hb71a7039b7716641E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h1b3a0789bb95f25cE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hc2af3d7a9653a0ccE.exit.thread.i", %bb.af, %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i.i", %"_ZN4core3ptr173drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17hda9acec3f1da580eE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hae6b08d5ee64d6f7E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [128 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8016
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8017
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8018, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8018
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8018, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8018
  %i.v = invoke noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8016

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8018
  store ptr @356, ptr %i.h, align 8, !noalias !8018
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8018
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8018
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8018
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8018
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8016

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8016
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8018
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8019
  store i32 2, ptr %i.i, align 8, !noalias !8019
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8016

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8016
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2140fd89f3de0b30E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8016
  store i32 2, ptr %i.f, align 8, !noalias !8016
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8016

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8016
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8016
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8017 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8017
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8017, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8020
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8017
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8017
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8017
  store i32 1, ptr %i.e, align 8, !noalias !8020
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8017

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8017 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8017
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8020
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8021 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8021

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8021
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8021 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8021
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8016
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h606733552e4deb05E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h674f0a1ed223d6f4E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h094655b160d53463E"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h45a5ee6ed59119f1E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h45a5ee6ed59119f1E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h8339d40e30edf9deE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hffc85f48d58c9f02E.exit.thread.i", %bb.af, %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i.i", %"_ZN4core3ptr196drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h4741e9c91426b933E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hb3afda82d630c17bE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 7 uses
  %i.c = alloca [256 x i8], align 8               ; 4 uses
  %i.d = alloca [256 x i8], align 8               ; 7 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %i.f = alloca [256 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [256 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8038
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8039
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8040, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8040
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8040, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8040
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd840104c694c9946E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8038

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8040
  store ptr @356, ptr %i.h, align 8, !noalias !8040
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8040
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8040
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8040
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8040
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8038

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8038
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8040
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8041
  store i32 2, ptr %i.i, align 8, !noalias !8041
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8038

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8038
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2f81d25f832750dfE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8038
  store i32 2, ptr %i.f, align 8, !noalias !8038
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8038

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8038
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8038
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8039 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8039
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8039, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8042
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8039
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8039
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8039
  store i32 1, ptr %i.e, align 8, !noalias !8042
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8039

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8039 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8039
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8042
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8043 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8043

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8043
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8043 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8043
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8038
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17hff5b1227ae500d23E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(256) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h3d16c3a5ce074428E.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h840b81f01ea6317aE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio7runtime9scheduler14current_thread134_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$8schedule17hf8ca7dccab44d288E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr265drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h9cd8db710db39e66E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr265drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h9cd8db710db39e66E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h7e91a98f68e42052E.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hf25c798f71596387E.exit.thread.i", %bb.af, %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i.i", %"_ZN4core3ptr290drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17hbe8cbd2cae4c848fE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hfc0f7b05b349aa70E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [192 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8060
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8061
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8062, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8062
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8062, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8062
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8060

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8062
  store ptr @356, ptr %i.h, align 8, !noalias !8062
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8062
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8062
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8062
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8062
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8060

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8060
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8062
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8063
  store i32 2, ptr %i.i, align 8, !noalias !8063
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8060

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8060
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h326f0b908f408e68E.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8060
  store i32 2, ptr %i.f, align 8, !noalias !8060
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8060

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8060
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8060
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8061 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8061
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8061, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8064
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8061
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8061
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8061
  store i32 1, ptr %i.e, align 8, !noalias !8064
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8061

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8061 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8061
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8064
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8065 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8065

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8065
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8065 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8065
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8060
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h1c47462334c930f3E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread8.i", %bb.z, %_ZN5tokio7runtime4task7harness11cancel_task17h4c10fbd761112b8eE.exit.i.i
  call fastcc void @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$8complete17h2f70169177527d3bE"(ptr noundef nonnull %0)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @"_ZN5tokio4task5local111_$LT$impl$u20$tokio..runtime..task..Schedule$u20$for$u20$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$8schedule17h173c6497b05515f0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull %0)
  %i.bw = call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %0)
  br i1 %i.bw, label %bb.ag, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr213drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h82241c80bf4baf57E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.i", %bb.a
  invoke fastcc void @"_ZN4core3ptr213drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h82241c80bf4baf57E"(ptr noundef nonnull align 128 %0)
          to label %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %common.resume.i

"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i": ; preds = %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread6.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 384, i64 noundef 128) #24
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17haf0fcf810b4aa1deE.exit": ; preds = %bb.a, %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread12.i", %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17hedf7367af08e6faaE.exit.thread.i", %bb.af, %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i.i", %"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..Box$LT$tokio..runtime..task..core..Cell$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$$GT$17h86a434d0e0232a6bE.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN5tokio7runtime4task3raw4poll17hfff6135bea75e003E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [192 x i8], align 8               ; 4 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [192 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = tail call noundef i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17he0b724de1c9eab75E(ptr noundef nonnull align 8 %0)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.t
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h07d11f2602ca0174E.exit"
    i8 3, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread6.i"
  ]

default.unreachable:                              ; preds = %bb.y, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @_ZN5tokio7runtime4task5waker12WAKER_VTABLE17h7860ffe65f71f6d1E, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.13.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8082
  store ptr %i.k, ptr %.sroa.13.8..sroa_idx.i.i.i, align 8
  %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %.sroa.4.8..sroa.13.8..sroa_idx.i.sroa_idx.i.i, align 8
  store ptr %i.k, ptr %i.j, align 8, !noalias !8083
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !range !27, !noalias !8084, !noundef !12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8084
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !35, !noalias !8084, !noundef !12
  %i.t = invoke noundef i64 @_ZN5tokio7runtime4task4core11TaskIdGuard5enter17hfddcd1266c1bc7f4E(i64 noundef %i.s)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.t, ptr %i.g, align 8, !noalias !8084
  %i.v = invoke fastcc noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h800f835d15ca1412E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i" unwind label %bb.e, !noalias !8082

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8084
  store ptr @356, ptr %i.h, align 8, !noalias !8084
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.w, align 8, !noalias !8084
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.x, align 8, !noalias !8084
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !8084
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.z, align 8, !noalias !8084
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @357) #35
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.i.i.i.i.i.i unwind label %bb.f, !noalias !8082

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8082
  unreachable

"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i
  invoke void @"_ZN81_$LT$tokio..runtime..task..core..TaskIdGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h81e67524a710ac4fE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc2.i.i.i.i.i.i:                              ; preds = %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8084
  br i1 %i.v, label %bb.y, label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8085
  store i32 2, ptr %i.i, align 8, !noalias !8085
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.i)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.h, !noalias !8082

.noexc3.i.i.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8082
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h30e366080854179bE.exit.i.i.i.i.i.i.i", %bb.d, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.e
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8082
  store i32 2, ptr %i.f, align 8, !noalias !8082
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.f)
          to label %.body.i.i.i unwind label %bb.i, !noalias !8082

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8082
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8082
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %bb.k unwind label %bb.j, !noalias !8083 ; 2 uses

bb.j:                                             ; preds = %.body.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8083
  unreachable

bb.k:                                             ; preds = %.body.i.i.i
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !range !35, !noalias !8083, !noundef !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc3.i.i.i.i.i.i
  %.sroa.7.sroa.6.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.sroa.7.sroa.0.0.i.i.i = phi ptr [ undef, %.noexc3.i.i.i.i.i.i ], [ %i.ah, %bb.k ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.noexc3.i.i.i.i.i.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8086
  store i64 %.sroa.04.0.i.i.i, ptr %i.al, align 8, !noalias !8083
  %.sroa.10.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.7.sroa.0.0.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i, align 8, !noalias !8083
  %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.7.sroa.6.0.i.i.i, ptr %.sroa.10.sroa.4.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !8083
  store i32 1, ptr %i.e, align 8, !noalias !8086
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.e)
          to label %.thread.i.i.i unwind label %bb.m, !noalias !8083

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.an)
          to label %bb.o unwind label %bb.n, !noalias !8083 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37, !noalias !8083
  unreachable

.thread.i.i.i:                                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8086
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.aq = extractvalue { ptr, ptr } %i.ao, 0      ; 4 uses
  %i.ar = extractvalue { ptr, ptr } %i.ao, 1      ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !12, !noalias !8087 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.as(ptr noundef nonnull %i.aq)
          to label %bb.r unwind label %bb.s, !noalias !8087

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !24, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !35, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, -9223372036854775807
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.r
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #24, !noalias !8087
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !24, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !35, !invariant.load !12, !noalias !8087 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %common.resume.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i": ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !8087
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ai, %bb.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i", %bb.s
  %common.resume.op.i = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ah ], [ %i.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i" ], [ %i.az, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.c)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  %i.bj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bi)
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i

bb.x:                                             ; preds = %bb.u
  %i.bl = extractvalue { ptr, ptr } %i.bj, 0
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  br label %_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i

_ZN5tokio7runtime4task7harness11cancel_task17h1c9d2ee158b3bd45E.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.8.0.i.i.i = phi ptr [ undef, %bb.w ], [ %i.bm, %bb.x ]
  %.sroa.6.0.i.i.i = phi ptr [ null, %bb.w ], [ %i.bl, %bb.x ]
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i.i = load i64, ptr %.sroa.01.0.in.i.i.i, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0.i.i.i, ptr %i.bn, align 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8
  store i32 1, ptr %i.d, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

bb.y:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8082
  %i.bo = call noundef i8 @_ZN5tokio7runtime4task5state5State18transition_to_idle17hd68afb9aac48e2e2E(ptr noundef nonnull align 8 %0)
  switch i8 %i.bo, label %default.unreachable [
    i8 3, label %bb.aa
    i8 0, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread12.i"
    i8 1, label %bb.af
    i8 2, label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.i"
  ]

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread12.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$4poll17h07d11f2602ca0174E.exit"

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.r, %bb.o, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.a)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.bq)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i"

bb.ae:                                            ; preds = %bb.ab
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread8.i": ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i1.i.i = phi ptr [ undef, %bb.ad ], [ %i.bu, %bb.ae ]
  %.sroa.6.0.i2.i.i = phi ptr [ null, %bb.ad ], [ %i.bt, %bb.ae ]
  %.sroa.01.0.i4.i.i = load i64, ptr %i.r, align 8, !range !35, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i4.i.i, ptr %i.bv, align 8
  %.sroa.53.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i2.i.i, ptr %.sroa.53.0..sroa_idx.i5.i.i, align 8
  %.sroa.64.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i1.i.i, ptr %.sroa.64.0..sroa_idx.i6.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call fastcc void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$9set_stage17h489ed722d151cfc8E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread.i"

"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.i": ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h0d31115a4dc6716aE.exit.thread6.i"
end_hunk_4
