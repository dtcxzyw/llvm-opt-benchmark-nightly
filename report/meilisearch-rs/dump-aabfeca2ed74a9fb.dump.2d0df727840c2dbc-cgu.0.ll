Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN103_$LT$dump..KindDump$u20$as$u20$core..convert..From$LT$meilisearch_types..tasks..KindWithContent$GT$$GT$4from17h0098c9fb27f2c8f5E":bb.a

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i64 -9223372036854775796, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %i.ad, i64 17, i1 false)
  store i64 -9223372036854775795, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.h:                                             ; preds = %bb.a
  br label %.thread85

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h583f674709f94888E.exit": ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.055.0.copyload = load i64, ptr %i.af, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.065.0.copyload = load i64, ptr %i.ag, align 8 ; 2 uses
  %i.ah = load <2 x i64>, ptr %.sroa.556.0..sroa_idx, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load <2 x i64>, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.ak, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.not.i = icmp ne ptr %.sroa.0.0.copyload, null ; 3 uses
  %.sroa.10.0 = select i1 %.not.i, i64 %.sroa.2.0.copyload, i64 undef ; 2 uses
  %.sink23.i = zext i1 %.not.i to i64             ; 2 uses
  %.sroa.7.0.copyload.sink.i = select i1 %.not.i, i64 %.sroa.3.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1381
  store i64 %.sink23.i, ptr %i.k, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %.sroa.476.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.0.0.copyload, ptr %.sroa.577.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.678.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sink23.i, ptr %.sroa.779.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %.sroa.880.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %.sroa.0.0.copyload, ptr %.sroa.981.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.1082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.10.0, ptr %.sroa.1082.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  %.sroa.1183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  store i64 %.sroa.7.0.copyload.sink.i, ptr %.sroa.1183.0..sroa_idx, align 8, !alias.scope !1382, !noalias !1383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1389
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dfb167a12a10593E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.q unwind label %bb.p, !noalias !1390

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.al, i64 12, i1 false)
  br label %.thread85

bb.j:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  store i64 -9223372036854775791, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.l:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aq, ptr noundef nonnull align 8 dereferenceable(192) %i.ap, i64 192, i1 false)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.m:                                             ; preds = %bb.a
  br label %.thread85

.noexc3:                                          ; preds = %bb.ai, %.loopexit.i.i
  %.sroa.670.0 = phi i64 [ %.sroa.013.0.i.i.i, %.loopexit.i.i ], [ 0, %bb.ai ]
  %.sroa.569.0 = phi i64 [ %.sroa.8.0.i.i.i, %.loopexit.i.i ], [ undef, %bb.ai ]
  %.sroa.068.0 = phi ptr [ %.sroa.0.0.i.i.i, %.loopexit.i.i ], [ null, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1378
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.055.0.copyload, ptr %i.ar, align 8
  %.sroa.5.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx51, align 8
  %.sroa.6.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.ah, ptr %.sroa.6.0..sroa_idx53, align 8
  %.sroa.559.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.466.0.copyload, ptr %.sroa.559.0..sroa_idx60, align 8
  %.sroa.662.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.567.0.copyload, ptr %.sroa.662.0..sroa_idx63, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.aj, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.068.0, ptr %i.at, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.569.0, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.670.0, ptr %.sroa.670.0..sroa_idx, align 8
  store i64 -9223372036854775793, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit30"

bb.n:                                             ; preds = %.noexc20.i.i.i.i.invoke, %.noexc5.i.i.i, %bb.ai, %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.thread.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i", %.critedge.i.i.i.i, %bb.by, %bb.bz, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.n ], [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i, %.critedge.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bz ], [ %i.kw, %bb.by ]
  switch i64 %.sroa.065.0.copyload, label %bb.o [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit"
  ]

bb.o:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.466.0.copyload, i64 noundef %.sroa.065.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1391
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6e4926a415d6efd5E.exit"

bb.p:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h583f674709f94888E.exit"
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i"

bb.q:                                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h583f674709f94888E.exit"
  %i.aw = load i64, ptr %i.i, align 8, !range !82, !noalias !1389, !noundef !69 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.thread.i.i, label %bb.u

_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.thread.i.i: ; preds = %bb.q
  store i64 0, ptr %i.l, align 8, !alias.scope !1392, !noalias !1378
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8, !alias.scope !1392, !noalias !1378
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.ay, align 8, !alias.scope !1392, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1389
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h6ef6feb1984dc8fbE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %.noexc unwind label %bb.n, !noalias !1390

.noexc:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1381
  br label %bb.ai

bb.r:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394), !noalias !1395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1396), !noalias !1395
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !1397, !noalias !1389, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1398
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i": ; preds = %bb.s, %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !range !90, !alias.scope !1399, !noalias !1389, !noundef !69
  %i.be = icmp eq i64 %i.bd, -9223372036854775803
  br i1 %i.be, label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h334bdfa87607afd5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.bc)
          to label %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i" unwind label %bb.ah, !noalias !1389

bb.u:                                             ; preds = %bb.q
  %.val.i.i.i.i.i.i = load i64, ptr %.sroa.1183.0..sroa_idx, align 8, !alias.scope !1400, !noalias !1381, !noundef !69 ; 2 uses
  %i.bf = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bf, i64 4) ; 3 uses
  %i.bg = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 104   ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, 88686269585142074
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1401
  %i.bi = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bg, i64 noundef range(i64 1, 9) 8) #42, !noalias !1401 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.v ], [ 0, %bb.u ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1322) #41
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !noalias !1389

.noexc.i.i.i.i.i.i:                               ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.v ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.v ] ; 2 uses
  %i.bk = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false), !noalias !1389
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !1389
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1389
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !1390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1406
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  br label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i", %bb.x
  %i.bm = phi ptr [ %i.bt, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.x ]
  %i.bn = phi i64 [ %i.bv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i" ], [ 1, %bb.x ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5dfb167a12a10593E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.ab unwind label %bb.aa, !noalias !1407

bb.z:                                             ; preds = %bb.ad, %bb.aa
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.ad ], [ %i.bo, %bb.aa ]
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h6ef6feb1984dc8fbE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %.body.i.i.i.i.i.i unwind label %bb.af, !noalias !1407

bb.aa:                                            ; preds = %bb.y
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  %i.bp = load i64, ptr %i.g, align 8, !range !82, !noalias !1408, !noundef !69
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h959bbbaa5addb9dbE.exit.i.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = icmp samesign ult i64 %i.bn, 88686269585142076
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i64, ptr %i.j, align 8, !range !71, !alias.scope !1409, !noalias !1389, !noundef !69
  %i.bs = icmp eq i64 %i.bn, %i.br
  br i1 %i.bs, label %bb.ae, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.ac
  %i.bt = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.bm, %bb.ac ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [104 x i8], ptr %i.bt, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bu, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !1408
  %i.bv = add nuw nsw i64 %i.bn, 1                ; 2 uses
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1409, !noalias !1389
  br label %bb.y

bb.ad:                                            ; preds = %bb.ae
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E"(ptr noalias noundef align 8 dereferenceable(104) %i.g) #43
          to label %bb.z unwind label %bb.af, !noalias !1408

bb.ae:                                            ; preds = %bb.ac
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !1410, !noalias !1389, !noundef !69
  %i.bx = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.bn, i64 noundef range(i64 1, 0) %i.bx, i64 noundef 8, i64 noundef 104)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i_crit_edge.i.i.i.i.i.i" unwind label %bb.ad, !noalias !1411

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i_crit_edge.i.i.i.i.i.i": ; preds = %bb.ae
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1409, !noalias !1389
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h98af255d648b9671E.exit.i.i.i.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ad, %bb.z
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !1408
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h959bbbaa5addb9dbE.exit.i.i.i.i.i.i.i": ; preds = %bb.ab
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h6ef6feb1984dc8fbE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.i.i unwind label %bb.ag, !noalias !1407

bb.ag:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h959bbbaa5addb9dbE.exit.i.i.i.i.i.i.i"
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ag, %bb.z
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %.pn.i.i.i.i.i.i.i.i, %bb.z ]
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17h2fb799273b75d6daE"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.body unwind label %bb.ah, !noalias !1389

bb.ah:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i", %.body.i.i.i.i.i.i, %bb.t
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !1389
  unreachable

"_ZN4core3ptr98drop_in_place$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$17h3d059b5359025913E.exit.i.i.i.i.i": ; preds = %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i", %bb.p
  %.pn.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.az, %bb.t ], [ %i.az, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr170drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$C$meilisearch_types..tasks..ExportIndexSettings$GT$$GT$17h6ef6feb1984dc8fbE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %.body unwind label %bb.ah, !noalias !1390

_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h959bbbaa5addb9dbE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1389
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !1378 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1381
  %i.cb = icmp ult i64 %.pre.i.i, 88686269585142076
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %.pre.i.i, 0
  br i1 %i.cc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.i.i, %.noexc
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$meilisearch_types..tasks..ExportIndexSettings$RP$$GT$$GT$17h2fb799273b75d6daE"(ptr noalias noundef align 8 dereferenceable(24) %i.l)
          to label %.noexc3 unwind label %bb.n, !noalias !1378

bb.aj:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h4346c4574a4e76eeE.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1378, !nonnull !69, !noundef !69 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1413
  %i.cf = icmp eq i64 %.pre.i.i, 1
  br i1 %i.cf, label %bb.an, label %bb.ak, !prof !74

bb.ak:                                            ; preds = %bb.aj
  %i.cg = icmp samesign ult i64 %.pre.i.i, 21
  br i1 %i.cg, label %bb.am, label %bb.al, !prof !74

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h49c206fb3c1c1e39E(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef range(i64 1, 88686269585142076) %.pre.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.an unwind label %bb.bz, !noalias !1378

bb.am:                                            ; preds = %bb.ak
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h958c2f86dce55328E(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef range(i64 1, 88686269585142076) %.pre.i.i)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1413
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.l, align 8, !noalias !1378
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1414
  %i.ch = tail call noalias noundef align 8 dereferenceable_or_null(1160) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1160, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !1414 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ao, label %.loopexit92.i.i.i.i, !prof !67

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1160) #41
          to label %.noexc.i.i.i unwind label %bb.by, !noalias !1414

.noexc.i.i.i:                                     ; preds = %bb.ao
  unreachable

.loopexit92.i.i.i.i:                              ; preds = %bb.an
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 880
  store ptr null, ptr %i.cj, align 8, !noalias !1414
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 1154
  store i16 0, ptr %i.ck, align 2, !noalias !1414
  %i.cl = getelementptr inbounds nuw [104 x i8], ptr %i.ce, i64 %.pre.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.7.i.i.i.i), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1415
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.491.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.ce, ptr %.sroa.491.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 4 uses
  store ptr %i.ce, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %.sroa.0.0.copyload.i2, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1416
  %.sroa.7.0..sroa_idx92.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store ptr %i.cl, ptr %.sroa.7.0..sroa_idx92.i.i.i, align 8, !noalias !1416
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i.i.i, %.loopexit92.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4core4iter6traits8iterator8Iterator3nth17hff7fdf4ff5e127b7E:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.h = phi i64 [ %i.f, %.lr.ph.i.i.i.i ], [ %i.l, %bb.g ] ; 2 uses
  %.sroa.01.06.i.i.i.i = phi i64 [ %2, %.lr.ph.i.i.i.i ], [ %i.j, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !60983
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.33.0..sroa_idx.i.i.i.i, i64 136, i1 false), !noalias !60980
  br label %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i.i.i.i.i"

"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i.i.i.i.i": ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.h, %bb.d ], [ -9223372036854775807, %bb.c ] ; 2 uses
  store i64 %.sroa.01.06.i.i.i.i, ptr %i.c, align 8, !noalias !60983
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !60983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !60980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i.i.i.i.i, i64 136, i1 false), !noalias !60983
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$dump..reader..v6..V6IndexReader$GT$17h2e4d10d7554b867fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(176) %i.g), !noalias !60983
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb8a9cc5c165ad3d6E.exit.i.i.i.i"

bb.f:                                             ; preds = %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr39drop_in_place$LT$dump..error..Error$GT$17he52895c6f28ac67bE"(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i), !noalias !60983
  br label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb8a9cc5c165ad3d6E.exit.i.i.i.i"

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb8a9cc5c165ad3d6E.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.j = add i64 %.sroa.01.06.i.i.i.i, -1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !60983
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit, label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb8a9cc5c165ad3d6E.exit.i.i.i.i"
  call void %i.e(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noundef nonnull align 1 %.val.i), !noalias !60980, !inline_history !60975
  %i.l = load i64, ptr %i.b, align 8, !range !81, !noalias !60980, !noundef !69 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.l, -9223372036854775807
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit: ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hb8a9cc5c165ad3d6E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60980
  br label %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread

_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread: ; preds = %._ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread_crit_edge, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit
  %i.m = phi ptr [ %.pre, %._ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread_crit_edge ], [ %i.e, %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !60984)
  call void %i.m(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.a, ptr noundef nonnull align 1 %.val.i), !inline_history !60978
  %i.n = load i64, ptr %i.a, align 8, !range !81, !noundef !69 ; 3 uses
  %.not.i = icmp eq i64 %i.n, -9223372036854775807
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.58.0..sroa_idx.i, i64 136, i1 false)
  br label %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i"

"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i": ; preds = %bb.i, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.i ], [ -9223372036854775807, %bb.h ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !60984
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6.i, i64 136, i1 false), !noalias !60985
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h14510c65614a3ccdE.exit"

bb.j:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator10advance_by17h561fd32b272c5941E.exit.thread
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !60984
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h14510c65614a3ccdE.exit"

.loopexit:                                        ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60980
  store i64 -9223372036854775806, ptr %0, align 8
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h14510c65614a3ccdE.exit"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h14510c65614a3ccdE.exit": ; preds = %bb.j, %"_ZN4dump6reader10DumpReader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17h51232c2e6d658a25E.exit.i", %.loopexit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h16f39662350c02ecE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !61058 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !61061, !noalias !61059
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !61067
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %.noexc.i.i.i unwind label %bb.b, !noalias !61068

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !noalias !61067, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i": ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61067
  br label %bb.c

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i": ; preds = %.noexc.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61067
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !61069 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61067
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !61070
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !alias.scope !61070
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !61070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61071
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !61072
  %i.o = load ptr, ptr %i.d, align 8, !noalias !61071, !noundef !69 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.p = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !61071
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61074)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !range !71, !alias.scope !61075, !noalias !61071, !noundef !69 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !61075, !noalias !61071, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61076
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61071
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !61072
  %i.u = load ptr, ptr %i.d, align 8, !noalias !61071, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E.exit.i.i.i", label %bb.d

"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61071
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcc7c17d64852a558E.exit"

bb.f:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.w, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61077
  br label %bb.v

bb.h:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !61078 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !61078
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.val.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !61079, !noalias !61060, !noundef !69 ; 2 uses
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 4) ; 3 uses
  %i.z = mul i64 %.sroa.0.0.i.i.i.i, 24           ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !61080
  %i.ab = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.z, i64 noundef range(i64 1, 9) 8) #42, !noalias !61080 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1322) #41
          to label %.noexc5.i.i.i unwind label %bb.f, !noalias !61066

.noexc5.i.i.i:                                    ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.ab, %bb.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.i ] ; 2 uses
  %i.ad = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ad)
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !61066
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !61066
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !61066
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.g, align 8, !noalias !61066
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !61066
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !61066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !61072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61084)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i", %bb.k
  %i.af = phi ptr [ %i.av, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.k ]
  %i.ag = phi i64 [ %i.ax, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i" ], [ 1, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61085
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc.i.i.i.i.i unwind label %bb.m, !noalias !61086

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  %i.ah = load ptr, ptr %i.c, align 8, !noalias !61085, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61085
  br label %.loopexit.i.i.i.i.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61085
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !61087 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61085
  %.not.i.i.i6.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i6.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.n

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q, %bb.m
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.ay, %bb.q ], [ %i.ay, %bb.r ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #43
          to label %.body.i.i.i unwind label %bb.t, !noalias !61088

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i"

bb.n:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !61089 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !61089
  %i.al = icmp samesign ult i64 %i.ag, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %i.g, align 8, !range !71, !alias.scope !61090, !noalias !61066, !noundef !69
  %i.an = icmp eq i64 %i.ag, %i.am
  br i1 %i.an, label %bb.s, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i"

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61091
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61088

.noexc8.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i
  %i.ao = load ptr, ptr %i.b, align 8, !noalias !61091, !noundef !69 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc8.i.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.noexc9.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ap = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.au, %.noexc9.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !61091
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61093)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !range !71, !alias.scope !61094, !noalias !61091, !noundef !69 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !61094, !noalias !61091, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61095
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61091
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61088

.noexc9.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i"
  %i.au = load ptr, ptr %i.b, align 8, !noalias !61091, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit16.i.i.i, label %bb.o

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i_crit_edge.i.i.i", %bb.n
  %i.av = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i_crit_edge.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ag ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.aw, align 8, !noalias !61096
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61096
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61096
  %i.ax = add nuw nsw i64 %i.ag, 1                ; 2 uses
  store i64 %i.ax, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !61090, !noalias !61066
  br label %bb.l

bb.q:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.az, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61097
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i"

bb.s:                                             ; preds = %bb.n
  %.val.i.i7.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !61098, !noalias !61066, !noundef !69
  %i.ba = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i7.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ag, i64 noundef %i.ba, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i_crit_edge.i.i.i" unwind label %bb.q, !noalias !61099

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !61090, !noalias !61066
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h3f7d419f30b54be2E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i"
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !61096
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i" ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43, !noalias !61066
  br label %bb.u

.loopexit16.i.i.i:                                ; preds = %.noexc9.i.i.i, %.noexc8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !61066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !61100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61066
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcc7c17d64852a558E.exit"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i", %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !61066
  unreachable

bb.u:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E.exit.i.i", %.body.i.i.i
  %.pn10.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i, %"_ZN4core3ptr90drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$GT$17hcafd1f2c1bf7b0a2E.exit.i.i" ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn10.i.i.i

bb.v:                                             ; preds = %bb.g, %bb.f, %bb.b
end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator7collect17h38ff5639e4f88548E:bb.a
  br i1 %i.hy, label %.loopexit.i.i.i.i, label %.lr.ph.i27.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i27.i.i.i.i.prol.loopexit, %.lr.ph.i27.i.i.i.i, %bb.al, %bb.ai
  %.sroa.8.2.i.i.i = phi i64 [ %.sroa.8.0.i.i.i, %bb.al ], [ %.sroa.8.1.i.i.i, %bb.ai ], [ %.sroa.8.1.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.8.1.i.i.i, %.lr.ph.i27.i.i.i.i.prol.loopexit ]
  %.sroa.0.2.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.al ], [ %.sroa.0.1.i.i.i, %bb.ai ], [ %.sroa.0.1.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.sroa.0.1.i.i.i, %.lr.ph.i27.i.i.i.i.prol.loopexit ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0.070.i.i.i.i, %bb.al ], [ %.sroa.050.0.i.i.i.i, %bb.ai ], [ %.lcssa.unr, %.lr.ph.i27.i.i.i.i.prol.loopexit ], [ %i.hw, %.lr.ph.i27.i.i.i.i ]
  %i.hz = add i64 %.sroa.011.0.i.i.i, 1
  br label %bb.o

.lr.ph.i.i.i5.i:                                  ; preds = %bb.ag, %_ZN5alloc11collections5btree3mem7replace17hb378149721152395E.exit33.i.i.i.i
  %.sroa.02.0115.i.i.i.i = phi i64 [ %i.id, %_ZN5alloc11collections5btree3mem7replace17hb378149721152395E.exit33.i.i.i.i ], [ 0, %bb.ag ]
  %.sroa.057.0114.i.i.i.i = phi ptr [ %i.ia, %_ZN5alloc11collections5btree3mem7replace17hb378149721152395E.exit33.i.i.i.i ], [ %i.es, %bb.ag ] ; 3 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !61315
  %i.ia = call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !61315 ; 7 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.aj, label %_ZN5alloc11collections5btree3mem7replace17hb378149721152395E.exit33.i.i.i.i, !prof !67

bb.aj:                                            ; preds = %.lr.ph.i.i.i5.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 376) #41
          to label %.noexc.i32.i.i.i.i unwind label %bb.ak, !noalias !61315

.noexc.i32.i.i.i.i:                               ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hb378149721152395E.exit33.i.i.i.i: ; preds = %.lr.ph.i.i.i5.i
  %i.id = add nuw i64 %.sroa.02.0115.i.i.i.i, 1   ; 2 uses
  store ptr null, ptr %i.ia, align 8, !noalias !61315
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 274
  store i16 0, ptr %i.ie, align 2, !noalias !61315
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 280
  store ptr %.sroa.057.0114.i.i.i.i, ptr %i.if, align 8, !noalias !61315
  store ptr %i.ia, ptr %.sroa.057.0114.i.i.i.i, align 8, !noalias !61316
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.057.0114.i.i.i.i, i64 272
  store i16 0, ptr %i.ig, align 8, !noalias !61317
  %exitcond.not.i.i.i.i = icmp eq i64 %i.id, %i.er
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i5.i

bb.al:                                            ; preds = %"_ZN137_$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$K$C$V$C$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01f5f6cd3918f601E.exit.i.i.i.i"
  %i.ih = zext nneg i16 %i.bf to i64
  %i.ii = add nuw nsw i16 %i.bf, 1
  store i16 %i.ii, ptr %i.be, align 2, !noalias !61318
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i.i.i, i64 8
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.ih ; 3 uses
  store i64 %.sroa.030.052.i.i.i.i.i, ptr %i.ik, align 8, !noalias !61319
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %.sroa.7.sroa.0.050.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !61319
  %.sroa.749.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %.sroa.7.sroa.6.051.i.i.i.i.i, ptr %.sroa.749.0..sroa_idx.i.i.i.i, align 8, !noalias !61319
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.070.i.i.i.i) ]
  br label %.loopexit.i.i.i.i

bb.am:                                            ; preds = %bb.af
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = icmp eq i64 %.sroa.030.052.i.i.i.i.i, 0
  br i1 %i.im, label %.body.i.i.i6.i, label %.body.i.i.i6.i.sink.split

bb.an:                                            ; preds = %bb.n
  %i.in = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr306drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he0d97b4915ffca9eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.e) #43, !noalias !61266
  br label %common.resume.i

.loopexit.i:                                      ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h480d903f80b1e221E.exit.i.i.i.i.i.i, %"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h4bb37b9a6f5ed9ecE.exit.i.i.i.i.i", %"_ZN4core3ptr447drop_in_place$LT$alloc..collections..btree..dedup_sorted_iter..DedupSortedIter$LT$alloc..string..String$C$alloc..collections..btree..set_val..SetValZST$C$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$C$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$..from_sorted_iter$LT$alloc..vec..into_iter..IntoIter$LT$alloc..string..String$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h02750212a11afbe6E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i) ]
  store ptr %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !61320
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !61320
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !61320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61242
  br label %"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf021fdc297360ad4E.exit"

bb.ao:                                            ; preds = %bb.k
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5727964085cfea1bE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #43, !noalias !61242
  br label %common.resume.i

"_ZN120_$LT$alloc..collections..btree..set..BTreeSet$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hf021fdc297360ad4E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heb3c90190989cda2E.exit.i.i", %bb.h, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !61242
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h883405fbe685932aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !61403 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !61405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !61406, !noalias !61404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61412
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i.i unwind label %bb.b, !noalias !61413

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !noalias !61412, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i": ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !61412
  br label %bb.c

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i": ; preds = %.noexc.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !61412
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.22.0.copyload.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !61414 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !61412
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i"

bb.c:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !61415
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !alias.scope !61415
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8, !alias.scope !61415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !61411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !61416
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !61417
  %i.p = load ptr, ptr %i.e, align 8, !noalias !61416, !noundef !69 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.q = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i" ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !61416
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61419)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !range !71, !alias.scope !61420, !noalias !61416, !noundef !69 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !61420, !noalias !61416, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61421
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !61416
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !61417
  %i.v = load ptr, ptr %i.e, align 8, !noalias !61416, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i.i", label %bb.d

"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i.i": ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i", %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !61416
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17ha74ca90090cbfa74E.exit"

bb.f:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = inttoptr i64 %.sroa.8.16.copyload.i.i to ptr
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61422
  br label %"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i"

bb.h:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !61411
  %.sroa.8.16.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !61411
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.val.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !61423, !noalias !61405, !noundef !69 ; 2 uses
  %i.ab = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ab, i64 4) ; 3 uses
  %i.ac = shl i64 %.sroa.0.0.i.i.i.i, 5           ; 4 uses
  %i.ad = icmp ugt i64 %.val.i.i.i, 576460752303423486
  %i.ae = icmp ugt i64 %i.ac, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %2 = icmp eq i64 %i.ac, 0
  br i1 %2, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !61424
  %i.af = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef range(i64 1, 9) 8) #42, !noalias !61424 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ], [ 0, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1322) #41
          to label %.noexc5.i.i.i unwind label %bb.f, !noalias !61411

.noexc5.i.i.i:                                    ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.af, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.a ] ; 2 uses
  %3 = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  store i64 -9223372036854775808, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !61411
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !61411
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store <2 x i64> %i.z, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !61411
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.h, align 8, !noalias !61411
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !61411
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !61411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !61417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61428)
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i", %bb.j
  %i.ai = phi ptr [ %i.ay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.j ]
  %i.aj = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61429
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc.i.i.i.i.i unwind label %bb.m, !noalias !61430

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  %i.ak = load ptr, ptr %i.c, align 8, !noalias !61429, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61429
  br label %.loopexit.i.i.i.i.i

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !61429
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !61431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61429
  %.not.i.i.i.i6.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i6.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.n

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.an, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #43
          to label %.body.i.i.i unwind label %bb.s, !noalias !61432

bb.m:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !61433
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !61433
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !61433
  %i.ao = icmp samesign ult i64 %i.aj, 288230376151711744
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.h, align 8, !range !71, !alias.scope !61434, !noalias !61411, !noundef !69
  %i.aq = icmp eq i64 %i.aj, %i.ap
  br i1 %i.aq, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i"

.loopexit.i.i.i.i.i:                              ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h96463efbffe38f00E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61435
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61432

.noexc7.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i
  %i.ar = load ptr, ptr %i.b, align 8, !noalias !61435, !noundef !69 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc7.i.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.noexc8.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.as = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ax, %.noexc8.i.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !61435
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.23.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61437)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !71, !alias.scope !61438, !noalias !61435, !noundef !69 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !61438, !noalias !61435, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61439
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61435
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61432

.noexc8.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i.i"
  %i.ax = load ptr, ptr %i.b, align 8, !noalias !61435, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit9.i.i.i, label %bb.o

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i_crit_edge.i.i.i", %bb.n
  %i.ay = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i_crit_edge.i.i.i" ], [ %i.ai, %bb.n ] ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !61433
  %i.ba = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !61434, !noalias !61411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61433
  br label %bb.k

bb.q:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE"(ptr noalias noundef align 8 dereferenceable(32) %i.d) #43, !noalias !61433
  br label %bb.l

bb.r:                                             ; preds = %bb.n
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !61440, !noalias !61411, !noundef !69
  %i.bc = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.bc, i64 noundef 8, i64 noundef 32)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i_crit_edge.i.i.i" unwind label %bb.q, !noalias !61441

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i_crit_edge.i.i.i": ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !61434, !noalias !61411
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hec28db170f96f003E.exit.i.i.i.i.i"

bb.s:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !61433
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.l ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr104drop_in_place$LT$alloc..vec..Vec$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$$GT$17h6b34f7d89deca483E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #43, !noalias !61411
  br label %bb.t

.loopexit9.i.i.i:                                 ; preds = %.noexc8.i.i.i, %.noexc7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !61442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !61411
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17ha74ca90090cbfa74E.exit"

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i", %"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !61411
  unreachable

bb.t:                                             ; preds = %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i", %.body.i.i.i
  %.pn4.i.i.i = phi { ptr, i32 } [ %.pn.ph.i.i.i, %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i" ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %.pn4.i.i.i

"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.b
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.w, %bb.f ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61443
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61417

.noexc.i.i:                                       ; preds = %"_ZN4core3ptr81drop_in_place$LT$milli..filterable_attributes_rules..FilterableAttributesRule$GT$17h19123e6e63d1b02bE.exit.i.i"
  %i.be = load ptr, ptr %i.a, align 8, !noalias !61443, !noundef !69 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not5.i.i.i.i.i.i, label %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.noexc2.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %.noexc2.i.i ]
  %.sroa.23.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !61443
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.23.0.copyload.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61444), !noalias !61409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61445), !noalias !61409
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !71, !alias.scope !61446, !noalias !61443, !noundef !69 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !61446, !noalias !61443, !nonnull !69, !noundef !69
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !61447
  br label %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i": ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61443
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h15839ff28a667c86E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !61417

.noexc2.i.i:                                      ; preds = %"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17he038556b49c98716E.exit.i.i.i.i.i.i"
  %i.bk = load ptr, ptr %i.a, align 8, !noalias !61443, !noundef !69 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i1.i.i, label %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i", label %bb.u

"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i": ; preds = %.noexc2.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61443
  br label %bb.t

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17ha74ca90090cbfa74E.exit": ; preds = %"_ZN4core3ptr198drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..collections..btree..set..IntoIter$LT$alloc..string..String$GT$$C$milli..filterable_attributes_rules..FilterableAttributesRule..Field$GT$$GT$17h5432695466395a51E.exit.i.i.i", %.loopexit9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !61405
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator9size_hint17h0085d7670a0658b3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 !guid !61448 {
bb.a:
end_hunk_2
