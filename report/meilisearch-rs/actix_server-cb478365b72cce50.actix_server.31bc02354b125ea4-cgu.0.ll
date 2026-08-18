inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12actix_server6server11ServerInner8run_sync17h5588d64d57df2709E:bb.a
  store i8 1, ptr %i.adh, align 4, !noalias !1338
  %i.adi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 15, ptr %i.adi, align 4, !noalias !1338
  %i.adj = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 2, ptr %i.adj, align 4, !noalias !1338
  %i.adk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 3, ptr %i.adk, align 4, !noalias !1338
  %i.adl = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 3, ptr %i.adl, align 4, !noalias !1338
  %i.adm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1346
  store ptr %i.s, ptr %i.o, align 16, !noalias !1353
  %i.adn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.adm, ptr %i.adn, align 8, !noalias !1353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1353
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef align 8 dereferenceable(16) %i.o)
          to label %.noexc11.i unwind label %bb.jd, !noalias !1341

.noexc11.i:                                       ; preds = %bb.it
  %i.ado = load i8, ptr %i.m, align 8, !range !337, !noalias !1353, !noundef !8
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ado, 4
  br i1 %.not.i.i.i.i.i.i.i, label %bb.iu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"

bb.iu:                                            ; preds = %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1353
  br label %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i

bb.iv:                                            ; preds = %bb.iw
  %i.adp = landingpad { ptr, i32 }
          cleanup
  %i.adq = extractelement <2 x ptr> %i.ads, i64 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adq) ]
  %i.adr = extractelement <2 x ptr> %i.ads, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adr) ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr nonnull %i.adq, ptr nonnull %i.adr) #36
          to label %.body.i unwind label %bb.jc, !noalias !1353

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc11.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !1353
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ads = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !1353 ; 3 uses
  %i.adt = load <2 x ptr>, ptr %i.o, align 16, !noalias !1353
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1356
  %i.adu = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #24, !noalias !1356 ; 6 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 96, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #35
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.iv, !noalias !1353

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.iw
  unreachable

bb.ix:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.adu, align 8, !noalias !1353
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store <2 x ptr> %i.ads, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1353
  store i64 4, ptr %i.n, align 8, !noalias !1353
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.adu, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1353
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1353
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1367
  store <2 x ptr> %i.adt, ptr %i.l, align 16, !noalias !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1368
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %.noexc8.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !1353

.noexc8.i.i.i.i.i.i.i:                            ; preds = %bb.ix
  %i.adw = load i8, ptr %i.k, align 8, !range !337, !noalias !1368, !noundef !8
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.adw, 4
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.loopexit13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc8.i.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i172 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.iy

bb.iy:                                            ; preds = %.noexc9.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.adx = phi ptr [ %i.adu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aed, %.noexc9.i.i.i.i.i.i.i ]
  %i.ady = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aef, %.noexc9.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !1368
  %i.adz = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i172, align 8, !noalias !1368 ; 3 uses
  %i.aea = icmp samesign ult i64 %i.ady, 384307168202282326
  call void @llvm.assume(i1 %i.aea)
  %i.aeb = load i64, ptr %i.n, align 8, !range !182, !alias.scope !1369, !noalias !1353, !noundef !8
  %i.aec = icmp eq i64 %i.ady, %i.aeb
  br i1 %i.aec, label %bb.ja, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.iy
  %i.aed = phi ptr [ %.pre.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.adx, %bb.iy ] ; 2 uses
  %i.aee = getelementptr inbounds nuw [24 x i8], ptr %i.aed, i64 %i.ady ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.aee, align 8, !noalias !1368
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store <2 x ptr> %i.adz, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1368
  %i.aef = add nuw nsw i64 %i.ady, 1              ; 3 uses
  store i64 %i.aef, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1369, !noalias !1353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1368
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4cbbad0528db99efE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(16) %i.l)
          to label %.noexc9.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !1353

.noexc9.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"
  %i.aeg = load i8, ptr %i.k, align 8, !range !337, !noalias !1368, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i173 = icmp eq i8 %i.aeg, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i173, label %.loopexit13.i.i.i.i.loopexit.i.i.i, label %bb.iy

bb.iz:                                            ; preds = %bb.ja
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  %i.aei = extractelement <2 x ptr> %i.adz, i64 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aei) ]
  %i.aej = extractelement <2 x ptr> %i.adz, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aej) ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$17h45a7961dea229edcE"(ptr nonnull %i.aei, ptr nonnull %i.aej) #36
          to label %.body.i.i.i.i.i.i.i unwind label %bb.jb, !noalias !1368

bb.ja:                                            ; preds = %bb.iy
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17ha8d761eeec586e1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.ady, i64 noundef range(i64 1, 0) 1, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.iz

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.ja
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1369, !noalias !1353
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"

bb.jb:                                            ; preds = %bb.iz
  %i.aek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1368
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h26bb844745371d7fE.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.ix
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %bb.iz
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aeh, %bb.iz ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$$LP$actix_server..signals..SignalKind$C$tokio..signal..unix..Signal$RP$$GT$$GT$17h88bbdf7578b1d887E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #36
          to label %.body.i unwind label %bb.jc, !noalias !1353

.loopexit13.i.i.i.i.loopexit.i.i.i:               ; preds = %.noexc9.i.i.i.i.i.i.i
  %.sroa.0.0.copyload21.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !1338
  %.sroa.3.0.copyload23.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1338
  br label %.loopexit13.i.i.i.i.i.i.i

.loopexit13.i.i.i.i.i.i.i:                        ; preds = %.loopexit13.i.i.i.i.loopexit.i.i.i, %.noexc8.i.i.i.i.i.i.i
  %.sroa.4.0.copyload26.i.i.i = phi i64 [ %i.aef, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ 1, %.noexc8.i.i.i.i.i.i.i ]
  %.sroa.3.0.copyload23.i.i.i = phi ptr [ %.sroa.3.0.copyload23.pre.i.i.i, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ %i.adu, %.noexc8.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload21.i.i.i = phi i64 [ %.sroa.0.0.copyload21.pre.i.i.i, %.loopexit13.i.i.i.i.loopexit.i.i.i ], [ 4, %.noexc8.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1367
  br label %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i

bb.jc:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.iv
  %i.ael = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1353
  unreachable

_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i: ; preds = %.loopexit13.i.i.i.i.i.i.i, %bb.iu
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.iu ], [ %.sroa.4.0.copyload26.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  %.sroa.3.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.iu ], [ %.sroa.3.0.copyload23.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.iu ], [ %.sroa.0.0.copyload21.i.i.i, %.loopexit13.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1332
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"

bb.jd:                                            ; preds = %bb.it, %bb.is, %.noexc8.i, %bb.ir, %bb.ip, %.noexc5.i, %bb.io, %bb.im, %.thread.i.i.i175, %bb.il
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.jd, %.body.i.i.i.i.i.i.i, %bb.iv
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aem, %bb.jd ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.adp, %bb.iv ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$actix_server..signals..StopSignal$GT$$GT$17h59f54f31eb622254E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.cd) #36
          to label %.body177 unwind label %bb.je, !noalias !1370

bb.je:                                            ; preds = %.body.i
  %i.aen = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1341
  unreachable

.body177:                                         ; preds = %.body.i
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h4e8f740e5a31ac37E"(ptr noalias noundef align 8 dereferenceable(24) %i.ce) #36
          to label %bb.jn unwind label %bb.jm

"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit": ; preds = %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i, %bb.ih, %bb.ii
  %.sroa.0213.0.a = phi i64 [ %.sroa.0.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ -9223372036854775808, %bb.ih ], [ -9223372036854775807, %bb.ii ]
  %.sroa.6215.0 = phi ptr [ %.sroa.3.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ %i.aba, %bb.ih ], [ undef, %bb.ii ]
  %.sroa.7.0220 = phi i64 [ %.sroa.4.0.i.i.i, %_ZN12actix_server7signals9OsSignals3new17h23ad15fd6649977dE.exit.i.i ], [ %.sroa.7.0.copyload217.cast, %bb.ih ], [ undef, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aep = load ptr, ptr %i.aeo, align 8, !nonnull !8, !noundef !8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.552.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.046, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.046.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.046.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.aeq, i64 32, i1 false)
  %.sroa.046.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.046.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aes = load i8, ptr %i.aer, align 4, !range !348, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.046, i64 80, i1 false)
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aav, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.aes, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %.sroa.754.0..sroa_idx, align 1
  %.sroa.956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0213.0.a, ptr %.sroa.956.0..sroa_idx, align 8
  %.sroa.956.sroa.4.0..sroa.956.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.6215.0, ptr %.sroa.956.sroa.4.0..sroa.956.0..sroa_idx.sroa_idx, align 8
  %.sroa.956.sroa.5.0..sroa.956.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7.0220, ptr %.sroa.956.sroa.5.0..sroa.956.0..sroa_idx.sroa_idx, align 8
  %.sroa.1057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.aep, ptr %.sroa.1057.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %.val.i = load ptr, ptr %i.gc, align 8, !alias.scope !1371, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i = load i64, ptr %i.ge, align 8, !alias.scope !1371, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.aet = icmp eq i64 %.val1.i, 0
  br i1 %i.aet, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit", %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.aev, %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i" ], [ 0, %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit" ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.aev = add nuw i64 %.sroa.0.07.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %.val.i.i.i.i = load i64, ptr %i.aeu, align 8, !alias.scope !1380, !noalias !1371 ; 2 uses
  %i.aew = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.aew, label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i", label %bb.jf

bb.jf:                                            ; preds = %.lr.ph.i.i.i
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.aex, align 8, !alias.scope !1380, !noalias !1371, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1381
  br label %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i": ; preds = %bb.jf, %.lr.ph.i.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeu, i64 36
  %.val3.i.i.i.i179 = load i32, ptr %i.aey, align 4, !alias.scope !1380, !noalias !1371
  %i.aez = call noundef i32 @close(i32 noundef %.val3.i.i.i.i179) #24, !noalias !1381 ; 0 uses
  %i.afa = icmp eq i64 %i.aev, %.val1.i
  br i1 %i.afa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$17hdfe0f331cc572d44E.exit.i.i.i", %"_ZN4core6option15Option$LT$T$GT$7or_else17h637ebed3a4655f9cE.exit"
  %.val2.i = load i64, ptr %i.gb, align 8, !range !182, !alias.scope !1371, !noundef !8 ; 2 uses
  %i.afb = icmp eq i64 %.val2.i, 0
  br i1 %i.afb, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit", label %bb.jg

bb.jg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i"
  %i.afc = mul nuw i64 %.val2.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.afc, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1371
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit": ; preds = %bb.jg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h334f70a828402de8E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %.val.i.i180 = load ptr, ptr %i.ku, align 8, !alias.scope !1388, !nonnull !8, !noundef !8 ; 6 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 456
  %i.afe = atomicrmw sub ptr %i.afd, i64 1 acq_rel, align 8, !noalias !1388
  %i.aff = icmp eq i64 %i.afe, 1
  br i1 %i.aff, label %bb.jh, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i"

bb.jh:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"
  %i.afg = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 128
  %i.afh = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 136
  %i.afi = atomicrmw add ptr %i.afh, i64 1 acquire, align 8, !noalias !1388
  %i.afj = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he1ab7aef3f46240bE"(ptr noundef nonnull align 8 %i.afg, i64 noundef %i.afi)
          to label %.noexc.i.i181 unwind label %bb.ji, !noalias !1388

.noexc.i.i181:                                    ; preds = %bb.jh
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 784
  %i.afl = atomicrmw or ptr %i.afk, i64 8589934592 release, align 8, !noalias !1388 ; 0 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.val.i.i180, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.afm)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i" unwind label %bb.ji, !noalias !1388

bb.ji:                                            ; preds = %.noexc.i.i181, %bb.jh
  %i.afn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afo = atomicrmw sub ptr %.val.i.i180, i64 1 release, align 8, !noalias !1389
  %i.afp = icmp eq i64 %i.afo, 1
  br i1 %i.afp, label %bb.jj, label %common.resume

bb.jj:                                            ; preds = %bb.ji
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ku)
          to label %common.resume unwind label %bb.jl

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i": ; preds = %.noexc.i.i181, %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$alloc..string..String$C$actix_server..socket..MioListener$RP$$GT$$GT$17he6be5ba3130966a1E.exit"
  %i.afq = atomicrmw sub ptr %.val.i.i180, i64 1 release, align 8, !noalias !1394
  %i.afr = icmp eq i64 %i.afq, 1
  br i1 %i.afr, label %bb.jk, label %"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit"

bb.jk:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf6e7299f654e58aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ku)
  br label %"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit"

bb.jl:                                            ; preds = %bb.jj
  %i.afs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1388
  unreachable

common.resume:                                    ; preds = %bb.ks, %bb.ji, %bb.jj
  %common.resume.op = phi { ptr, i32 } [ %i.afn, %bb.ji ], [ %i.afn, %bb.jj ], [ %.pn, %bb.ks ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..server..ServerCommand$GT$$GT$17hddf3da2be0aa9637E.exit": ; preds = %bb.jk, %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbea30c90fd353728E.exit.i.i", %bb.if
  ret void

bb.jm:                                            ; preds = %bb.jp, %bb.kr, %bb.ks, %bb.kq, %bb.jn, %.body177, %.body
  %i.aft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.jn:                                            ; preds = %.body177
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$actix_server..worker..WorkerHandleServer$GT$$GT$17h5ef5cf5ec6c3e0b4E"(ptr noalias noundef align 8 dereferenceable(24) %i.cf) #36
          to label %bb.jo unwind label %bb.jm

bb.jo:                                            ; preds = %bb.jn
  %i.afu = atomicrmw sub ptr %i.aav, i64 1 release, align 8, !noalias !1399
  %i.afv = icmp eq i64 %i.afu, 1
  br i1 %i.afv, label %bb.jp, label %.body

bb.jp:                                            ; preds = %bb.jo
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cg)
          to label %.body unwind label %bb.jm

bb.jq:                                            ; preds = %.lr.ph, %bb.kk
  %.sroa.0134.1313 = phi ptr [ %.sroa.0134.1311, %.lr.ph ], [ %.sroa.0134.1, %bb.kk ] ; 3 uses
  %.sroa.0134.0312 = phi ptr [ %i.gd, %.lr.ph ], [ %.sroa.0134.1313, %bb.kk ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store ptr %.sroa.0134.0312, ptr %i.ct, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.0134.0312, i64 32 ; 2 uses
  %i.afx = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.afy = icmp ult i64 %i.afx, 3
  br i1 %i.afy, label %bb.jr, label %.thread281

bb.jr:                                            ; preds = %bb.jq
  %i.afz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12actix_server6server11ServerInner8run_sync10__CALLSITE17h85c9d1e074b2af94E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.afz, label %bb.js [
    i8 0, label %.thread281
    i8 1, label %.thread278
    i8 2, label %.thread278
  ], !prof !123

bb.js:                                            ; preds = %bb.jr
  %i.aga = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN12actix_server6server11ServerInner8run_sync10__CALLSITE17h85c9d1e074b2af94E)
          to label %bb.jt unwind label %.loopexit ; 2 uses

bb.jt:                                            ; preds = %bb.js
  %i.agb = icmp eq i8 %i.aga, 0
  br i1 %i.agb, label %.thread281, label %.thread278

.thread278:                                       ; preds = %bb.jr, %bb.jr, %bb.jt
  %.sroa.031.0280 = phi i8 [ %i.aga, %bb.jt ], [ %i.afz, %bb.jr ], [ %i.afz, %bb.jr ]
  %i.agc = load ptr, ptr @_ZN12actix_server6server11ServerInner8run_sync10__CALLSITE17h85c9d1e074b2af94E, align 8, !nonnull !8, !align !9, !noundef !8
  %i.agd = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agc, i8 noundef %.sroa.031.0280)
          to label %bb.ju unwind label %.loopexit

bb.ju:                                            ; preds = %.thread278
  br i1 %i.agd, label %bb.jv, label %.thread281

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.age = load ptr, ptr @_ZN12actix_server6server11ServerInner8run_sync10__CALLSITE17h85c9d1e074b2af94E, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.agf = load i32, ptr %i.afw, align 4, !range !143, !alias.scope !1409, !noalias !1406, !noundef !8
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0134.0312, i64 36 ; 2 uses
  %i.agh = trunc nuw i32 %i.agf to i1
  br i1 %i.agh, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1411
  invoke void @_ZN3mio3net3uds8listener12UnixListener10local_addr17h01553aa22066f9caE(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.agg)
          to label %.noexc183 unwind label %.loopexit

.noexc183:                                        ; preds = %bb.jw
  %i.agi = load i32, ptr %i.g, align 8, !range !143, !noalias !1411, !noundef !8
  %i.agj = trunc nuw i32 %i.agi to i1
  br i1 %i.agj, label %"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$actix_server..socket..SocketAddr$C$std..io..error..Error$GT$$GT$17h31cad61fb537e766E.exit8.i", label %bb.jz

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1411
  invoke void @_ZN3mio3net3tcp8listener11TcpListener10local_addr17h9a84b47c6617718dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.agg)
          to label %.noexc184 unwind label %.loopexit

.noexc184:                                        ; preds = %bb.jx
  %i.agk = load i16, ptr %i.i, align 8, !range !135, !noalias !1411, !noundef !8
  %i.agl = icmp eq i16 %i.agk, 2
  br i1 %i.agl, label %"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$actix_server..socket..SocketAddr$C$std..io..error..Error$GT$$GT$17h31cad61fb537e766E.exit.i", label %bb.jy

bb.jy:                                            ; preds = %.noexc184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1411
  store i32 1, ptr %i.j, align 8, !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.cp, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false), !noalias !1409
  br label %.noexc185

"_ZN4core3ptr105drop_in_place$LT$core..result..Result$LT$actix_server..socket..SocketAddr$C$std..io..error..Error$GT$$GT$17h31cad61fb537e766E.exit.i": ; preds = %.noexc184
end_hunk_0
begin_hunk_1_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i21.i.i", label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.yq = atomicrmw sub ptr %i.yo, i64 1 release, align 8, !noalias !1660
  %i.yr = icmp eq i64 %i.yq, 1
  br i1 %i.yr, label %bb.gi, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i21.i.i"

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i21.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1504

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i21.i.i": ; preds = %bb.gi, %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1628
  br label %_ZN3std4sync4mpmc7context7Context4with17he2134ef1d8794ed6E.exit.i.i.i

bb.gj:                                            ; preds = %bb.gf
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yt = atomicrmw sub ptr %i.yc, i64 1 release, align 8, !noalias !1669
  %i.yu = icmp eq i64 %i.yt, 1
  br i1 %i.yu, label %bb.gk, label %.body64.i

bb.gk:                                            ; preds = %bb.gj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.body64.i unwind label %bb.ge, !noalias !1628

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5859cced3157ee3aE.exit.i.i.i.i": ; preds = %.noexc73.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h1e71cc9f1787342eE"(ptr nonnull %i.ac)
          to label %_ZN3std4sync4mpmc7context7Context4with17he2134ef1d8794ed6E.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1504

_ZN3std4sync4mpmc7context7Context4with17he2134ef1d8794ed6E.exit.i.i.i: ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5859cced3157ee3aE.exit.i.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i21.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i22.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1628
  br label %bb.du

.split.i23.i.i:                                   ; preds = %.noexc72.i
  %i.yv = extractvalue { i64, i32 } %i.xv, 1      ; 2 uses
  %i.yw = icmp ult i32 %i.yv, 1000000000
  call void @llvm.assume(i1 %i.yw)
  %.not22.i.i.i = icmp samesign ult i32 %i.yv, %i.oq
  br i1 %.not22.i.i.i, label %bb.fy, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"

bb.gl:                                            ; preds = %.noexc72.i
  %.not21.i.i.i = icmp slt i64 %i.xw, %i.xu
  br i1 %.not21.i.i.i, label %bb.fy, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i": ; preds = %bb.gl, %.split.i23.i.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1504
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #35
          to label %.noexc.i142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1504

.loopexit.i:                                      ; preds = %bb.en
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ek
  %lpad.loopexit136.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ee, %bb.dx
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5859cced3157ee3aE.exit.i.i.i.i", %bb.gi, %bb.gd, %bb.fz, %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i16.i.i, %bb.fx
  %lpad.loopexit141.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"
  %lpad.loopexit.split-lp142.i = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.body64.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.gk, %bb.gj, %bb.gb, %bb.ga
  %eh.lpad-body65.i = phi { ptr, i32 } [ %i.ys, %bb.gj ], [ %i.ys, %bb.gk ], [ %i.ye, %bb.gb ], [ %i.ye, %bb.ga ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit136.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit139.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit141.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp142.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h4e8f740e5a31ac37E"(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #36
          to label %.body51.i unwind label %bb.gp, !noalias !1504

.noexc.i142:                                      ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h17930c495968d034E.exit.critedge.i": ; preds = %bb.fv, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h2f021fe0ff9a814cE.exit.sink.split.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1504
  %i.yx = load ptr, ptr %i.az, align 8, !noalias !1504, !nonnull !8, !noundef !8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yy, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  store ptr %i.yx, ptr %i.bn, align 8, !alias.scope !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1504
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$std..sync..mpsc..Receiver$LT$$LP$$RP$$GT$$GT$17h3c0afc5496eece84E"(i64 1, ptr nonnull %i.hw)
          to label %bb.gn unwind label %bb.gs, !noalias !1504

bb.gm:                                            ; preds = %.body51.i
  br i1 %.sroa.01.0.i, label %bb.gr, label %bb.gu

bb.gn:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h17930c495968d034E.exit.critedge.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1504
  %.val.i = load i64, ptr %i.bc, align 8, !noalias !1504 ; 2 uses
  %i.yz = icmp eq i64 %.val.i, 0
  br i1 %i.yz, label %bb.ju, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.za = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val32.i = load ptr, ptr %i.za, align 8, !noalias !1504, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val32.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1504
  br label %bb.ju

bb.gp:                                            ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gr, %.body64.i, %.body51.i
  %i.zb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1504
  unreachable

bb.gq:                                            ; preds = %bb.bi
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i

bb.gr:                                            ; preds = %bb.gm
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..sync..mpsc..Sender$LT$$LP$$RP$$GT$$GT$17hf9cc5a6e53f2c7aeE"(i64 1, ptr nonnull %i.hw) #36
          to label %bb.gt unwind label %bb.gp, !noalias !1504

bb.gs:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h17930c495968d034E.exit.critedge.i"
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.gt:                                            ; preds = %bb.gr, %bb.bg
  %.pn25.pn.ph.i = phi { ptr, i32 } [ %.pn.i, %bb.gr ], [ %i.hy, %bb.bg ]
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_rt..arbiter..ArbiterCommand$GT$$GT$17h63dfb4994c342d98E"(ptr noalias noundef align 8 dereferenceable(8) %i.ay) #36
          to label %bb.gu unwind label %bb.gp, !noalias !1504

bb.gu:                                            ; preds = %bb.gt, %bb.gm
  %.sroa.02.0114.ph.i = phi i1 [ false, %bb.gm ], [ true, %bb.gt ]
  %.pn25.pn110.ph.i = phi { ptr, i32 } [ %.pn.i, %bb.gm ], [ %.pn25.pn.ph.i, %bb.gt ]
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_rt..arbiter..ArbiterCommand$GT$$GT$17h46bb923e9ac3b327E"(ptr noalias noundef align 8 dereferenceable(8) %i.az) #36
          to label %.body.i unwind label %bb.gp, !noalias !1504

bb.gv:                                            ; preds = %.thread.i, %bb.av
  %.pn29105.i = phi { ptr, i32 } [ %i.he, %.thread.i ], [ %.pn25.pn.pn.i, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #36
          to label %.body144 unwind label %bb.gp, !noalias !1504

bb.gw:                                            ; preds = %bb.at
  %.not76 = icmp eq i64 %i.gf, 2
  br i1 %.not76, label %bb.gy, label %bb.gx, !prof !136

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i64 %i.gf, ptr %i.bv, align 8
  %i.ze = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.gv, ptr %i.ze, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.zf = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 -9223372036854775808, ptr %i.zf, align 8
  store i64 0, ptr %i.bs, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i8 0, ptr %i.zg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  store ptr %i.cr, ptr %i.bq, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.463.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1676
  store ptr @167, ptr %i.w, align 8, !noalias !1684
  %.sroa.4.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx216, align 8, !noalias !1684
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.bq, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1684
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.6217.0..sroa_idx, align 8, !noalias !1684
  %.sroa.7218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %.sroa.7218.0..sroa_idx, align 8, !noalias !1684
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w)
          to label %bb.hd unwind label %bb.jq

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store ptr @164, ptr %i.bw, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 1, ptr %i.zh, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr null, ptr %i.zi, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.zj, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 0, ptr %i.zk, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #35
          to label %bb.hb unwind label %bb.ha

bb.gz:                                            ; preds = %.body144, %bb.ha
  %.sroa.021.0 = phi i1 [ %.sroa.021.1, %bb.ha ], [ %.sroa.021.4, %.body144 ] ; 2 uses
  %.pn80 = phi { ptr, i32 } [ %i.zm, %bb.ha ], [ %.pn78, %.body144 ] ; 2 uses
  %i.zl = load i64, ptr %i.gw, align 8, !range !702, !noundef !8
  %.not349 = icmp eq i64 %i.zl, 2
  br i1 %.not349, label %.body177, label %bb.mc

bb.ha:                                            ; preds = %bb.kj, %bb.gy
  %i.zm = landingpad { ptr, i32 }
          cleanup
  %.sroa.021.1 = xor i1 %.not75, true
  br label %bb.gz

bb.hb:                                            ; preds = %bb.gy
  unreachable

bb.hc:                                            ; preds = %bb.hd
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.hd:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  invoke void @_ZN3std6thread7Builder4name17h994fadd2a6dd1509E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.br)
          to label %bb.he unwind label %bb.hc

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 %i.gf, ptr %i.bp, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.gv, ptr %i.zo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zp, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.zq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 0, ptr %i.zq, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.gp, ptr %i.zr, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store ptr %i.fa, ptr %i.zs, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  store ptr %i.fl, ptr %i.zt, align 8
  %i.zu = load i64, ptr %i.cr, align 8, !noundef !8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store i64 %i.zu, ptr %i.zv, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  store ptr %3, ptr %i.zw, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store ptr %i.fu, ptr %i.zx, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  store i64 %i.ft, ptr %i.zy, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aaa = load i64, ptr %i.zz, align 8, !noundef !8
  %i.aab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aac = load i32, ptr %i.aab, align 8, !range !1685, !noundef !8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i64 %i.aaa, ptr %i.aad, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i32 %i.aac, ptr %i.aae, align 8
  %i.aaf = load i64, ptr %4, align 8, !noundef !8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  store i64 %i.aaf, ptr %i.aag, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1692
  store ptr null, ptr %i.v, align 8, !noalias !1695
  %i.aah = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aah, align 8, !alias.scope !1698, !noalias !1699 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i, align 8, !alias.scope !1698, !noalias !1699 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i147, align 8, !alias.scope !1698, !noalias !1699
  %i.aai = load i64, ptr %i.bt, align 8, !range !597, !alias.scope !1698, !noalias !1699, !noundef !8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.aak = load i8, ptr %i.aaj, align 8, !range !348, !alias.scope !1698, !noalias !1699, !noundef !8
  %i.aal = trunc nuw i8 %i.aak to i1
  %i.aam = trunc nuw i64 %i.aai to i1
  br i1 %i.aam, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aan = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.aao = load i64, ptr %i.aan, align 8, !alias.scope !1698, !noalias !1699
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h882d1cbe7e9b4f79E.exit.i.i"

bb.hg:                                            ; preds = %bb.he
  %i.aap = load atomic i64, ptr @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17h33a64b76d9f36017E" monotonic, align 8, !noalias !1695 ; 2 uses
  %i.aaq = icmp eq i64 %i.aap, 0
  br i1 %i.aaq, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1695
  invoke void @_ZN3std3env7_var_os17h5af5bd490bdba3d6E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @297, i64 noundef 14)
          to label %.noexc.i.i149 unwind label %.thread23.i.i, !noalias !1695

.noexc.i.i149:                                    ; preds = %bb.hh
  %i.aar = load i64, ptr %i.m, align 8, !range !341, !noalias !1695, !noundef !8 ; 5 uses
  %.not.i.i.i150 = icmp eq i64 %i.aar, -9223372036854775808
  br i1 %.not.i.i.i150, label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hb4f52497cb89e351E.exit.i.i.i", label %bb.hj

bb.hi:                                            ; preds = %bb.hg
  %i.aas = add i64 %i.aap, -1
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h882d1cbe7e9b4f79E.exit.i.i"

bb.hj:                                            ; preds = %.noexc.i.i149
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.56.0.copyload.i.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !1695, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.67.0.copyload.i.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1700
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.56.0.copyload.i.i.i, i64 noundef %.sroa.67.0.copyload.i.i.i)
          to label %bb.hm unwind label %bb.hk, !noalias !1700

bb.hk:                                            ; preds = %bb.hj
  %i.aat = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aau = icmp eq i64 %i.aar, 0
  br i1 %i.aau, label %.thread16.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.copyload.i.i.i, i64 noundef %i.aar, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1700
  br label %.thread16.i.i

bb.hm:                                            ; preds = %bb.hj
  %i.aav = load i64, ptr %i.l, align 8, !range !597, !noalias !1700, !noundef !8
  %i.aaw = trunc nuw i64 %i.aav to i1
  br i1 %i.aaw, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1700
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"

bb.ho:                                            ; preds = %bb.hm
  %i.aax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !noalias !1700, !nonnull !8, !align !72, !noundef !8 ; 6 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aba = load i64, ptr %i.aaz, align 8, !noalias !1700, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1700
  switch i64 %i.aba, label %bb.hq [
    i64 0, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
    i64 1, label %bb.hp
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.abb = load i8, ptr %i.aay, align 1, !alias.scope !1703, !noalias !1706, !noundef !8
  switch i8 %i.abb, label %.lr.ph.i.i.i.i.i.preheader [
    i8 43, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
    i8 45, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ht, %bb.hr, %bb.hp
  %.sroa.01.162.i.i.i.i.i.ph = phi ptr [ %i.abc, %bb.hr ], [ %i.aay, %bb.ht ], [ %i.aay, %bb.hp ]
  %.sroa.16.161.i.i.i.i.i.ph = phi i64 [ %i.abd, %bb.hr ], [ %i.aba, %bb.ht ], [ 1, %bb.hp ]
  br label %.lr.ph.i.i.i.i.i

bb.hq:                                            ; preds = %bb.ho
  %.pr.i.i.i.i.i = load i8, ptr %i.aay, align 1, !alias.scope !1703, !noalias !1706
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i, 43
  br i1 %cond.i.i.i.i.i, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 1 ; 2 uses
  %i.abd = add i64 %i.aba, -1                     ; 2 uses
  %i.abe = icmp ult i64 %i.aba, 18
  br i1 %i.abe, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader53.i.i.i.i.i

.preheader53.i.i.i.i.i:                           ; preds = %bb.ht, %bb.hr
  %.sroa.16.0.ph.i.i.i.i.i = phi i64 [ %i.aba, %bb.ht ], [ %i.abd, %bb.hr ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i.i = phi ptr [ %i.aay, %bb.ht ], [ %i.abc, %bb.hr ]
  %.not.i.not.i.i.i.i514 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i514, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i", label %.lr.ph

bb.hs:                                            ; preds = %bb.hu
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i517, i64 1
  %i.abg = add i64 %.sroa.16.0.i.i.i.i.i516, -1   ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not.i.not.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i", label %.lr.ph

bb.ht:                                            ; preds = %bb.hq
  %i.abh = icmp ult i64 %i.aba, 17
  br i1 %i.abh, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader53.i.i.i.i.i

.lr.ph:                                           ; preds = %.preheader53.i.i.i.i.i, %bb.hs
  %.sroa.01.0.i.i.i.i.i517 = phi ptr [ %i.abf, %bb.hs ], [ %.sroa.01.0.ph.i.i.i.i.i, %.preheader53.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i516 = phi i64 [ %i.abg, %bb.hs ], [ %.sroa.16.0.ph.i.i.i.i.i, %.preheader53.i.i.i.i.i ]
  %.sroa.017.0.i.i.i.i.i515 = phi i64 [ %i.abq, %bb.hs ], [ 0, %.preheader53.i.i.i.i.i ]
  %i.abi = load i8, ptr %.sroa.01.0.i.i.i.i.i517, align 1, !alias.scope !1703, !noalias !1706, !noundef !8
  %i.abj = zext i8 %i.abi to i32
  %i.abk = add nsw i32 %i.abj, -48                ; 2 uses
  %i.abl = icmp ult i32 %i.abk, 10
  br i1 %i.abl, label %bb.hu, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i"

bb.hu:                                            ; preds = %.lr.ph
  %i.abm = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i.i.i.i.i515, i64 10) ; 2 uses
  %i.abn = extractvalue { i64, i1 } %i.abm, 0     ; 2 uses
  %i.abo = extractvalue { i64, i1 } %i.abm, 1
  %i.abp = zext nneg i32 %i.abk to i64
  %i.abq = add i64 %i.abn, %i.abp                 ; 3 uses
  %.not50.i.i.i.i.i = icmp ult i64 %i.abq, %i.abn
  %or.cond.i.i.i.i = select i1 %i.abo, i1 true, i1 %.not50.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.i.i.i.i", label %bb.hs

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.hv
end_hunk_1
begin_hunk_2_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %i.ado = load ptr, ptr %i.q, align 8, !alias.scope !1735, !noalias !1695, !nonnull !8, !noundef !8
  %i.adp = atomicrmw sub ptr %i.ado, i64 1 release, align 8, !noalias !1736
  %i.adq = icmp eq i64 %i.adp, 1
  br i1 %i.adq, label %bb.ix, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i"

bb.ix:                                            ; preds = %bb.iw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i" unwind label %.thread31.i.i, !noalias !1695

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i": ; preds = %bb.ix, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1695
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.adr = load ptr, ptr %i.u, align 8, !alias.scope !1749, !noalias !1695, !nonnull !8, !noundef !8
  %i.ads = atomicrmw sub ptr %i.adr, i64 1 release, align 8, !noalias !1750
  %i.adt = icmp eq i64 %i.ads, 1
  br i1 %i.adt, label %bb.iy, label %bb.jj

bb.iy:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.jj unwind label %bb.hx, !noalias !1695

bb.iz:                                            ; preds = %bb.is
  %i.adu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17heea3bd4bf211275fE"(ptr nonnull %i.adc, ptr nonnull @294) #36
          to label %.thread36.i.i unwind label %bb.ja, !noalias !1695

bb.ja:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i", %bb.jh, %.noexc51.i.i, %bb.je, %bb.jc, %bb.jb, %bb.iz, %bb.ic
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1725
  unreachable

.thread36.i.i:                                    ; preds = %bb.jc, %bb.iz, %bb.it, %bb.iq
  %.pn39.i.i = phi { ptr, i32 } [ %i.ade, %bb.iq ], [ %i.adz, %bb.jc ], [ %i.adh, %bb.it ], [ %i.adu, %bb.iz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  %i.adw = load ptr, ptr %i.q, align 8, !alias.scope !1757, !noalias !1695, !nonnull !8, !noundef !8
  %i.adx = atomicrmw sub ptr %i.adw, i64 1 release, align 8, !noalias !1758
  %i.ady = icmp eq i64 %i.adx, 1
  br i1 %i.ady, label %bb.jb, label %.thread27.i.i

bb.jb:                                            ; preds = %.thread36.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.thread27.i.i unwind label %bb.ja, !noalias !1695

bb.jc:                                            ; preds = %bb.in
  %i.adz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr177drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf13649aaf31e161E"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.p) #36
          to label %.thread36.i.i unwind label %bb.ja, !noalias !1695

bb.jd:                                            ; preds = %bb.ih
  %i.aea = atomicrmw sub ptr %i.acm, i64 1 release, align 8, !noalias !1759
  %i.aeb = icmp eq i64 %i.aea, 1
  br i1 %i.aeb, label %bb.je, label %.noexc51.i.i

bb.je:                                            ; preds = %bb.jd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc51.i.i unwind label %bb.ja, !noalias !1695

.noexc51.i.i:                                     ; preds = %bb.je, %bb.jd
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef align 8 dereferenceable(32) %i.s) #36
          to label %.thread27.i.i unwind label %bb.ja, !noalias !1695

.thread.i.i:                                      ; preds = %bb.ic, %.thread27.i.i, %bb.hx
  %.pn3315.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.hx ], [ %.pn30.pn.i.i, %bb.ic ], [ %.pn30.pn.i.i, %.thread27.i.i ] ; 2 uses
  %.sroa.020.014.i.i = phi i8 [ %.sroa.020.1.ph.i.i, %bb.hx ], [ %.sroa.020.2.i.i, %bb.ic ], [ %.sroa.020.2.i.i, %.thread27.i.i ]
  %.sroa.019.013.i.i = phi i8 [ %.sroa.020.1.ph.i.i, %bb.hx ], [ %.sroa.019.2.i.i, %bb.ic ], [ %.sroa.019.2.i.i, %.thread27.i.i ]
  %i.aec = trunc nuw i8 %.sroa.019.013.i.i to i1
  br i1 %i.aec, label %.thread.thread.i.i, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i"

.thread16.i.i:                                    ; preds = %.thread23.i.i, %bb.hl, %bb.hk
  %eh.lpad-body4121.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread23.i.i ], [ %i.aat, %bb.hl ], [ %i.aat, %bb.hk ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.jf [
    i64 -9223372036854775808, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"
    i64 0, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"
  ]

bb.jf:                                            ; preds = %.thread16.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1695
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i": ; preds = %bb.jh, %bb.jg, %.thread.thread.i.i, %.thread.i.i
  %i.aed = trunc nuw i8 %.sroa.020.014.i.i to i1
  br i1 %i.aed, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i", label %.body177

.thread.thread.i.i:                               ; preds = %.thread.i.i
  %.pre57.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1768, !noalias !1695 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.aee = icmp eq ptr %.pre57.i.i, null
  br i1 %i.aee, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i", label %bb.jg

bb.jg:                                            ; preds = %.thread.thread.i.i
  %i.aef = atomicrmw sub ptr %.pre57.i.i, i64 1 release, align 8, !noalias !1771
  %i.aeg = icmp eq i64 %i.aef, 1
  br i1 %i.aeg, label %bb.jh, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i"

bb.jh:                                            ; preds = %bb.jg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbfbb7d711b1d7fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" unwind label %bb.ja, !noalias !1695

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i": ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i", %bb.jf, %.thread16.i.i, %.thread16.i.i
  %.pn33154973.i.i = phi { ptr, i32 } [ %.pn3315.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" ], [ %eh.lpad-body4121.i.i, %bb.jf ], [ %eh.lpad-body4121.i.i, %.thread16.i.i ], [ %eh.lpad-body4121.i.i, %.thread16.i.i ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.bp) #36
          to label %.body177 unwind label %bb.ja, !noalias !1725

bb.ji:                                            ; preds = %bb.jn
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.jj:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i.i", %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1692
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adm) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1776
  store ptr %i.adm, ptr %i.k, align 8, !noalias !1776
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @168, i64 noundef 33, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #35
          to label %bb.jl unwind label %bb.jk, !noalias !1776

bb.jk:                                            ; preds = %bb.jj
  %i.aei = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #36
          to label %.body177 unwind label %bb.jm, !noalias !1776

bb.jl:                                            ; preds = %bb.jj
  unreachable

bb.jm:                                            ; preds = %bb.jk
  %i.aej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1776
  unreachable

bb.jn:                                            ; preds = %bb.iv
  %i.aek = ptrtoint ptr %i.adm to i64
  %i.ael = load ptr, ptr %i.u, align 8, !noalias !1695, !nonnull !8, !noundef !8
  %i.aem = load ptr, ptr %i.q, align 8, !noalias !1695, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  store ptr %i.ael, ptr %i.bu, align 8, !alias.scope !1776
  %.sroa.6.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.aem, ptr %.sroa.6.0..sroa_idx214, align 8, !alias.scope !1776
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.aek, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1776
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..JoinHandle$LT$$LP$$RP$$GT$$GT$17h4e8f740e5a31ac37E"(ptr noalias noundef align 8 dereferenceable(24) %i.bu)
          to label %bb.jo unwind label %bb.ji

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.jp

bb.jp:                                            ; preds = %bb.kk, %bb.jo
  %i.aen = load i64, ptr %i.gw, align 8, !range !702, !noundef !8 ; 2 uses
  %i.aeo = icmp ne i64 %i.aen, 2
  %or.cond = and i1 %.not75, %i.aeo
  br i1 %or.cond, label %bb.lq, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.jq:                                            ; preds = %bb.gx
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jr:                                            ; preds = %bb.mo, %bb.mg, %.body177, %bb.md, %.noexc205, %bb.mn, %.thread235, %bb.ml, %bb.mk, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit", %bb.me, %bb.mc, %.body160, %.body144, %bb.js
  %i.aeq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.js:                                            ; preds = %bb.jq, %bb.hc
  %.pn.ph = phi { ptr, i32 } [ %i.zn, %bb.hc ], [ %i.aep, %bb.jq ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE"(ptr noalias noundef align 8 dereferenceable(16) %i.bv) #36
          to label %.body177 unwind label %bb.jr

.body144:                                         ; preds = %bb.jt, %bb.gv, %bb.av, %.body160
  %.sroa.021.4 = phi i1 [ false, %.body160 ], [ %.sroa.021.5, %bb.jt ], [ true, %bb.gv ], [ true, %bb.av ]
  %.pn78 = phi { ptr, i32 } [ %eh.lpad-body161, %.body160 ], [ %i.aer, %bb.jt ], [ %.pn29105.i, %bb.gv ], [ %.pn25.pn.pn.i, %bb.av ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bo) #36
          to label %bb.gz unwind label %bb.jr

bb.jt:                                            ; preds = %bb.au, %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit
  %.sroa.021.5 = phi i1 [ false, %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit ], [ true, %bb.au ]
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.ju:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.aes = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aes, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %i.bm, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.gp, ptr %i.aet, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store ptr %i.fa, ptr %i.aeu, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store ptr %i.fl, ptr %i.aev, align 8
  %i.aew = load i64, ptr %i.cr, align 8, !noundef !8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i64 %i.aew, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store ptr %3, ptr %i.aey, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  store ptr %i.fu, ptr %i.aez, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store i64 %i.ft, ptr %i.afa, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.afc = load i64, ptr %i.afb, align 8, !noundef !8
  %i.afd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.afe = load i32, ptr %i.afd, align 8, !range !1685, !noundef !8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 %i.afc, ptr %i.aff, align 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.afe, ptr %i.afg, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store i8 0, ptr %i.afh, align 8
  %.val99 = load ptr, ptr %i.bn, align 8          ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1782
  %i.afi = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1782 ; 8 uses
  %i.afj = icmp eq ptr %i.afi, null
  br i1 %i.afj, label %bb.jv, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i", !prof !136

bb.jv:                                            ; preds = %bb.ju
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #35
          to label %.noexc.i159 unwind label %bb.jw, !noalias !1787

.noexc.i159:                                      ; preds = %bb.jv
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.afk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE"(ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bm) #36
          to label %.body160 unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.afl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1787
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i": ; preds = %bb.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.afi, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bm, i64 112, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val99) ]
  %i.afm = getelementptr inbounds nuw i8, ptr %.val99, i64 448 ; 2 uses
  %i.afn = load atomic i64, ptr %i.afm acquire, align 8, !noalias !1788
  br label %bb.jy

bb.jy:                                            ; preds = %bb.kb, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i"
  %.sroa.01.0.i.i.i155 = phi i64 [ %i.afn, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h1c537dca29cb20bbE.exit.i" ], [ %.sroa.01.0.i.i.i.i157, %bb.kb ] ; 4 uses
  %i.afo = and i64 %.sroa.01.0.i.i.i155, 1
  %.not.i.i.i156 = icmp eq i64 %i.afo, 0
  br i1 %.not.i.i.i156, label %bb.jz, label %bb.kh

bb.jz:                                            ; preds = %bb.jy
  %i.afp = icmp eq i64 %.sroa.01.0.i.i.i155, -2
  br i1 %i.afp, label %bb.ka, label %bb.kb, !prof !136

bb.ka:                                            ; preds = %bb.jz
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
          to label %.noexc.i.i158 unwind label %bb.kf, !noalias !1794

.noexc.i.i158:                                    ; preds = %bb.ka
  unreachable

bb.kb:                                            ; preds = %bb.jz
  %i.afq = add nuw i64 %.sroa.01.0.i.i.i155, 2
  %i.afr = cmpxchg ptr %i.afm, i64 %.sroa.01.0.i.i.i155, i64 %i.afq acq_rel acquire, align 8, !noalias !1788 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.afr, 1
  %.sroa.01.0.i.i.i.i157 = extractvalue { i64, i1 } %i.afr, 0
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.kc, label %bb.jy

bb.kc:                                            ; preds = %bb.kb
  %i.afs = getelementptr inbounds nuw i8, ptr %.val99, i64 128
  %i.aft = getelementptr inbounds nuw i8, ptr %.val99, i64 136
  %i.afu = atomicrmw add ptr %i.aft, i64 1 acquire, align 8, !noalias !1794 ; 2 uses
  %i.afv = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he9129a4524166ed1E"(ptr noundef nonnull align 8 %i.afs, i64 noundef %i.afu)
          to label %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i" unwind label %bb.kd, !noalias !1794 ; 2 uses

bb.kd:                                            ; preds = %bb.kc
  %i.afw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afi, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.ke, !noalias !1794

bb.ke:                                            ; preds = %bb.kd
  %i.afx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1794
  unreachable

"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i": ; preds = %bb.kc
  %i.afy = and i64 %i.afu, 31                     ; 2 uses
  %i.afz = getelementptr inbounds nuw [16 x i8], ptr %i.afv, i64 %i.afy ; 2 uses
  store ptr %i.afi, ptr %i.afz, align 8, !noalias !1794
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  store ptr @456, ptr %i.aga, align 8, !noalias !1794
  %i.agb = shl nuw nsw i64 1, %i.afy
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 528
  %i.agd = atomicrmw or ptr %i.agc, i64 %i.agb release, align 8, !noalias !1794 ; 0 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.val99, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.age)
          to label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit unwind label %bb.ki

bb.kf:                                            ; preds = %bb.ka
  %i.agf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afi, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.kg, !noalias !1794

bb.kg:                                            ; preds = %bb.kf
  %i.agg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1794
  unreachable

bb.kh:                                            ; preds = %bb.jy
  invoke void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE"(ptr noundef nonnull %i.afi)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" unwind label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", !noalias !1795

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.kh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afi, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1795
  br label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i": ; preds = %bb.kh
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afi, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1795
  br label %.body160

bb.ki:                                            ; preds = %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %bb.jw, %bb.kd, %bb.kf, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", %bb.ki
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.agi, %bb.ki ], [ %i.agh, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i" ], [ %i.afk, %bb.jw ], [ %i.afw, %bb.kd ], [ %i.agf, %bb.kf ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn) #36
          to label %.body144 unwind label %bb.jr

_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn)
          to label %bb.kj unwind label %bb.jt

bb.kj:                                            ; preds = %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.kk unwind label %bb.ha

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.jp

"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit": ; preds = %bb.lt, %bb.lr, %bb.ls, %bb.lu, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.agj = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.agj, align 8, !noalias !1798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1798
  %i.agk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.agl = getelementptr inbounds nuw i8, ptr %i.gp, i64 400 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.gp, i64 392 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.gp, i64 408
  %i.ago = getelementptr inbounds nuw i8, ptr %i.gp, i64 416
  %i.agp = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  %i.agq = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.agr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_2
begin_hunk_3_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %.body177 unwind label %bb.la, !noalias !1798

bb.la:                                            ; preds = %bb.kz
  %i.aim = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1798
  unreachable

bb.lb:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i"
  %i.ain = load i64, ptr %i.j, align 8, !noalias !1798, !noundef !8 ; 2 uses
  %i.aio = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc179:                                        ; preds = %bb.lb
  %i.aip = extractvalue { i64, i32 } %i.aio, 0    ; 2 uses
  %i.aiq = icmp eq i64 %i.aip, %i.ain
  br i1 %i.aiq, label %.split.i.i, label %bb.lp

bb.lc:                                            ; preds = %bb.lp, %.split.i.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1808
  store ptr %i.i, ptr %i.g, align 8, !noalias !1798
  store ptr %i.gp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx.i.i172, align 8, !noalias !1798
  %i.air = load i8, ptr %i.ags, align 8, !range !1422, !noalias !1811, !noundef !8
  %i.ais = icmp eq i8 %i.air, 1
  br i1 %i.ais, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i: ; preds = %bb.lc
  %i.ait = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.agr, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc180:                                        ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i
  %i.aiu = icmp eq ptr %i.ait, null
  br i1 %i.aiu, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0fe22dba7fe8b63dE.exit.i.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i: ; preds = %.noexc180, %bb.lc
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.ait, %.noexc180 ], [ %i.agr, %bb.lc ] ; 4 uses
  %i.aiv = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808
  %.not.i.i.i.i.i = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i.i.i.i, label %bb.ld, label %bb.lj, !prof !136

bb.ld:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1808
  %i.aiw = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc181:                                        ; preds = %bb.ld
  store ptr %i.aiw, ptr %i.f, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1808
  store ptr %i.i, ptr %i.d, align 8, !noalias !1808
  store ptr %i.gp, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !1798
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %i.aiw)
          to label %bb.lg unwind label %bb.le, !noalias !1808

bb.le:                                            ; preds = %.noexc181
  %i.aix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.aiy = load ptr, ptr %i.f, align 8, !alias.scope !1827, !noalias !1808, !nonnull !8, !noundef !8
  %i.aiz = atomicrmw sub ptr %i.aiy, i64 1 release, align 8, !noalias !1828
  %i.aja = icmp eq i64 %i.aiz, 1
  br i1 %i.aja, label %bb.lf, label %.body177

bb.lf:                                            ; preds = %bb.le
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body177 unwind label %bb.li, !noalias !1808

bb.lg:                                            ; preds = %.noexc181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1808
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.ajb = load ptr, ptr %i.f, align 8, !alias.scope !1838, !noalias !1808, !nonnull !8, !noundef !8
  %i.ajc = atomicrmw sub ptr %i.ajb, i64 1 release, align 8, !noalias !1839
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.lh, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i"

bb.lh:                                            ; preds = %bb.lg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i": ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1808
  br label %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i

bb.li:                                            ; preds = %bb.lo, %bb.lf
  %i.aje = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1808
  unreachable

bb.lj:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1808
  store ptr %i.aiv, ptr %i.e, align 8, !noalias !1808
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  store atomic i64 0, ptr %i.ajf release, align 8, !noalias !1808
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  store atomic ptr null, ptr %i.ajg release, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1808
  store ptr %i.i, ptr %i.c, align 8, !noalias !1808
  store ptr %i.gp, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !1798
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.aiv)
          to label %bb.lk unwind label %bb.ln, !noalias !1808

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1808
  %i.ajh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808, !noundef !8 ; 3 uses
  store ptr %i.ajh, ptr %i.b, align 8, !noalias !1808
  store ptr %i.aiv, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808
  %i.aji = icmp eq ptr %i.ajh, null
  br i1 %i.aji, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i", label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.ajj = atomicrmw sub ptr %i.ajh, i64 1 release, align 8, !noalias !1840
  %i.ajk = icmp eq i64 %i.ajj, 1
  br i1 %i.ajk, label %bb.lm, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i"

bb.lm:                                            ; preds = %bb.ll
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i": ; preds = %bb.lm, %bb.ll, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1808
  br label %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i

bb.ln:                                            ; preds = %bb.lj
  %i.ajl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajm = atomicrmw sub ptr %i.aiv, i64 1 release, align 8, !noalias !1849
  %i.ajn = icmp eq i64 %i.ajm, 1
  br i1 %i.ajn, label %bb.lo, label %.body177

bb.lo:                                            ; preds = %bb.ln
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body177 unwind label %bb.li, !noalias !1808

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0fe22dba7fe8b63dE.exit.i.i.i": ; preds = %.noexc180
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h0a5b9c5b2d8bbd69E"(ptr nonnull %i.g)
          to label %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i unwind label %.loopexit.split-lp.loopexit

_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i: ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0fe22dba7fe8b63dE.exit.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1808
  br label %bb.kl

.split.i.i:                                       ; preds = %.noexc179
  %i.ajo = extractvalue { i64, i32 } %i.aio, 1    ; 2 uses
  %i.ajp = icmp ult i32 %i.ajo, 1000000000
  call void @llvm.assume(i1 %i.ajp)
  %.not19.i.i = icmp samesign ult i32 %i.ajo, %i.aie
  br i1 %.not19.i.i, label %bb.lc, label %bb.lv

bb.lp:                                            ; preds = %.noexc179
  %.not18.i.i = icmp slt i64 %i.aip, %i.ain
  br i1 %.not18.i.i, label %bb.lc, label %bb.lv

bb.lq:                                            ; preds = %bb.jp
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %i.ajq = icmp eq i64 %i.aen, 0
  br i1 %i.ajq, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %i.ajr = load ptr, ptr %i.gx, align 8, !alias.scope !1868, !nonnull !8, !noundef !8
  %i.ajs = atomicrmw sub ptr %i.ajr, i64 1 release, align 8, !noalias !1868
  %i.ajt = icmp eq i64 %i.ajs, 1
  br i1 %i.ajt, label %bb.ls, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.ls:                                            ; preds = %bb.lr
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit" unwind label %.loopexit.split-lp.loopexit.split-lp

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.aju = load ptr, ptr %i.gx, align 8, !alias.scope !1875, !nonnull !8, !noundef !8
  %i.ajv = atomicrmw sub ptr %i.aju, i64 1 release, align 8, !noalias !1875
  %i.ajw = icmp eq i64 %i.ajv, 1
  br i1 %i.ajw, label %bb.lu, label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"

bb.lu:                                            ; preds = %bb.lt
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit" unwind label %.loopexit.split-lp.loopexit.split-lp

.body177:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.jk, %bb.ji, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i", %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i", %bb.js, %bb.lo, %bb.ln, %bb.lf, %bb.le, %bb.kz, %bb.ky, %bb.mc, %bb.gz
  %.sroa.021.6 = phi i1 [ true, %bb.js ], [ %.sroa.021.0, %bb.mc ], [ %.sroa.021.0, %bb.gz ], [ false, %bb.ky ], [ false, %bb.kz ], [ false, %bb.le ], [ false, %bb.lf ], [ false, %bb.ln ], [ false, %bb.lo ], [ false, %bb.jk ], [ false, %bb.ji ], [ false, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i" ], [ false, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp ], [ false, %.loopexit ]
  %.pn82 = phi { ptr, i32 } [ %.pn.ph, %bb.js ], [ %.pn80, %bb.mc ], [ %.pn80, %bb.gz ], [ %i.aik, %bb.ky ], [ %i.aik, %bb.kz ], [ %i.aix, %bb.le ], [ %i.aix, %bb.lf ], [ %i.ajl, %bb.ln ], [ %i.ajl, %bb.lo ], [ %i.aei, %bb.jk ], [ %i.aeh, %bb.ji ], [ %.pn33154973.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.thread.i.i" ], [ %.pn3315.i.i, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h2f057a40864f7596E.exit.i.i" ], [ %lpad.loopexit350, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$std..sync..mpsc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h862110b49b067debE"(i64 0, ptr nonnull %i.gp) #36
          to label %bb.ly unwind label %bb.jr

.loopexit:                                        ; preds = %bb.kp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body177

.loopexit.split-lp.loopexit:                      ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0fe22dba7fe8b63dE.exit.i.i.i", %bb.lm, %bb.lh, %bb.ld, %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i, %bb.lb
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %.body177

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.lu, %bb.ls, %bb.lv
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.lv:                                            ; preds = %bb.lp, %.split.i.i, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.lv
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7a474dea6cbbd931E.exit": ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not85.not = icmp eq ptr %i.aii, null
  br i1 %.not85.not, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7a474dea6cbbd931E.exit"
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aii, ptr %i.ajx, align 8
  store ptr null, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$std..sync..mpsc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h862110b49b067debE"(i64 0, ptr nonnull %i.gp)
          to label %bb.ma unwind label %.thread335

.thread335:                                       ; preds = %bb.lw
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit"

bb.lx:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7a474dea6cbbd931E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i64 48, i1 false)
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$std..sync..mpsc..Receiver$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h862110b49b067debE"(i64 0, ptr nonnull %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.lz

bb.ly:                                            ; preds = %.body177
  br i1 %.sroa.021.6, label %bb.md, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit"

bb.lz:                                            ; preds = %bb.ma, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  ret void

bb.ma:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef align 8 dereferenceable(48) %i.cb)
  br label %bb.lz

bb.mb:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit"
  br i1 %.sroa.025.0260, label %bb.mh, label %.thread345

bb.mc:                                            ; preds = %bb.gz
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE"(ptr noalias noundef align 8 dereferenceable(16) %i.gw) #36
          to label %.body177 unwind label %bb.jr

bb.md:                                            ; preds = %bb.ly
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$std..sync..mpsc..SyncSender$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h14e8596d1877b5ffE"(i64 0, ptr nonnull %i.gp) #36
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit" unwind label %bb.jr

bb.me:                                            ; preds = %bb.aq, %bb.as
  %eh.lpad-body137 = phi { ptr, i32 } [ %i.gt, %bb.as ], [ %i.gr, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$tokio..runtime..handle..Handle$GT$$GT$17h22ec016fa6a6e60fE"(ptr noalias noundef align 8 dereferenceable(16) %i.bz) #36
          to label %bb.mf unwind label %bb.jr

bb.mf:                                            ; preds = %bb.me, %bb.al
  %.pn86.pn.pn.ph = phi { ptr, i32 } [ %i.ge, %bb.al ], [ %eh.lpad-body137, %bb.me ] ; 2 uses
  %i.ajz = load ptr, ptr %i.ca, align 8, !alias.scope !1876, !noundef !8
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit", label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit" unwind label %bb.jr

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$actix_rt..system..System$GT$$GT$17h8662e53f56900f4fE.exit": ; preds = %bb.md, %bb.ly, %.thread335, %bb.mf, %bb.mg, %.thread256
  %.pn86.pn.pn.pn261 = phi { ptr, i32 } [ %i.gd, %.thread256 ], [ %i.ajy, %.thread335 ], [ %.pn86.pn.pn.ph, %bb.mg ], [ %.pn86.pn.pn.ph, %bb.mf ], [ %.pn82, %bb.ly ], [ %.pn82, %bb.md ] ; 3 uses
  %.sroa.025.0260 = phi i1 [ true, %.thread256 ], [ false, %.thread335 ], [ true, %bb.mg ], [ true, %bb.mf ], [ false, %bb.ly ], [ true, %bb.md ]
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$$LP$actix_server..worker..WorkerHandleAccept$C$actix_server..worker..WorkerHandleServer$RP$$GT$17hed9d79695ebb42a7E"(ptr noalias noundef align 8 dereferenceable(48) %i.cb) #36
          to label %bb.mb unwind label %bb.jr

bb.mh:                                            ; preds = %bb.mb
  %i.akb = atomicrmw sub ptr %i.fu, i64 1 release, align 8, !noalias !1879
  %i.akc = icmp eq i64 %i.akb, 1
  br i1 %i.akc, label %bb.mi, label %bb.mk

bb.mi:                                            ; preds = %bb.mh
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0540fea244bce1c3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cc)
  br label %bb.mk

bb.mj:                                            ; preds = %bb.mk
  br i1 %i.fv, label %bb.ml, label %.thread235

bb.mk:                                            ; preds = %bb.ag, %bb.mh, %bb.mi
  %.pn91.pn.ph = phi { ptr, i32 } [ %i.fw, %bb.ag ], [ %.pn86.pn.pn.pn261, %bb.mh ], [ %.pn86.pn.pn.pn261, %bb.mi ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias noundef align 8 dereferenceable(8) %i.cd) #36
          to label %bb.mj unwind label %bb.jr

bb.ml:                                            ; preds = %bb.mj
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..worker..Stop$GT$$GT$17h4793731ee76c9365E"(ptr noalias noundef align 8 dereferenceable(8) %i.ce) #36
          to label %.thread235 unwind label %bb.jr

bb.mm:                                            ; preds = %.thread235
  br i1 %.sroa.029.0240, label %bb.mn, label %.thread

.thread235:                                       ; preds = %bb.mj, %bb.ml, %bb.aa, %bb.ad
  %.pn91.pn.pn244 = phi { ptr, i32 } [ %i.fn, %bb.aa ], [ %i.fr, %bb.ad ], [ %.pn91.pn.ph, %bb.ml ], [ %.pn91.pn.ph, %bb.mj ] ; 2 uses
  %.sroa.029.0240 = phi i1 [ true, %bb.aa ], [ true, %bb.ad ], [ true, %bb.ml ], [ false, %bb.mj ]
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E"(ptr noalias noundef align 8 dereferenceable(8) %i.cf) #36
          to label %bb.mm unwind label %bb.jr

bb.mn:                                            ; preds = %bb.mm
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_server..worker..Conn$GT$$GT$17h6bb4828ba1ff0666E"(ptr noalias noundef align 8 dereferenceable(8) %i.cg) #36
          to label %.thread unwind label %bb.jr

.thread:                                          ; preds = %bb.mm, %bb.mn, %bb.t, %bb.b
  %.pn91.pn.pn.pn228.a = phi { ptr, i32 } [ %i.fc, %bb.t ], [ %i.cu, %bb.b ], [ %.pn91.pn.pn244, %bb.mn ], [ %.pn91.pn.pn244, %bb.mm ]
  %i.akd = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !1886
  %i.ake = icmp eq i64 %i.akd, 1
  br i1 %i.ake, label %bb.mo, label %.noexc205

bb.mo:                                            ; preds = %.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcf0bc3cad65d82b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cq)
          to label %.noexc205 unwind label %bb.jr

.thread345:                                       ; preds = %bb.mb, %.noexc205
  %.pn91.pn.pn.pn229 = phi { ptr, i32 } [ %.pn86.pn.pn.pn261, %bb.mb ], [ %.pn91.pn.pn.pn228.a, %.noexc205 ]
  resume { ptr, i32 } %.pn91.pn.pn.pn229

.noexc205:                                        ; preds = %bb.mo, %.thread
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$actix_server..service..InternalServiceFactory$GT$$GT$$GT$17h65f52cb425d2a86bE"(ptr noalias noundef align 8 dereferenceable(24) %2) #36
          to label %.thread345 unwind label %bb.jr
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN12actix_server6worker12ServerWorker5start28_$u7b$$u7b$closure$u7d$$u7d$17hb2d649d431f0ba3aE"(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412.i.i.i.i.i.i.i.i.i.i.i = alloca [188 x i8], align 4 ; 4 uses
  %i.a = alloca [384 x i8], align 128             ; 14 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [192 x i8], align 8               ; 4 uses
  %i.i = alloca [184 x i8], align 8               ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !1422, !noundef !8
  switch i8 %i.k, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.bl
    i8 2, label %bb.bm
  ]

default.unreachable11:                            ; preds = %.thread11.i.i.i, %bb.i, %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.n = load i64, ptr %0, align 8, !range !702, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noundef !8
  store i64 %i.n, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.t = load <2 x ptr>, ptr %i.r, align 8
  store <2 x ptr> %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load <2 x ptr>, ptr %i.u, align 8
  store <2 x ptr> %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.z = load <2 x i64>, ptr %i.w, align 8
  store <2 x i64> %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !range !1685, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store i8 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1893
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.i, i64 184, i1 false)
  store i64 1, ptr %i.h, align 8, !noalias !1893
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1422, !noalias !1893, !noundef !8
  %.sink49.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink49.i.sroa.gep1.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink49.i.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink49.i.sroa.gep4.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink49.i.sroa.gep6.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink49.i.sroa.gep7.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink49.i.sroa.gep9.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink49.i.sroa.gep10.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  switch i8 %i.ak, label %default.unreachable11 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.thread11.i.i.i
  ], !prof !1900

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i unwind label %bb.aq, !noalias !1893

.noexc.i.i.i:                                     ; preds = %bb.c
  store i8 1, ptr %i.aj, align 8, !noalias !1893
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.al = load i64, ptr %i.ai, align 8, !noalias !1893, !noundef !8 ; 3 uses
  %i.am = icmp ult i64 %i.al, 9223372036854775807
  br i1 %i.am, label %bb.f, label %bb.e, !prof !145

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #35
          to label %.noexc17.i.i.i unwind label %bb.aq, !noalias !1893

.noexc17.i.i.i:                                   ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.an = add nuw nsw i64 %i.al, 1
  store i64 %i.an, ptr %i.ai, align 8, !noalias !1893
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !702, !noalias !1893, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1901, !noalias !1893, !nonnull !8, !noundef !8 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 560
  %i.au = load i64, ptr %i.at, align 16, !noalias !1893, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !1422, !noalias !1904, !noundef !8
  switch i8 %i.ax, label %default.unreachable11 [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.n
  ], !prof !1900

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.av, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc.i.i.i.i.i unwind label %.thread.thread44.i.i.i, !noalias !1893

.noexc.i.i.i.i.i:                                 ; preds = %bb.j
  store i8 1, ptr %i.aw, align 8, !noalias !1904
  br label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i, %bb.i
  %i.ay = load ptr, ptr %i.av, align 8, !noalias !1904, !noundef !8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !noalias !1893, !noundef !8 ; 2 uses
  %i.az = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !noalias !1893
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.ak, !prof !136

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.i
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc13.i.i.i.i.i unwind label %.thread.thread44.i.i.i, !noalias !1893

.noexc13.i.i.i.i.i:                               ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.bc = invoke noundef zeroext i1 @_ZN5tokio7runtime9scheduler6Handle32can_spawn_local_on_local_runtime17h6025809b54a3bff2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %.noexc14.i.i.i.i.i unwind label %.thread.thread44.i.i.i, !noalias !1893

.noexc14.i.i.i.i.i:                               ; preds = %bb.o
  br i1 %i.bc, label %.preheader.i.i, label %bb.ax

.preheader.i.i:                                   ; preds = %.noexc14.i.i.i.i.i, %.preheader.i.i
  %i.bd = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !1904 ; 3 uses
  %.not16.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not16.i.i.i.i.i.i, label %.preheader.i.i, label %bb.p

bb.p:                                             ; preds = %.preheader.i.i
  %i.be = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !1905
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1912
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 528 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !noalias !1920, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !1920
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.t, label %bb.s

end_hunk_3
begin_hunk_4_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE:bb.a

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %.not.i.i.i9.i.i = icmp eq i32 %.sroa.0.082.i42.i.i.i, 0
  br i1 %.not.i.i.i9.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.preheader

.lr.ph.i.i.i10.i.i.preheader:                     ; preds = %bb.bs
  %i.if = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.ig = icmp ult i32 %i.if, 7
  br i1 %i.ig, label %.lr.ph.i.i.i10.i.i.epil.preheader, label %.lr.ph.i.i.i10.i.i.preheader.new

.lr.ph.i.i.i10.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i10.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i10.i.i

.lr.ph.i.i.i10.i.i:                               ; preds = %.lr.ph.i.i.i10.i.i, %.lr.ph.i.i.i10.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i10.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i10.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i10.i.i

"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i": ; preds = %bb.bt, %._crit_edge.i.i.i
  %.sroa.043.1.i.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i.i, %._crit_edge.i.i.i ], [ %i.ii, %bb.bt ] ; 9 uses
  %i.ih = icmp eq ptr %.sroa.05.083.i.lcssa.i.i.i, null
  br i1 %i.ih, label %bb.bu, label %bb.ca

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2597
  %i.ii = call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef 8) #24, !noalias !2597 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.noexc24.i.i.i.i, label %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i", !prof !136

.noexc24.i.i.i.i:                                 ; preds = %bb.bt
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #35
          to label %.noexc36.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc36.i:                                       ; preds = %.noexc24.i.i.i.i
  unreachable

bb.bu:                                            ; preds = %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2597
  %i.ik = call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef 8) #24, !noalias !2597 ; 6 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.bv, label %bb.bw, !prof !136

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #35
          to label %.noexc25.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2597

.noexc25.i.i.i.i:                                 ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.im = cmpxchg ptr %i.hn, ptr null, ptr %i.ik release monotonic, align 8, !noalias !2597
  %i.in = extractvalue { ptr, i1 } %i.im, 1
  br i1 %i.in, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store atomic ptr %i.ik, ptr %i.hr release, align 8, !noalias !2597
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.io = icmp eq ptr %.sroa.043.1.i.i.i.i, null
  br i1 %i.io, label %.outer.backedge.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %.outer.backedge.i.i.i.i

bb.ca:                                            ; preds = %bb.bx, %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i"
  %.sroa.05.1.i.i.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i" ], [ %i.ik, %bb.bx ] ; 3 uses
  %i.ip = add i64 %.sroa.01.084.i.lcssa.i.i.i, 2
  %i.iq = cmpxchg weak ptr %i.hl, i64 %.sroa.01.084.i.lcssa.i.i.i, i64 %i.ip seq_cst acquire, align 8, !noalias !2597
  %.sroa.18.0.in.i.i.i6.i.i = extractvalue { i64, i1 } %i.iq, 1
  br i1 %.sroa.18.0.in.i.i.i6.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.0.0.i.i.i.i7.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i.i.i, i32 6) ; 2 uses
  %i.ir = mul nuw nsw i32 %.sroa.0.0.i.i.i.i7.i.i, %.sroa.0.0.i.i.i.i7.i.i ; 2 uses
  %.not.i30.i.i.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i.i.i, 0
  br i1 %.not.i30.i.i.i.i, label %.outer.backedge.i.i.i.i, label %.lr.ph.i31.i.i.i.i.preheader

.lr.ph.i31.i.i.i.i.preheader:                     ; preds = %bb.cb
  %xtraiter495 = and i32 %i.ir, 5                 ; 3 uses
  %i.is = icmp ult i32 %.sroa.0.082.i.lcssa.i.i.i, 3
  br i1 %i.is, label %.lr.ph.i31.i.i.i.i.epil.preheader, label %.lr.ph.i31.i.i.i.i.preheader.new

.lr.ph.i31.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i31.i.i.i.i.preheader
  %unroll_iter499 = and i32 %i.ir, 56
  br label %.lr.ph.i31.i.i.i.i

._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa:        ; preds = %.lr.ph.i31.i.i.i.i
  %lcmp.mod497.not = icmp eq i32 %xtraiter495, 0
  br i1 %lcmp.mod497.not, label %._crit_edge.loopexit.i.i.i8.i.i, label %.lr.ph.i31.i.i.i.i.epil.preheader

.lr.ph.i31.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa, %.lr.ph.i31.i.i.i.i.preheader
  %lcmp.mod498 = icmp ne i32 %xtraiter495, 0
  call void @llvm.assume(i1 %lcmp.mod498)
  br label %.lr.ph.i31.i.i.i.i.epil

.lr.ph.i31.i.i.i.i.epil:                          ; preds = %.lr.ph.i31.i.i.i.i.epil, %.lr.ph.i31.i.i.i.i.epil.preheader
  %epil.iter496 = phi i32 [ 0, %.lr.ph.i31.i.i.i.i.epil.preheader ], [ %epil.iter496.next, %.lr.ph.i31.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %epil.iter496.next = add i32 %epil.iter496, 1   ; 2 uses
  %epil.iter496.cmp.not = icmp eq i32 %epil.iter496.next, %xtraiter495
  br i1 %epil.iter496.cmp.not, label %._crit_edge.loopexit.i.i.i8.i.i, label %.lr.ph.i31.i.i.i.i.epil, !llvm.loop !2600

._crit_edge.loopexit.i.i.i8.i.i:                  ; preds = %.lr.ph.i31.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa
  %i.it = add i32 %.sroa.0.082.i.lcssa.i.i.i, 1
  br label %.outer.backedge.i.i.i.i

.lr.ph.i31.i.i.i.i:                               ; preds = %.lr.ph.i31.i.i.i.i, %.lr.ph.i31.i.i.i.i.preheader.new
  %niter500 = phi i32 [ 0, %.lr.ph.i31.i.i.i.i.preheader.new ], [ %niter500.next.7, %.lr.ph.i31.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %niter500.next.7 = add i32 %niter500, 8         ; 2 uses
  %niter500.ncmp.7 = icmp eq i32 %niter500.next.7, %unroll_iter499
  br i1 %niter500.ncmp.7, label %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa, label %.lr.ph.i31.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  br i1 %.not64.i.i.i.i, label %bb.cd, label %.critedge.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %.not16.i.i.i.i = icmp eq ptr %.sroa.043.1.i.i.i.i, null
  br i1 %.not16.i.i.i.i, label %bb.ce, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i", !prof !136

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #35
          to label %.noexc37.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc37.i:                                       ; preds = %bb.ce
  unreachable

.outer.backedge.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i8.i.i, %bb.cb, %bb.bz, %bb.by
  %.sroa.043.0.ph.be.i.i.i.i = phi ptr [ %i.ik, %bb.bz ], [ %i.ik, %bb.by ], [ %.sroa.043.1.i.i.i.i, %bb.cb ], [ %.sroa.043.1.i.i.i.i, %._crit_edge.loopexit.i.i.i8.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i.i.i, %bb.bz ], [ %.sroa.0.082.i.lcssa.i.i.i, %bb.by ], [ 1, %bb.cb ], [ %i.it, %._crit_edge.loopexit.i.i.i8.i.i ]
  %i.iu = load atomic i64, ptr %i.hl acquire, align 8, !noalias !2597 ; 2 uses
  %i.iv = load atomic ptr, ptr %i.hn acquire, align 8, !noalias !2597
  %i.iw = and i64 %i.iu, 1
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i5.i.i, label %.critedge.i.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i10.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.epil.preheader

.lr.ph.i.i.i10.i.i.epil.preheader:                ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i10.i.i.preheader
  %lcmp.mod494 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod494)
  br label %.lr.ph.i.i.i10.i.i.epil

.lr.ph.i.i.i10.i.i.epil:                          ; preds = %.lr.ph.i.i.i10.i.i.epil, %.lr.ph.i.i.i10.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i10.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i10.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.epil, !llvm.loop !2601

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i10.i.i.epil, %bb.bs, %bb.br
  %i.iy = load atomic i64, ptr %i.hl acquire, align 8, !noalias !2597 ; 3 uses
  %i.iz = load atomic ptr, ptr %i.hn acquire, align 8, !noalias !2597
  %i.ja = and i64 %i.iy, 1
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.bq, label %.critedge.i.i.i.i

.loopexit65.i.i.i.i:                              ; preds = %bb.br
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bv
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit65.i.i.i.i
  %.sroa.043.2.ph.i.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit65.i.i.i.i ], [ %.sroa.043.1.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit65.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.jc = icmp eq ptr %.sroa.043.2.ph.i.i.i.i, null
  br i1 %i.jc, label %.thread113.i, label %.thread55.i.i.i.i

.thread55.i.i.i.i:                                ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.2.ph.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %.thread113.i

.critedge.i.i.i.i:                                ; preds = %.outer.backedge.i.i.i.i, %.loopexit.i.i.i.i, %bb.cc
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.05.1.i.i.i.i, %bb.cc ], [ null, %.loopexit.i.i.i.i ], [ null, %.outer.backedge.i.i.i.i ] ; 2 uses
  %.sroa.9.0.i.i.i = phi i64 [ %.lcssa.i.i.i, %bb.cc ], [ 0, %.loopexit.i.i.i.i ], [ 0, %.outer.backedge.i.i.i.i ]
  %.sroa.043.3.i.i.i.i = phi ptr [ %.sroa.043.1.i.i.i.i, %bb.cc ], [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i.i, %.outer.backedge.i.i.i.i ] ; 2 uses
  %i.jd = icmp eq ptr %.sroa.043.3.i.i.i.i, null
  br i1 %i.jd, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %.critedge.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i": ; preds = %bb.cg, %.critedge.i.i.i.i
  %i.je = icmp eq ptr %.sroa.4.0.i.i.i, null
  br i1 %i.je, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hda1c33b8c389c7c1E.exit.fold.split.i.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.sroa.9.0.i.i.i
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i": ; preds = %bb.cd
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %i.hn release, align 8, !noalias !2597
  %i.jh = atomicrmw add ptr %i.hl, i64 2 release, align 8, !noalias !2597 ; 0 uses
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %.sroa.05.1.i.i.i.i release, align 8, !noalias !2597
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i.i.i, i64 248
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"
  %.sink.i.i.i = phi ptr [ %i.ji, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i" ], [ %i.jg, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i" ]
  %i.jj = atomicrmw or ptr %.sink.i.i.i, i64 1 release, align 8, !noalias !2488 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val13.i, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.jk)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcbc5b93ad66d145eE.exit.i" unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

bb.ch:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2488
  %i.jl = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1000000000, ptr %i.jl, align 8, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2488
  %i.jm = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false), !noalias !2488
  %i.jn = cmpxchg ptr %.val13.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !2602
  %i.jo = extractvalue { i32, i1 } %i.jn, 1
  br i1 %i.jo, label %.noexc39.i, label %bb.ci, !prof !145

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.val13.i)
          to label %.noexc39.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc39.i:                                       ; preds = %bb.ci, %bb.ch
  %i.jp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !2602
  %i.jq = and i64 %i.jp, 9223372036854775807
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i", label %bb.cj, !prof !145

bb.cj:                                            ; preds = %.noexc39.i
  %i.js = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc40.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc40.i:                                       ; preds = %bb.cj
  %i.jt = xor i1 %i.js, true
  %i.ju = zext i1 %i.jt to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i": ; preds = %.noexc40.i, %.noexc39.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.ju, %.noexc40.i ], [ 0, %.noexc39.i ] ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val13.i, i64 4 ; 3 uses
  %i.jw = load atomic i8, ptr %i.jv monotonic, align 1, !noalias !2602
  %.not70.i.i.i = icmp eq i8 %i.jw, 0
  br i1 %.not70.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i", label %bb.ck, !prof !145

bb.ck:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2605
  store ptr %.val13.i, ptr %i.ak, align 8, !noalias !2605
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.jx, align 8, !noalias !2605
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.cm unwind label %bb.cl, !noalias !2609

bb.cl:                                            ; preds = %bb.ck
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #36
          to label %.thread113.i unwind label %bb.cn, !noalias !2609

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2609
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i": ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"
  %i.ka = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.kb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 72 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !2610, !noalias !2613, !noundef !8 ; 6 uses
  %i.kd = icmp ult i64 %i.kc, 384307168202282326
  call void @llvm.assume(i1 %i.kd)
  %i.ke = icmp eq i64 %i.kc, 0
  br i1 %i.ke, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %bb.co

bb.co:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i"
  %i.kf = call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %.val13.i, i64 64
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !2610, !noalias !2613, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.kc, 24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i13.i.i

.lr.ph.i.i.i13.i.i:                               ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i", %bb.co
  %.sroa.02.015.i.i.i.i.i = phi i64 [ %i.lc, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i" ], [ 0, %bb.co ] ; 4 uses
  %i.kk = phi ptr [ %i.kl, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i" ], [ %i.ki, %bb.co ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  %i.km = load ptr, ptr %i.kk, align 8, !alias.scope !2615, !noalias !2618, !nonnull !8, !noundef !8 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !2622, !noundef !8
  %.not.i.i.i.i14.i.i = icmp eq i64 %i.ko, %i.kg
  br i1 %.not.i.i.i.i14.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i", label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.i.i13.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !2615, !noalias !2618, !noundef !8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ks = cmpxchg ptr %i.kr, i64 0, i64 %i.kq acq_rel acquire, align 8, !noalias !2622
  %.sroa.18.0.in.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ks, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i, label %bb.cq, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i"

bb.cq:                                            ; preds = %bb.cp
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !2615, !noalias !2618, !noundef !8 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store atomic ptr %i.ku, ptr %i.kw release, align 8, !noalias !2622
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !2622, !nonnull !8, !noundef !8
  %i.ky = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.kz = atomicrmw xchg ptr %i.ky, i32 1 release, align 4, !noalias !2622
  %i.la = icmp eq i32 %i.kz, -1
  br i1 %i.la, label %bb.ct, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.lb = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ky)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i unwind label %bb.ef, !noalias !2488 ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i.i.i": ; preds = %bb.cp, %.lr.ph.i.i.i13.i.i
  %i.lc = add nuw nsw i64 %.sroa.02.015.i.i.i.i.i, 1
  %i.ld = icmp eq ptr %i.kl, %i.kj
  br i1 %i.ld, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %.lr.ph.i.i.i13.i.i

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.le = icmp samesign ult i64 %.sroa.02.015.i.i.i.i.i, %i.kc
  call void @llvm.assume(i1 %i.le)
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %.sroa.02.015.i.i.i.i.i ; 4 uses
  %.sroa.034.0.copyload35.i.i.i = load ptr, ptr %i.lf, align 8, !noalias !2626 ; 2 uses
  %.sroa.8.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx36.i.i.i, i64 16, i1 false), !noalias !2626
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = xor i64 %.sroa.02.015.i.i.i.i.i, -1
  %i.li = add nsw i64 %i.kc, %i.lh
  %i.lj = mul nsw i64 %i.li, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lf, ptr nonnull align 8 %i.lg, i64 %i.lj, i1 false), !noalias !2627
  %i.lk = add nsw i64 %i.kc, -1
  store i64 %i.lk, ptr %i.kb, align 8, !alias.scope !2630, !noalias !2631
  %.not.i19.i.i = icmp eq ptr %.sroa.034.0.copyload35.i.i.i, null
  br i1 %.not.i19.i.i, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2488
  store ptr %.sroa.034.0.copyload35.i.i.i, ptr %i.al, align 8, !noalias !2488
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !2488
  %i.ll = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !2488, !noundef !8
  store ptr %i.lm, ptr %i.jm, align 8, !noalias !2488
  br i1 %i.ka, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ln = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !2488
  %i.lo = and i64 %i.ln, 9223372036854775807
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cw, !prof !145

bb.cw:                                            ; preds = %bb.cv
  %i.lq = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i.i.i unwind label %bb.cz, !noalias !2488

.noexc16.i.i.i:                                   ; preds = %bb.cw
  br i1 %i.lq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %.noexc16.i.i.i
end_hunk_4
begin_hunk_5_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE:bb.a
  store ptr %i.bp, ptr %i.bo, align 8, !noalias !2970
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  store ptr %i.cn, ptr %i.co, align 8, !noalias !2970
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i8 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !2970
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  store i8 0, ptr %i.cp, align 8, !noalias !2970
  call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3006
  call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 20 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 18 uses
  %i.cs = load i8, ptr %i.cr, align 8, !range !1422, !noalias !3014, !noundef !8
  switch i8 %i.cs, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i"
  ], !prof !1900

default.unreachable:                              ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i, %bb.ad, %.noexc.i.i.i.i.i, %bb.v, %bb.gi, %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$tokio..runtime..scheduler..current_thread..Core$GT$$GT$$GT$17h59d90914bf75be85E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.in, %bb.ff, %bb.hj, %bb.fz, %bb.ev, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017

.noexc.i.i.i:                                     ; preds = %bb.m
  store i8 1, ptr %i.cr, align 8, !noalias !3014
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 70 ; 6 uses
  %i.cu = load i8, ptr %i.ct, align 2, !range !1422, !noalias !3021, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %.thread9.i.i.i

.thread9.i.i.i:                                   ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3006
  br label %bb.dn

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.ct, align 2, !noalias !3021
  %i.cv = load i64, ptr %0, align 8, !range !597, !alias.scope !3023, !noalias !3024, !noundef !8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  %i.cy = load ptr, ptr %i.cw, align 8, !alias.scope !3023, !noalias !3024, !nonnull !8
  %.sroa.010.0.v.i.i.i.i.i.i = select i1 %i.cx, i64 496, i64 544
  %.sroa.010.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.010.0.v.i.i.i.i.i.i
  %i.cz = invoke { i32, i32 } @_ZN5tokio4util4rand2rt16RngSeedGenerator9next_seed17h077e1e186bf6cf33E(ptr noundef nonnull align 4 %.sroa.010.0.i.i.i.i.i.i)
          to label %.noexc3.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017 ; 2 uses

.noexc3.i.i.i:                                    ; preds = %bb.o
  %i.da = extractvalue { i32, i32 } %i.cz, 0
  %i.db = extractvalue { i32, i32 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 6 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.dc, align 8, !noalias !3021
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 60 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 6 uses
  %i.dd = trunc i32 %.sroa.03.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc3.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3021
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3021
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"

bb.q:                                             ; preds = %.noexc3.i.i.i
  %i.de = invoke { i32, i32 } @_ZN5tokio4util4rand8FastRand3new17h09ba846b31a186dfE()
          to label %.noexc4.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017 ; 2 uses

.noexc4.i.i.i:                                    ; preds = %bb.q
  %i.df = extractvalue { i32, i32 } %i.de, 0
  %i.dg = extractvalue { i32, i32 } %i.de, 1
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i": ; preds = %.noexc4.i.i.i, %bb.p
  %.sroa.7.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i.i, %bb.p ], [ %i.dg, %.noexc4.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.p ], [ %i.df, %.noexc4.i.i.i ]
  store i32 1, ptr %i.dc, align 8, !noalias !3021
  store i32 %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3021
  store i32 %i.db, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3021
  invoke void @"_ZN5tokio7runtime7context7current50_$LT$impl$u20$tokio..runtime..context..Context$GT$11set_current17h64f445a830289f2dE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.ba, ptr noundef nonnull align 8 %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0)
          to label %.noexc5.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017

.noexc5.i.i.i:                                    ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i"
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3025
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store i32 %.sroa.7.0.i.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !3025
  %.sroa.0.0.copyload1.pr.i.i.i.i = load i64, ptr %i.ba, align 8, !noalias !3025 ; 3 uses
  %i.dh = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i, 4
  br i1 %i.dh, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i", label %bb.r, !prof !2730

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i": ; preds = %.noexc5.i.i.i, %bb.l
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc6.i.i.i unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017

.noexc6.i.i.i:                                    ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i"
  unreachable

bb.r:                                             ; preds = %.noexc5.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !noalias !3026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3006
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.dn, label %bb.s, !prof !2730

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3006
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i, ptr %i.bc, align 8, !noalias !3006
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !noalias !3006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3027
  %.sink2.i27.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 6 uses
  %.sink2.i27.sroa.gep41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.dj = invoke { ptr, ptr } @_ZN5tokio7runtime4park16CachedParkThread5waker17h7eb7a1e1ef2b1e8fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a)
          to label %bb.t unwind label %common.ret.sink.split.i37.i.i.i.i.i, !noalias !3035 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.dk = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %common.ret.sink.split.i.i.i.i.i.i, label %bb.u

common.ret.sink.split.i.i.i.i.i.i:                ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3027
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %i.co)
          to label %.noexc11.i.i.i unwind label %bb.do, !noalias !3036

bb.u:                                             ; preds = %bb.t
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  store ptr %i.dk, ptr %i.az, align 8, !noalias !3027
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  store ptr %i.dm, ptr %i.dn, align 8, !noalias !3027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3027
  store ptr %i.az, ptr %i.ay, align 8, !noalias !3027
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.do, align 8, !noalias !3027
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr null, ptr %i.dp, align 8, !noalias !3027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.bo, i64 200, i1 false), !noalias !3037
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 68 ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 69 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ax, i64 192 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %i.du = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio4task5local7CURRENT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17he5b9cc286f6d8af9E") ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ax, i64 184 ; 5 uses
  %.phi.trans.insert116.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 168 ; 4 uses
  %.phi.trans.insert118.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 176 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ax, i64 112 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ax, i64 120 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 128 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 136 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 144 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ax, i64 160 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.592.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.689.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.890.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.697.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.898.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5100.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0..sroa_idx.i61.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx.i62.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.5109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.6105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.8106.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.9107.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.5102.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.6103.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.di, %bb.u
  %.sroa.7.0.i.i.i.i.i = phi ptr [ undef, %bb.u ], [ %.sroa.7.1.i.i.i.i.i, %bb.di ]
  %.sroa.8.0.i.i.i.i.i = phi i64 [ undef, %bb.u ], [ %.sroa.8.1.i.i.i.i.i, %bb.di ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3038
  %i.er = load i8, ptr %i.cr, align 8, !range !1422, !noalias !3027, !noundef !8 ; 2 uses
  switch i8 %i.er, label %default.unreachable [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %.noexc.i.i.i.i.i
  ], !prof !1900

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h7f25aac471b04ff2E)
          to label %.noexc16.i.i.i.i.i unwind label %bb.df, !noalias !3035

.noexc16.i.i.i.i.i:                               ; preds = %bb.w
  store i8 1, ptr %i.cr, align 8, !noalias !3027
  br label %bb.x

bb.x:                                             ; preds = %.noexc16.i.i.i.i.i, %bb.v
  %i.es = load i8, ptr %i.dq, align 4, !range !348, !noalias !3027, !noundef !8
  %i.et = load i8, ptr %i.dr, align 1, !noalias !3027
  store i8 1, ptr %i.dq, align 4, !noalias !3027
  store i8 -128, ptr %i.dr, align 1, !noalias !3027
  br label %.noexc.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.x, %bb.v
  %.sroa.3.0.i.i.i.i.i.i = phi i8 [ %i.et, %bb.x ], [ undef, %bb.v ]
  %.sroa.0.0.i.i.i7.i.i.i = phi i8 [ %i.es, %bb.x ], [ %i.er, %bb.v ]
  store i8 %.sroa.0.0.i.i.i7.i.i.i, ptr %i.aw, align 1, !noalias !3038
  store i8 %.sroa.3.0.i.i.i.i.i.i, ptr %i.ds, align 1, !noalias !3038
  call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  %i.eu = load i8, ptr %i.dt, align 8, !range !129, !noalias !3049, !noundef !8
  switch i8 %i.eu, label %default.unreachable [
    i8 0, label %bb.aa
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.y
  ]

bb.y:                                             ; preds = %.noexc.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !3052
  br label %bb.ad

"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13fde878164f3b73E.exit9.i.i.i.i.i.i.i": ; preds = %.body.i.i.i.i.i.i.i, %bb.z
  %.pn3.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ev, %bb.z ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  store i8 2, ptr %i.dt, align 8, !noalias !3049
  br label %.body18.i.i.i.i.i

bb.z:                                             ; preds = %bb.cy
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13fde878164f3b73E.exit9.i.i.i.i.i.i.i"

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ew = load ptr, ptr %i.ax, align 8, !noalias !3049, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  store ptr %i.ew, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !3049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sink2.i27.sroa.gep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sink2.i27.sroa.gep41.i.i.i.i.i, i64 88, i1 false), !noalias !3049
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #35
          to label %.noexc20.i.i.i.i.i unwind label %bb.da, !noalias !3035

.noexc20.i.i.i.i.i:                               ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #35
          to label %.noexc21.i.i.i.i.i unwind label %bb.da, !noalias !3035

.noexc21.i.i.i.i.i:                               ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %i.ex = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.y ], [ %i.ew, %bb.aa ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %i.ey = load i8, ptr %i.dv, align 8, !range !1422, !noalias !3057, !noundef !8
  switch i8 %i.ey, label %default.unreachable [
    i8 0, label %bb.ae
    i8 1, label %bb.af
    i8 2, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.thread.i.i.i.i.i.i.i.i.i"
  ], !prof !1900

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.du, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h24b4accda2c23457E)
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !3064

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ae
  store i8 1, ptr %i.dv, align 8, !noalias !3057
  br label %bb.af

bb.af:                                            ; preds = %.noexc.i.i.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3065
  %i.ez = load ptr, ptr %i.ex, align 8, !noalias !3069, !nonnull !8, !noundef !8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ez, align 8, !noalias !3069, !noundef !8 ; 2 uses
  %i.fa = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.fa)
  %i.fb = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !noalias !3069
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.ag, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hfdaf1ca3b5afcb5dE.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !136

bb.ag:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hfdaf1ca3b5afcb5dE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af
  %i.fd = load ptr, ptr %i.ex, align 8, !noalias !3069, !nonnull !8, !noundef !8
  %i.fe = load ptr, ptr %i.du, align 8, !noalias !3065, !noundef !8
  store ptr %i.fd, ptr %i.du, align 8, !noalias !3065
  %i.ff = load i8, ptr %i.dw, align 8, !range !348, !noalias !3065, !noundef !8
  store i8 0, ptr %i.dw, align 8, !noalias !3065
  store ptr %i.du, ptr %i.av, align 8, !noalias !3065
  store ptr %i.fe, ptr %i.dx, align 8, !noalias !3065
  store i8 %i.ff, ptr %i.dy, align 8, !noalias !3065
  %i.fg = load ptr, ptr %i.ex, align 8, !noalias !3070, !nonnull !8, !noundef !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !3070, !nonnull !8, !noundef !8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  %i.fk = load ptr, ptr %i.ay, align 8, !alias.scope !3074, !noalias !3075, !nonnull !8, !align !9, !noundef !8
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker15register_by_ref17h96ba7c9b5941a720E(ptr noundef nonnull align 8 %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fk)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.co, !noalias !3069

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hfdaf1ca3b5afcb5dE.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3076
  %i.fl = invoke noundef zeroext i1 @_ZN5tokio7runtime7context8blocking23disallow_block_in_place17h20e375f7b399d63aE()
          to label %.noexc3.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.co, !noalias !3069

.noexc3.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = zext i1 %i.fl to i8
  store i8 %i.fm, ptr %i.au, align 1, !noalias !3076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3076
  %i.fn = load i8, ptr %i.dz, align 8, !range !129, !noalias !3077, !noundef !8
  switch i8 %i.fn, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  %.val44.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert116.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3077
  %.val45.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert118.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3077
  br label %bb.al

.body77.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.cf, %bb.ce, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn37.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn33.pn.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jk, %bb.ce ], [ %i.jk, %bb.cf ]
  store i8 2, ptr %i.dz, align 8, !noalias !3077
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  store i64 0, ptr %i.ea, align 8, !alias.scope !3081, !noalias !3077
  store ptr inttoptr (i64 8 to ptr), ptr %i.eb, align 8, !alias.scope !3081, !noalias !3077
  store i64 0, ptr %i.ec, align 8, !alias.scope !3081, !noalias !3077
  %i.fo = load ptr, ptr %.sink2.i27.sroa.gep.i.i.i.i.i, align 8, !noalias !3077, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %.val42.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !noalias !3084, !nonnull !8, !noundef !8 ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  %.val43.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !noalias !3084, !noundef !8
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.val42.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val43.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  store ptr %.val42.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ed, align 8, !noalias !3077
  store ptr %i.fr, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3077
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3077
  br label %bb.ai

bb.ai:                                            ; preds = %bb.av, %bb.ah
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %bb.av ], [ 0, %bb.ah ]
  %i.fs = phi ptr [ %.pre115.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ %i.fr, %bb.ah ]
  %i.ft = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ %.val42.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  %i.fu = icmp eq ptr %i.ft, %i.fs
  br i1 %i.fu, label %bb.ci, label %bb.aw

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.bx, %bb.bv, %bb.bp, %bb.bm, %bb.bj, %bb.be, %bb.bc, %bb.ax, %bb.at, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.aq, %bb.am
  %.pn33.pn.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jg, %bb.cb ], [ %i.jg, %bb.cc ], [ %i.jd, %bb.bx ], [ %i.gh, %bb.aq ], [ %i.hx, %bb.bj ], [ %i.fx, %bb.am ], [ %i.ih, %bb.bm ], [ %i.hh, %bb.ax ], [ %i.jc, %bb.bv ], [ %i.hp, %bb.bc ], [ %i.gt, %bb.at ], [ %i.gh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jj, %bb.cd ], [ %i.hr, %bb.be ], [ %i.ik, %bb.bp ]
  invoke fastcc void @"_ZN4core3ptr396drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$GT$$GT$17hd4c82c1e2604dac2E"(ptr noalias noundef align 8 dereferenceable(24) %i.ea) #36
          to label %.body77.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ch, !noalias !3084

bb.aj:                                            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h8d6dad3360c2bb22E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #35
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp52.i.i.i.i.i, !noalias !3070

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %.noexc3.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h6d9e40c4d287ecadE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #35
          to label %.noexc1.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp52.i.i.i.i.i, !noalias !3070

.noexc1.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ay, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val45.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val45.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hj, %bb.ay ]
  %.val44.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val44.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hi, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3077
  %i.fv = getelementptr inbounds nuw i8, ptr %.val45.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !invariant.load !8, !noalias !3085, !nonnull !8
  invoke void %i.fw(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noundef nonnull align 1 %.val44.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h8db8e8b6c2195f99E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.am, !noalias !3084, !inline_history !1954

bb.am:                                            ; preds = %bb.al
end_hunk_5
begin_hunk_6_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE:bb.a
  %i.jl = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jl, label %.body77.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jm = shl nuw i64 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jm, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3168
  br label %.body77.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8ce66e3ec151741E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN3std2io5error5Error5other17h6204f7c5fce5a725E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !range !182, !alias.scope !3165, !noalias !3077, !noundef !8 ; 2 uses
  %i.jn = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jn, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8ce66e3ec151741E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jo = shl nuw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jo, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !3168
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.am, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3084
  unreachable

.loopexit51.i.i.i.i.i:                            ; preds = %bb.cm, %bb.cj
  %lpad.loopexit53.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp52.i.i.i.i.i:                   ; preds = %bb.ak, %bb.aj
  %lpad.loopexit.split-lp54.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.loopexit.split-lp52.i.i.i.i.i, %.loopexit51.i.i.i.i.i, %.body77.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn37.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body77.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit53.i.i.i.i.i, %.loopexit51.i.i.i.i.i ], [ %lpad.loopexit.split-lp54.i.i.i.i.i, %.loopexit.split-lp52.i.i.i.i.i ]
  invoke void @"_ZN102_$LT$tokio..runtime..context..blocking..DisallowBlockInPlaceGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f8ff2cac240530cE"(ptr noalias noundef nonnull align 1 dereferenceable(1) %i.au)
          to label %.body.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cn, !noalias !3070

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.cg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd8ce66e3ec151741E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  store i8 1, ptr %i.dz, align 8, !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3076
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ai
  %.sroa.013.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ea, align 8, !noalias !3077 ; 2 uses
  %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !3077
  store i8 1, ptr %i.dz, align 8, !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3076
  %i.jq = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %i.jq, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %.thread10.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jr = invoke noundef zeroext i1 @_ZN5tokio4task5local8LocalSet4tick17hb66cf62f46a3564fE(ptr noundef nonnull align 8 %i.ex)
          to label %bb.cl unwind label %.loopexit51.i.i.i.i.i, !noalias !3070

bb.ck:                                            ; preds = %bb.cm, %bb.cl, %bb.ci, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci ], [ undef, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cm ], [ undef, %bb.cl ]
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.414.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci ], [ %i.ji, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.cm ], [ undef, %bb.cl ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.013.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci ], [ -9223372036854775808, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ -9223372036854775807, %bb.cm ], [ -9223372036854775807, %bb.cl ] ; 4 uses
  invoke void @"_ZN102_$LT$tokio..runtime..context..blocking..DisallowBlockInPlaceGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f8ff2cac240530cE"(ptr noalias noundef nonnull align 1 dereferenceable(1) %i.au)
          to label %bb.cp unwind label %bb.co, !noalias !3069

bb.cl:                                            ; preds = %bb.cj
  br i1 %i.jr, label %bb.cm, label %bb.ck

bb.cm:                                            ; preds = %bb.cl
  %i.js = load ptr, ptr %i.ay, align 8, !alias.scope !3074, !noalias !3075, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !3070, !nonnull !8, !align !9, !noundef !8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !3070, !nonnull !8, !noundef !8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !3070, !noundef !8
  invoke void %i.jv(ptr noundef %i.jx)
          to label %bb.ck unwind label %.loopexit51.i.i.i.i.i, !noalias !3070

bb.cn:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3070
  unreachable

bb.co:                                            ; preds = %bb.ck, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17hfdaf1ca3b5afcb5dE.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.co, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jz, %bb.co ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$tokio..task..local..LocalDataEnterGuard$GT$17h2b064fda444b85e0E"(ptr noalias noundef align 8 dereferenceable(24) %i.av) #36
          to label %.body.i.i.i.i.i.i.i unwind label %bb.cx, !noalias !3069

bb.cp:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3076
  invoke void @"_ZN81_$LT$tokio..task..local..LocalDataEnterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfd17a4f6b7b15fefE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ct unwind label %bb.cq, !noalias !3069

bb.cq:                                            ; preds = %bb.cp
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %i.kb = load ptr, ptr %i.dx, align 8, !alias.scope !3172, !noalias !3065, !noundef !8 ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %.body.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kd = load i64, ptr %i.kb, align 8, !noalias !3175, !noundef !8
  %i.ke = add i64 %i.kd, -1                       ; 2 uses
  store i64 %i.ke, ptr %i.kb, align 8, !noalias !3175
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.cs, label %.body.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.cw, !noalias !3069

bb.ct:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %i.kg = load ptr, ptr %i.dx, align 8, !alias.scope !3183, !noalias !3065, !noundef !8 ; 3 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ki = load i64, ptr %i.kg, align 8, !noalias !3184, !noundef !8
  %i.kj = add i64 %i.ki, -1                       ; 2 uses
  store i64 %i.kj, ptr %i.kg, align 8, !noalias !3184
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.cv, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.i.i.i.i.i, !noalias !3064

bb.cw:                                            ; preds = %bb.cs
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3069
  unreachable

bb.cx:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3069
  unreachable

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.cv, %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3065
  switch i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, label %bb.cy [
    i64 -9223372036854775806, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.thread.i.i.i.i.i.i.i.i.i"
    i64 -9223372036854775807, label %bb.dc
  ], !prof !3189

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.thread.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i", %bb.ad
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc6.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !3064

.noexc6.i.i.i.i.i.i.i:                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.thread.i.i.i.i.i.i.i.i.i"
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.cv, %bb.ae
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.thread.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %.sink2.i27.sroa.gep.i.i.i.i.i)
          to label %bb.dc unwind label %bb.z, !noalias !3064

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.cs, %bb.cr, %bb.cq, %.body.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %bb.cr ], [ %i.ka, %bb.cq ], [ %i.ka, %bb.cs ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %.sink2.i27.sroa.gep.i.i.i.i.i)
          to label %"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13fde878164f3b73E.exit9.i.i.i.i.i.i.i" unwind label %bb.cz, !noalias !3064

bb.cz:                                            ; preds = %.body.i.i.i.i.i.i.i
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3064
  unreachable

bb.da:                                            ; preds = %bb.ac, %bb.ab
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i.i.i

.body18.i.i.i.i.i:                                ; preds = %bb.da, %"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13fde878164f3b73E.exit9.i.i.i.i.i.i.i"
  %eh.lpad-body19.i.i.i.i.i = phi { ptr, i32 } [ %i.ko, %bb.da ], [ %.pn3.i.i.i.i.i.i.i, %"_ZN4core3ptr156drop_in_place$LT$tokio..task..local..RunUntil$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h13fde878164f3b73E.exit9.i.i.i.i.i.i.i" ] ; 2 uses
  %i.kp = load i8, ptr %i.aw, align 1, !range !1422, !alias.scope !3190, !noalias !3193, !noundef !8
  %.not.i.i.i8.i.i.i = icmp eq i8 %i.kp, 2
  br i1 %.not.i.i.i8.i.i.i, label %.body.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.body18.i.i.i.i.i
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.aw)
          to label %.body.i.i.i.i.i unwind label %bb.de, !noalias !3035

bb.dc:                                            ; preds = %bb.cy, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %.sroa.7.0.i.i.i.i.i, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, %bb.cy ] ; 4 uses
  %.sroa.8.1.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i.i, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i.i, %bb.cy ] ; 2 uses
  %storemerge.i.i.i.i.i.i.i = phi i8 [ 3, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1d238b76417f6600E.exit.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.cy ]
  store i8 %storemerge.i.i.i.i.i.i.i, ptr %i.dt, align 8, !noalias !3049
  %i.kq = load i8, ptr %i.aw, align 1, !range !1422, !alias.scope !3194, !noalias !3027, !noundef !8
  %.not.i23.i.i.i.i.i = icmp eq i8 %i.kq, 2
  br i1 %.not.i23.i.i.i.i.i, label %bb.dh, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @"_ZN84_$LT$tokio..task..coop..with_budget..ResetGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ddf8b4691e10912E"(ptr noalias noundef nonnull align 1 dereferenceable(2) %i.aw)
          to label %bb.dh unwind label %bb.df, !noalias !3035

bb.de:                                            ; preds = %bb.db
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3197
  unreachable

bb.df:                                            ; preds = %bb.di, %bb.dd, %bb.w
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.df, %bb.db, %.body18.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ks, %bb.df ], [ %eh.lpad-body19.i.i.i.i.i, %.body18.i.i.i.i.i ], [ %eh.lpad-body19.i.i.i.i.i, %bb.db ] ; 2 uses
  %i.kt = load i8, ptr %i.dt, align 8, !range !129, !noalias !3027, !noundef !8
  switch i8 %i.kt, label %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i" [
    i8 0, label %common.ret.sink.split.i26.i.i.i.i.i
    i8 3, label %bb.dg
  ]

common.ret.sink.split.i26.i.i.i.i.i:              ; preds = %bb.dg, %.body.i.i.i.i.i
  %.sink2.i27.sroa.phi.i.i.i.i.i = phi ptr [ %.sink2.i27.sroa.gep.i.i.i.i.i, %bb.dg ], [ %.sink2.i27.sroa.gep41.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %.sink2.i27.sroa.phi.i.i.i.i.i)
          to label %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i" unwind label %bb.dm, !noalias !3035

bb.dg:                                            ; preds = %.body.i.i.i.i.i
  br label %common.ret.sink.split.i26.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3038
  %i.ku = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %i.ku, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN5tokio7runtime4park16CachedParkThread4park17h15b6331ef401b5bcE(ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.v unwind label %bb.df, !noalias !3035

bb.dj:                                            ; preds = %bb.dh
  %i.kv = load i8, ptr %i.dt, align 8, !range !129, !noalias !3027, !noundef !8
  switch i8 %i.kv, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h663d11b3a52ffb65E.exit.i.i.i.i" [
    i8 0, label %common.ret.sink.split.i30.i.i.i.i.i
    i8 3, label %bb.dk
  ]

common.ret.sink.split.i30.i.i.i.i.i:              ; preds = %bb.dk, %bb.dj
  %.sink2.i31.sroa.phi.i.i.i.i.i = phi ptr [ %.sink2.i27.sroa.gep.i.i.i.i.i, %bb.dk ], [ %.sink2.i27.sroa.gep41.i.i.i.i.i, %bb.dj ]
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %.sink2.i31.sroa.phi.i.i.i.i.i)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h663d11b3a52ffb65E.exit.i.i.i.i" unwind label %bb.dl, !noalias !3035

bb.dk:                                            ; preds = %bb.dj
  br label %common.ret.sink.split.i30.i.i.i.i.i

"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i": ; preds = %bb.dl, %common.ret.sink.split.i26.i.i.i.i.i, %.body.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ky, %bb.dl ], [ %eh.lpad-body.i.i.i.i.i, %common.ret.sink.split.i26.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  %.val11.i.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !3027, !nonnull !8, !align !9, !noundef !8
  %.val12.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !3027, !noundef !8
  %i.kw = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !3035, !nonnull !8, !noundef !8
  invoke void %i.kx(ptr noundef %.val12.i.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.dm, !noalias !3035, !inline_history !2751

bb.dl:                                            ; preds = %common.ret.sink.split.i30.i.i.i.i.i
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i"

bb.dm:                                            ; preds = %common.ret.sink.split.i37.i.i.i.i.i, %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i", %common.ret.sink.split.i26.i.i.i.i.i
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3035
  unreachable

common.ret.sink.split.i37.i.i.i.i.i:              ; preds = %bb.s
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %i.co)
          to label %.body.i.i.i unwind label %bb.dm, !noalias !3198

.noexc11.i.i.i:                                   ; preds = %common.ret.sink.split.i.i.i.i.i.i
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @358, i64 noundef 21, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @304, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #35
          to label %.noexc12.i.i.i unwind label %bb.do, !noalias !3017

.noexc12.i.i.i:                                   ; preds = %.noexc11.i.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h663d11b3a52ffb65E.exit.i.i.i.i": ; preds = %common.ret.sink.split.i30.i.i.i.i.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3027
  %.val.i.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !3027, !nonnull !8, !align !9, !noundef !8
  %.val10.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !3027, !noundef !8
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !3035, !nonnull !8, !noundef !8
  invoke void %i.lc(ptr noundef %.val10.i.i.i.i.i)
          to label %_ZN5tokio7runtime7context7runtime13enter_runtime17h1f3fd2016e52a672E.exit.i.i unwind label %bb.do, !noalias !3017, !inline_history !3199

bb.dn:                                            ; preds = %bb.r, %.thread9.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3006
  store ptr @364, ptr %i.bb, align 8, !noalias !3006
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.ld, align 8, !noalias !3006
  %i.le = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr null, ptr %i.le, align 8, !noalias !3006
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.lf, align 8, !noalias !3006
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %i.lg, align 8, !noalias !3006
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #35
          to label %bb.dq unwind label %common.ret.sink.split.i.i.i.i.i, !noalias !3017

bb.do:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h663d11b3a52ffb65E.exit.i.i.i.i", %.noexc11.i.i.i, %common.ret.sink.split.i.i.i.i.i.i
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.do, %common.ret.sink.split.i37.i.i.i.i.i, %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.lh, %bb.do ], [ %i.la, %common.ret.sink.split.i37.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr196drop_in_place$LT$tokio..task..local..LocalSet..run_until$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h569893f557cd4be4E.exit29.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$tokio..runtime..context..runtime..EnterRuntimeGuard$GT$17h386204785e587f86E"(ptr noalias noundef align 8 dereferenceable(32) %i.bc) #36
          to label %.body23.i unwind label %bb.dp, !noalias !3017

bb.dp:                                            ; preds = %common.ret.sink.split.i.i.i.i.i, %.body.i.i.i
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3017
  unreachable

bb.dq:                                            ; preds = %bb.dn
  unreachable

common.ret.sink.split.i.i.i.i.i:                  ; preds = %bb.dn, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.thread.i.i.i.i", %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h99ac3341a3c93500E.exit.i.i.i.i", %bb.q, %bb.o, %bb.m
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr120drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h855d3ccb6d21b838E"(ptr noundef nonnull readonly align 8 %i.co)
          to label %.body23.i unwind label %bb.dp, !noalias !3036

_ZN5tokio7runtime7context7runtime13enter_runtime17h1f3fd2016e52a672E.exit.i.i: ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h663d11b3a52ffb65E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3027
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$tokio..runtime..context..runtime..EnterRuntimeGuard$GT$17h386204785e587f86E"(ptr noalias noundef align 8 dereferenceable(32) %i.bc)
          to label %bb.dx unwind label %bb.dw

.body23.i:                                        ; preds = %bb.mh, %bb.mg, %.thread.i, %.split.i, %bb.ei, %.body25.i, %bb.dw, %common.ret.sink.split.i.i.i.i.i, %.body.i.i.i
  %.sroa.03.2.i = phi i1 [ true, %.body25.i ], [ false, %.thread.i ], [ false, %bb.ei ], [ true, %bb.dw ], [ true, %common.ret.sink.split.i.i.i.i.i ], [ true, %.body.i.i.i ], [ false, %.split.i ], [ true, %bb.mg ], [ true, %bb.mh ]
  %.pn12.i = phi { ptr, i32 } [ %eh.lpad-body26.i, %.body25.i ], [ %.pn109.i, %.thread.i ], [ %eh.lpad-body66.i, %bb.ei ], [ %i.lt, %bb.dw ], [ %lpad.thr_comm.i.i.i, %common.ret.sink.split.i.i.i.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.nf, %.split.i ], [ %i.zl, %bb.mg ], [ %i.zl, %bb.mh ] ; 2 uses
  invoke void @"_ZN70_$LT$tokio..task..local..LocalSet$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2b6215a242bdfaa1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.dt unwind label %bb.dr

bb.dr:                                            ; preds = %.body23.i
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  call void @llvm.experimental.noalias.scope.decl(metadata !3203)
  %i.lk = load ptr, ptr %i.bp, align 8, !alias.scope !3206, !nonnull !8, !noundef !8 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !noalias !3209, !noundef !8
  %i.lm = add i64 %i.ll, -1                       ; 2 uses
  store i64 %i.lm, ptr %i.lk, align 8, !noalias !3209
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.ds, label %.body

bb.ds:                                            ; preds = %bb.dr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %.body unwind label %bb.dv

bb.dt:                                            ; preds = %.body23.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  %i.lo = load ptr, ptr %i.bp, align 8, !alias.scope !3216, !nonnull !8, !noundef !8 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !3217, !noundef !8
  %i.lq = add i64 %i.lp, -1                       ; 2 uses
  store i64 %i.lq, ptr %i.lo, align 8, !noalias !3217
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %bb.du, label %.body68.i

bb.du:                                            ; preds = %bb.dt
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %.body68.i unwind label %bb.md

bb.dv:                                            ; preds = %bb.ds
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.dw:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit27.i", %bb.dy, %_ZN5tokio7runtime7context7runtime13enter_runtime17h1f3fd2016e52a672E.exit.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

bb.dx:                                            ; preds = %_ZN5tokio7runtime7context7runtime13enter_runtime17h1f3fd2016e52a672E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2970
  %i.lu = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %i.lu, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i) ]
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val35.i = load i64, ptr %i.lv, align 8, !range !702, !alias.scope !2970, !noundef !8
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val36.i = load ptr, ptr %i.lw, align 8, !alias.scope !2970
  %i.lx = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E"(i64 %.val35.i, ptr %.val36.i, ptr noundef nonnull %.sroa.7.1.i.i.i.i.i)
          to label %bb.me unwind label %bb.dw     ; 2 uses

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2970
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.bm, align 8, !noalias !2970
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.sroa.7.1.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2970
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %.sroa.8.1.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2970
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val33.i = load i64, ptr %i.ly, align 8, !range !702, !alias.scope !2970, !noundef !8
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val34.i = load ptr, ptr %i.lz, align 8, !alias.scope !2970
  %i.ma = invoke fastcc { i64, ptr } @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E"(i64 %.val33.i, ptr %.val34.i, ptr noundef null)
          to label %bb.eb unwind label %bb.ea     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

.body25.i:                                        ; preds = %bb.ee, %bb.ed, %bb.ea
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.mb, %bb.ea ], [ %i.mf, %bb.ed ], [ %i.mf, %bb.ee ]
  invoke fastcc void @"_ZN4core3ptr396drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$usize$C$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$RP$$GT$$GT$17hd4c82c1e2604dac2E"(ptr noalias noundef align 8 dereferenceable(24) %i.bm) #36
          to label %.body23.i unwind label %bb.md

bb.eb:                                            ; preds = %bb.dz
  %i.mc = extractvalue { i64, ptr } %i.ma, 0
  %i.md = trunc nuw i64 %i.mc to i1
  br i1 %i.md, label %bb.ec, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit27.i", !prof !136

bb.ec:                                            ; preds = %bb.eb
  %i.me = extractvalue { i64, ptr } %i.ma, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3218
  store ptr %i.me, ptr %i.be, align 8, !noalias !3218
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #35
          to label %bb.ef unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = load ptr, ptr %i.be, align 8, !alias.scope !3221, !noalias !2970, !noundef !8
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %.body25.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.be)
          to label %.body25.i unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ec
  unreachable

bb.eg:                                            ; preds = %bb.ee
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit27.i": ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !2970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !2970
  invoke fastcc void @_ZN12actix_server6worker20wrap_worker_services17h1c79521d68341434E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn)
          to label %bb.eh unwind label %bb.dw

bb.eh:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15191528c8b8e0deE.exit27.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2970
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.ml = load <2 x ptr>, ptr %i.mj, align 8, !alias.scope !2970
  store <2 x ptr> %i.ml, ptr %i.mk, align 8, !noalias !2970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !2970
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mp = load <2 x ptr>, ptr %i.mm, align 8, !alias.scope !2970
  store <2 x ptr> %i.mp, ptr %i.mn, align 8, !noalias !2970
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.mr = load <2 x i64>, ptr %i.mo, align 8, !alias.scope !2970
  store <2 x i64> %i.mr, ptr %i.mq, align 8, !noalias !2970
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !2970, !noundef !8
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mw = load i32, ptr %i.mv, align 8, !range !1685, !alias.scope !2970, !noundef !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i64 %i.mu, ptr %i.mx, align 8, !noalias !2970
  %i.my = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %i.mw, ptr %i.my, align 8, !noalias !2970
  %i.mz = load ptr, ptr %i.br, align 8, !noalias !2970, !noundef !8
  %i.na = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store ptr %i.mz, ptr %i.na, align 8, !noalias !2970
  %i.nb = load ptr, ptr %i.bq, align 8, !noalias !2970, !noundef !8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store ptr %i.nb, ptr %i.nc, align 8, !noalias !2970
  %i.nd = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  store i8 0, ptr %i.nd, align 8, !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2970
  invoke void @_ZN5tokio7runtime7builder7Builder18new_current_thread17h0b0c2c8e60f15defE(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.bh)
          to label %bb.ej unwind label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.eh
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ei:                                            ; preds = %.body65.i
  br i1 %.sroa.02.2.lpad-body.i, label %.thread.i, label %.body23.i

.split.i:                                         ; preds = %bb.lr
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i

bb.ej:                                            ; preds = %bb.eh
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bh, i64 229
  store i8 1, ptr %i.ng, align 1, !noalias !2970
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bh, i64 230
  store i8 1, ptr %i.nh, align 2, !noalias !2970
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !2970, !noundef !8
  %i.nk = invoke noundef align 8 dereferenceable(240) ptr @_ZN5tokio7runtime7builder7Builder20max_blocking_threads17h8e08bf5ab628c1c1E(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.bh, i64 noundef %i.nj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.eo, %bb.ek
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.nl, %bb.ek ], [ %i.nq, %bb.eo ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..builder..Builder$GT$17hc610eaa69a8fa5baE"(ptr noalias noundef align 8 dereferenceable(240) %i.bh) #36
          to label %.thread.i unwind label %bb.md

bb.el:                                            ; preds = %bb.ej
  invoke void @_ZN5tokio7runtime7builder7Builder5build17h094ae2566630ddb2E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(240) %i.nk)
          to label %bb.em unwind label %bb.ek

bb.em:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  call void @llvm.experimental.noalias.scope.decl(metadata !3229)
  %i.nm = load i64, ptr %i.bi, align 8, !range !702, !alias.scope !3229, !noalias !3231, !noundef !8
  %i.nn = icmp eq i64 %i.nm, 2
  br i1 %i.nn, label %bb.en, label %bb.er, !prof !136

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3233
  %i.no = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !3229, !noalias !3231, !nonnull !8, !noundef !8
  store ptr %i.np, ptr %i.bg, align 8, !noalias !3233
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #35
          to label %bb.ep unwind label %bb.eo, !noalias !3234

bb.eo:                                            ; preds = %bb.en
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #36
          to label %.body.i unwind label %bb.eq, !noalias !3234

bb.ep:                                            ; preds = %bb.en
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3234
  unreachable

bb.er:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %i.bi, i64 80, i1 false), !alias.scope !3234, !noalias !3235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2970
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..builder..Builder$GT$17hc610eaa69a8fa5baE"(ptr noalias noundef align 8 dereferenceable(240) %i.bh)
          to label %bb.et unwind label %bb.es

bb.es:                                            ; preds = %bb.ln, %bb.ll, %bb.er
  %.sroa.02.2.i = phi i1 [ false, %bb.ln ], [ true, %bb.er ], [ false, %bb.ll ]
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i

.body65.i:                                        ; preds = %common.ret.sink.split.i.i.i.i, %bb.lh, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.ky, %bb.es
  %.sroa.02.2.lpad-body.i = phi i1 [ %.sroa.02.2.i, %bb.es ], [ false, %common.ret.sink.split.i.i.i.i ], [ false, %bb.ky ], [ false, %bb.lh ], [ false, %bb.ld ], [ false, %bb.lc ], [ false, %bb.lb ], [ false, %bb.la ]
  %eh.lpad-body66.i = phi { ptr, i32 } [ %i.ns, %bb.es ], [ %lpad.thr_comm.split-lp.i.i.i, %common.ret.sink.split.i.i.i.i ], [ %eh.lpad-body.i.i45.i, %bb.ky ], [ %i.yb, %bb.lh ], [ %eh.lpad-body.i.i45.i, %bb.ld ], [ %eh.lpad-body.i.i45.i, %bb.lc ], [ %eh.lpad-body.i.i45.i, %bb.lb ], [ %eh.lpad-body.i.i45.i, %bb.la ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$tokio..runtime..runtime..Runtime$GT$17hc1e794971731dfcaE"(ptr noalias noundef align 8 dereferenceable(80) %i.bj) #36
          to label %bb.ei unwind label %bb.md

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3236
  store ptr %i.bp, ptr %i.ad, align 8, !noalias !2970
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(144) %i.bk, i64 144, i1 false), !noalias !2970
  %.sroa.897.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  store i8 0, ptr %.sroa.897.0..sroa_idx.i, align 8, !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3239
  %.sink2.i.i.i.sroa.gep1.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  invoke void @_ZN5tokio7runtime7runtime7Runtime5enter17he20ba88dc10088daE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.bj)
          to label %bb.eu unwind label %common.ret.sink.split.i.i.i.i, !noalias !3242

bb.eu:                                            ; preds = %bb.et
  %i.nt = load i64, ptr %i.bj, align 8, !range !597, !noalias !3239, !noundef !8
  %i.nu = trunc nuw i64 %i.nt to i1
  br i1 %i.nu, label %bb.ev, label %bb.fz

bb.ev:                                            ; preds = %bb.eu
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
end_hunk_6
begin_hunk_7_@"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E":bb.a
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.el = icmp ult i32 %i.ek, 7
  br i1 %i.el, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i14 ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i": ; preds = %bb.an, %._crit_edge.i
  %.sroa.043.1.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %._crit_edge.i ], [ %i.en, %bb.an ] ; 9 uses
  %i.em = icmp eq ptr %.sroa.05.083.i.lcssa.i, null
  br i1 %i.em, label %bb.ao, label %bb.au

bb.an:                                            ; preds = %._crit_edge.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3861
  %i.en = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3861 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.noexc24.i.i, label %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i", !prof !136

.noexc24.i.i:                                     ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc.i unwind label %.body.thread18.i

.noexc.i:                                         ; preds = %.noexc24.i.i
  unreachable

bb.ao:                                            ; preds = %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3861
  %i.ep = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3861 ; 6 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ap, label %bb.aq, !prof !136

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.i.i, !noalias !3861

.noexc25.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.er = cmpxchg ptr %i.ds, ptr null, ptr %i.ep release monotonic, align 8, !noalias !3861
  %i.es = extractvalue { ptr, i1 } %i.er, 1
  br i1 %i.es, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store atomic ptr %i.ep, ptr %i.dw release, align 8, !noalias !3861
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.et = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %i.et, label %.outer.backedge.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %.outer.backedge.i.i

bb.au:                                            ; preds = %bb.ar, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i" ], [ %i.ep, %bb.ar ] ; 3 uses
  %i.eu = add i64 %.sroa.01.084.i.lcssa.i, 2
  %i.ev = cmpxchg weak ptr %i.dq, i64 %.sroa.01.084.i.lcssa.i, i64 %i.eu seq_cst acquire, align 8, !noalias !3861
  %.sroa.18.0.in.i.i.i8 = extractvalue { i64, i1 } %i.ev, 1
  br i1 %.sroa.18.0.in.i.i.i8, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.i.i.i.i9 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i, i32 6) ; 2 uses
  %i.ew = mul nuw nsw i32 %.sroa.0.0.i.i.i.i9, %.sroa.0.0.i.i.i.i9 ; 2 uses
  %.not.i30.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i, 0
  br i1 %.not.i30.i.i, label %.outer.backedge.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %bb.av
  %xtraiter186 = and i32 %i.ew, 5                 ; 3 uses
  %i.ex = icmp ult i32 %.sroa.0.082.i.lcssa.i, 3
  br i1 %i.ex, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter190 = and i32 %i.ew, 56
  br label %.lr.ph.i31.i.i

._crit_edge.loopexit.i.i.i10.unr-lcssa:           ; preds = %.lr.ph.i31.i.i
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i10.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter187 = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter187.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %epil.iter187.next = add i32 %epil.iter187, 1   ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186
  br i1 %epil.iter187.cmp.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil, !llvm.loop !3864

._crit_edge.loopexit.i.i.i10:                     ; preds = %.lr.ph.i31.i.i.epil, %._crit_edge.loopexit.i.i.i10.unr-lcssa
  %i.ey = add i32 %.sroa.0.082.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter191 = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter191.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %niter191.next.7 = add i32 %niter191, 8         ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190
  br i1 %niter191.ncmp.7, label %._crit_edge.loopexit.i.i.i10.unr-lcssa, label %.lr.ph.i31.i.i

bb.aw:                                            ; preds = %bb.au
  br i1 %.not64.i.i, label %bb.ax, label %.critedge.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i": ; preds = %bb.ax
  store atomic ptr %.sroa.043.1.i.i, ptr %i.ds release, align 8, !noalias !3861
  %i.ez = atomicrmw add ptr %i.dq, i64 2 release, align 8, !noalias !3861 ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i, i64 496
  store atomic ptr %.sroa.043.1.i.i, ptr %i.fa release, align 8, !noalias !3861
  br label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %.not16.i.i = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %.not16.i.i, label %bb.ay, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i", !prof !136

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #35
          to label %.noexc7.i unwind label %.body.thread18.i

.noexc7.i:                                        ; preds = %bb.ay
  unreachable

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i10, %bb.av, %bb.at, %bb.as
  %.sroa.043.0.ph.be.i.i = phi ptr [ %i.ep, %bb.at ], [ %i.ep, %bb.as ], [ %.sroa.043.1.i.i, %bb.av ], [ %.sroa.043.1.i.i, %._crit_edge.loopexit.i.i.i10 ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i, %bb.at ], [ %.sroa.0.082.i.lcssa.i, %bb.as ], [ 1, %bb.av ], [ %i.ey, %._crit_edge.loopexit.i.i.i10 ]
  %i.fb = load atomic i64, ptr %i.dq acquire, align 8, !noalias !3861 ; 2 uses
  %i.fc = load atomic ptr, ptr %i.ds acquire, align 8, !noalias !3861
  %i.fd = and i64 %i.fb, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i.i7, label %.critedge.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i14
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i14.epil ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i14.epil, !llvm.loop !3865

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %bb.am, %bb.al
  %i.ff = load atomic i64, ptr %i.dq acquire, align 8, !noalias !3861 ; 3 uses
  %i.fg = load atomic ptr, ptr %i.ds acquire, align 8, !noalias !3861
  %i.fh = and i64 %i.ff, 1
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.ak, label %.critedge.i.i

.loopexit65.i.i:                                  ; preds = %bb.al
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit65.i.i
  %.sroa.043.2.ph.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %.loopexit65.i.i ], [ %.sroa.043.1.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit65.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.fj = icmp eq ptr %.sroa.043.2.ph.i.i, null
  br i1 %i.fj, label %.body.thread.i11, label %.thread55.i.i

.thread55.i.i:                                    ; preds = %bb.az
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.2.ph.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %.body.thread.i11

.critedge.i.i:                                    ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.aw
  %.sroa.4.0.i = phi ptr [ %.sroa.05.1.i.i, %bb.aw ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.aw ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.043.3.i.i = phi ptr [ %.sroa.043.1.i.i, %bb.aw ], [ %.sroa.043.0.ph86.i.i, %.loopexit.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.fk = icmp eq ptr %.sroa.043.3.i.i, null
  br i1 %i.fk, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", label %bb.ba

bb.ba:                                            ; preds = %.critedge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i"

.body.thread18.i:                                 ; preds = %bb.ay, %.noexc24.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i11

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i": ; preds = %bb.ba, %.critedge.i.i
  %i.fl = icmp eq ptr %.sroa.4.0.i, null
  br i1 %i.fl, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit", label %bb.bb

bb.bb:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i"
  %.sroa.9.127.i = phi i64 [ 30, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.9.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ] ; 2 uses
  %.sroa.4.126.i = phi ptr [ %.sroa.05.1.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.4.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ]
  %i.fm = icmp samesign ult i64 %.sroa.9.127.i, 31
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.126.i, i64 %.sroa.9.127.i ; 2 uses
  store ptr %0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = atomicrmw or ptr %i.fo, i64 1 release, align 8 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.fq)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit"

.body.thread.i11:                                 ; preds = %.body.thread18.i, %.thread55.i.i, %bb.az
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread18.i ], [ %lpad.phi.i.i, %.thread55.i.i ], [ %lpad.phi.i.i, %bb.az ] ; 2 uses
  %i.fr = icmp eq ptr %0, null
  br i1 %i.fr, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %.body.thread.i11
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit": ; preds = %bb.aj, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %bb.bb
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.bb ], [ 1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ], [ 1, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.do

bb.be:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %0, ptr %i.n, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1000000000, ptr %i.ft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.fv = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !3866
  %i.fw = extractvalue { i32, i1 } %i.fv, 1
  br i1 %i.fw, label %.noexc.i19, label %bb.bf, !prof !145

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc.i19 unwind label %.split.thread.i

.noexc.i19:                                       ; preds = %bb.bf, %bb.be
  %i.fx = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3866
  %i.fy = and i64 %i.fx, 9223372036854775807
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.bh, label %bb.bg, !prof !145

bb.bg:                                            ; preds = %.noexc.i19
  %i.ga = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i unwind label %.split.thread.i

.noexc16.i:                                       ; preds = %bb.bg
  %i.gb = xor i1 %i.ga, true
  %i.gc = zext i1 %i.gb to i8
  br label %bb.bh

.body.i:                                          ; preds = %bb.bz, %bb.by
  br i1 %.sroa.04.4.i, label %.body.thread90.i, label %common.resume

.split.thread.i:                                  ; preds = %bb.bg, %bb.bf
  %lpad.thr_comm.i17 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread90.i

bb.bh:                                            ; preds = %.noexc16.i, %.noexc.i19
  %.sroa.01.0.i.i.i = phi i8 [ %i.gc, %.noexc16.i ], [ 0, %.noexc.i19 ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ge = load atomic i8, ptr %i.gd monotonic, align 1, !noalias !3866
  %.not94.i = icmp eq i8 %i.ge, 0
  br i1 %.not94.i, label %bb.bm, label %bb.bi, !prof !145

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3869
  store ptr %.8.val, ptr %i.i, align 8, !noalias !3869
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.gf, align 8, !noalias !3869
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.bk unwind label %bb.bj, !noalias !3873

bb.bj:                                            ; preds = %bb.bi
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #36
          to label %.body.thread90.i unwind label %bb.bl, !noalias !3873

bb.bk:                                            ; preds = %bb.bi
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3873
  unreachable

bb.bm:                                            ; preds = %bb.bh
  %i.gi = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  %i.gj = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !3874, !noalias !3877, !noundef !8 ; 6 uses
  %i.gl = icmp ult i64 %i.gk, 384307168202282326
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp eq i64 %i.gk, 0
  br i1 %i.gm, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gn = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc5waker17current_thread_id5DUMMY29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hfaf518c2703b6078E")
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !3874, !noalias !3877, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.gk, 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i.i
  br label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i", %bb.bn
  %.sroa.02.015.i.i.i = phi i64 [ %i.hk, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i" ], [ 0, %bb.bn ] ; 4 uses
  %i.gs = phi ptr [ %i.gt, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i" ], [ %i.gq, %bb.bn ] ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.gu = load ptr, ptr %i.gs, align 8, !alias.scope !3879, !noalias !3882, !nonnull !8, !noundef !8 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !3886, !noundef !8
  %.not.i.i.i.i21 = icmp eq i64 %i.gw, %i.go
  br i1 %.not.i.i.i.i21, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i", label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !3879, !noalias !3882, !noundef !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.ha = cmpxchg ptr %i.gz, i64 0, i64 %i.gy acq_rel acquire, align 8, !noalias !3886
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ha, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.bp, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i"

bb.bp:                                            ; preds = %bb.bo
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !3879, !noalias !3882, !noundef !8 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store atomic ptr %i.hc, ptr %i.he release, align 8, !noalias !3886
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hf, align 8, !noalias !3886, !nonnull !8, !noundef !8
  %i.hg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 40 ; 2 uses
  %i.hh = atomicrmw xchg ptr %i.hg, i32 1 release, align 4, !noalias !3886
  %i.hi = icmp eq i32 %i.hh, -1
  br i1 %i.hi, label %bb.bs, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.hj = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.hg)
          to label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i unwind label %bb.dm ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h32e9219f264f0f68E.exit.i.i.i": ; preds = %bb.bo, %.lr.ph.i.i.i20
  %i.hk = add nuw nsw i64 %.sroa.02.015.i.i.i, 1
  %i.hl = icmp eq ptr %i.gt, %i.gr
  br i1 %i.hl, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %.lr.ph.i.i.i20

_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i: ; preds = %bb.bs, %bb.br
  %i.hm = icmp samesign ult i64 %.sroa.02.015.i.i.i, %i.gk
  tail call void @llvm.assume(i1 %i.hm)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3887)
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %.sroa.02.015.i.i.i ; 4 uses
  %.sroa.043.0.copyload44.i = load ptr, ptr %i.hn, align 8, !noalias !3874 ; 2 uses
  %.sroa.8.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx45.i, i64 16, i1 false), !noalias !3874
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = xor i64 %.sroa.02.015.i.i.i, -1
  %i.hq = add nsw i64 %i.gk, %i.hp
  %i.hr = mul nsw i64 %i.hq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 8 %i.ho, i64 %i.hr, i1 false), !noalias !3890
  %i.hs = add nsw i64 %i.gk, -1
  store i64 %i.hs, ptr %i.gj, align 8, !alias.scope !3893, !noalias !3894
  %.not.i26 = icmp eq ptr %.sroa.043.0.copyload44.i, null
  br i1 %.not.i26, label %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN3std4sync4mpmc5waker5Waker10try_select17he211953865c6b73fE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %.sroa.043.0.copyload44.i, ptr %i.k, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noundef !8
  store ptr %i.hu, ptr %i.fu, align 8
  br i1 %i.gi, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hv = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.hw = and i64 %i.hv, 9223372036854775807
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.bv, !prof !145

bb.bv:                                            ; preds = %bb.bu
  %i.hy = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
end_hunk_7
begin_hunk_8_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$10disconnect17h7cbb1c5630466581E":bb.a
  %.val.i = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !4009, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ab = cmpxchg ptr %i.aa, i64 0, i64 2 acq_rel acquire, align 8, !noalias !4009
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.j, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

._crit_edge.i:                                    ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i, %bb.i
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %.sroa.0.07.i, align 8, !noalias !4009, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val3.i = load ptr, ptr %i.ad, align 8, !noalias !4009, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40 ; 2 uses
  %i.af = atomicrmw xchg ptr %i.ae, i32 1 release, align 4, !noalias !4009
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ah = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.ae)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i: ; preds = %bb.k, %bb.j, %.lr.ph.i
  %i.ai = icmp eq ptr %i.z, %i.x
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge.i12, %._crit_edge.i
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E"(ptr nonnull %0, i8 %.sroa.01.0.i.i) #36
          to label %common.resume unwind label %bb.r

_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit: ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !4012, !nonnull !8, !noundef !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !4012, !noundef !8 ; 2 uses
  %.idx.i6 = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i6
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %._crit_edge.i12, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11
  %.sroa.0.07.i8 = phi ptr [ %i.aq, %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11 ], [ %i.al, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i8, i64 24 ; 2 uses
  %.val.i9 = load ptr, ptr %.sroa.0.07.i8, align 8, !noalias !4012, !nonnull !8, !noundef !8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i9, i64 24
  %i.as = cmpxchg ptr %i.ar, i64 0, i64 2 acq_rel acquire, align 8, !noalias !4012
  %.sroa.18.0.in.i.i.i10 = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i10, label %bb.l, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11

._crit_edge.i12:                                  ; preds = %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph.i7
  %i.at = load ptr, ptr %.sroa.0.07.i8, align 8, !noalias !4012, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val3.i13 = load ptr, ptr %i.au, align 8, !noalias !4012, !nonnull !8, !noundef !8
  %i.av = getelementptr inbounds nuw i8, ptr %.val3.i13, i64 40 ; 2 uses
  %i.aw = atomicrmw xchg ptr %i.av, i32 1 release, align 4, !noalias !4012
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17hd1de9f1a48e701faE(ptr noundef nonnull align 4 %i.av)
          to label %_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11 unwind label %.loopexit ; 0 uses

_ZN3std6thread6Thread6unpark17habd83e24d85fcb8eE.exit.i11: ; preds = %bb.m, %bb.l, %.lr.ph.i7
  %i.az = icmp eq ptr %i.aq, %i.ao
  br i1 %i.az, label %._crit_edge.i12, label %.lr.ph.i7

_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15: ; preds = %._crit_edge.i12, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit"
  br i1 %i.o, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15
  %i.ba = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !145

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_ZN3std4sync4mpmc5waker5Waker10disconnect17h55e0fab3fb9a1958E.exit15
  %i.be = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.q, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !136

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %0)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit"

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %.loopexit.split-lp
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h6022f70b95152c90E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.613 = alloca [16 x i8], align 8          ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.63 = alloca [16 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !align !9, !noundef !8
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = load ptr, ptr %0, align 8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i8 0, ptr %i.l, align 8
  store i64 1, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !align !9, !noundef !8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4015
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8, !noalias !4015
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.s, align 8, !noalias !4015
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.t, align 8, !noalias !4015
  store ptr %.0.val, ptr %i.a, align 8, !noalias !4015
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !4018, !noalias !4021, !noundef !8 ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !range !182, !alias.scope !4018, !noalias !4021, !noundef !8
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbcbdf408c37e5351E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279)
          to label %bb.j unwind label %bb.d, !noalias !4021

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !4023
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit62.thread, %_ZN3std4sync4mpmc5waker5Waker10unregister17hc8c1b36dc3aa49caE.exit.thread, %bb.v
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aw, %bb.ae, %bb.e, %bb.d, %bb.al, %bb.bd
  %.sroa.07.2 = phi i1 [ false, %bb.bd ], [ false, %bb.al ], [ false, %bb.ae ], [ true, %bb.d ], [ false, %bb.aw ], [ true, %bb.e ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.07.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.bd ], [ %i.do, %bb.al ], [ %i.cx, %bb.ae ], [ %i.y, %bb.d ], [ %i.eo, %bb.aw ], [ %i.y, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit50, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ac = load i64, ptr %i.f, align 8, !range !597, !alias.scope !4032, !noundef !8
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = icmp eq ptr %i.ae, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit", label %bb.i

bb.i:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
          to label %"_ZN4core3ptr118drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$17h6fa284bea3a59bd4E.exit" unwind label %bb.at

.loopexit:                                        ; preds = %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.t, %.noexc38
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.v, %bb.m, %bb.o, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ap, %bb.ar, %bb.bh, %bb.bj
  %.sroa.07.3.ph.ph.ph = phi i1 [ false, %bb.ap ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.m ], [ false, %bb.w ], [ false, %bb.bh ], [ false, %bb.z ], [ false, %bb.o ], [ false, %bb.bj ], [ false, %.invoke ], [ false, %bb.x ], [ true, %bb.j ], [ false, %bb.ar ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !4018, !noalias !4021, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.aj = add i64 %i.v, 1
  store i64 %i.aj, ptr %i.u, align 8, !alias.scope !4018, !noalias !4021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4015
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17h7f1a87358ecc50c3E(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i8, ptr %i.al, align 8, !range !348, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.m, !prof !145

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.m
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc34
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.n, %.noexc34, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", !prof !136

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.o)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !315, !noundef !8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  %i.bb = icmp samesign ult i32 %i.az, 1000000000
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split9.us.i, label %.split9.i

.split9.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %bb.p
  %i.bd = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bd, label %.thread28 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

bb.p:                                             ; preds = %.split9.us.i
  invoke void @_ZN3std6thread6Thread4park17h79c834280bb663cdE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %.split9.us.i unwind label %.loopexit.split-lp.loopexit

.split9.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17hd03641da8e668df9E.exit", %.noexc38
  %i.be = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.be, label %.thread28 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread31
  ]

bb.q:                                             ; preds = %.split9.i
  %i.bf = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc37:                                         ; preds = %bb.q
  %i.bg = extractvalue { i64, i32 } %i.bf, 0      ; 3 uses
  %i.bh = extractvalue { i64, i32 } %i.bf, 1      ; 3 uses
  %i.bi = icmp eq i64 %i.bg, %i.ax
  br i1 %i.bi, label %.split.i, label %bb.r

.split.i:                                         ; preds = %.noexc37
  %i.bj = icmp ult i32 %i.bh, 1000000000
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bb)
  %i.bk = icmp samesign ult i32 %i.bh, %i.az
  br i1 %i.bk, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc37
  %i.bl = icmp slt i64 %i.bg, %i.ax
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bm = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bm, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bn = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bg, i32 noundef %i.bh)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.t
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hf06feceab431e109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bm, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread28 [
    i64 0, label %bb.v
    i64 1, label %.thread
    i64 2, label %.thread31
  ], !prof !4039

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @250, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #35
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split9.i, %.split9.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.bs = cmpxchg ptr %i.br, i32 0, i32 1 acquire monotonic, align 4, !noalias !4040
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %.noexc41, label %bb.w, !prof !145

bb.w:                                             ; preds = %.thread
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.br)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.w, %.thread
  %i.bu = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4040
  %i.bv = and i64 %i.bu, 9223372036854775807
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.ac, label %bb.x, !prof !145

bb.x:                                             ; preds = %.noexc41
  %i.bx = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  %i.by = xor i1 %i.bx, true
  %i.bz = zext i1 %i.by to i8
  br label %bb.ac

.thread31:                                        ; preds = %.split9.i, %.split9.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !8, !align !9, !noundef !8 ; 9 uses
  %i.cc = cmpxchg ptr %i.cb, i32 0, i32 1 acquire monotonic, align 4, !noalias !4043
  %i.cd = extractvalue { i32, i1 } %i.cc, 1
  br i1 %i.cd, label %.noexc45, label %bb.y, !prof !145

bb.y:                                             ; preds = %.thread31
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.cb)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.y, %.thread31
  %i.ce = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !4043
end_hunk_8
begin_hunk_9_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9cf0ac7f455bdc38E":bb.a
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb24d1ac7a1707254E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !72, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcda7efab78711dd4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !1068, !noundef !8
  %i.b = tail call noundef zeroext i1 @"_ZN74_$LT$mio..net..uds..listener..UnixListener$u20$as$u20$core..fmt..Debug$GT$3fmt17hcbbdfc21a5a4319bE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !72, !noundef !8
  %.val = load i8, ptr %i.a, align 1, !range !129, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd9c9a7577834ab8aE.939", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd3fb1f146676bc2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he38fc04a783af194E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !1068, !noundef !8
  %i.b = tail call noundef zeroext i1 @"_ZN73_$LT$core..net..socket_addr..SocketAddr$u20$as$u20$core..fmt..Display$GT$3fmt17hebfa5708b1795796E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03e6a69f3a2ff73dE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h36dd57a07a89d236E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @298, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h470bc5a09f249315E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !4529
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !4529
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !4529
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !4529
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !4529
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !4529
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !4529
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !4529
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !4529
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !4529
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !4532, !noalias !4535, !nonnull !8, !align !72, !noundef !8
  %i.ac = call fastcc noundef ptr @_ZN3std2io5Write9write_all17h8a0b8bbc34b17475E(ptr noalias noundef nonnull align 1 %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !4532 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h3844eff68ae545ffE.exit"

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !4537, !noalias !4535, !noundef !8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4532, !noalias !4535
  resume { ptr, i32 } %i.ag

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i": ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4532, !noalias !4535
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h3844eff68ae545ffE.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h3844eff68ae545ffE.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h4956cf8ac3a7acd2E(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17he68d6860116962b2E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !4544
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @242, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !4545, !inline_history !4546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4540
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb283839c520ac99eE"(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [160 x i8], align 8               ; 7 uses
  %.sroa.9.i = alloca [144 x i8], align 8         ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.547.i = alloca [144 x i8], align 8       ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4547, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !4547
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i": ; preds = %.body.i, %bb.j, %bb.i, %bb.e
  %.sroa.014.0.i = phi i1 [ true, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.sroa.016.0.i = phi i1 [ false, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.pn.i = phi { ptr, i32 } [ %i.be, %.body.i ], [ %i.p, %bb.e ], [ %i.w, %bb.j ], [ %i.w, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  call void @llvm.experimental.noalias.scope.decl(metadata !4553)
  call void @llvm.experimental.noalias.scope.decl(metadata !4556)
  call void @llvm.experimental.noalias.scope.decl(metadata !4559)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !4562, !nonnull !8, !noundef !8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4563
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i" unwind label %bb.n

bb.e:                                             ; preds = %bb.ad, %bb.p, %bb.h, %bb.b
  %.sroa.016.1.i = phi i1 [ false, %bb.ad ], [ true, %bb.p ], [ true, %bb.h ], [ true, %bb.b ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4547
  store ptr %i.l, ptr %i.g, align 8, !noalias !4547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4547
  store ptr @296, ptr %i.e, align 8, !noalias !4547
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !4547
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !4547
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !4547
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !4547
  %i.u = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h81b6540b7d8872e3E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.v = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", %bb.l, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !4564
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i" unwind label %bb.n

bb.k:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.f, align 8, !noalias !4547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4547
  %i.z = icmp eq ptr %i.u, null
  br i1 %i.z, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i" unwind label %bb.i

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4547
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.ai, %bb.ag, %bb.af, %bb.j, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.ab = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = extractvalue { ptr, i64 } %i.v, 1
  invoke void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.054.0.copyload.i = load ptr, ptr %i.ad, align 8, !alias.scope !4547 ; 2 uses
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.455.0.copyload.i = load ptr, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !4547 ; 2 uses
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.547.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.556.0..sroa_idx.i, i64 112, i1 false)
  %.sroa.547.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.547.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.128..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.547.i, i64 144, i1 false), !noalias !4547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4573
  store ptr %.sroa.054.0.copyload.i, ptr %i.c, align 8, !noalias !4547
  %.sroa.7.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.455.0.copyload.i, ptr %.sroa.7.0..sroa_idx37.i, align 8, !noalias !4547
  %.sroa.9.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx40.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, i64 144, i1 false), !noalias !4547
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hd1c418e806a17b46E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae)
          to label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h82bb53a304619d4cE.exit.i.i" unwind label %bb.r, !noalias !4576

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.c) #36
          to label %.body30.i unwind label %bb.s, !noalias !4576

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4576
  unreachable

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h82bb53a304619d4cE.exit.i.i": ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4577
  store ptr %.sroa.054.0.copyload.i, ptr %i.b, align 8, !noalias !4547
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.455.0.copyload.i, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !4547
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.559.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9.i, i64 112, i1 false), !noalias !4547
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h915282f64c0121dbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.b)
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h82bb53a304619d4cE.exit.i.i"
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %.body30.i

.body30.i:                                        ; preds = %bb.t, %bb.r
  %eh.lpad-body31.i = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %i.af, %bb.r ]
  %i.ai = extractvalue { ptr, i32 } %eh.lpad-body31.i, 0
  %i.aj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ai)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %.body30.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.v:                                             ; preds = %.body30.i
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  br label %bb.x

bb.w:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h82bb53a304619d4cE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4573
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.an = phi ptr [ undef, %bb.w ], [ %i.am, %bb.v ] ; 2 uses
  %i.ao = phi ptr [ null, %bb.w ], [ %i.al, %bb.v ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !4547, !nonnull !8, !noundef !8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4580)
  %i.as = load i64, ptr %i.ar, align 8, !range !597, !alias.scope !4580, !noundef !8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.au, align 8, !alias.scope !4580, !align !72, !noundef !8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.av, align 8, !alias.scope !4580 ; 6 uses
  %i.aw = icmp eq ptr %.val.i.i, null
  br i1 %i.aw, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ax = load ptr, ptr %.val1.i.i, align 8, !invariant.load !8, !noalias !4583 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.ax(ptr noundef nonnull %.val.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4583

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !182, !invariant.load !8, !noalias !4583 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !604, !invariant.load !8, !noalias !4583 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #24, !noalias !4583
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"

bb.ac:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !182, !invariant.load !8, !noalias !4583 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !604, !invariant.load !8, !noalias !4583 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, -9223372036854775807
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bi) #24, !noalias !4583
  br label %.body.i

.body.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.ac
  store i64 1, ptr %i.ar, align 8
  store ptr %i.ao, ptr %i.au, align 8
  store ptr %i.an, ptr %i.av, align 8
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.ab, %bb.y, %bb.x
  store i64 1, ptr %i.ar, align 8
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ao, ptr %.sroa.58.0..sroa_idx9.i, align 8
  %.sroa.611.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.an, ptr %.sroa.611.0..sroa_idx12.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4547
  %i.bl = load ptr, ptr %i.ap, align 8, !alias.scope !4547, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !noalias !4547
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !4586
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ad, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i"

bb.ad:                                            ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i" unwind label %bb.e

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i": ; preds = %bb.ad, %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4547
  call void @llvm.experimental.noalias.scope.decl(metadata !4591)
  call void @llvm.experimental.noalias.scope.decl(metadata !4594)
  call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  %i.bo = load ptr, ptr %i.h, align 8, !alias.scope !4603, !nonnull !8, !noundef !8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !4604
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.ae, label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h5c1389bb0f4d279fE.exit"

bb.ae:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h5c1389bb0f4d279fE.exit"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i": ; preds = %bb.d, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"
  br i1 %.sroa.016.0.i, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.br)
          to label %bb.ag unwind label %bb.n

.critedge.i:                                      ; preds = %bb.ag, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"
  br i1 %.sroa.014.0.i, label %bb.ah, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) #36
          to label %.critedge.i unwind label %bb.n

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i": ; preds = %bb.ai, %bb.ah, %.critedge.i
  resume { ptr, i32 } %.pn.i

bb.ah:                                            ; preds = %.critedge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4605)
  call void @llvm.experimental.noalias.scope.decl(metadata !4608)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !4611, !nonnull !8, !noundef !8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !4612
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ai, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i" unwind label %bb.n

"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17h5c1389bb0f4d279fE.exit": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb7a62afc5491613eE"(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.9.i = alloca [88 x i8], align 8          ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.547.i = alloca [88 x i8], align 8        ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4613, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !4613
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i": ; preds = %.body.i, %bb.j, %bb.i, %bb.e
  %.sroa.014.0.i = phi i1 [ true, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.sroa.016.0.i = phi i1 [ false, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.pn.i = phi { ptr, i32 } [ %i.be, %.body.i ], [ %i.p, %bb.e ], [ %i.w, %bb.j ], [ %i.w, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4616)
  call void @llvm.experimental.noalias.scope.decl(metadata !4619)
  call void @llvm.experimental.noalias.scope.decl(metadata !4622)
  call void @llvm.experimental.noalias.scope.decl(metadata !4625)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !4628, !nonnull !8, !noundef !8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4629
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i" unwind label %bb.n

bb.e:                                             ; preds = %bb.ad, %bb.p, %bb.h, %bb.b
  %.sroa.016.1.i = phi i1 [ false, %bb.ad ], [ true, %bb.p ], [ true, %bb.h ], [ true, %bb.b ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4613
  store ptr %i.l, ptr %i.g, align 8, !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4613
  store ptr @296, ptr %i.e, align 8, !noalias !4613
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !4613
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !4613
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !4613
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !4613
  %i.u = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h81b6540b7d8872e3E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.v = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", %bb.l, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !4630
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i" unwind label %bb.n

bb.k:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.f, align 8, !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4613
  %i.z = icmp eq ptr %i.u, null
  br i1 %i.z, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i" unwind label %bb.i

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4613
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.ai, %bb.ag, %bb.af, %bb.j, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.ab = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = extractvalue { ptr, i64 } %i.v, 1
  invoke void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.054.0.copyload.i = load ptr, ptr %i.ad, align 8, !alias.scope !4613 ; 2 uses
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.455.0.copyload.i = load ptr, ptr %.sroa.455.0..sroa_idx.i, align 8, !alias.scope !4613 ; 2 uses
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.547.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.556.0..sroa_idx.i, i64 56, i1 false)
  %.sroa.547.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.547.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.547.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.547.i, i64 88, i1 false), !noalias !4613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4639
  store ptr %.sroa.054.0.copyload.i, ptr %i.c, align 8, !noalias !4613
  %.sroa.7.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.455.0.copyload.i, ptr %.sroa.7.0..sroa_idx37.i, align 8, !noalias !4613
  %.sroa.9.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.0..sroa_idx40.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.i, i64 88, i1 false), !noalias !4613
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h4b24d2f6a212e05cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae)
          to label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc370274d1a182990E.exit.i.i" unwind label %bb.r, !noalias !4642

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$actix_rt..arbiter..Arbiter..with_tokio_rt$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66ab07caeebeeed7E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #36
          to label %.body30.i unwind label %bb.s, !noalias !4642

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4642
  unreachable

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc370274d1a182990E.exit.i.i": ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4643
  store ptr %.sroa.054.0.copyload.i, ptr %i.b, align 8, !noalias !4613
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.455.0.copyload.i, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !4613
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.559.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.i, i64 56, i1 false), !noalias !4613
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc370274d1a182990E.exit.i.i"
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  br label %.body30.i

.body30.i:                                        ; preds = %bb.t, %bb.r
  %eh.lpad-body31.i = phi { ptr, i32 } [ %i.ah, %bb.t ], [ %i.af, %bb.r ]
  %i.ai = extractvalue { ptr, i32 } %eh.lpad-body31.i, 0
  %i.aj = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ai)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %.body30.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.v:                                             ; preds = %.body30.i
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %i.am = extractvalue { ptr, ptr } %i.aj, 1
  br label %bb.x

bb.w:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hc370274d1a182990E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4639
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.an = phi ptr [ undef, %bb.w ], [ %i.am, %bb.v ] ; 2 uses
  %i.ao = phi ptr [ null, %bb.w ], [ %i.al, %bb.v ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !4613, !nonnull !8, !noundef !8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4646)
  %i.as = load i64, ptr %i.ar, align 8, !range !597, !alias.scope !4646, !noundef !8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.au, align 8, !alias.scope !4646, !align !72, !noundef !8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.av, align 8, !alias.scope !4646 ; 6 uses
  %i.aw = icmp eq ptr %.val.i.i, null
  br i1 %i.aw, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ax = load ptr, ptr %.val1.i.i, align 8, !invariant.load !8, !noalias !4649 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.ax(ptr noundef nonnull %.val.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4649

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !182, !invariant.load !8, !noalias !4649 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !604, !invariant.load !8, !noalias !4649 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #24, !noalias !4649
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"

bb.ac:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !182, !invariant.load !8, !noalias !4649 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !604, !invariant.load !8, !noalias !4649 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, -9223372036854775807
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bi) #24, !noalias !4649
  br label %.body.i

.body.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.ac
  store i64 1, ptr %i.ar, align 8
  store ptr %i.ao, ptr %i.au, align 8
  store ptr %i.an, ptr %i.av, align 8
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.ab, %bb.y, %bb.x
  store i64 1, ptr %i.ar, align 8
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ao, ptr %.sroa.58.0..sroa_idx9.i, align 8
  %.sroa.611.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.an, ptr %.sroa.611.0..sroa_idx12.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4613
  %i.bl = load ptr, ptr %i.ap, align 8, !alias.scope !4613, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !noalias !4613
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !4652
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ad, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i"

bb.ad:                                            ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i" unwind label %bb.e

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i": ; preds = %bb.ad, %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4613
  call void @llvm.experimental.noalias.scope.decl(metadata !4657)
  call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  call void @llvm.experimental.noalias.scope.decl(metadata !4663)
  call void @llvm.experimental.noalias.scope.decl(metadata !4666)
  %i.bo = load ptr, ptr %i.h, align 8, !alias.scope !4669, !nonnull !8, !noundef !8
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !4670
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.ae, label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hc58275137eda2a55E.exit"

bb.ae:                                            ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hc58275137eda2a55E.exit"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i": ; preds = %bb.d, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"
  br i1 %.sroa.016.0.i, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$actix_rt..arbiter..Arbiter..with_tokio_rt$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h66ab07caeebeeed7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.br)
          to label %bb.ag unwind label %bb.n

.critedge.i:                                      ; preds = %bb.ag, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"
  br i1 %.sroa.014.0.i, label %bb.ah, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i"

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h6353e3d12818c11dE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) #36
          to label %.critedge.i unwind label %bb.n

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i": ; preds = %bb.ai, %bb.ah, %.critedge.i
  resume { ptr, i32 } %.pn.i

bb.ah:                                            ; preds = %.critedge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4671)
  call void @llvm.experimental.noalias.scope.decl(metadata !4674)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !4677, !nonnull !8, !noundef !8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !4678
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ai, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf32c9e99522ad04bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit29.i" unwind label %bb.n

"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hc58275137eda2a55E.exit": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hbe0532720e166e5aE.exit.i", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hd187ffb4db4c9b1bE"(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  %i.c = alloca [192 x i8], align 16              ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.542.i = alloca [176 x i8], align 16      ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 16, !alias.scope !4679, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !4679
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull %i.i)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i": ; preds = %.body.i, %bb.j, %bb.i, %bb.e
  %.sroa.014.0.i = phi i1 [ true, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.sroa.016.0.i = phi i1 [ false, %.body.i ], [ %.sroa.016.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.pn.i = phi { ptr, i32 } [ %i.bg, %.body.i ], [ %i.p, %bb.e ], [ %i.w, %bb.j ], [ %i.w, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  %i.m = load ptr, ptr %i.h, align 16, !alias.scope !4694, !nonnull !8, !noundef !8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !4695
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit.i" unwind label %bb.n

bb.e:                                             ; preds = %bb.ad, %bb.p, %bb.h, %bb.b
  %.sroa.016.1.i = phi i1 [ false, %bb.ad ], [ true, %bb.p ], [ true, %bb.h ], [ true, %bb.b ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4679
  store ptr %i.l, ptr %i.g, align 8, !noalias !4679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4679
  store ptr @296, ptr %i.e, align 8, !noalias !4679
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !4679
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !4679
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !4679
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !4679
  %i.u = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h81b6540b7d8872e3E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.v = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", %bb.l, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !4696
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17h04b5c72c14f69e1dE.exit23.i" unwind label %bb.n

bb.k:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.f, align 8, !noalias !4679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4679
  %i.z = icmp eq ptr %i.u, null
  br i1 %i.z, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i" unwind label %bb.i

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4679
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #35
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2fbef1fd9ec0e9bbE.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.ai, %bb.ag, %bb.af, %bb.j, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.ab = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %.not20.i = icmp eq ptr %i.ab, null
  br i1 %.not20.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = extractvalue { ptr, i64 } %i.v, 1
  invoke void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.542.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.542.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.542.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(160) %i.ad, i64 160, i1 false)
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.542.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.542.0..sroa_idx.i, i64 16, i1 false)
  %.sroa.8.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.8.0..sroa_idx35.i, ptr noundef nonnull align 16 dereferenceable(176) %.sroa.542.i, i64 176, i1 false), !noalias !4679
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  %i.ae = load <2 x ptr>, ptr %0, align 16, !alias.scope !4679
  store <2 x ptr> %i.ae, ptr %i.c, align 16, !noalias !4679
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h74757a2e90818992E(ptr noalias noundef nonnull readonly align 16 captures(address) dereferenceable(192) %i.c)
          to label %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hea995284473564d7E.exit.i.i" unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$actix_server..accept..Accept..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h7501753db6de6aa5E"(ptr noalias noundef readonly align 16 dereferenceable(160) %i.ag) #36
          to label %.body29.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4705
  unreachable

"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hea995284473564d7E.exit.i.i": ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4710
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.ai, i64 160, i1 false), !noalias !4679
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17he4b50ab3746223baE(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.b)
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hea995284473564d7E.exit.i.i"
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body29.i

.body29.i:                                        ; preds = %bb.t, %bb.r
  %eh.lpad-body30.i = phi { ptr, i32 } [ %i.aj, %bb.t ], [ %i.af, %bb.r ]
  %i.ak = extractvalue { ptr, i32 } %eh.lpad-body30.i, 0
  %i.al = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ak)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.u:                                             ; preds = %.body29.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #37
  unreachable

bb.v:                                             ; preds = %.body29.i
  %i.an = extractvalue { ptr, ptr } %i.al, 0
  %i.ao = extractvalue { ptr, ptr } %i.al, 1
  br label %bb.x

bb.w:                                             ; preds = %"_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17hea995284473564d7E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4679
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ap = phi ptr [ undef, %bb.w ], [ %i.ao, %bb.v ] ; 2 uses
  %i.aq = phi ptr [ null, %bb.w ], [ %i.an, %bb.v ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !4679, !nonnull !8, !noundef !8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  %i.au = load i64, ptr %i.at, align 8, !range !597, !alias.scope !4711, !noundef !8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !4711, !align !72, !noundef !8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !4711 ; 6 uses
  %i.ay = icmp eq ptr %.val.i.i, null
  br i1 %i.ay, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.az = load ptr, ptr %.val1.i.i, align 8, !invariant.load !8, !noalias !4714 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.az(ptr noundef nonnull %.val.i.i)
          to label %bb.ab unwind label %bb.ac, !noalias !4714

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !182, !invariant.load !8, !noalias !4714 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !604, !invariant.load !8, !noalias !4714 ; 2 uses
  %i.be = icmp ult i64 %i.bd, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #24, !noalias !4714
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbc7f1e1eb769d91fE.exit.i"

bb.ac:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Conn$GT$$GT$17he1e1be6b3bd06677E":bb.a

.loopexit5.i:                                     ; preds = %.noexc2.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4793
  %i.ac = atomicrmw sub ptr %.val.i, i64 1 release, align 8, !noalias !4811
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Conn$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h7f991818fc68d26cE.exit"

bb.g:                                             ; preds = %.loopexit5.i
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha9768228ace38f40E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Conn$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h7f991818fc68d26cE.exit"

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4793
  unreachable

"_ZN4core3ptr150drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_server..worker..Conn$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h860ed2b7bcec3603E.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Conn$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h7f991818fc68d26cE.exit": ; preds = %.loopexit5.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedReceiver$LT$actix_server..worker..Stop$GT$$GT$17h5ab20ea4585ab139E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4816)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !4816, !nonnull !8, !noundef !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 440 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !348, !noalias !4816, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$5close17h137156d2ec69356bE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !noalias !4816
  br label %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$5close17h137156d2ec69356bE.exit.i.i"

"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$5close17h137156d2ec69356bE.exit.i.i": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 448 ; 2 uses
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8, !noalias !4816 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 384
  invoke void @_ZN5tokio4sync6notify6Notify14notify_waiters17hd73ace121d40751aE(ptr noundef nonnull align 8 %i.g)
          to label %.noexc.i unwind label %bb.e, !noalias !4816

.noexc.i:                                         ; preds = %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$5close17h137156d2ec69356bE.exit.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4816
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  store ptr %i.h, ptr %i.a, align 8, !noalias !4816
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !4816
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8, !noalias !4816
  invoke fastcc void @"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hfad3f479c6901cfcE"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h567e9ea7a659cb4dE.exit.i.i" unwind label %bb.c, !noalias !4816

bb.c:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hfad3f479c6901cfcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.d, !noalias !4816

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4816
  unreachable

"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h567e9ea7a659cb4dE.exit.i.i": ; preds = %.noexc.i
  invoke fastcc void @"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hfad3f479c6901cfcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e, !noalias !4816

bb.e:                                             ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h567e9ea7a659cb4dE.exit.i.i", %"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$5close17h137156d2ec69356bE.exit.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.l, %bb.c ]
  %i.o = atomicrmw sub ptr %.val.i, i64 1 release, align 8, !noalias !4819
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %"_ZN4core3ptr150drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h8f7f0314ad347cfeE.exit.i"

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbf08745e63a52a59E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr150drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h8f7f0314ad347cfeE.exit.i" unwind label %bb.i

bb.g:                                             ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h567e9ea7a659cb4dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4816
  %i.q = atomicrmw sub ptr %.val.i, i64 1 release, align 8, !noalias !4824
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17hde5ffaac02439fadE.exit"

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hbf08745e63a52a59E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17hde5ffaac02439fadE.exit"

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4816
  unreachable

"_ZN4core3ptr150drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h8f7f0314ad347cfeE.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr124drop_in_place$LT$tokio..sync..mpsc..chan..Rx$LT$actix_server..worker..Stop$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17hde5ffaac02439fadE.exit": ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr107drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$actix_rt..arbiter..ArbiterCommand$GT$$GT$17h46bb923e9ac3b327E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4829)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !4829, !nonnull !8, !noundef !8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i, i64 456
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8, !noalias !4829
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  %i.f = atomicrmw add ptr %i.e, i64 1 acquire, align 8, !noalias !4829
  %i.g = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17he9129a4524166ed1E"(ptr noundef nonnull align 8 %i.d, i64 noundef %i.f)
          to label %.noexc.i unwind label %bb.c, !noalias !4829

.noexc.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.i = atomicrmw or ptr %i.h, i64 8589934592 release, align 8, !noalias !4829 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.j)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i" unwind label %bb.c, !noalias !4829

bb.c:                                             ; preds = %.noexc.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4835)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !4838, !nonnull !8, !noundef !8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !4838
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr157drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h41ee04fd82e01fe0E.exit.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcff2d799f1d375ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr157drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h41ee04fd82e01fe0E.exit.i" unwind label %bb.f

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i": ; preds = %.noexc.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4842)
  %i.o = load ptr, ptr %0, align 8, !alias.scope !4845, !nonnull !8, !noundef !8
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !4845
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %"_ZN4core3ptr131drop_in_place$LT$tokio..sync..mpsc..chan..Tx$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h02942e07c0ea90efE.exit"

bb.e:                                             ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcff2d799f1d375ceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %"_ZN4core3ptr131drop_in_place$LT$tokio..sync..mpsc..chan..Tx$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h02942e07c0ea90efE.exit"

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN4core3ptr157drop_in_place$LT$alloc..sync..Arc$LT$tokio..sync..mpsc..chan..Chan$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$$GT$17h41ee04fd82e01fe0E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k

"_ZN4core3ptr131drop_in_place$LT$tokio..sync..mpsc..chan..Tx$LT$actix_rt..arbiter..ArbiterCommand$C$tokio..sync..mpsc..unbounded..Semaphore$GT$$GT$17h02942e07c0ea90efE.exit": ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17hcf1d3efe47dba215E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4846)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4846, !noundef !8 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  %.val.pre = load i64, ptr %0, align 8           ; 8 uses
  br i1 %i.c, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h4467c726c5b2faa9E.exit.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h4467c726c5b2faa9E.exit.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !4846 ; 2 uses
  %.not.i.i = icmp ult i64 %.val1.i, %.val.pre
  %i.e = select i1 %.not.i.i, i64 0, i64 %.val.pre
  %.sroa.0.0.i.i = sub nuw i64 %.val1.i, %i.e     ; 5 uses
  %i.f = sub i64 %.val.pre, %.sroa.0.0.i.i        ; 2 uses
  %.not11.i.i = icmp ult i64 %i.f, %i.b           ; 2 uses
  %i.g = add i64 %.sroa.0.0.i.i, %i.b
  %.sroa.11.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %i.f) ; 4 uses
  %.sroa.58.0.i = select i1 %.not11.i.i, i64 %.val.pre, i64 %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4846, !nonnull !8, !noundef !8 ; 5 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.k = sub i64 %.sroa.58.0.i, %.sroa.0.0.i.i    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4849)
  %i.l = icmp eq i64 %.sroa.58.0.i, %.sroa.0.0.i.i
  br i1 %i.l, label %"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h4467c726c5b2faa9E.exit.i", %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.n, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i" ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h4467c726c5b2faa9E.exit.i" ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.010.i.i ; 2 uses
  %i.n = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %i.o = load i64, ptr %i.m, align 8, !range !183, !alias.scope !4852, !noalias !4846, !noundef !8
  %switch.i.i.i = icmp samesign ult i64 %i.o, 4
  br i1 %switch.i.i.i, label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.p)
          to label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i" unwind label %bb.c, !noalias !4846

"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.q = icmp eq i64 %i.n, %i.k
  br i1 %i.q, label %"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.n, %i.k
  br i1 %i.s, label %.body.i, label %.lr.ph13.i.i

.lr.ph13.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i"
  %.sroa.0.111.i.i = phi i64 [ %i.u, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i" ], [ %i.n, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.111.i.i ; 2 uses
  %i.u = add i64 %.sroa.0.111.i.i, 1              ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !range !183, !alias.scope !4855, !noalias !4846, !noundef !8
  %switch.i7.i.i = icmp samesign ult i64 %i.v, 4
  br i1 %switch.i7.i.i, label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph13.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.w)
          to label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i" unwind label %bb.e, !noalias !4846

"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i": ; preds = %bb.d, %.lr.ph13.i.i
  %i.x = icmp eq i64 %i.u, %i.k
  br i1 %i.x, label %.body.i, label %.lr.ph13.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4858
  unreachable

.body.i:                                          ; preds = %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i", %bb.c
  invoke fastcc void @"_ZN4core3ptr177drop_in_place$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h5327be8e6b133986E"(ptr nonnull %i.i, i64 %.sroa.11.0.i) #36
          to label %.body unwind label %bb.j, !noalias !4846

"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i", %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h4467c726c5b2faa9E.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4859)
  br i1 %.not11.i.i, label %.lr.ph.i.i.i.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit"

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i", %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i"
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i" ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 4 uses
  %i.ab = load i64, ptr %i.z, align 8, !range !183, !alias.scope !4862, !noalias !4846, !noundef !8
  %switch.i.i.i.i.i = icmp samesign ult i64 %i.ab, 4
  br i1 %switch.i.i.i.i.i, label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ac)
          to label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i" unwind label %bb.g, !noalias !4846

"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.ad = icmp eq i64 %i.aa, %.sroa.11.0.i
  br i1 %i.ad, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit", label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.aa, %.sroa.11.0.i
  br i1 %i.af, label %.body, label %.lr.ph13.i.i.i.i

.lr.ph13.i.i.i.i:                                 ; preds = %bb.g, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i"
  %.sroa.0.111.i.i.i.i = phi i64 [ %i.ah, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i" ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.sroa.0.111.i.i.i.i ; 2 uses
  %i.ah = add i64 %.sroa.0.111.i.i.i.i, 1         ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !range !183, !alias.scope !4865, !noalias !4846, !noundef !8
  %switch.i7.i.i.i.i = icmp samesign ult i64 %i.ai, 4
  br i1 %switch.i7.i.i.i.i, label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph13.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerHandleAccept$GT$17h402f06db83e3eeddE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.aj)
          to label %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i" unwind label %bb.i, !noalias !4846

"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i": ; preds = %bb.h, %.lr.ph13.i.i.i.i
  %i.ak = icmp eq i64 %i.ah, %.sroa.11.0.i
  br i1 %i.ak, label %.body, label %.lr.ph13.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4868
  unreachable

bb.j:                                             ; preds = %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4846
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i", %.body.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %.body.i ], [ %i.ae, %bb.g ], [ %i.ae, %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit9.i.i.i.i" ]
  %i.an = icmp eq i64 %.val.pre, 0
  br i1 %i.an, label %"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit", label %bb.k

bb.k:                                             ; preds = %.body
  %i.ao = mul nuw i64 %.val.pre, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit"

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit": ; preds = %"_ZN4core3ptr61drop_in_place$LT$actix_server..waker_queue..WakerInterest$GT$17h220efa56f3f476b5E.exit.i.i.i.i", %"_ZN4core3ptr71drop_in_place$LT$$u5b$actix_server..waker_queue..WakerInterest$u5d$$GT$17hcc4787a6d2d18500E.exit.i", %bb.a
  %i.ap = icmp eq i64 %.val.pre, 0
  br i1 %i.ap, label %"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit4", label %bb.l

bb.l:                                             ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.aq, align 8, !nonnull !8, !noundef !8
  %i.ar = mul nuw i64 %.val.pre, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit4"

"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit4": ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ef70f6318a07bd1E.exit", %bb.l
  ret void

"_ZN4core3ptr91drop_in_place$LT$alloc..raw_vec..RawVec$LT$actix_server..waker_queue..WakerInterest$GT$$GT$17h4898f40c3cd5cf4dE.exit": ; preds = %bb.k, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr108drop_in_place$LT$std..sync..mpmc..counter..Counter$LT$std..sync..mpmc..list..Channel$LT$$LP$$RP$$GT$$GT$$GT$17h751e57618bca4548E"(ptr noalias nofree noundef nonnull align 128 captures(none) dereferenceable(512) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4872)
  %i.a = load atomic i64, ptr %0 monotonic, align 128, !alias.scope !4875
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128, !alias.scope !4875
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8, !alias.scope !4875 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %.sroa.06.0.lcssa.i.i = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1.i.i, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa.i.i, null
  br i1 %i.h, label %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3c6e3c86bf9eb9fE.exit.i", label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.sroa.0.016.i.i = phi i64 [ %i.k, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015.i.i = phi ptr [ %.sroa.06.1.i.i, %bb.d ], [ %i.e, %bb.a ] ; 3 uses
  %i.i = and i64 %.sroa.0.016.i.i, 62
  %.not11.i.i = icmp eq i64 %i.i, 62
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !4875
  br label %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3c6e3c86bf9eb9fE.exit.i"

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = load atomic ptr, ptr %.sroa.06.015.i.i monotonic, align 8, !noalias !4875
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !4875
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.06.015.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = add i64 %.sroa.0.016.i.i, 2              ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3c6e3c86bf9eb9fE.exit.i": ; preds = %bb.b, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h69b442494aa1d1daE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
          to label %"_ZN4core3ptr67drop_in_place$LT$std..sync..mpmc..list..Channel$LT$$LP$$RP$$GT$$GT$17h55750ab4d4e18b2dE.exit" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$std..sync..mpmc..list..Channel$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3c6e3c86bf9eb9fE.exit.i"
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$std..sync..mpmc..waker..Entry$GT$$GT$17h69b442494aa1d1daE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.n) #36
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !4876
end_hunk_10
begin_hunk_11_@"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17haceca7b85fd18874E":bb.a
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !7282
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7289)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !7292, !nonnull !8, !noundef !8
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !7292
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
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !182, !invariant.load !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !604, !invariant.load !8 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #24
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77fbf660c77a9f60E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !182, !invariant.load !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !604, !invariant.load !8 ; 2 uses
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
  %i.a = load ptr, ptr %.16.val, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.a(ptr noundef nonnull %.8.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !182, !invariant.load !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !604, !invariant.load !8 ; 2 uses
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
  %i.j = load i64, ptr %i.i, align 8, !range !182, !invariant.load !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.16.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !604, !invariant.load !8 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7293)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7302, !noundef !8 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  %.val.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !7303 ; 8 uses
  br i1 %i.d, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i", label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !7302 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.val1.i.i.i, %.val.pre.i.i
  %i.f = select i1 %.not.i.i.i.i, i64 0, i64 %.val.pre.i.i
  %.sroa.0.0.i.i.i.i = sub nuw i64 %.val1.i.i.i, %i.f ; 5 uses
  %i.g = sub i64 %.val.pre.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not11.i.i.i.i = icmp ult i64 %i.g, %i.c       ; 2 uses
  %i.h = add i64 %.sroa.0.0.i.i.i.i, %i.c
  %.sroa.11.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.g) ; 4 uses
  %.sroa.58.0.i.i.i = select i1 %.not11.i.i.i.i, i64 %.val.pre.i.i, i64 %i.h ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !7302, !nonnull !8, !noundef !8 ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.l = sub i64 %.sroa.58.0.i.i.i, %.sroa.0.0.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7304)
  %i.m = icmp eq i64 %.sroa.58.0.i.i.i, %.sroa.0.0.i.i.i.i
  br i1 %i.m, label %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i", %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i"
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i" ], [ 0, %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.0.012.i.i.i.i
  %i.o = add nuw i64 %.sroa.0.012.i.i.i.i, 1      ; 4 uses
  %.val7.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !7304, !noalias !7302, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val7.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !7307

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  br i1 %i.p, label %bb.b, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i"

bb.b:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val7.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i" unwind label %bb.c, !noalias !7307

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
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !7304, !noalias !7302, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val.i.i.i.i)
          to label %.noexc9.i.i.i.i unwind label %bb.e, !noalias !7307

.noexc9.i.i.i.i:                                  ; preds = %.lr.ph15.i.i.i.i
  br i1 %i.v, label %bb.d, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i"

bb.d:                                             ; preds = %.noexc9.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i" unwind label %bb.e, !noalias !7307

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i": ; preds = %bb.d, %.noexc9.i.i.i.i
  %i.w = icmp eq i64 %i.u, %i.l
  br i1 %i.w, label %.body.i.i.i, label %.lr.ph15.i.i.i.i

bb.e:                                             ; preds = %bb.d, %.lr.ph15.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7307
  unreachable

.body.i.i.i:                                      ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i", %bb.c
  invoke fastcc void @"_ZN4core3ptr248drop_in_place$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h6abd47550c9542f6E"(ptr nonnull %i.j, i64 %.sroa.11.0.i.i.i) #36
          to label %.body.i.i unwind label %bb.j, !noalias !7302

"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i": ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i", %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$12slice_ranges17h1384aaf475ad0d3eE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7308)
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i"
  %.sroa.0.012.i.i.i.i.i.i = phi i64 [ %i.z, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i" ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.012.i.i.i.i.i.i
  %i.z = add nuw i64 %.sroa.0.012.i.i.i.i.i.i, 1  ; 4 uses
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7308, !noalias !7302, !nonnull !8, !noundef !8 ; 2 uses
  %i.aa = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val7.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.g, !noalias !7311

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.aa, label %bb.f, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i"

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val7.i.i.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i" unwind label %bb.g, !noalias !7311

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
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !7308, !noalias !7302, !nonnull !8, !noundef !8 ; 2 uses
  %i.ag = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State7ref_dec17hc7eaf1f0f3b78962E(ptr noundef nonnull align 8 %.val.i.i.i.i.i.i)
          to label %.noexc9.i.i.i.i.i.i unwind label %bb.i, !noalias !7311

.noexc9.i.i.i.i.i.i:                              ; preds = %.lr.ph15.i.i.i.i.i.i
  br i1 %i.ag, label %bb.h, label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i"

bb.h:                                             ; preds = %.noexc9.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask7dealloc17h81eb1983f7edb538E(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i" unwind label %bb.i, !noalias !7311

"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i": ; preds = %bb.h, %.noexc9.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.af, %.sroa.11.0.i.i.i
  br i1 %i.ah, label %.body.i.i, label %.lr.ph15.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %.lr.ph15.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7311
  unreachable

bb.j:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !7302
  unreachable

.body.i.i:                                        ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i", %bb.g, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %.body.i.i.i ], [ %i.ac, %bb.g ], [ %i.ac, %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit11.i.i.i.i.i.i" ]
  %i.ak = icmp eq i64 %.val.pre.i.i, 0
  br i1 %i.ak, label %.body.i, label %bb.k

bb.k:                                             ; preds = %.body.i.i
  %i.al = shl nuw i64 %.val.pre.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !7303
  br label %.body.i

"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i": ; preds = %"_ZN4core3ptr132drop_in_place$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h263f417825d44152E.exit.i.i.i.i.i.i", %"_ZN4core3ptr142drop_in_place$LT$$u5b$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$u5d$$GT$17h43af1769312e19fdE.exit.i.i.i", %bb.a
  %i.am = icmp eq i64 %.val.pre.i.i, 0
  br i1 %i.am, label %"_ZN4core3ptr179drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h66a9d536824d5b40E.exit.i", label %bb.l

bb.l:                                             ; preds = %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i"
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %.val1.i.i = load ptr, ptr %i.an, align 8, !alias.scope !7303, !nonnull !8, !noundef !8
  %i.ao = shl nuw i64 %.val.pre.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !7303
  br label %"_ZN4core3ptr179drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h66a9d536824d5b40E.exit.i"

.body.i:                                          ; preds = %bb.k, %.body.i.i
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$tokio..runtime..driver..Driver$GT$$GT$17hde59f9ab077186c7E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %.0.val) #36
          to label %bb.o unwind label %bb.m

"_ZN4core3ptr179drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h66a9d536824d5b40E.exit.i": ; preds = %bb.l, %"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e62294a802721b2E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$tokio..runtime..driver..Driver$GT$$GT$17hde59f9ab077186c7E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %.0.val)
          to label %"_ZN4core3ptr68drop_in_place$LT$tokio..runtime..scheduler..current_thread..Core$GT$17hf877704c4dbb8bccE.exit" unwind label %bb.n

bb.m:                                             ; preds = %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

bb.n:                                             ; preds = %"_ZN4core3ptr179drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h66a9d536824d5b40E.exit.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

"_ZN4core3ptr68drop_in_place$LT$tokio..runtime..scheduler..current_thread..Core$GT$17hf877704c4dbb8bccE.exit": ; preds = %"_ZN4core3ptr179drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$tokio..runtime..task..Notified$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$$GT$17h66a9d536824d5b40E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  ret void

bb.o:                                             ; preds = %bb.n, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %eh.lpad-body.i.i, %.body.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..sync..ArcInner$LT$tokio..sync..oneshot..Inner$LT$$LP$$RP$$GT$$GT$$GT$17h0a12adeaac36aec4E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7312, !noundef !8 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = and i64 %i.c, 8
  %.not1.i.i = icmp eq i64 %i.e, 0
  br i1 %.not1.i.i, label %"_ZN4core3ptr64drop_in_place$LT$tokio..sync..oneshot..Inner$LT$$LP$$RP$$GT$$GT$17h96a9242d089e8f09E.exit", label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8 %i.f)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5tokio4sync7oneshot4Task9drop_task17h4716b0adcea0322aE(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  br label %"_ZN4core3ptr64drop_in_place$LT$tokio..sync..oneshot..Inner$LT$$LP$$RP$$GT$$GT$17h96a9242d089e8f09E.exit"

"_ZN4core3ptr64drop_in_place$LT$tokio..sync..oneshot..Inner$LT$$LP$$RP$$GT$$GT$17h96a9242d089e8f09E.exit": ; preds = %bb.b, %bb.d
  ret void
}

end_hunk_11
begin_hunk_12_@"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E":bb.a
  %i.xa = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  %i.xc = load ptr, ptr %i.xb, align 8, !nonnull !8, !align !72, !noundef !8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  %i.xe = load i64, ptr %i.xd, align 8, !noundef !8
  store i64 5, ptr %i.w, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.xc, ptr %.sroa.5206.0..sroa_idx, align 8
  %.sroa.7207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.xe, ptr %.sroa.7207.0..sroa_idx, align 8
  %i.xf = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.xg = extractvalue { ptr, ptr } %i.xf, 0      ; 2 uses
  %i.xh = extractvalue { ptr, ptr } %i.xf, 1      ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !invariant.load !8, !nonnull !8
  %i.xk = call noundef zeroext i1 %i.xj(ptr noundef align 1 %i.xg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
  br i1 %i.xk, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.xl = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h1b98b180cdeaa07bE", align 8, !nonnull !8, !align !9, !noundef !8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @424, ptr %i.t, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.xo, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.xq, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @51, ptr %i.xr, align 8
  store i64 1, ptr %i.v, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.5182.0..sroa_idx, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.xm, ptr %i.xs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xa, ptr noundef nonnull align 1 %i.xg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xh, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co, %bb.cm, %.critedge, %bb.cl
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xt = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %0, align 8
  br label %common.resume

bb.cr:                                            ; preds = %bb.cp
  store i64 1, ptr %0, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge427
  %i.xu = call noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bb

bb.ct:                                            ; preds = %bb.ci
  %.sroa.393.sroa.0.0.copyload = load i32, ptr %.sroa.393.0..sroa_idx, align 4 ; 2 uses
  %.sroa.393.sroa.2.0.copyload = load i64, ptr %.sroa.393.sroa.2.0..sroa.393.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.not232 = icmp eq i32 %i.wh, 2
  br i1 %.not232, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !8487)
  %i.xv = load i64, ptr %i.ve, align 8, !alias.scope !8487, !noundef !8 ; 2 uses
  %i.xw = load ptr, ptr %i.vd, align 8, !alias.scope !8487, !nonnull !8, !noundef !8 ; 4 uses
  %.val.i.i = load i64, ptr %i.xw, align 8, !noalias !8487, !noundef !8 ; 2 uses
  %i.xx = icmp ne i64 %.val.i.i, 0
  call void @llvm.assume(i1 %i.xx)
  %i.xy = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.xy, ptr %i.xw, align 8, !noalias !8487
  %i.xz = icmp eq i64 %i.xy, 0
  br i1 %i.xz, label %bb.cv, label %bb.cx, !prof !136

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.trap()
  unreachable

bb.cw:                                            ; preds = %bb.ct, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.bb

bb.cx:                                            ; preds = %bb.cu
  store ptr %i.xw, ptr %i.r, align 8
  store i64 %i.xv, ptr %i.vf, align 8
  %i.ya = load i64, ptr %i.vg, align 8, !noundef !8 ; 2 uses
  %i.yb = icmp ult i64 %.sroa.393.sroa.2.0.copyload, %i.ya
  br i1 %i.yb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.yc = load ptr, ptr %i.vh, align 8, !nonnull !8, !align !9, !noundef !8
  %i.yd = getelementptr inbounds nuw [32 x i8], ptr %i.yc, i64 %.sroa.393.sroa.2.0.copyload ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !nonnull !8, !align !72, !noundef !8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.xw, ptr %i.q, align 8
  store i64 %i.xv, ptr %i.vi, align 8
  store i32 %i.wh, ptr %i.vj, align 8
  store i32 %.sroa.393.sroa.0.0.copyload, ptr %i.vk, align 4
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 32
  %i.yi = load ptr, ptr %i.yh, align 8, !invariant.load !8, !nonnull !8
  %i.yj = call noundef i8 %i.yi(ptr noundef nonnull align 1 %i.ye, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i8 %i.yj, 2
  br i1 %.not.i, label %.noexc296, label %"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit", !prof !136

bb.cz:                                            ; preds = %bb.cx
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.393.sroa.2.0.copyload, i64 noundef %i.ya, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #35
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.dm, %bb.cz
  unreachable

.noexc296:                                        ; preds = %bb.cy
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #35
  unreachable

"_ZN11actix_utils6future5ready14Ready$LT$T$GT$10into_inner17hfc82bdc3729fc7b2E.exit": ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @_ZN12actix_server6worker12ServerWorker15check_readiness17h49b6f60a4c621583E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef align 8 dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.yk = load i8, ptr %i.aa, align 8, !range !348, !noundef !8
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %._crit_edge427, label %bb.cg

bb.db:                                            ; preds = %bb.cz
  %lpad.thr_comm.split-lp382 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$actix_server..worker..WorkerCounterGuard$GT$17ha0bde5fe99531ac8E"(ptr noalias noundef align 8 dereferenceable(16) %i.r) #36
          to label %bb.dc unwind label %bb.cc

bb.dc:                                            ; preds = %bb.db
  %i.ym = call noundef i32 @close(i32 noundef %.sroa.393.sroa.0.0.copyload) #24 ; 0 uses
  br label %common.resume

bb.dd:                                            ; preds = %bb.ce
  %i.yn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.yo = load i64, ptr %i.yn, align 8, !noundef !8
  %i.yp = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.yq = load i64, ptr %i.yp, align 8, !noundef !8
  call fastcc void @_ZN12actix_server6worker12ServerWorker15restart_service17h0700bfbba1acc428E(ptr noalias noundef align 8 dereferenceable(120) %0, i64 noundef %i.yo, i64 noundef %i.yq)
  br label %.sink.split

bb.de:                                            ; preds = %bb.ce
  %i.yr = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ys = load i8, ptr %i.yr, align 1, !range !348, !noundef !8
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.di unwind label %bb.dh

.sink.split:                                      ; preds = %bb.dd, %bb.di
  %i.yu = call noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.de
  %.sroa.0.4.shrunk = phi i1 [ true, %bb.de ], [ %i.yu, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bb

bb.dh:                                            ; preds = %bb.df
  %i.yv = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  br label %common.resume

bb.di:                                            ; preds = %bb.df
  store i64 0, ptr %0, align 8
  br label %.sink.split

bb.dj:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.bb

bb.dk:                                            ; preds = %bb.cf
  %i.yw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.054.0.copyload = load i64, ptr %i.yw, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !nonnull !8, !align !9, !noundef !8
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.za = load i64, ptr %i.yz, align 8, !noundef !8
  store ptr %i.yy, ptr %i.ar, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.za, ptr %i.zb, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.av, ptr %i.zc, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.au, ptr %i.zd, align 8
  %i.ze = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %i.ze, label %.thread, label %bb.dl

.thread:                                          ; preds = %bb.dk
  call fastcc void @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h1e4bd7a0b917acabE"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.ar)
  unreachable

bb.dl:                                            ; preds = %bb.dk
  store i64 %.sroa.054.0.copyload, ptr %i.at, align 8
  %i.zf = inttoptr i64 %.sroa.3.0.copyload to ptr ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.zg = load i64, ptr %i.au, align 8, !noundef !8
  %i.zh = icmp eq i64 %i.zg, %.sroa.054.0.copyload
  br i1 %i.zh, label %bb.dn, label %bb.dm, !prof !8490

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr null, ptr %i.aq, align 8
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #35
          to label %bb.da unwind label %bb.el

bb.dn:                                            ; preds = %bb.dl
  %i.zi = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.zj = icmp eq i64 %i.zi, 0
  br i1 %i.zj, label %bb.do, label %.thread405

bb.do:                                            ; preds = %bb.dn
  %i.zk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.zk, label %bb.dp [
    i8 0, label %.thread405
    i8 1, label %.thread402
    i8 2, label %.thread402
  ], !prof !123

bb.dp:                                            ; preds = %bb.do
  %i.zl = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E")
          to label %bb.dq unwind label %bb.el     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.zm = icmp eq i8 %i.zl, 0
  br i1 %i.zm, label %.thread405, label %.thread402

.thread402:                                       ; preds = %bb.do, %bb.do, %bb.dq
  %.sroa.067.0404 = phi i8 [ %i.zl, %bb.dq ], [ %i.zk, %bb.do ], [ %i.zk, %bb.do ]
  %i.zn = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !8, !align !9, !noundef !8
  %i.zo = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zn, i8 noundef %.sroa.067.0404)
          to label %bb.dr unwind label %bb.el

bb.dr:                                            ; preds = %.thread402
  br i1 %i.zo, label %bb.ds, label %.thread405

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.zp = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !8, !align !9, !noundef !8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.zr = load i64, ptr %i.yz, align 8, !noundef !8 ; 2 uses
  %i.zs = load i64, ptr %i.av, align 8, !noundef !8 ; 3 uses
  %i.zt = icmp ult i64 %i.zs, %i.zr
  br i1 %i.zt, label %bb.ec, label %.invoke

.thread405:                                       ; preds = %bb.do, %bb.dq, %bb.dn, %bb.dr
  %i.zu = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.zv = icmp eq i8 %i.zu, 0
  br i1 %i.zv, label %bb.dt, label %bb.eb

bb.dt:                                            ; preds = %.thread405
  %i.zw = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.zx = icmp ult i64 %i.zw, 6
  call void @llvm.assume(i1 %i.zx)
  %i.zy = icmp samesign ugt i64 %i.zw, 4
  br i1 %i.zy, label %bb.du, label %bb.eb

bb.du:                                            ; preds = %bb.dt
  %i.zz = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !nonnull !8, !align !72, !noundef !8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 40
  %i.aad = load i64, ptr %i.aac, align 8, !noundef !8
  store i64 5, ptr %i.ak, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aab, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.7202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.aad, ptr %.sroa.7202.0..sroa_idx, align 8
  %i.aae = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.dv unwind label %bb.el     ; 2 uses

bb.dv:                                            ; preds = %bb.du
  %i.aaf = extractvalue { ptr, ptr } %i.aae, 0    ; 2 uses
  %i.aag = extractvalue { ptr, ptr } %i.aae, 1    ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aai = load ptr, ptr %i.aah, align 8, !invariant.load !8, !nonnull !8
  %i.aaj = invoke noundef zeroext i1 %i.aai(ptr noundef align 1 %i.aaf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.dw unwind label %bb.el

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.aaj, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.aak = load ptr, ptr @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h319aede52c859273E", align 8, !nonnull !8, !align !9, !noundef !8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aam = load i64, ptr %i.yz, align 8, !noundef !8 ; 2 uses
  %i.aan = load i64, ptr %i.av, align 8, !noundef !8 ; 3 uses
  %i.aao = icmp ult i64 %i.aan, %i.aam
  br i1 %i.aao, label %bb.dy, label %.invoke

bb.dy:                                            ; preds = %bb.dx
  %i.aap = load ptr, ptr %i.yx, align 8, !nonnull !8, !align !9, !noundef !8
  %i.aaq = getelementptr inbounds nuw [16 x i8], ptr %i.aap, i64 %i.aan ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !nonnull !8, !align !72, !noundef !8
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8, !nonnull !8, !align !9, !noundef !8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8, !invariant.load !8, !nonnull !8
  %i.aaw = load i64, ptr %i.au, align 8, !noundef !8
  %i.aax = invoke { ptr, i64 } %i.aav(ptr noundef nonnull align 1 %i.aar, i64 noundef %i.aaw)
          to label %bb.dz unwind label %bb.el     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.aay = extractvalue { ptr, i64 } %i.aax, 0
  %i.aaz = extractvalue { ptr, i64 } %i.aax, 1
  store ptr %i.aay, ptr %i.af, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aaz, ptr %i.aba, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb24d1ac7a1707254E", ptr %.sroa.4163.0..sroa_idx, align 8
  store ptr @429, ptr %i.ah, align 8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 2, ptr %i.abb, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr null, ptr %i.abc, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ag, ptr %i.abd, align 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 1, ptr %i.abe, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @51, ptr %i.abf, align 8
  store i64 1, ptr %i.aj, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %.sroa.5166.0..sroa_idx, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.aal, ptr %i.abg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zz, ptr noundef nonnull align 1 %i.aaf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aag, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.ea unwind label %bb.el

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dw, %bb.ea, %bb.dt, %.thread405, %bb.ee
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.abi = load i64, ptr %i.abh, align 8, !noundef !8 ; 2 uses
  %i.abj = load i64, ptr %i.au, align 8, !noundef !8 ; 3 uses
  %i.abk = icmp ult i64 %i.abj, %i.abi
  br i1 %i.abk, label %bb.ef, label %.invoke

bb.ec:                                            ; preds = %bb.ds
  %i.abl = load ptr, ptr %i.yx, align 8, !nonnull !8, !align !9, !noundef !8
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.zs ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !nonnull !8, !align !72, !noundef !8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8, !nonnull !8, !align !9, !noundef !8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !invariant.load !8, !nonnull !8
  %i.abs = load i64, ptr %i.au, align 8, !noundef !8
  %i.abt = invoke { ptr, i64 } %i.abr(ptr noundef nonnull align 1 %i.abn, i64 noundef %i.abs)
          to label %bb.ed unwind label %bb.el     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.abu = extractvalue { ptr, i64 } %i.abt, 0
  %i.abv = extractvalue { ptr, i64 } %i.abt, 1
  store ptr %i.abu, ptr %i.al, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.abv, ptr %i.abw, align 8
  store ptr %i.al, ptr %i.am, align 8
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb24d1ac7a1707254E", ptr %.sroa.4153.0..sroa_idx, align 8
  store ptr @429, ptr %i.an, align 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 2, ptr %i.abx, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.aby, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.abz, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 1, ptr %i.aca, align 8
  store ptr %i.an, ptr %i.ao, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @51, ptr %i.acb, align 8
  store i64 1, ptr %i.ap, align 8
  %.sroa.069.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %.sroa.069.sroa.4.0..sroa_idx, align 8
  %.sroa.069.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 1, ptr %.sroa.069.sroa.5.0..sroa_idx, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.zq, ptr %.sroa.470.0..sroa_idx, align 8
  invoke fastcc void @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17hb4b07f097ca33d41E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.ap)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.eb

bb.ef:                                            ; preds = %bb.eb
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.acd = load ptr, ptr %i.acc, align 8, !nonnull !8, !align !9, !noundef !8
  %i.ace = getelementptr inbounds nuw [32 x i8], ptr %i.acd, i64 %i.abj ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8491)
  %.val.i = load ptr, ptr %i.ace, align 8, !alias.scope !8491, !noalias !8494 ; 5 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8 ; 3 uses
  %.val1.i = load ptr, ptr %i.acf, align 8, !alias.scope !8491, !noalias !8494, !nonnull !8, !align !9, !noundef !8 ; 5 uses
  %i.acg = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !8496 ; 2 uses
  %.not.i.i = icmp eq ptr %i.acg, null
  br i1 %.not.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.acg(ptr noundef nonnull %.val.i)
          to label %bb.eh unwind label %bb.ei, !noalias !8496

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ach = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !range !182, !invariant.load !8, !noalias !8496 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ack = load i64, ptr %i.acj, align 8, !range !604, !invariant.load !8, !noalias !8496 ; 2 uses
  %i.acl = icmp ult i64 %i.ack, -9223372036854775807
  call void @llvm.assume(i1 %i.acl)
  %i.acm = icmp eq i64 %i.aci, 0
  br i1 %i.acm, label %bb.ej, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aci, i64 noundef range(i64 1, -9223372036854775807) %i.ack) #24, !noalias !8496
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.acn = landingpad { ptr, i32 }
          cleanup
  %i.aco = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.acp = load i64, ptr %i.aco, align 8, !range !182, !invariant.load !8, !noalias !8496 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.acr = load i64, ptr %i.acq, align 8, !range !604, !invariant.load !8, !noalias !8496 ; 2 uses
  %i.acs = icmp ult i64 %i.acr, -9223372036854775807
  call void @llvm.assume(i1 %i.acs)
  %i.act = icmp eq i64 %i.acp, 0
  br i1 %i.act, label %.thread391, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.ei
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.acp, i64 noundef range(i64 1, -9223372036854775807) %i.acr) #24, !noalias !8496
  br label %.thread391

.thread391:                                       ; preds = %bb.ei, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  store ptr %.sroa.2.0.copyload, ptr %i.ace, align 8, !alias.scope !8491, !noalias !8494
  store ptr %i.zf, ptr %i.acf, align 8, !alias.scope !8491, !noalias !8494
  br label %common.resume

.invoke:                                          ; preds = %bb.eb, %bb.ds, %bb.dx
  %i.acu = phi i64 [ %i.zs, %bb.ds ], [ %i.aan, %bb.dx ], [ %i.abj, %bb.eb ]
  %i.acv = phi i64 [ %i.zr, %bb.ds ], [ %i.aam, %bb.dx ], [ %i.abi, %bb.eb ]
  %i.acw = phi ptr [ @427, %bb.ds ], [ @427, %bb.dx ], [ @430, %bb.eb ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.acu, i64 noundef %i.acv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acw) #35
          to label %.cont unwind label %bb.el

.cont:                                            ; preds = %.invoke
  unreachable

bb.ej:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.eh
  store ptr %.sroa.2.0.copyload, ptr %i.ace, align 8, !alias.scope !8491, !noalias !8494
  store ptr %i.zf, ptr %i.acf, align 8, !alias.scope !8491, !noalias !8494
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ace, i64 24
  store i8 1, ptr %i.acx, align 8, !alias.scope !8491, !noalias !8494
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.ek unwind label %.thread388

.thread388:                                       ; preds = %bb.ej
  %i.acy = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %0, align 8
  br label %common.resume

bb.ek:                                            ; preds = %bb.ej
  store i64 1, ptr %0, align 8
  %i.acz = call noundef zeroext i1 @"_ZN83_$LT$actix_server..worker..ServerWorker$u20$as$u20$core..future..future..Future$GT$4poll17hba6dcd8b16476220E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.bb

bb.el:                                            ; preds = %.invoke, %.thread402, %bb.ed, %bb.ec, %bb.dz, %bb.dy, %bb.dv, %bb.du, %bb.dp, %bb.dm
  %lpad.thr_comm395 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr349drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$actix_service..Service$LT$$LP$actix_server..worker..WorkerCounterGuard$C$actix_server..socket..MioStream$RP$$GT$$u2b$Response$u20$$u3d$$u20$$LP$$RP$$u2b$Future$u20$$u3d$$u20$actix_utils..future..ready..Ready$LT$core..result..Result$LT$$LP$$RP$$C$$LP$$RP$$GT$$GT$$u2b$Error$u20$$u3d$$u20$$LP$$RP$$GT$$GT$17hf13ca564a3d873caE"(ptr nonnull %.sroa.2.0.copyload, ptr %i.zf) #36
          to label %common.resume unwind label %bb.cc

bb.em:                                            ; preds = %.lr.ph, %"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit"
  %i.ada = phi i32 [ %i.ut, %.lr.ph ], [ %i.adx, %"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit" ]
  %.sroa.5315.0.copyload = load i32, ptr %.sroa.5315.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8497)
  %i.adb = load i64, ptr %i.uv, align 8, !alias.scope !8497, !noundef !8 ; 2 uses
  %i.adc = load ptr, ptr %i.uu, align 8, !alias.scope !8497, !nonnull !8, !noundef !8 ; 10 uses
  %.val.i.i304 = load i64, ptr %i.adc, align 8, !noalias !8497, !noundef !8 ; 2 uses
  %i.add = icmp ne i64 %.val.i.i304, 0
  call void @llvm.assume(i1 %i.add)
  %i.ade = add i64 %.val.i.i304, 1                ; 2 uses
  store i64 %i.ade, ptr %i.adc, align 8, !noalias !8497
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %bb.en, label %bb.eo, !prof !136

bb.en:                                            ; preds = %bb.em
  call void @llvm.trap()
  unreachable

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i32 %i.ada, ptr %i.ad, align 8
  store i32 %.sroa.5315.0.copyload, ptr %.sroa.4.0..sroa_idx321, align 4
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5322.0..sroa_idx, align 8
  store ptr %i.adc, ptr %i.uw, align 8
  store i64 %i.adb, ptr %i.ux, align 8
  %i.adg = call noundef i32 @close(i32 noundef %.sroa.5315.0.copyload) #24, !noalias !8500 ; 0 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  %i.adi = load ptr, ptr %i.adh, align 8, !noalias !8503, !nonnull !8, !noundef !8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adk = atomicrmw sub ptr %i.adj, i64 1 monotonic, align 8, !noalias !8503
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !8503, !noundef !8
  %i.adn = icmp eq i64 %i.adk, %i.adm
  br i1 %i.adn, label %bb.ep, label %"_ZN82_$LT$actix_server..worker..WorkerCounterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h797ddcdba83a9208E.exit.i.i"

bb.ep:                                            ; preds = %bb.eo
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8503
  store i64 %i.adb, ptr %i.uy, align 8, !noalias !8503
  store i64 0, ptr %i.a, align 8, !noalias !8503
  invoke void @_ZN12actix_server11waker_queue10WakerQueue4wake17h3dc6d8428111b881E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ado, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc.i.i unwind label %bb.eq, !noalias !8508

.noexc.i.i:                                       ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8503
  br label %"_ZN82_$LT$actix_server..worker..WorkerCounterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h797ddcdba83a9208E.exit.i.i"

bb.eq:                                            ; preds = %bb.ep
  %i.adp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adq = load i64, ptr %i.adc, align 8, !noalias !8509, !noundef !8
  %i.adr = add i64 %i.adq, -1                     ; 2 uses
  store i64 %i.adr, ptr %i.adc, align 8, !noalias !8509
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %bb.er, label %common.resume

bb.er:                                            ; preds = %bb.eq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h87ece3ea74edb03aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.uw)
          to label %common.resume unwind label %bb.et

"_ZN82_$LT$actix_server..worker..WorkerCounterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h797ddcdba83a9208E.exit.i.i": ; preds = %.noexc.i.i, %bb.eo
  %i.adt = load i64, ptr %i.adc, align 8, !noalias !8516, !noundef !8
  %i.adu = add i64 %i.adt, -1                     ; 2 uses
  store i64 %i.adu, ptr %i.adc, align 8, !noalias !8516
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %bb.es, label %"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit"

bb.es:                                            ; preds = %"_ZN82_$LT$actix_server..worker..WorkerCounterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h797ddcdba83a9208E.exit.i.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h87ece3ea74edb03aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.uw)
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit"

bb.et:                                            ; preds = %bb.er
  %i.adw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !8508
  unreachable

"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit": ; preds = %bb.es, %"_ZN82_$LT$actix_server..worker..WorkerCounterGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h797ddcdba83a9208E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @"_ZN5tokio4sync4mpsc4chan15Rx$LT$T$C$S$GT$4recv17h64bdd3fab52bf741E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef align 8 dereferenceable(8) %i.us, ptr noalias noundef align 8 dereferenceable(32) %1)
  %i.adx = load i32, ptr %i.ae, align 8, !range !2534, !noundef !8 ; 2 uses
  %switch246.not = icmp samesign ult i32 %i.adx, 2
  br i1 %switch246.not, label %bb.em, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$actix_server..worker..Conn$C$actix_server..worker..WorkerCounterGuard$RP$$GT$17h43d87020bbc0e42eE.exit", %.preheader410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.adz = load ptr, ptr %i.ady, align 8, !nonnull !8, !noundef !8
  %i.aea = call noundef zeroext i1 @"_ZN74_$LT$tokio..time..sleep..Sleep$u20$as$u20$core..future..future..Future$GT$4poll17h6f2a526b31508002E"(ptr noundef nonnull align 8 %i.adz, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.aea, label %bb.bb, label %bb.eu

bb.eu:                                            ; preds = %._crit_edge
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !8523)
  %i.aec = load ptr, ptr %i.aeb, align 8, !alias.scope !8523, !nonnull !8, !noundef !8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !8526)
  %i.aee = load ptr, ptr %i.aed, align 8, !alias.scope !8526, !noalias !8523, !nonnull !8, !noundef !8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  %i.aeg = load atomic i64, ptr %i.aef seq_cst, align 8, !noalias !8529
  %i.aeh = icmp eq i64 %i.aeg, 1
  br i1 %i.aeh, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  %i.aei = load i64, ptr %i.ac, align 8, !range !6372, !noundef !8
  %i.aej = icmp eq i64 %i.aei, 3
  br i1 %i.aej, label %bb.ex, label %bb.fa

bb.ew:                                            ; preds = %bb.eu
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ael = call { i64, i32 } @_ZN5tokio4time7instant7Instant7elapsed17h0614000ad4c60fdfE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aek) ; 2 uses
  %i.aem = extractvalue { i64, i32 } %i.ael, 0    ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aeo = load i64, ptr %i.aen, align 8, !noundef !8 ; 2 uses
  %i.aep = icmp eq i64 %i.aem, %i.aeo
  br i1 %i.aep, label %.split, label %bb.fb

bb.ex:                                            ; preds = %bb.ev
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0323.0.copyload = load ptr, ptr %i.aeq, align 8
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.4324.0.copyload = load ptr, ptr %.sroa.4324.0..sroa_idx, align 8 ; 4 uses
  invoke fastcc void @"_ZN5tokio4sync7oneshot15Sender$LT$T$GT$4send17h6d3f3d7618841b79E"(ptr noundef %.sroa.0323.0.copyload, i1 noundef zeroext true)
          to label %.thread407 unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aer = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4324.0.copyload) ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17hff3718e3f0171b89E"(ptr %.sroa.4324.0.copyload) #36
          to label %common.resume unwind label %bb.cc

.thread407:                                       ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4324.0.copyload) ]
  call fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17hff3718e3f0171b89E"(ptr %.sroa.4324.0.copyload)
  br label %bb.ez

bb.ez:                                            ; preds = %.thread407, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bb

bb.fa:                                            ; preds = %bb.ev
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_server..worker..WorkerState$GT$17h32e3e8dd3ab3fb23E"(ptr noalias noundef align 8 dereferenceable(40) %i.ac)
  br label %bb.ez

.split:                                           ; preds = %bb.ew
  %i.aes = extractvalue { i64, i32 } %i.ael, 1    ; 2 uses
  %i.aet = icmp ult i32 %i.aes, 1000000000
  call void @llvm.assume(i1 %i.aet)
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aev = load i32, ptr %i.aeu, align 8, !range !1685, !noundef !8
  %.not409 = icmp samesign ult i32 %i.aes, %i.aev
  br i1 %.not409, label %bb.fc, label %bb.fd

bb.fb:                                            ; preds = %bb.ew
  %.not = icmp ult i64 %i.aem, %i.aeo
  br i1 %.not, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.split, %bb.fb
  %i.aew = call { i64, i32 } @_ZN5tokio4time7instant7Instant3now17hb8eb4bd65e3ef4afE() ; 2 uses
  %i.aex = extractvalue { i64, i32 } %i.aew, 0
  %i.aey = extractvalue { i64, i32 } %i.aew, 1
  %i.aez = call { i64, i32 } @"_ZN99_$LT$tokio..time..instant..Instant$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17hd2437cd6b21dc90dE"(i64 noundef %i.aex, i32 noundef %i.aey, i64 noundef 1, i32 noundef 0) ; 2 uses
  %i.afa = extractvalue { i64, i32 } %i.aez, 0
  %i.afb = extractvalue { i64, i32 } %i.aez, 1
  %i.afc = load ptr, ptr %i.ady, align 8, !nonnull !8, !noundef !8
  call void @_ZN5tokio4time5sleep5Sleep5reset17h3c5fe5f8043c1ee3E(ptr noundef nonnull align 8 %i.afc, i64 noundef %i.afa, i32 noundef %i.afb)
  %i.afd = load ptr, ptr %i.ady, align 8, !nonnull !8, !noundef !8
  %i.afe = call noundef zeroext i1 @"_ZN74_$LT$tokio..time..sleep..Sleep$u20$as$u20$core..future..future..Future$GT$4poll17h6f2a526b31508002E"(ptr noundef nonnull align 8 %i.afd, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.bb

bb.fd:                                            ; preds = %.split, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  %i.aff = load i64, ptr %i.ab, align 8, !range !6372, !noundef !8
  %i.afg = icmp eq i64 %i.aff, 3
  br i1 %i.afg, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0326.0.copyload = load ptr, ptr %i.afh, align 8
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4327.0.copyload = load ptr, ptr %.sroa.4327.0..sroa_idx, align 8 ; 4 uses
  invoke fastcc void @"_ZN5tokio4sync7oneshot15Sender$LT$T$GT$4send17h6d3f3d7618841b79E"(ptr noundef %.sroa.0326.0.copyload, i1 noundef zeroext false)
          to label %.thread408 unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.afi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4327.0.copyload) ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17hff3718e3f0171b89E"(ptr %.sroa.4327.0.copyload) #36
end_hunk_12
