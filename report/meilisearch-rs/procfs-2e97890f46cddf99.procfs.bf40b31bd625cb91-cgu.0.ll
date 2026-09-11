Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN11procfs_core6crypto4Type9from_iter17h9b80dfbee3e03beeE:bb.a
  br i1 %i.aej, label %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.kr
  %.pre.i.i.i.i.i.i = load i64, ptr %i.aeg, align 8, !noalias !2237
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %.pre1.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !2237
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0d0f60eb24b0e399E.exit.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i.i.i": ; preds = %bb.kr
  %i.aek = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i unwind label %bb.lj, !noalias !2238 ; 2 uses

.noexc.i.i.i:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i.i.i"
  %i.ael = extractvalue { i64, i64 } %i.aek, 0
  %i.aem = extractvalue { i64, i64 } %i.aek, 1    ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store i64 %i.aem, ptr %i.aen, align 8, !noalias !2239
  store i8 1, ptr %i.aeh, align 8, !noalias !2239
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0d0f60eb24b0e399E.exit.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0d0f60eb24b0e399E.exit.i.i.i.i": ; preds = %.noexc.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i.i.i
  %.pre-phi10.i.i.i = phi i64 [ %i.aem, %.noexc.i.i.i ], [ %.pre1.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.ael, %.noexc.i.i.i ], [ %.pre.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6e83f227811b6466E.exit_crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.aeo = add i64 %.pre-phi.i.i.i, 1
  store i64 %i.aeo, ptr %i.aeg, align 8, !noalias !2237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @69, i64 32, i1 false), !noalias !2235
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2235
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  store i64 %.pre-phi10.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2235
  %i.aep = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h12c626d71dad71abE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i1 noundef zeroext true)
          to label %bb.ks unwind label %bb.li, !noalias !2240 ; 0 uses

bb.ks:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0d0f60eb24b0e399E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2241
  store ptr %i.i, ptr %i.h, align 8, !noalias !2242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.aef, i64 104, i1 false), !noalias !2243
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aer = load ptr, ptr %i.aeq, align 8, !alias.scope !2246, !noalias !2247, !align !7, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aer, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.kx, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2249
  store ptr %i.h, ptr %i.e, align 8, !noalias !2250
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aer, align 8, !alias.scope !2252, !noalias !2253 ; 2 uses
  store i64 -9223372036854775806, ptr %i.aer, align 8, !alias.scope !2252, !noalias !2253
  switch i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kw [
    i64 -9223372036854775806, label %bb.ku
    i64 -9223372036854775807, label %"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc63c3941f90c1382E.exit.i.i.i.i.i.i.i.i"
  ]

bb.ku:                                            ; preds = %.noexc6.i.i.i.i.i.i.i.i, %bb.kt
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2254
  invoke fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aes)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !2255

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ku
  %i.aet = load i64, ptr %i.c, align 8, !range !17, !noalias !2256, !noundef !4
  %.not6.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aet, -9223372036854775807
  br i1 %.not6.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd7e9274e7b0f635aE.exit.thread2.sink.split.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc.i.i.i.i.i.i.i.i, %.noexc5.i.i.i.i.i.i.i.i
  %i.aeu = invoke fastcc noundef zeroext i1 @"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h16fd5e05ee545151E"(ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !2255

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aeu, label %"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd7e9274e7b0f635aE.exit.thread2.sink.split.i.i.i.i.i.i.i.i.i.i", label %bb.kv

bb.kv:                                            ; preds = %.noexc4.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN82_$LT$std..io..Lines$LT$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5555a99423d6e9f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aes)
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i, !noalias !2255

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %bb.kv
  %i.aev = load i64, ptr %i.c, align 8, !range !17, !noalias !2256, !noundef !4
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aev, -9223372036854775807
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd7e9274e7b0f635aE.exit.thread2.sink.split.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %bb.kt
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2253
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !2254
  %i.aew = invoke fastcc noundef zeroext i1 @"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h16fd5e05ee545151E"(ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !2255

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2254
  br i1 %i.aew, label %"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc63c3941f90c1382E.exit.i.i.i.i.i.i.i.i", label %bb.ku

"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd7e9274e7b0f635aE.exit.thread2.sink.split.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc5.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2254
  br label %"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc63c3941f90c1382E.exit.i.i.i.i.i.i.i.i"

"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc63c3941f90c1382E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN72_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hd7e9274e7b0f635aE.exit.thread2.sink.split.i.i.i.i.i.i.i.i.i.i", %.noexc6.i.i.i.i.i.i.i.i, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2249
  br label %bb.kx

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.kv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %bb.kw, %bb.ku
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.kx:                                            ; preds = %"_ZN113_$LT$core..iter..adapters..map_while..MapWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hc63c3941f90c1382E.exit.i.i.i.i.i.i.i.i", %bb.ks
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %i.aex = load i64, ptr %i.g, align 8, !range !17, !alias.scope !2258, !noalias !2247, !noundef !4 ; 4 uses
  %i.aey = icmp eq i64 %i.aex, -9223372036854775807
  br i1 %i.aey, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i", label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  %i.aez = icmp eq i64 %i.aex, -9223372036854775808
  br i1 %i.aez, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i", label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  %i.afa = icmp eq i64 %i.aex, 0
  br i1 %i.afa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.afb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afb, align 8, !alias.scope !2264, !noalias !2247, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aex, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2265
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.la, %bb.kz
  %i.afc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afc, align 8, !alias.scope !2267, !noalias !2247 ; 2 uses
  %i.afd = icmp eq i64 %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afd, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i", label %bb.lb

bb.lb:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.afe = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val1.i5.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afe, align 8, !alias.scope !2267, !noalias !2247, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2268
  br label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.lb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ky, %bb.kx
  %i.aff = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %i.afg = load i64, ptr %i.aff, align 8, !range !17, !alias.scope !2270, !noalias !2247, !noundef !4 ; 4 uses
  %i.afh = icmp eq i64 %i.afg, -9223372036854775807
  br i1 %i.afh, label %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i", label %bb.lc

bb.lc:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  %i.afi = icmp eq i64 %i.afg, -9223372036854775808
  br i1 %i.afi, label %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i", label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.afj = icmp eq i64 %i.afg, 0
  br i1 %i.afj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i8.i.i.i.i.i.i.i.i", label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.afk = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.val1.i.i.i.i.i.i7.i.i.i.i.i.i.i.i = load ptr, ptr %i.afk, align 8, !alias.scope !2276, !noalias !2247, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, i64 noundef %i.afg, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2277
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i8.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i8.i.i.i.i.i.i.i.i": ; preds = %bb.le, %bb.ld
  %i.afl = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %.val.i4.i.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.afl, align 8, !alias.scope !2279, !noalias !2247 ; 2 uses
  %i.afm = icmp eq i64 %.val.i4.i.i.i.i.i9.i.i.i.i.i.i.i.i, 0
  br i1 %i.afm, label %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i", label %bb.lf

bb.lf:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i8.i.i.i.i.i.i.i.i"
  %i.afn = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.val1.i5.i.i.i.i.i10.i.i.i.i.i.i.i.i = load ptr, ptr %i.afn, align 8, !alias.scope !2279, !noalias !2247, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i10.i.i.i.i.i.i.i.i, i64 noundef %.val.i4.i.i.i.i.i9.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2280
  br label %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i"

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.aef) #44, !noalias !2281
  %i.afo = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call fastcc void @"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.afo) #44, !noalias !2282
  br label %.body.thread.sink.split.i.i.i.i.i.i

"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i": ; preds = %bb.lf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit.i.i.i.i.i8.i.i.i.i.i.i.i.i", %bb.lc, %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h9a3fbf496b2194f5E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.j, i64 48, i1 false), !noalias !2243
  %4 = load ptr, ptr %i.h, align 8, !noalias !2242, !nonnull !4, !align !7, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !2284, !noalias !2285 ; 2 uses
  store i64 -9223372036854775808, ptr %i.f, align 8, !alias.scope !2286, !noalias !2287
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %.promoted.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not7.i.i.i.i.i.i.i, label %bb.lk, label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i"
  %i.afp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.afq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.446.0..sroa_idx.i485, i64 40, i1 false), !noalias !2243
  store i64 %.promoted.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !2288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2289
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hda21b9dc1e6260b8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.afq)
          to label %.noexc.us.i.i.i.i.i.i.i unwind label %bb.lh, !noalias !2290

.noexc.us.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %.val.i.i.us.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !10, !noalias !2289, !noundef !4 ; 2 uses
  %switch.i.i.us.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.us.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.us.i.i.i.i.i.i.i, label %bb.lg, label %"._ZN4core3ptr113drop_in_place$LT$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h9bd039d0a4f63804E.exit_crit_edge.split.us.i.i.i.i.i.i.i"

bb.lg:                                            ; preds = %.noexc.us.i.i.i.i.i.i.i
  %.val1.i.i.us.i.i.i.i.i.i.i = load ptr, ptr %i.afp, align 8, !noalias !2289, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.us.i.i.i.i.i.i.i, i64 noundef %.val.i.i.us.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !2291
  br label %"._ZN4core3ptr113drop_in_place$LT$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h9bd039d0a4f63804E.exit_crit_edge.split.us.i.i.i.i.i.i.i"

"._ZN4core3ptr113drop_in_place$LT$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h9bd039d0a4f63804E.exit_crit_edge.split.us.i.i.i.i.i.i.i": ; preds = %bb.lg, %.noexc.us.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2288
  br label %bb.lk

bb.lh:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.afr = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.sink.split.i.i.i.i.i.i

.body.thread.sink.split.i.i.i.i.i.i:              ; preds = %bb.lh, %.body.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.f, %bb.lh ], [ %i.j, %.body.i.i.i.i.i.i ]
  %eh.lpad-body10.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.afr, %bb.lh ], [ %lpad.phi.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h9bd039d0a4f63804E"(ptr noalias noundef align 8 dereferenceable(48) %.sink.i.i.i.i.i.i) #44, !noalias !2281
  br label %.body.i.i.i

bb.li:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h0d0f60eb24b0e399E.exit.i.i.i.i"
  %i.afs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map_while..MapWhile$LT$$RF$mut$u20$core..iter..adapters..peekable..Peekable$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$C$procfs_core..crypto..Unknown..parse$LT$core..iter..adapters..peekable..Peekable$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h31b682465e5f7c09E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(152) %i.j) #44, !noalias !2281
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.li, %.body.thread.sink.split.i.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %eh.lpad-body10.ph.i.i.i.i.i.i, %.body.thread.sink.split.i.i.i.i.i.i ], [ %i.afs, %bb.li ]
  call fastcc void @"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h2bdf77755533f9f7E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #44, !noalias !2238
  br label %.body

bb.lj:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h10b3f3cea6bac4e9E.exit.i.i.i.i.i.i"
  %i.aft = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr600drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..flatten..Flatten$LT$core..iter..adapters..map_while..MapWhile$LT$$RF$mut$u20$core..iter..adapters..peekable..Peekable$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$C$procfs_core..crypto..Unknown..parse$LT$core..iter..adapters..peekable..Peekable$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$$GT$17h31b682465e5f7c09E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(152) %i.j) #44, !noalias !2281
  br label %.body

bb.lk:                                            ; preds = %"._ZN4core3ptr113drop_in_place$LT$core..iter..sources..once..Once$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h9bd039d0a4f63804E.exit_crit_edge.split.us.i.i.i.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..flatten..Flatten$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h66e47c6f1e8b9258E.exit.i.i.i.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2241
  %.sroa.0749.0.copyload = load i64, ptr %i.i, align 8, !noalias !2292 ; 2 uses
  %.sroa.4750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4750.0.copyload = load i64, ptr %.sroa.4750.0..sroa_idx, align 8, !noalias !2292
  %.sroa.5751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5751.0.copyload = load i64, ptr %.sroa.5751.0..sroa_idx, align 8, !noalias !2292
  %.sroa.6752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6752.sroa.0.0.copyload = load i64, ptr %.sroa.6752.0..sroa_idx, align 8, !noalias !2292
  %.sroa.6752.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2292
  %.sroa.6752.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2222
  %.sroa.05.sroa.0.0.extract.trunc33 = trunc i64 %.sroa.0749.0.copyload to i32
  %.sroa.05.sroa.12.0.extract.shift42 = and i64 %.sroa.0749.0.copyload, -4294967296
  br label %bb.cw

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit": ; preds = %bb.cs, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core6crypto5Ahash5parse17h727f2a2a80dde1c9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.724 = alloca [24 x i8], align 8          ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_ZN11procfs_core6crypto10parse_bool17hb9d6ba5c4e056eaeE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.x, -9223372036854775803
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i8, ptr %i.y, align 8               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.352.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.649.0..sroa_idx, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.x, ptr %0, align 8
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.z, ptr %.sroa.251.0..sroa_idx, align 8
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @_ZN11procfs_core6crypto10parse_line17hb63faf999e76d7b5E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.aa = load i64, ptr %i.t, align 8, !range !9, !noundef !4 ; 2 uses
  %.not96 = icmp eq i64 %i.aa, -9223372036854775803
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br i1 %.not96, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.361.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.658.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  store i64 %i.aa, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  store ptr %i.u, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 6 uses
  switch i64 %i.af, label %bb.g [
    i64 0, label %.loopexit196
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ad, align 1, !alias.scope !2347, !noalias !2348, !noundef !4
  switch i8 %i.ag, label %.lr.ph.i.preheader [
    i8 43, label %.loopexit196
    i8 45, label %.loopexit196
  ]

.lr.ph.i.preheader:                               ; preds = %bb.h, %bb.j, %bb.f
  %.sroa.01.162.i.ph = phi ptr [ %i.ah, %bb.h ], [ %i.ad, %bb.j ], [ %i.ad, %bb.f ]
  %.sroa.16.161.i.ph = phi i64 [ %i.ai, %bb.h ], [ %i.af, %bb.j ], [ 1, %bb.f ]
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %.pr.i = load i8, ptr %i.ad, align 1, !alias.scope !2347, !noalias !2348
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ai = add i64 %i.af, -1                       ; 2 uses
  %i.aj = icmp ult i64 %i.af, 18
  br i1 %i.aj, label %.lr.ph.i.preheader, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.j, %bb.h
  %.sroa.16.0.ph.i = phi i64 [ %i.af, %bb.j ], [ %i.ai, %bb.h ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.ad, %bb.j ], [ %i.ah, %bb.h ]
  %.not.i236 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i236, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph

bb.i:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i239, i64 1
  %i.al = add i64 %.sroa.16.0.i238, -1            ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.am = icmp ult i64 %i.af, 17
  br i1 %i.am, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph:                                           ; preds = %.preheader53.i, %bb.i
  %.sroa.01.0.i239 = phi ptr [ %i.ak, %bb.i ], [ %.sroa.01.0.ph.i, %.preheader53.i ] ; 2 uses
  %.sroa.16.0.i238 = phi i64 [ %i.al, %bb.i ], [ %.sroa.16.0.ph.i, %.preheader53.i ]
  %.sroa.017.0.i237 = phi i64 [ %i.av, %bb.i ], [ 0, %.preheader53.i ]
  %i.an = load i8, ptr %.sroa.01.0.i239, align 1, !alias.scope !2347, !noalias !2348, !noundef !4
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
end_hunk_0
