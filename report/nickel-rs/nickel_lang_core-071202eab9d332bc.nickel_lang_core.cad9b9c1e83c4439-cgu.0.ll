Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E":bb.a
  br label %common.resume1489

bb.n:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h26f60d382cb4676dE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.i, i64 32, i1 false), !noalias !23560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !23574, !inline_history !23317
  %i.cp = call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, 9) 8) #83, !noalias !23574, !inline_history !23317 ; 8 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 224, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc.i1475 unwind label %bb.l, !noalias !23575, !inline_history !23317

.noexc.i1475:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i, i64 32, i1 false), !noalias !23575
  store i32 %i.ck, ptr %i.cp, align 8, !noalias !23575
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %.sroa.781.sroa.0.0.copyload.i, ptr %.sroa.49.0..sroa_idx.i, align 4, !noalias !23575
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %.sroa.781.sroa.5.0.copyload.i, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !23575
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %.sroa.781.sroa.6.0.copyload.i, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !23575
  store i64 4, ptr %i.k, align 8, !noalias !23560
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.cp, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23560
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !23575
  call void @llvm.experimental.noalias.scope.decl(metadata !23576)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1072.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !23577)
  %i.cu = load ptr, ptr %i.cr, align 8, !alias.scope !23577, !noalias !23560, !nonnull !152, !align !170, !noundef !152
  call void @llvm.experimental.noalias.scope.decl(metadata !23578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23579
  store ptr %i.a, ptr %i.g, align 8, !noalias !23580
  store ptr %i.cu, ptr %.sroa.498.0..sroa_idx.i, align 8, !noalias !23580
  store ptr %i.cs, ptr %.sroa.599.0..sroa_idx.i, align 8, !noalias !23580
  %i.cv = load ptr, ptr %i.j, align 8, !alias.scope !23581, !noalias !23560, !nonnull !152, !noundef !152 ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !alias.scope !23581, !noalias !23560, !nonnull !152, !noundef !152
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %.noexc11.thread.i, label %.lr.ph214.lr.ph.i

.lr.ph214.lr.ph.i:                                ; preds = %bb.p
  %.sroa.7102.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.7102.sroa.5.0..sroa.7102.0..sroa_idx103.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7102.sroa.6.0..sroa.7102.0..sroa_idx103.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7102.sroa.7.0..sroa.7102.0..sroa_idx103.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i", %.lr.ph214.lr.ph.i
  %i.cy = phi ptr [ %i.cp, %.lr.ph214.lr.ph.i ], [ %i.dk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i" ]
  %i.cz = phi i64 [ 1, %.lr.ph214.lr.ph.i ], [ %i.dm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i" ] ; 7 uses
  %i.da = phi ptr [ %i.cv, %.lr.ph214.lr.ph.i ], [ %i.do, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23582)
  call void @llvm.experimental.noalias.scope.decl(metadata !23583)
  call void @llvm.experimental.noalias.scope.decl(metadata !23584)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph214.i
  %i.db = phi ptr [ %i.da, %.lr.ph214.i ], [ %i.de, %bb.r ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store ptr %i.dc, ptr %i.j, align 8, !alias.scope !23585, !noalias !23560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23586
  invoke fastcc void @"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3c40ca543fba390bE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.db)
          to label %.noexc18.i unwind label %bb.w, !noalias !23575, !inline_history !23346

.noexc18.i:                                       ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !23587)
  %i.dd = load i32, ptr %i.f, align 8, !range !168, !alias.scope !23588, !noalias !23586, !noundef !152 ; 4 uses
  %.not.i20.i = icmp eq i32 %i.dd, 5
  br i1 %.not.i20.i, label %bb.r, label %.noexc11.i

bb.r:                                             ; preds = %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23586
  %i.de = load ptr, ptr %i.j, align 8, !alias.scope !23585, !noalias !23560, !nonnull !152, !noundef !152 ; 2 uses
  %i.df = load ptr, ptr %i.ct, align 8, !alias.scope !23585, !noalias !23560, !nonnull !152, !noundef !152
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %.noexc11.thread.i, label %bb.q

.noexc11.thread.i:                                ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i", %bb.r, %bb.p
  %.sroa.7.0.copyload14841530 = phi i64 [ %i.cz, %bb.r ], [ 1, %bb.p ], [ %i.dm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23589
  br label %.loopexit.i

.noexc11.i:                                       ; preds = %.noexc18.i
  %.sroa.7102.sroa.0.0.copyload.i = load i32, ptr %.sroa.7102.0..sroa_idx103.i, align 4, !alias.scope !23590, !noalias !23586
  %.sroa.7102.sroa.5.0.copyload.i = load i64, ptr %.sroa.7102.sroa.5.0..sroa.7102.0..sroa_idx103.sroa_idx.i, align 8, !alias.scope !23590, !noalias !23586 ; 3 uses
  %.sroa.7102.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7102.sroa.6.0..sroa.7102.0..sroa_idx103.sroa_idx.i, align 8, !alias.scope !23590, !noalias !23586 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1072.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7102.sroa.7.0..sroa.7102.0..sroa_idx103.sroa_idx.i, i64 32, i1 false), !noalias !23591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23589
  %.not.i.i.i = icmp eq i32 %i.dd, 4
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.noexc11.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.850.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.850.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1072.i, i64 32, i1 false), !noalias !23592
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1072.i)
  %i.dh = icmp samesign ult i64 %i.cz, 164703072086692426
  call void @llvm.assume(i1 %i.dh)
  %i.di = load i64, ptr %i.k, align 8, !range !153, !alias.scope !23576, !noalias !23560, !noundef !152
  %i.dj = icmp eq i64 %i.cz, %i.di
  br i1 %i.dj, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i_crit_edge.i", %bb.s
  %i.dk = phi ptr [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i_crit_edge.i" ], [ %i.cy, %bb.s ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [56 x i8], ptr %i.dk, i64 %i.cz ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.758.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.758.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.850.i, i64 32, i1 false), !noalias !23592
  store i32 %i.dd, ptr %i.dl, align 8, !noalias !23593
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %.sroa.7102.sroa.0.0.copyload.i, ptr %.sroa.455.0..sroa_idx.i, align 4, !noalias !23593
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.7102.sroa.5.0.copyload.i, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !23593
  %.sroa.657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %.sroa.7102.sroa.6.0.copyload.i, ptr %.sroa.657.0..sroa_idx.i, align 8, !noalias !23593
  %.sroa.758.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.758.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.758.i, i64 32, i1 false), !noalias !23593
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.758.i)
  %i.dm = add nuw nsw i64 %i.cz, 1                ; 3 uses
  store i64 %i.dm, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23576, !noalias !23560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.850.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1072.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !23594)
  %i.dn = load ptr, ptr %i.cr, align 8, !alias.scope !23594, !noalias !23560, !nonnull !152, !align !170, !noundef !152
  call void @llvm.experimental.noalias.scope.decl(metadata !23595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23596
  store ptr %i.a, ptr %i.g, align 8, !noalias !23597
  store ptr %i.dn, ptr %.sroa.498.0..sroa_idx.i, align 8, !noalias !23597
  store ptr %i.cs, ptr %.sroa.599.0..sroa_idx.i, align 8, !noalias !23597
  %i.do = load ptr, ptr %i.j, align 8, !alias.scope !23598, !noalias !23560, !nonnull !152, !noundef !152 ; 2 uses
  %i.dp = load ptr, ptr %i.ct, align 8, !alias.scope !23598, !noalias !23560, !nonnull !152, !noundef !152
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %.noexc11.thread.i, label %.lr.ph214.i

bb.t:                                             ; preds = %bb.v
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = icmp ne i32 %i.dd, 3
  %i.dt = icmp eq i64 %.sroa.7102.sroa.5.0.copyload.i, 0
  %or.cond209.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond209.i, label %.body.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7102.sroa.6.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7102.sroa.6.0.copyload.i, i64 noundef %.sroa.7102.sroa.5.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !23599, !inline_history !23366
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.cz, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 56)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i_crit_edge.i" unwind label %bb.t, !noalias !23575, !inline_history !23366

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i_crit_edge.i": ; preds = %bb.v
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23576, !noalias !23560
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h1b6411ded02f5741E.exit.i.i"

bb.w:                                             ; preds = %bb.q
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.u, %bb.t
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.du, %bb.w ], [ %i.dr, %bb.u ], [ %i.dr, %bb.t ]
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb5f5fd30bcb6c75dE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #86, !noalias !23575, !inline_history !23317
  br label %common.resume1489

.loopexit.i:                                      ; preds = %.noexc11.i, %.noexc11.thread.i
  %.sroa.7.0.copyload1484 = phi i64 [ %.sroa.7.0.copyload14841530, %.noexc11.thread.i ], [ %i.cz, %.noexc11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1072.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23560
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8, !noalias !23559
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !23559
  br label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbeb5dcf61f4d8bb7E.exit"

common.resume1489:                                ; preds = %bb.ay, %.body.i1477, %bb.i, %bb.ax, %bb.cz, %bb.fz, %bb.gg, %bb.fp, %bb.fo, %bb.l, %bb.m, %.body.i
  %common.resume1489.op = phi { ptr, i32 } [ %i.pe, %bb.fo ], [ %i.cm, %bb.m ], [ %eh.lpad-body.i, %.body.i ], [ %i.cm, %bb.l ], [ %i.cf, %bb.i ], [ %i.gk, %bb.ax ], [ %i.kc, %bb.cz ], [ %i.sp, %bb.gg ], [ %i.rp, %bb.fz ], [ %i.pe, %bb.fp ], [ %eh.lpad-body.i1478, %.body.i1477 ], [ %i.gn, %bb.ay ]
  resume { ptr, i32 } %common.resume1489.op

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbeb5dcf61f4d8bb7E.exit": ; preds = %bb.k, %.loopexit.i
  %.sroa.7.0 = phi i64 [ 0, %bb.k ], [ %.sroa.7.0.copyload1484, %.loopexit.i ] ; 6 uses
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.5.0.copyload, %.loopexit.i ] ; 7 uses
  %.sroa.0.01488 = phi i64 [ 0, %bb.k ], [ %.sroa.0.0.copyload, %.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23555
  %i.dv = icmp ult i64 %.sroa.7.0, 164703072086692426
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %.sroa.5.0, i64 %.sroa.7.0 ; 5 uses
  store ptr %.sroa.5.0, ptr %i.ad, align 8, !alias.scope !23600
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.0.01488, ptr %i.dx, align 8, !alias.scope !23600
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %.sroa.5.0, ptr %i.dy, align 8, !alias.scope !23600
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.dw, ptr %i.dz, align 8, !alias.scope !23600
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %i.ea = ptrtoint ptr %i.dw to i64
  %.idx1386 = mul nuw nsw i64 %.sroa.7.0, 56      ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ef = load ptr, ptr %i.ec, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = and i64 %i.eg, 7
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr i8, ptr %i.ee, i64 %i.ei  ; 3 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ef to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp ult ptr %i.ej, %i.ef
  %i.eo = icmp ugt i64 %.idx1386, %i.em
  %or.cond.i = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond.i, label %bb.x, label %.noexc386

.noexc386:                                        ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbeb5dcf61f4d8bb7E.exit"
  %i.ep = sub nsw i64 0, %.idx1386
  %i.eq = getelementptr i8, ptr %i.ej, i64 %i.ep  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  store ptr %i.eq, ptr %i.ed, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.x:                                             ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hbeb5dcf61f4d8bb7E.exit"
  %i.er = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx1386)
          to label %.noexc387 unwind label %bb.i  ; 2 uses

.noexc387:                                        ; preds = %bb.x
  %.not5.i.i = icmp eq ptr %i.er, null
  br i1 %.not5.i.i, label %bb.y, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.y:                                             ; preds = %.noexc387
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc388 unwind label %bb.i

.noexc388:                                        ; preds = %bb.y
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc386, %.noexc387
  %.sroa.0.0.i.i = phi ptr [ %i.eq, %.noexc386 ], [ %i.er, %.noexc387 ] ; 2 uses
  %.not1415 = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not1415, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit", label %.lr.ph1409

.lr.ph1409:                                       ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc389
  %.sroa.04.0.i1408 = phi i64 [ %i.eu, %.noexc389 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.val43113341407 = phi ptr [ %5, %.noexc389 ], [ %.sroa.5.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41164)
  %i.es = icmp eq ptr %.val43113341407, %i.dw
  br i1 %i.es, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.i": ; preds = %.lr.ph1409
  %5 = getelementptr inbounds nuw i8, ptr %.val43113341407, i64 56 ; 3 uses
  %.sroa.0.0.copyload1.i = load i32, ptr %.val43113341407, align 8, !noalias !23601 ; 2 uses
  %.not.i435 = icmp eq i32 %.sroa.0.0.copyload1.i, 4
  br i1 %.not.i435, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.thread.i", label %.noexc389, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.i", %.lr.ph1409
  %6 = phi ptr [ %5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.i" ], [ %i.dw, %.lr.ph1409 ]
  store ptr %6, ptr %i.dy, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc436 unwind label %bb.i

.noexc436:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.thread.i"
  unreachable

.noexc389:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf4143f13d6167516E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val43113341407, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.41164, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.6.0..sroa_idx2.i, i64 52, i1 false)
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i1408 ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.04.0.i1408, 1    ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.et, align 8, !noalias !23555
  %.sroa.41164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.41164.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.41164, i64 52, i1 false), !noalias !23555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41164)
  %exitcond1424.not = icmp eq i64 %i.eu, %.sroa.7.0
  br i1 %exitcond1424.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit", label %.lr.ph1409

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit": ; preds = %.noexc389, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %.lcssa1406 = phi ptr [ %.sroa.5.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ], [ %5, %.noexc389 ] ; 3 uses
  %i.ev = ptrtoint ptr %.lcssa1406 to i64
  %i.ew = sub nuw i64 %i.ea, %i.ev
  %i.ex = udiv exact i64 %i.ew, 56
  call void @llvm.experimental.noalias.scope.decl(metadata !23602), !noalias !23555
  %i.ey = icmp eq ptr %i.dw, %.lcssa1406
  br i1 %i.ey, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17h10dfa0216eb710cdE.exit.i.i", label %.lr.ph.i.i.i437

.lr.ph.i.i.i437:                                  ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit", %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.fa, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i" ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit" ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [56 x i8], ptr %.lcssa1406, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.fa = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23603), !noalias !23555
  %i.fb = load i32, ptr %i.ez, align 8, !range !200, !alias.scope !23604, !noalias !23605, !noundef !152
  %i.fc = icmp eq i32 %i.fb, 3
  br i1 %i.fc, label %bb.z, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i437
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !23606), !noalias !23555
  call void @llvm.experimental.noalias.scope.decl(metadata !23607), !noalias !23555
  %.val.i.i.i.i.i.i = load i64, ptr %i.fd, align 8, !range !153, !alias.scope !23608, !noalias !23605, !noundef !152 ; 2 uses
  %i.fe = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.fe, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !23608, !noalias !23605, !nonnull !152, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !23609
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i": ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i437
  %i.fg = icmp eq i64 %i.fa, %i.ex
  br i1 %i.fg, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17h10dfa0216eb710cdE.exit.i.i", label %.lr.ph.i.i.i437

"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17h10dfa0216eb710cdE.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h53b95cab0b5758f3E.exit.i.i.i", %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h9bfeca12ed9e2bdfE.exit"
  %i.fh = icmp eq i64 %.sroa.0.01488, 0
  br i1 %i.fh, label %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit", label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17h10dfa0216eb710cdE.exit.i.i"
  %i.fi = mul nuw i64 %.sroa.0.01488, 56
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23605
  br label %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit"

"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit": ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17h10dfa0216eb710cdE.exit.i.i", %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23555
  br label %bb.ga

bb.ac:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.33.0 = phi i64 [ %.sroa.33.0.copyload, %bb.b ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.24.1 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.1 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.1) ]
  %i.fj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.1117.1, i64 %.sroa.24.1
  %i.fk = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17habd50c221ed41190E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %.sroa.1117.1, ptr noundef %i.fj, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4) ; 2 uses
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.fn = inttoptr i64 %.sroa.33.0 to ptr         ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22821)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23610)
  %i.fp = load i8, ptr %i.fo, align 8, !range !210, !alias.scope !23611, !noundef !152 ; 2 uses
  switch i8 %i.fp, label %default.unreachable1584 [
    i8 0, label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
    i8 5, label %bb.ah
    i8 6, label %bb.ai
    i8 7, label %bb.aj
    i8 8, label %bb.ak
    i8 9, label %bb.al
    i8 10, label %bb.am
    i8 11, label %bb.an
    i8 12, label %bb.ao
    i8 13, label %bb.ap
    i8 14, label %bb.aq
    i8 15, label %bb.ar
    i8 16, label %bb.as
    i8 17, label %bb.at
    i8 18, label %bb.au
  ]

default.unreachable1584:                          ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hb60eb129c80d3625E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit364", %bb.df, %bb.ce, %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit, %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx837 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx837, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ae:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx836 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx836, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.af:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx835 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx835, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ag:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx834 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx834, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ah:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx833 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx833, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ai:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx832 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx832, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.aj:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx831 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx831, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ak:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx830 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx830, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.al:                                            ; preds = %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %.sroa.22821.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22821, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22821.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.fq, i64 20, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.am:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx829 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx829, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.an:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx828 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx828, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ao:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx827 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx827, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ap:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx826 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx826, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.aq:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx825 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx825, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ar:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx824 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx824, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.as:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %.sroa.22821.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22821, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22821.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.at:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx823 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx823, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.au:                                            ; preds = %bb.ac
  %.sroa.22821.0..sroa_idx822 = getelementptr inbounds nuw i8, ptr %i.fn, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx822, i64 23, i1 false), !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split": ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sroa.24838.0..sroa_idx869 = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %.sroa.24838.0.copyload870 = load ptr, ptr %.sroa.24838.0..sroa_idx869, align 8, !alias.scope !23612
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split", %bb.ac
  %.sroa.24838.0 = phi ptr [ undef, %bb.ac ], [ %.sroa.24838.0.copyload870, %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i8 %i.fp, ptr %i.fs, align 8
  %.sroa.22821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22821, i64 23, i1 false)
  %.sroa.24838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %.sroa.24838.0, ptr %.sroa.24838.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.am, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.aw, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !23613, !nonnull !152, !noundef !152 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !23613, !nonnull !152, !noundef !152 ; 2 uses
  %i.fx = load ptr, ptr %i.fu, align 8, !noalias !23613, !nonnull !152, !noundef !152 ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = and i64 %i.fy, 7
  %i.ga = sub nsw i64 0, %i.fz
  %i.gb = getelementptr i8, ptr %i.fw, i64 %i.ga  ; 3 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp ult ptr %i.gb, %i.fx
  %i.gg = icmp ult i64 %i.ge, 48
  %or.cond.i418 = or i1 %i.gf, %i.gg
  br i1 %or.cond.i418, label %bb.av, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit421"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit421": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"
  %i.gh = getelementptr i8, ptr %i.gb, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ], !noalias !23613
  store ptr %i.gh, ptr %i.fv, align 8, !noalias !23613
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352"

bb.av:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"
  %i.gi = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 48), !noalias !23613 ; 2 uses
  %.not5.i351 = icmp eq ptr %i.gi, null
  br i1 %.not5.i351, label %bb.aw, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352", !prof !154

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23613
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit421", %bb.av
  %.sroa.0.0.i350 = phi ptr [ %i.gh, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit421" ], [ %i.gi, %bb.av ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i350, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.gj = ptrtoint ptr %.sroa.0.0.i350 to i64
  br label %bb.ga

bb.ax:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.thread.i", %bb.bj, %bb.bi
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..LetBinding$GT$$GT$17h2d627309db453868E"(ptr noalias noundef align 8 dereferenceable(32) %i.z) #86, !noalias !23614, !inline_history !23392
  br label %common.resume1489

.noexc.i:                                         ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.33.1 = phi i64 [ %.sroa.33.0.copyload, %bb.b ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.24.2 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.2 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 3 uses
  %.sroa.10.0 = phi i8 [ %.sroa.10.0.copyload, %bb.b ], [ %.sroa.10575.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.2) ]
  %i.gl = getelementptr inbounds nuw [248 x i8], ptr %.sroa.1117.2, i64 %.sroa.24.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %2, ptr %i.ab, align 8, !noalias !23615
  store i8 %i.ay, ptr %i.aa, align 1, !noalias !23615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23616
  store ptr %.sroa.1117.2, ptr %i.p, align 8, !alias.scope !23617, !noalias !23618
  %.sroa.41293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.gl, ptr %.sroa.41293.0..sroa_idx, align 8, !alias.scope !23617, !noalias !23618
  %.sroa.51294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ab, ptr %.sroa.51294.0..sroa_idx, align 8, !alias.scope !23617, !noalias !23618
  %.sroa.61295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %3, ptr %.sroa.61295.0..sroa_idx, align 8, !alias.scope !23617, !noalias !23618
  %.sroa.71296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.aa, ptr %.sroa.71296.0..sroa_idx, align 8, !alias.scope !23617, !noalias !23618
  %.sroa.81297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.a, ptr %.sroa.81297.0..sroa_idx, align 8, !alias.scope !23617, !noalias !23618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23619
  call fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he7451d24da80de74E"(ptr noalias noundef align 8 captures(address) dereferenceable(248) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p), !noalias !23620, !inline_history !23417
  %i.gm = load i64, ptr %i.d, align 8, !range !165, !noalias !23621, !noundef !152
  %.not.i.i1476 = icmp eq i64 %i.gm, 19
  br i1 %.not.i.i1476, label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h238fe793921d5257E.exit", label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE"(ptr noalias noundef align 8 dereferenceable(248) %i.d) #86, !noalias !23621, !inline_history !23418
  br label %common.resume1489

bb.az:                                            ; preds = %.noexc.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !23622, !inline_history !23418
  %i.go = call noundef align 8 dereferenceable_or_null(992) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 992, i64 noundef range(i64 1, 9) 8) #83, !noalias !23622, !inline_history !23418 ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 992, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc1.i unwind label %bb.ay, !noalias !23621, !inline_history !23418

.noexc1.i:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.go, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false), !noalias !23621
  store i64 4, ptr %i.e, align 8, !noalias !23619
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.go, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23619
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !23619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !23623
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i", %bb.bb
  %.sroa.51486.0.copyload = phi ptr [ %i.gu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i" ], [ %i.go, %bb.bb ] ; 2 uses
  %.sroa.71487.0.copyload = phi i64 [ %i.gw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i" ], [ 1, %bb.bb ] ; 6 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he7451d24da80de74E"(ptr noalias noundef align 8 captures(address) dereferenceable(248) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc.i1479 unwind label %bb.bg, !noalias !23621, !inline_history !23423

.noexc.i1479:                                     ; preds = %bb.bc
  %i.gq = load i64, ptr %i.b, align 8, !range !165, !noalias !23621, !noundef !152
  %.not.i.i.i1480 = icmp eq i64 %i.gq, 19
  br i1 %.not.i.i.i1480, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %.noexc.i1479
  %i.gr = icmp samesign ult i64 %.sroa.71487.0.copyload, 37191016277640226
  call void @llvm.assume(i1 %i.gr), !noalias !23624
  %i.gs = load i64, ptr %i.e, align 8, !range !153, !alias.scope !23625, !noalias !23626, !noundef !152
  %i.gt = icmp eq i64 %.sroa.71487.0.copyload, %i.gs
  br i1 %i.gt, label %bb.bf, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit_crit_edge.i", %bb.bd
  %i.gu = phi ptr [ %.pre.i1481, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit_crit_edge.i" ], [ %.sroa.51486.0.copyload, %bb.bd ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [248 x i8], ptr %i.gu, i64 %.sroa.71487.0.copyload
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.gv, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !23621
  %i.gw = add nuw nsw i64 %.sroa.71487.0.copyload, 1 ; 2 uses
  store i64 %i.gw, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !23625, !noalias !23626
  br label %bb.bc

bb.be:                                            ; preds = %bb.bf
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..LetBinding$GT$17h17923a8e02e41a2fE"(ptr noalias noundef align 8 dereferenceable(248) %i.b) #86, !noalias !23621, !inline_history !23418
  br label %.body.i1477

bb.bf:                                            ; preds = %bb.bd
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.71487.0.copyload, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 248)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit_crit_edge.i" unwind label %bb.be, !noalias !23621, !inline_history !23418

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit_crit_edge.i": ; preds = %bb.bf
  %.pre.i1481 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !23625, !noalias !23626
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha96e53faa020196eE.exit.i"

bb.bg:                                            ; preds = %bb.bc
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1477

.body.i1477:                                      ; preds = %bb.bg, %bb.be
  %eh.lpad-body.i1478 = phi { ptr, i32 } [ %i.gy, %bb.bg ], [ %i.gx, %bb.be ]
  call fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..LetBinding$GT$$GT$17h275a948cedefc0c1E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #86, !noalias !23626, !inline_history !23417
  br label %common.resume1489

bb.bh:                                            ; preds = %.noexc.i1479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23619
  %.sroa.01485.0.copyload = load i64, ptr %i.e, align 8, !noalias !23627
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h238fe793921d5257E.exit"

"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h238fe793921d5257E.exit": ; preds = %.noexc.i, %bb.bh
  %.sroa.71487.0 = phi i64 [ %.sroa.71487.0.copyload, %bb.bh ], [ 0, %.noexc.i ] ; 6 uses
  %.sroa.51486.0 = phi ptr [ %.sroa.51486.0.copyload, %bb.bh ], [ inttoptr (i64 8 to ptr), %.noexc.i ] ; 6 uses
  %.sroa.01485.0 = phi i64 [ %.sroa.01485.0.copyload, %bb.bh ], [ 0, %.noexc.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23616
  %i.gz = load ptr, ptr %i.ab, align 8, !noalias !23615, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !23628
  %i.ha = icmp samesign ult i64 %.sroa.71487.0, 37191016277640226
  call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [248 x i8], ptr %.sroa.51486.0, i64 %.sroa.71487.0 ; 3 uses
  store ptr %.sroa.51486.0, ptr %i.z, align 8, !alias.scope !23629
  %i.hc = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.01485.0, ptr %i.hc, align 8, !alias.scope !23629
  %i.hd = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.51486.0, ptr %i.hd, align 8, !alias.scope !23629
  %i.he = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.hb, ptr %i.he, align 8, !alias.scope !23629
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51486.0) ]
  %.idx1385 = mul nuw nsw i64 %.sroa.71487.0, 248 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.hj = load ptr, ptr %i.hg, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = and i64 %i.hk, 7
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = getelementptr i8, ptr %i.hi, i64 %i.hm  ; 3 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hj to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = icmp ult ptr %i.hn, %i.hj
  %i.hs = icmp ugt i64 %.idx1385, %i.hq
  %or.cond.i.i = select i1 %i.hr, i1 true, i1 %i.hs
  br i1 %or.cond.i.i, label %bb.bi, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i": ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h238fe793921d5257E.exit"
  %i.ht = sub nsw i64 0, %.idx1385
  %i.hu = getelementptr i8, ptr %i.hn, i64 %i.ht  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hu) ]
  store ptr %i.hu, ptr %i.hh, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"

bb.bi:                                            ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h238fe793921d5257E.exit"
  %i.hv = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %i.gz, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx1385)
          to label %.noexc3.i unwind label %bb.ax, !inline_history !23392 ; 2 uses

.noexc3.i:                                        ; preds = %bb.bi
  %.not5.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not5.i.i.i, label %bb.bj, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", !prof !154

bb.bj:                                            ; preds = %.noexc3.i
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i unwind label %bb.ax, !inline_history !23392

.noexc4.i:                                        ; preds = %bb.bj
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i", %.noexc3.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.hu, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i" ], [ %i.hv, %.noexc3.i ] ; 2 uses
  %.not1414 = icmp eq i64 %.sroa.71487.0, 0
  br i1 %.not1414, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit, label %.lr.ph1403

.lr.ph1403:                                       ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", %.noexc5.i
  %.sroa.04.0.i.i1402 = phi i64 [ %i.hy, %.noexc5.i ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 2 uses
  %.val.i13331401 = phi ptr [ %7, %.noexc5.i ], [ %.sroa.51486.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41190)
  %i.hw = icmp eq ptr %.val.i13331401, %i.hb
  br i1 %i.hw, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.i": ; preds = %.lr.ph1403
  %7 = getelementptr inbounds nuw i8, ptr %.val.i13331401, i64 248 ; 3 uses
  %.sroa.0.0.copyload1.i504 = load i64, ptr %.val.i13331401, align 8, !noalias !23630 ; 2 uses
  %.not.i505 = icmp eq i64 %.sroa.0.0.copyload1.i504, 19
  br i1 %.not.i505, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.thread.i", label %.noexc5.i, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.i", %.lr.ph1403
  %8 = phi ptr [ %7, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.i" ], [ %i.hb, %.lr.ph1403 ]
  store ptr %8, ptr %i.hd, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc508 unwind label %bb.ax

.noexc508:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.thread.i"
  unreachable

.noexc5.i:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h258835bed6fbaa6eE.exit.i"
  %.sroa.6.0..sroa_idx2.i506 = getelementptr inbounds nuw i8, ptr %.val.i13331401, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.41190, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.0..sroa_idx2.i506, i64 240, i1 false)
  %i.hx = getelementptr inbounds nuw [248 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.04.0.i.i1402 ; 2 uses
  %i.hy = add nuw nsw i64 %.sroa.04.0.i.i1402, 1  ; 2 uses
  store i64 %.sroa.0.0.copyload1.i504, ptr %i.hx, align 8, !noalias !23614
  %.sroa.41190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.41190.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.41190, i64 240, i1 false), !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41190)
  %exitcond1423.not = icmp eq i64 %i.hy, %.sroa.71487.0
  br i1 %exitcond1423.not, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit, label %.lr.ph1403

_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit: ; preds = %.noexc5.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"
  %.lcssa1400 = phi ptr [ %.sroa.51486.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ], [ %7, %.noexc5.i ]
  store ptr %.lcssa1400, ptr %i.hd, align 8
  call fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..LetBinding$GT$$GT$17h2d627309db453868E"(ptr noalias noundef align 8 dereferenceable(32) %i.z), !noalias !23614, !inline_history !23392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.hz = inttoptr i64 %.sroa.33.1 to ptr         ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22888)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !23631)
  %i.ib = load i8, ptr %i.ia, align 8, !range !210, !alias.scope !23632, !noundef !152 ; 2 uses
  switch i8 %i.ib, label %default.unreachable1584 [
    i8 0, label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439"
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
    i8 4, label %bb.bn
    i8 5, label %bb.bo
    i8 6, label %bb.bp
    i8 7, label %bb.bq
    i8 8, label %bb.br
    i8 9, label %bb.bs
    i8 10, label %bb.bt
    i8 11, label %bb.bu
    i8 12, label %bb.bv
    i8 13, label %bb.bw
    i8 14, label %bb.bx
    i8 15, label %bb.by
    i8 16, label %bb.bz
    i8 17, label %bb.ca
    i8 18, label %bb.cb
  ]

bb.bk:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx904 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx904, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bl:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx903 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx903, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bm:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx902 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx902, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bn:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx901 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx901, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bo:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx900 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx900, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bp:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx899 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx899, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bq:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx898 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx898, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.br:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx897 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx897, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bs:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %.sroa.22888.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22888, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22888.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.ic, i64 20, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bt:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx896 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx896, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bu:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx895 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx895, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bv:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx894 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx894, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bw:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx893 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx893, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bx:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx892 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx892, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.by:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx891 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx891, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.bz:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.sroa.22888.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22888, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22888.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.ca:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx890 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx890, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

bb.cb:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.22888.0..sroa_idx889 = getelementptr inbounds nuw i8, ptr %i.hz, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx889, i64 23, i1 false), !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split": ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.sroa.24905.0..sroa_idx936 = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %.sroa.24905.0.copyload937 = load ptr, ptr %.sroa.24905.0..sroa_idx936, align 8, !alias.scope !23633
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split", %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit
  %.sroa.24905.0 = phi ptr [ undef, %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3c58143348875adeE.exit ], [ %.sroa.24905.0.copyload937, %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439.sink.split" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 %i.ib, ptr %i.ie, align 8
  %.sroa.22888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22888, i64 23, i1 false)
  %.sroa.24905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.sroa.24905.0, ptr %.sroa.24905.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22888)
  %i.if = load i8, ptr %i.ax, align 1, !range !160, !noundef !152
  %i.ig = trunc nuw i8 %i.if to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.al, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.av, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %i.ig)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !23634, !nonnull !152, !noundef !152 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !23634, !nonnull !152, !noundef !152 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !noalias !23634, !nonnull !152, !noundef !152 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = and i64 %i.im, 7
  %i.io = sub nsw i64 0, %i.in
  %i.ip = getelementptr i8, ptr %i.ik, i64 %i.io  ; 3 uses
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.il to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = icmp ult ptr %i.ip, %i.il
  %i.iu = icmp ult i64 %i.is, 48
  %or.cond.i414 = or i1 %i.it, %i.iu
  br i1 %or.cond.i414, label %bb.cc, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit417"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit417": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439"
  %i.iv = getelementptr i8, ptr %i.ip, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iv) ], !noalias !23634
  store ptr %i.iv, ptr %i.ij, align 8, !noalias !23634
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356"

bb.cc:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit439"
  %i.iw = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 48), !noalias !23634 ; 2 uses
  %.not5.i355 = icmp eq ptr %i.iw, null
  br i1 %.not5.i355, label %bb.cd, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356", !prof !154

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23634
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit417", %bb.cc
  %.sroa.0.0.i354 = phi ptr [ %i.iv, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit417" ], [ %i.iw, %bb.cc ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i354, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ix = ptrtoint ptr %.sroa.0.0.i354 to i64
  br label %bb.ga

bb.ce:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.33.2 = phi i64 [ %.sroa.33.0.copyload, %bb.b ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.24.3 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.1117.3 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22754)
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23635)
  %i.iz = load i8, ptr %i.iy, align 8, !range !210, !alias.scope !23636, !noundef !152 ; 2 uses
  switch i8 %i.iz, label %default.unreachable1584 [
    i8 0, label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441"
    i8 1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
end_hunk_0
begin_hunk_1_@"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E":bb.a
  %.sroa.22754.0..sroa_idx770 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx770, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cg:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx769 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx769, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.ch:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx768 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx768, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.ci:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx767 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx767, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cj:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx766 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx766, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.ck:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx765 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx765, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cl:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx764 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx764, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cm:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx763 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx763, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cn:                                            ; preds = %bb.ce
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 20
  %.sroa.22754.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22754, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22754.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.ja, i64 20, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.co:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx762 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx762, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cp:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx761 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx761, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cq:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx760 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx760, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cr:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx759 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx759, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cs:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx758 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx758, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.ct:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx757 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx757, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cu:                                            ; preds = %bb.ce
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 24
  %.sroa.22754.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22754, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22754.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cv:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx756 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx756, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

bb.cw:                                            ; preds = %bb.ce
  %.sroa.22754.0..sroa_idx755 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx755, i64 23, i1 false), !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split": ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %.sroa.24771.0..sroa_idx802 = getelementptr inbounds nuw i8, ptr %.sroa.1117.3, i64 40
  %.sroa.24771.0.copyload803 = load ptr, ptr %.sroa.24771.0..sroa_idx802, align 8, !alias.scope !23637
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split", %bb.ce
  %.sroa.24771.0 = phi ptr [ undef, %bb.ce ], [ %.sroa.24771.0.copyload803, %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441.sink.split" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1117.3, i64 16, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i8 %i.iz, ptr %i.jc, align 8
  %.sroa.22754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22754, i64 23, i1 false)
  %.sroa.24771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %.sroa.24771.0, ptr %.sroa.24771.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.au, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !23638, !nonnull !152, !noundef !152 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !23638, !nonnull !152, !noundef !152 ; 2 uses
  %i.jh = load ptr, ptr %i.je, align 8, !noalias !23638, !nonnull !152, !noundef !152 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = and i64 %i.ji, 7
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = getelementptr i8, ptr %i.jg, i64 %i.jk  ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jh to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ult ptr %i.jl, %i.jh
  %i.jq = icmp ult i64 %i.jo, 48
  %or.cond.i410 = or i1 %i.jp, %i.jq
  br i1 %or.cond.i410, label %bb.cx, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit413"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit413": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441"
  %i.jr = getelementptr i8, ptr %i.jl, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ], !noalias !23638
  store ptr %i.jr, ptr %i.jf, align 8, !noalias !23638
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360"

bb.cx:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit441"
  %i.js = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 48), !noalias !23638 ; 2 uses
  %.not5.i359 = icmp eq ptr %i.js, null
  br i1 %.not5.i359, label %bb.cy, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360", !prof !154

bb.cy:                                            ; preds = %bb.cx
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23638
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit413", %bb.cx
  %.sroa.0.0.i358 = phi ptr [ %i.jr, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit413" ], [ %i.js, %bb.cx ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i358, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.jt = inttoptr i64 %.sroa.24.3 to ptr         ; 2 uses
  %i.ju = icmp ne i64 %.sroa.24.3, 0
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %i.jt, i64 %.sroa.33.2
  %i.jw = load i8, ptr %i.ax, align 1, !range !160, !noundef !152
  %i.jx = trunc nuw i8 %i.jw to i1
  %i.jy = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17hdc66c7562ab56789E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.jt, ptr noundef %i.jv, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %i.jx) ; 2 uses
  %i.jz = extractvalue { ptr, i64 } %i.jy, 0
  %i.ka = extractvalue { ptr, i64 } %i.jy, 1
  %i.kb = ptrtoint ptr %i.jz to i64
  br label %bb.ga

bb.cz:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", %bb.db, %bb.da
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E"(ptr noalias noundef align 8 dereferenceable(32) %i.w) #86, !noalias !23639, !inline_history !23446
  br label %common.resume1489

.noexc.i444:                                      ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.1117.4 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.4) ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.1117.4, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.1117.4, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !noundef !152
  %i.kh = getelementptr inbounds nuw [280 x i8], ptr %i.ke, i64 %i.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %2, ptr %i.y, align 8, !noalias !23640
  store i8 %i.ay, ptr %i.x, align 1, !noalias !23640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !23641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !23642
  store ptr %i.ke, ptr %i.n, align 8, !alias.scope !23643, !noalias !23644
  %.sroa.41308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.kh, ptr %.sroa.41308.0..sroa_idx, align 8, !alias.scope !23643, !noalias !23644
  %.sroa.51309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.y, ptr %.sroa.51309.0..sroa_idx, align 8, !alias.scope !23643, !noalias !23644
  %.sroa.61310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %3, ptr %.sroa.61310.0..sroa_idx, align 8, !alias.scope !23643, !noalias !23644
  %.sroa.71311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.x, ptr %.sroa.71311.0..sroa_idx, align 8, !alias.scope !23643, !noalias !23644
  %.sroa.81312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.a, ptr %.sroa.81312.0..sroa_idx, align 8, !alias.scope !23643, !noalias !23644
  call fastcc void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h1bbad8caadacae58E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23642
  %.sroa.01304.0.copyload = load i64, ptr %i.o, align 8, !noalias !23641 ; 3 uses
  %.sroa.41305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.41305.0.copyload = load ptr, ptr %.sroa.41305.0..sroa_idx, align 8, !noalias !23641 ; 7 uses
  %.sroa.51306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.51306.0.copyload = load i64, ptr %.sroa.51306.0..sroa_idx, align 8, !noalias !23641 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23641
  %i.ki = load ptr, ptr %i.y, align 8, !noalias !23640, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !23645
  %i.kj = icmp ult i64 %.sroa.51306.0.copyload, 32940614417338486
  call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw [280 x i8], ptr %.sroa.41305.0.copyload, i64 %.sroa.51306.0.copyload ; 5 uses
  store ptr %.sroa.41305.0.copyload, ptr %i.w, align 8, !alias.scope !23646
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.01304.0.copyload, ptr %i.kl, align 8, !alias.scope !23646
  %i.km = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %.sroa.41305.0.copyload, ptr %i.km, align 8, !alias.scope !23646
  %i.kn = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.kk, ptr %i.kn, align 8, !alias.scope !23646
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41305.0.copyload) ]
  %i.ko = ptrtoint ptr %i.kk to i64
  %.idx1384 = mul nuw nsw i64 %.sroa.51306.0.copyload, 280 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.kt = load ptr, ptr %i.kq, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = and i64 %i.ku, 7
  %i.kw = sub nsw i64 0, %i.kv
  %i.kx = getelementptr i8, ptr %i.ks, i64 %i.kw  ; 3 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kt to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = icmp ult ptr %i.kx, %i.kt
  %i.lc = icmp ugt i64 %.idx1384, %i.la
  %or.cond.i.i445 = select i1 %i.lb, i1 true, i1 %i.lc
  br i1 %or.cond.i.i445, label %bb.da, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i447"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i447": ; preds = %.noexc.i444
  %i.ld = sub nsw i64 0, %.idx1384
  %i.le = getelementptr i8, ptr %i.kx, i64 %i.ld  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.le) ]
  store ptr %i.le, ptr %i.kr, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450"

bb.da:                                            ; preds = %.noexc.i444
  %i.lf = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %i.ki, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx1384)
          to label %.noexc3.i455 unwind label %bb.cz, !inline_history !23446 ; 2 uses

.noexc3.i455:                                     ; preds = %bb.da
  %.not5.i.i.i456 = icmp eq ptr %i.lf, null
  br i1 %.not5.i.i.i456, label %bb.db, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450", !prof !154

bb.db:                                            ; preds = %.noexc3.i455
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i457 unwind label %bb.cz, !inline_history !23446

.noexc4.i457:                                     ; preds = %bb.db
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i447", %.noexc3.i455
  %.sroa.0.0.i.i.i451 = phi ptr [ %i.le, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i447" ], [ %i.lf, %.noexc3.i455 ] ; 2 uses
  %.not1413 = icmp eq i64 %.sroa.51306.0.copyload, 0
  br i1 %.not1413, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit, label %.lr.ph1397

.lr.ph1397:                                       ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450", %.noexc5.i454
  %.sroa.04.0.i.i4521396 = phi i64 [ %i.li, %.noexc5.i454 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450" ] ; 2 uses
  %.val.i44213321395 = phi ptr [ %9, %.noexc5.i454 ], [ %.sroa.41305.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41211)
  %i.lg = icmp eq ptr %.val.i44213321395, %i.kk
  br i1 %i.lg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i": ; preds = %.lr.ph1397
  %9 = getelementptr inbounds nuw i8, ptr %.val.i44213321395, i64 280 ; 3 uses
  %.sroa.0.0.copyload1.i517 = load i64, ptr %.val.i44213321395, align 8, !noalias !23647 ; 2 uses
  %.not.i518 = icmp eq i64 %.sroa.0.0.copyload1.i517, 19
  br i1 %.not.i518, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %.noexc5.i454, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i", %.lr.ph1397
  %10 = phi ptr [ %9, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i" ], [ %i.kk, %.lr.ph1397 ]
  store ptr %10, ptr %i.km, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc521 unwind label %bb.cz

.noexc521:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i"
  unreachable

.noexc5.i454:                                     ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"
  %.sroa.6.0..sroa_idx2.i519 = getelementptr inbounds nuw i8, ptr %.val.i44213321395, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.41211, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.6.0..sroa_idx2.i519, i64 272, i1 false)
  %i.lh = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i.i451, i64 %.sroa.04.0.i.i4521396 ; 2 uses
  %i.li = add nuw nsw i64 %.sroa.04.0.i.i4521396, 1 ; 2 uses
  store i64 %.sroa.0.0.copyload1.i517, ptr %i.lh, align 8, !noalias !23639
  %.sroa.41211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.41211.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.41211, i64 272, i1 false), !noalias !23639
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41211)
  %exitcond1422.not = icmp eq i64 %i.li, %.sroa.51306.0.copyload
  br i1 %exitcond1422.not, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit, label %.lr.ph1397

_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit: ; preds = %.noexc5.i454, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450"
  %.lcssa1394 = phi ptr [ %.sroa.41305.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i450" ], [ %9, %.noexc5.i454 ] ; 3 uses
  %i.lj = ptrtoint ptr %.lcssa1394 to i64
  %i.lk = sub nuw i64 %i.ko, %i.lj
  %i.ll = udiv exact i64 %i.lk, 280
  %i.lm = icmp eq ptr %i.kk, %.lcssa1394
  br i1 %i.lm, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i515

.lr.ph.i.i.i515:                                  ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit, %.lr.ph.i.i.i515
  %.sroa.0.07.i.i.i516 = phi i64 [ %i.lo, %.lr.ph.i.i.i515 ], [ 0, %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [280 x i8], ptr %.lcssa1394, i64 %.sroa.0.07.i.i.i516
  %i.lo = add nuw i64 %.sroa.0.07.i.i.i516, 1     ; 2 uses
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.ln), !noalias !23648
  %i.lp = icmp eq i64 %i.lo, %i.ll
  br i1 %i.lp, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i515

"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i": ; preds = %.lr.ph.i.i.i515, %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3699f95351fe1ddaE.exit
  %i.lq = icmp eq i64 %.sroa.01304.0.copyload, 0
  br i1 %i.lq, label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E.exit", label %bb.dc

bb.dc:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i"
  %i.lr = mul nuw i64 %.sroa.01304.0.copyload, 280
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41305.0.copyload, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23648
  br label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E.exit"

"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E.exit": ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !23645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ls = load ptr, ptr %.sroa.1117.4, align 8, !nonnull !152, !align !156, !noundef !152
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.1117.4, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !noundef !152
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.1117.4, i64 32
  %i.lw = load i8, ptr %i.lv, align 8, !range !160, !noundef !152
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !23649, !nonnull !152, !noundef !152 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !23649, !nonnull !152, !noundef !152 ; 2 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !noalias !23649, !nonnull !152, !noundef !152 ; 2 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = and i64 %i.mc, 7
  %i.me = sub nsw i64 0, %i.md
  %i.mf = getelementptr i8, ptr %i.ma, i64 %i.me  ; 3 uses
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.mb to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = icmp ult ptr %i.mf, %i.mb
  %i.mk = icmp ult i64 %i.mi, 40
  %or.cond.i422 = or i1 %i.mj, %i.mk
  br i1 %or.cond.i422, label %bb.dd, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit425"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit425": ; preds = %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E.exit"
  %i.ml = getelementptr i8, ptr %i.mf, i64 -40    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ml) ], !noalias !23649
  store ptr %i.ml, ptr %i.lz, align 8, !noalias !23649
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348"

bb.dd:                                            ; preds = %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E.exit"
  %i.mm = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 40), !noalias !23649 ; 2 uses
  %.not5.i347 = icmp eq ptr %i.mm, null
  br i1 %.not5.i347, label %bb.de, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348", !prof !154

bb.de:                                            ; preds = %bb.dd
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23649
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit425", %bb.dd
  %.sroa.0.0.i346 = phi ptr [ %i.ml, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit425" ], [ %i.mm, %bb.dd ] ; 6 uses
  store ptr %i.ls, ptr %.sroa.0.0.i346, align 8, !noalias !23649
  %.sroa.41157.0..sroa.0.0.i346.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i346, i64 8
  store i64 %i.lu, ptr %.sroa.41157.0..sroa.0.0.i346.sroa_idx, align 8, !noalias !23649
  %.sroa.51158.0..sroa.0.0.i346.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i346, i64 16
  store ptr %.sroa.0.0.i.i.i451, ptr %.sroa.51158.0..sroa.0.0.i346.sroa_idx, align 8, !noalias !23649
  %.sroa.61159.0..sroa.0.0.i346.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i346, i64 24
  store i64 %.sroa.51306.0.copyload, ptr %.sroa.61159.0..sroa.0.0.i346.sroa_idx, align 8, !noalias !23649
  %.sroa.71160.0..sroa.0.0.i346.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i346, i64 32
  store i8 %i.lw, ptr %.sroa.71160.0..sroa.0.0.i346.sroa_idx, align 8, !noalias !23649
  br label %bb.ga

bb.df:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.33.3 = phi i64 [ %.sroa.33.0.copyload, %bb.b ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.24.4 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.5 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.5) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23650)
  %i.mo = load i8, ptr %i.mn, align 8, !range !210, !alias.scope !23651, !noundef !152 ; 2 uses
  switch i8 %i.mo, label %default.unreachable1584 [
    i8 0, label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460"
    i8 1, label %bb.dg
    i8 2, label %bb.dh
    i8 3, label %bb.di
    i8 4, label %bb.dj
    i8 5, label %bb.dk
    i8 6, label %bb.dl
    i8 7, label %bb.dm
    i8 8, label %bb.dn
    i8 9, label %bb.do
    i8 10, label %bb.dp
    i8 11, label %bb.dq
    i8 12, label %bb.dr
    i8 13, label %bb.ds
    i8 14, label %bb.dt
    i8 15, label %bb.du
    i8 16, label %bb.dv
    i8 17, label %bb.dw
    i8 18, label %bb.dx
  ]

bb.dg:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx702 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx702, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dh:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx701 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx701, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.di:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx700 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx700, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dj:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx699, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dk:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx698 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx698, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dl:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx697 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx697, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dm:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx696 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx696, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dn:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx695 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx695, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.do:                                            ; preds = %bb.df
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 20
  %.sroa.22.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.mp, i64 20, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dp:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx694, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dq:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx693 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx693, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dr:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx692 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx692, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.ds:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx691 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx691, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dt:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx690 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx690, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.du:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx689 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx689, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dv:                                            ; preds = %bb.df
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 24
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.mq, i64 16, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dw:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx688 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx688, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"

bb.dx:                                            ; preds = %bb.df
  %.sroa.22.0..sroa_idx687 = getelementptr inbounds nuw i8, ptr %.sroa.1117.5, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx687, i64 23, i1 false), !alias.scope !23652
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit460.sink.split"
end_hunk_1
begin_hunk_2_@"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E":bb.a
    i8 9, label %bb.fc
    i8 10, label %bb.fd
    i8 11, label %bb.fe
    i8 12, label %bb.ff
    i8 13, label %bb.fg
    i8 14, label %bb.fh
    i8 15, label %bb.fi
    i8 16, label %bb.fj
    i8 17, label %bb.fk
    i8 18, label %bb.fl
  ]

bb.eu:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1116 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1116, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ev:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1115 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1115, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ew:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1114 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1114, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ex:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1113 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1113, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ey:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1112 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1112, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ez:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1111 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1111, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fa:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1110 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1110, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fb:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1109 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1109, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fc:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  %.sroa.221100.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.221100, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.221100.4..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.oi, i64 20, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fd:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1108 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1108, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fe:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1107 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1107, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.ff:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1106 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1106, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fg:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1105 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1105, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fh:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1104 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1104, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fi:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1103, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fj:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %.sroa.221100.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.221100, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.221100.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.oj, i64 16, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fk:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1102 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1102, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

bb.fl:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.221100.0..sroa_idx1101 = getelementptr inbounds nuw i8, ptr %i.of, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx1101, i64 23, i1 false), !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split": ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu
  %.sroa.241117.0..sroa_idx1148 = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %.sroa.241117.0.copyload1149 = load ptr, ptr %.sroa.241117.0..sroa_idx1148, align 8, !alias.scope !23660
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368"
  %.sroa.241117.0 = phi ptr [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit368" ], [ %.sroa.241117.0.copyload1149, %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464.sink.split" ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.of, i64 16, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i8 %i.oh, ptr %i.ok, align 8
  %.sroa.221100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.221100, i64 23, i1 false)
  %.sroa.241117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %.sroa.241117.0, ptr %.sroa.241117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.221100)
  %i.ol = load i8, ptr %i.ax, align 1, !range !160, !noundef !152
  %i.om = trunc nuw i8 %i.ol to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ae, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ao, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %i.om)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.on = load ptr, ptr %i.ms, align 8, !noalias !23661, !nonnull !152, !noundef !152 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !noalias !23661, !nonnull !152, !noundef !152 ; 2 uses
  %i.oq = load ptr, ptr %i.on, align 8, !noalias !23661, !nonnull !152, !noundef !152 ; 2 uses
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = and i64 %i.or, 7
  %i.ot = sub nsw i64 0, %i.os
  %i.ou = getelementptr i8, ptr %i.op, i64 %i.ot  ; 3 uses
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.oq to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = icmp ult ptr %i.ou, %i.oq
  %i.oz = icmp ult i64 %i.ox, 48
  %or.cond.i398 = or i1 %i.oy, %i.oz
  br i1 %or.cond.i398, label %bb.fm, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit401"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit401": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464"
  %i.pa = getelementptr i8, ptr %i.ou, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pa) ], !noalias !23661
  store ptr %i.pa, ptr %i.oo, align 8, !noalias !23661
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372"

bb.fm:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit464"
  %i.pb = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 48), !noalias !23661 ; 2 uses
  %.not5.i371 = icmp eq ptr %i.pb, null
  br i1 %.not5.i371, label %bb.fn, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372", !prof !154

bb.fn:                                            ; preds = %bb.fm
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23661
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit401", %bb.fm
  %.sroa.0.0.i370 = phi ptr [ %i.pa, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit401" ], [ %i.pb, %bb.fm ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i370, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.pc = ptrtoint ptr %.sroa.0.0.i366 to i64
  %i.pd = ptrtoint ptr %.sroa.0.0.i370 to i64
  br label %bb.ga

bb.fo:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.thread.i", %bb.fr, %bb.fq
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = icmp eq i64 %.sroa.01319.0.copyload, 0
  br i1 %i.pf, label %common.resume1489, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.pg = mul nuw i64 %.sroa.01319.0.copyload, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41320.0.copyload, i64 noundef %i.pg, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23662
  br label %common.resume1489

.noexc.i468:                                      ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.24.5 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.6 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.6) ]
  %i.ph = getelementptr inbounds nuw [160 x i8], ptr %.sroa.1117.6, i64 %.sroa.24.5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %2, ptr %i.v, align 8, !noalias !23663
  store i8 %i.ay, ptr %i.u, align 1, !noalias !23663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23665
  store ptr %.sroa.1117.6, ptr %i.l, align 8, !alias.scope !23666, !noalias !23667
  %.sroa.41323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ph, ptr %.sroa.41323.0..sroa_idx, align 8, !alias.scope !23666, !noalias !23667
  %.sroa.51324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.v, ptr %.sroa.51324.0..sroa_idx, align 8, !alias.scope !23666, !noalias !23667
  %.sroa.61325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %3, ptr %.sroa.61325.0..sroa_idx, align 8, !alias.scope !23666, !noalias !23667
  %.sroa.71326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.u, ptr %.sroa.71326.0..sroa_idx, align 8, !alias.scope !23666, !noalias !23667
  %.sroa.81327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.a, ptr %.sroa.81327.0..sroa_idx, align 8, !alias.scope !23666, !noalias !23667
  call fastcc void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h97664a33a6a0b2a9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23665
  %.sroa.01319.0.copyload = load i64, ptr %i.m, align 8, !noalias !23664 ; 4 uses
  %.sroa.41320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.41320.0.copyload = load ptr, ptr %.sroa.41320.0..sroa_idx, align 8, !noalias !23664, !nonnull !152, !noundef !152 ; 4 uses
  %.sroa.51321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.51321.0.copyload = load i64, ptr %.sroa.51321.0..sroa_idx, align 8, !noalias !23664 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23664
  %i.pi = load ptr, ptr %i.v, align 8, !noalias !23663, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  %i.pj = icmp ult i64 %.sroa.51321.0.copyload, 57646075230342349
  call void @llvm.assume(i1 %i.pj)
  %11 = getelementptr inbounds nuw [160 x i8], ptr %.sroa.41320.0.copyload, i64 %.sroa.51321.0.copyload
  %.idx = mul nuw nsw i64 %.sroa.51321.0.copyload, 160 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 32 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.po = load ptr, ptr %i.pl, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = and i64 %i.pp, 7
  %i.pr = sub nsw i64 0, %i.pq
  %i.ps = getelementptr i8, ptr %i.pn, i64 %i.pr  ; 3 uses
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.po to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = icmp ult ptr %i.ps, %i.po
  %i.px = icmp ugt i64 %.idx, %i.pv
  %or.cond.i.i469 = select i1 %i.pw, i1 true, i1 %i.px
  br i1 %or.cond.i.i469, label %bb.fq, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i471"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i471": ; preds = %.noexc.i468
  %i.py = sub nsw i64 0, %.idx
  %i.pz = getelementptr i8, ptr %i.ps, i64 %i.py  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pz) ]
  store ptr %i.pz, ptr %i.pm, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474"

bb.fq:                                            ; preds = %.noexc.i468
  %i.qa = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %i.pi, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc3.i478 unwind label %bb.fo, !inline_history !23512 ; 2 uses

.noexc3.i478:                                     ; preds = %bb.fq
  %.not5.i.i.i479 = icmp eq ptr %i.qa, null
  br i1 %.not5.i.i.i479, label %bb.fr, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474", !prof !154

bb.fr:                                            ; preds = %.noexc3.i478
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i480 unwind label %bb.fo, !inline_history !23512

.noexc4.i480:                                     ; preds = %bb.fr
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i471", %.noexc3.i478
  %.sroa.0.0.i.i.i475 = phi ptr [ %i.pz, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i471" ], [ %i.qa, %.noexc3.i478 ] ; 2 uses
  %.not1412 = icmp eq i64 %.sroa.51321.0.copyload, 0
  br i1 %.not1412, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h7b97a952d4595c01E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474", %.noexc5.i477
  %.sroa.04.0.i.i4761393 = phi i64 [ %i.qe, %.noexc5.i477 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474" ] ; 2 uses
  %.sroa.51330.01392 = phi ptr [ %i.qc, %.noexc5.i477 ], [ %.sroa.41320.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41232)
  %i.qb = icmp eq ptr %.sroa.51330.01392, %11
  br i1 %i.qb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.i": ; preds = %.lr.ph
  %.sroa.0.0.copyload1.i529 = load i32, ptr %.sroa.51330.01392, align 8, !noalias !23668 ; 2 uses
  %.not.i530 = icmp eq i32 %.sroa.0.0.copyload1.i529, 3
  br i1 %.not.i530, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.thread.i", label %.noexc5.i477, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.i", %.lr.ph
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc533 unwind label %bb.fo

.noexc533:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.thread.i"
  unreachable

.noexc5.i477:                                     ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h210909edb49dc420E.exit.i"
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.51330.01392, i64 160
  %.sroa.6.0..sroa_idx2.i531 = getelementptr inbounds nuw i8, ptr %.sroa.51330.01392, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %.sroa.41232, ptr noundef nonnull align 4 dereferenceable(156) %.sroa.6.0..sroa_idx2.i531, i64 156, i1 false)
  %i.qd = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.0.i.i.i475, i64 %.sroa.04.0.i.i4761393 ; 2 uses
  %i.qe = add nuw nsw i64 %.sroa.04.0.i.i4761393, 1 ; 2 uses
  store i32 %.sroa.0.0.copyload1.i529, ptr %i.qd, align 8, !noalias !23669
  %.sroa.41232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %.sroa.41232.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(156) %.sroa.41232, i64 156, i1 false), !noalias !23669
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41232)
  %exitcond.not = icmp eq i64 %i.qe, %.sroa.51321.0.copyload
  br i1 %exitcond.not, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h7b97a952d4595c01E.exit, label %.lr.ph

_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h7b97a952d4595c01E.exit: ; preds = %.noexc5.i477, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i474"
  %i.qf = icmp eq i64 %.sroa.01319.0.copyload, 0
  br i1 %i.qf, label %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit", label %bb.fs

bb.fs:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h7b97a952d4595c01E.exit
  %i.qg = mul nuw i64 %.sroa.01319.0.copyload, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.41320.0.copyload, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23670
  br label %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit"

"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit": ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h7b97a952d4595c01E.exit, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ga

bb.ft:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.24.6 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.7 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.7) ]
  %i.qh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.1117.7, i64 %.sroa.24.6
  %i.qi = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17hdc66c7562ab56789E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %.sroa.1117.7, ptr noundef %i.qh, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4) ; 2 uses
  %i.qj = extractvalue { ptr, i64 } %i.qi, 0
  %i.qk = extractvalue { ptr, i64 } %i.qi, 1
  br label %bb.ga

bb.fu:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.33.4 = phi i64 [ %.sroa.33.0.copyload, %bb.b ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.24.7 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.1117.8 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %i.ql = inttoptr i64 %.sroa.24.7 to ptr         ; 2 uses
  %i.qm = icmp ne i64 %.sroa.24.7, 0
  tail call void @llvm.assume(i1 %i.qm)
  %i.qn = getelementptr inbounds nuw [48 x i8], ptr %i.ql, i64 %.sroa.33.4
  %i.qo = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17hdc66c7562ab56789E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.ql, ptr noundef %i.qn, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4) ; 2 uses
  %i.qp = extractvalue { ptr, i64 } %i.qo, 0
  %i.qq = extractvalue { ptr, i64 } %i.qo, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.8) ]
  %i.qr = ptrtoint ptr %i.qp to i64
  br label %bb.ga

bb.fv:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.24.8 = phi i64 [ %.sroa.24.0.copyload, %bb.b ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ]
  %.sroa.1117.9 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.9) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5337)
  %i.qs = load i64, ptr %.sroa.1117.9, align 8, !range !155, !noundef !152
  %.not = icmp eq i64 %i.qs, 18
  br i1 %.not, label %bb.gd, label %bb.gc

bb.fw:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %bb.b
  %.sroa.1117.10 = phi ptr [ %.sroa.1117.0.copyload, %bb.b ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1117.10) ]
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e6751ae9cf57e40E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.1117.10)
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.1117.10, i64 88
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qu, ptr noundef nonnull align 8 dereferenceable(16) %i.qt, i64 16, i1 false)
  %i.qv = load i8, ptr %i.ax, align 1, !range !160, !noundef !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 %i.qv, ptr %i.t, align 1, !noalias !23671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !23671
  store ptr %2, ptr %i.s, align 8, !noalias !23671
  %i.qw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %3, ptr %i.qw, align 8, !noalias !23671
  %i.qx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.qx, align 8, !noalias !23671
  %i.qy = trunc nuw i8 %i.qv to i1
  call fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$8traverse17h7e55e1ba59173040E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.ar, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(24) %i.s, i1 noundef zeroext %i.qy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !23671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.rd = load ptr, ptr %i.ra, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = and i64 %i.re, 7
  %i.rg = sub nsw i64 0, %i.rf
  %i.rh = getelementptr i8, ptr %i.rc, i64 %i.rg  ; 3 uses
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rd to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = icmp ult ptr %i.rh, %i.rd
  %i.rm = icmp ult i64 %i.rk, 104
  %or.cond.i390 = or i1 %i.rl, %i.rm
  br i1 %or.cond.i390, label %bb.fx, label %.noexc380

.noexc380:                                        ; preds = %bb.fw
  %i.rn = getelementptr i8, ptr %i.rh, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rn) ]
  store ptr %i.rn, ptr %i.rb, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit"

bb.fx:                                            ; preds = %bb.fw
  %i.ro = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104)
          to label %.noexc381 unwind label %bb.fz ; 2 uses

.noexc381:                                        ; preds = %bb.fx
  %.not5.i379 = icmp eq ptr %i.ro, null
  br i1 %.not5.i379, label %bb.fy, label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit", !prof !154

bb.fy:                                            ; preds = %.noexc381
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc382 unwind label %bb.fz

.noexc382:                                        ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fx, %bb.fy
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9703224e6cab5d42E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ah) #86
  br label %common.resume1489

"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit": ; preds = %.noexc380, %.noexc381
  %.sroa.0.0.i378 = phi ptr [ %i.rn, %.noexc380 ], [ %i.ro, %.noexc381 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i378, ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 104, i1 false)
  br label %bb.ga

bb.ga:                                            ; preds = %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit", %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread", %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376", %bb.fu, %bb.ft, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352", %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit"
  %.sroa.13.sink = phi ptr [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ %.sroa.13, %bb.fu ], [ %.sroa.13, %bb.ft ], [ %.sroa.13, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ %.sroa.13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ %.sroa.13, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ %.sroa.0.sroa.8, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.0.sroa.8, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.068.sroa.0.0 = phi i32 [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ %.sroa.0.sroa.0.0.copyload, %bb.fu ], [ %.sroa.0.sroa.0.0.copyload, %bb.ft ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ 2, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.0.sroa.0.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.33103.sroa.7.11 = phi i32 [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ undef, %bb.fu ], [ undef, %bb.ft ], [ undef, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ undef, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ 2, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.14578.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.33103.sroa.0.11 = phi i16 [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ undef, %bb.fu ], [ undef, %bb.ft ], [ undef, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ undef, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ undef, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.12.0.copyload577, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.18.0 = phi i8 [ 17, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ 15, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ 14, %bb.fu ], [ 13, %bb.ft ], [ 12, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ 11, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ 10, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ 7, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ 6, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ 5, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ 4, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ 8, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.7.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.31.0 = phi i8 [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ undef, %bb.fu ], [ undef, %bb.ft ], [ undef, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %.sroa.10.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ undef, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ undef, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.10575.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.35.0 = phi ptr [ %.sroa.0.0.i378, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ %.sroa.0.0.i342, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ %.sroa.1117.8, %bb.fu ], [ %i.qj, %bb.ft ], [ %.sroa.0.0.i.i.i475, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ %.sroa.0.0.i362, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ %.sroa.0.0.i346, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ %.sroa.0.0.i358, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %.sroa.0.0.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ %i.fl, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ %.sroa.0.0.i.i, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ undef, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.16.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.37.0 = phi i64 [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ %i.tn, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ %i.qr, %bb.fu ], [ %i.qk, %bb.ft ], [ %.sroa.51321.0.copyload, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ %i.pc, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ %i.kb, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %.sroa.71487.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ %i.fm, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ %.sroa.7.0, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ %.sroa.12.sroa.5.0.insert.shift1345, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.18.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  %.sroa.39.0 = phi i64 [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit376" ], [ %i.qq, %bb.fu ], [ undef, %bb.ft ], [ undef, %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..MatchBranch$GT$$GT$17hfe53a281bff0da76E.exit" ], [ %i.pd, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit372" ], [ undef, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit348" ], [ %i.ka, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit360" ], [ %i.ix, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit356" ], [ %i.gj, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit352" ], [ undef, %"_ZN4core3ptr132drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17hb3a93f8fcaebca43E.exit" ], [ undef, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit.thread" ], [ %.sroa.21.0.copyload, %"_ZN16nickel_lang_core9serialize4yaml4load11rename_vars28_$u7b$$u7b$closure$u7d$$u7d$17hfac4709de5b22697E.exit" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.068.sroa.18, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.13.sink, i64 12, i1 false)
  br i1 %4, label %bb.hb, label %bb.hi

bb.gb:                                            ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.068.sroa.18, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.sroa.8.0..sroa_idx, i64 12, i1 false)
  br label %bb.hb

bb.gc:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e6751ae9cf57e40E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.1117.9)
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.1117.9, i64 88
  %.sroa.4340.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4340, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4340.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.rq, i64 16, i1 false)
  %.sroa.0339.0.copyload = load i64, ptr %i.an, align 8
  %.sroa.4340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4340, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4340.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5337, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4340, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4340)
  %.pre = load i8, ptr %i.ax, align 1, !range !160
  %i.rr = trunc nuw i8 %.pre to i1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fv, %bb.gc
  %i.rs = phi i1 [ %i.rr, %bb.gc ], [ %4, %bb.fv ]
  %.sroa.0335.0 = phi i64 [ %.sroa.0339.0.copyload, %bb.gc ], [ 18, %bb.fv ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.1117.9, i64 104
  %i.ru = load ptr, ptr %i.rt, align 8, !nonnull !152, !align !156, !noundef !152
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.1117.9, i64 112
  %i.rw = load i64, ptr %i.rv, align 8, !noundef !152
  store i64 %.sroa.0335.0, ptr %i.at, align 8
  %.sroa.5337.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5337.0..sroa_idx338, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5337, i64 96, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  store ptr %i.ru, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store i64 %i.rw, ptr %i.ry, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call fastcc void @"_ZN135_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17h6c397f3a8c394f14E"(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.aj, ptr noalias noundef readonly align 8 captures(address) dereferenceable(120) %i.at, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %i.rs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 32 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.sd = load ptr, ptr %i.sa, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = and i64 %i.se, 7
  %i.sg = sub nsw i64 0, %i.sf
  %i.sh = getelementptr i8, ptr %i.sc, i64 %i.sg  ; 3 uses
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = ptrtoint ptr %i.sd to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = icmp ult ptr %i.sh, %i.sd
  %i.sm = icmp ult i64 %i.sk, 120
  %or.cond.i426 = or i1 %i.sl, %i.sm
  br i1 %or.cond.i426, label %bb.ge, label %.noexc
end_hunk_2
begin_hunk_3_@"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline17h34197faa5dbc9c31E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9483)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12488)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not.i110 = icmp eq i64 %.sroa.0478.0, 19
  %.pre767.pre771 = load i64, ptr %i.at, align 8, !range !153 ; 2 uses
  br i1 %.not.i110, label %.noexc112.thread, label %bb.ak

bb.aj:                                            ; preds = %bb.al
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.x)
  br label %.body.thread

bb.ak:                                            ; preds = %.noexc112
  store i64 %.sroa.0478.0, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7418.sroa.0.sroa.0, i64 96, i1 false)
  store ptr %.sroa.6480.0, ptr %.sroa.7418.sroa.0.sroa.5.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  store <2 x i64> %i.gx, ptr %.sroa.7418.sroa.0.sroa.6.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7418.sroa.0.sroa.8.0..sroa.7418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7418.sroa.0.sroa.8, i64 48, i1 false)
  store ptr %.sroa.9484.0, ptr %.sroa.7418.sroa.0.sroa.9.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.10485.0, ptr %.sroa.7418.sroa.0.sroa.10.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.10486.0, ptr %.sroa.7418.sroa.0.sroa.11.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  store i8 %.sroa.11487.0, ptr %.sroa.7418.sroa.0.sroa.12.0..sroa.7418.0..sroa_idx.sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7418.sroa.0.sroa.13.0..sroa.7418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7418.sroa.0.sroa.13, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7418.sroa.0.sroa.14.0..sroa.7418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7418.sroa.0.sroa.14, i64 16, i1 false)
  store i32 %.sroa.01.0.i.i278, ptr %.sroa.7418.sroa.5.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7418.sroa.6.0..sroa.7418.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7418.sroa.6, i64 44, i1 false)
  store ptr %i.gs, ptr %.sroa.7418.sroa.7.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  store i64 %i.gr, ptr %.sroa.7418.sroa.8.0..sroa.7418.0..sroa_idx.sroa_idx, align 8
  %i.gz = icmp samesign ult i64 %i.fw, 32940614417338486
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp eq i64 %i.fw, %.pre767.pre771
  br i1 %i.ha, label %bb.al, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit_crit_edge", %bb.ak
  %i.hb = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit_crit_edge" ], [ %i.fv, %bb.ak ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [280 x i8], ptr %i.hb, i64 %i.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.hc, ptr noundef nonnull align 8 dereferenceable(280) %i.x, i64 280, i1 false)
  %i.hd = add nuw nsw i64 %i.fw, 1                ; 3 uses
  store i64 %i.hd, ptr %i.fg, align 8, !alias.scope !23938
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7418.sroa.6)
  %i.he = icmp eq ptr %i.fx, %i.fn
  br i1 %i.he, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge", label %bb.x

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit"
  %.pre767.pre = load i64, ptr %i.at, align 8, !range !153, !alias.scope !23939
  br label %.noexc112.thread

bb.al:                                            ; preds = %bb.ak
  %i.hf = ptrtoint ptr %i.fx to i64
  %i.hg = sub nuw i64 %i.fu, %i.hf
  %i.hh = udiv exact i64 %i.hg, 72
  %i.hi = add nuw nsw i64 %i.hh, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.fw, i64 noundef %i.hi, i64 noundef 8, i64 noundef 280)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit_crit_edge" unwind label %bb.aj

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit_crit_edge": ; preds = %bb.al
  %.pre = load ptr, ptr %i.ff, align 8, !alias.scope !23938
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit"

bb.am:                                            ; preds = %bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.az

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @"_ZN16nickel_lang_core3ast6compat132_$LT$impl$u20$core..convert..From$LT$$RF$nickel_lang_core..term..UnaryOp$GT$$u20$for$u20$nickel_lang_parser..ast..primop..PrimOp$GT$4from17h85bab82d0365d4fcE"(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hm), !inline_history !23703
  %.sroa.0402.0.copyload = load i32, ptr %i.aa, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23940)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !23941, !nonnull !152, !noundef !152 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !23941, !nonnull !152, !noundef !152 ; 2 uses
  %i.hr = load ptr, ptr %i.ho, align 8, !noalias !23941, !nonnull !152, !noundef !152 ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = and i64 %i.hs, 3
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr i8, ptr %i.hq, i64 %i.hu  ; 3 uses
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hr to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = icmp ult ptr %i.hv, %i.hr
  %i.ia = icmp ult i64 %i.hy, 24
  %or.cond.i2.i = or i1 %i.hz, %i.ia
  br i1 %or.cond.i2.i, label %bb.ao, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit5.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit5.i": ; preds = %bb.an
  %i.ib = getelementptr i8, ptr %i.hv, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ], !noalias !23942
  store ptr %i.ib, ptr %i.hp, align 8, !noalias !23941
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i116"

bb.ao:                                            ; preds = %bb.an
  %i.ic = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef 24), !noalias !23941 ; 2 uses
  %.not5.i.i123 = icmp eq ptr %i.ic, null
  br i1 %.not5.i.i123, label %bb.ap, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i116", !prof !154

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23941
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i116": ; preds = %bb.ao, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit5.i"
  %.sroa.0.0.i.i117 = phi ptr [ %i.ib, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit5.i" ], [ %i.ic, %bb.ao ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.0.i.i117, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !23943
  %i.id = icmp ne i32 %.sroa.0402.0.copyload, 3   ; 4 uses
  %i.ie = select i1 %i.id, i64 48, i64 0          ; 2 uses
  %i.if = load ptr, ptr %i.hn, align 8, !noalias !23944, !nonnull !152, !noundef !152 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !23944, !nonnull !152, !noundef !152 ; 2 uses
  %i.ii = load ptr, ptr %i.if, align 8, !noalias !23944, !nonnull !152, !noundef !152 ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = and i64 %i.ij, 7
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr i8, ptr %i.ih, i64 %i.il  ; 3 uses
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ii to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = icmp ult ptr %i.im, %i.ii
  %i.ir = icmp ugt i64 %i.ie, %i.ip
  %or.cond.i.i118 = select i1 %i.iq, i1 true, i1 %i.ir
  br i1 %or.cond.i.i118, label %bb.aq, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i119"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i119": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i116"
  %.neg.i = select i1 %i.id, i64 -48, i64 0
  %i.is = getelementptr i8, ptr %i.im, i64 %.neg.i ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.is) ], !noalias !23945
  store ptr %i.is, ptr %i.ig, align 8, !noalias !23944
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i120"

bb.aq:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i116"
  %i.it = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.ie), !noalias !23944 ; 2 uses
  %.not5.i.i.i122 = icmp eq ptr %i.it, null
  br i1 %.not5.i.i.i122, label %bb.ar, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i120", !prof !154

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23944
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i120": ; preds = %bb.aq, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i119"
  %.sroa.0.0.i.i.i121 = phi ptr [ %i.is, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i119" ], [ %i.it, %bb.aq ] ; 3 uses
  br i1 %i.id, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h04bef8942a23c817E.exit.i", label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h6db5add204e9b79dE.exit

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h04bef8942a23c817E.exit.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i120"
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i121, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(44) %i.aq, i64 44, i1 false)
  store i32 %.sroa.0402.0.copyload, ptr %.sroa.0.0.i.i.i121, align 8, !noalias !23944
  br label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h6db5add204e9b79dE.exit

_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h6db5add204e9b79dE.exit: ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i120", %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h04bef8942a23c817E.exit.i"
  %i.iu = zext i1 %i.id to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i117, ptr %i.iv, align 8, !alias.scope !23940
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i121, ptr %i.iw, align 8, !alias.scope !23940
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.iu, ptr %i.ix, align 8, !alias.scope !23940
  store i8 14, ptr %0, align 8, !alias.scope !23940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.az

bb.as:                                            ; preds = %bb.a
  call void @"_ZN16nickel_lang_core3ast6compat133_$LT$impl$u20$core..convert..From$LT$$RF$nickel_lang_core..term..BinaryOp$GT$$u20$for$u20$nickel_lang_parser..ast..primop..PrimOp$GT$4from17hdc7d025f45c30672E"(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3)
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aj, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iy), !inline_history !23703
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.al, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.iz), !inline_history !23703
  %.sroa.0368.sroa.0.0.copyload = load i32, ptr %i.aj, align 8 ; 2 uses
  %.sroa.6369.sroa.0.0.copyload447 = load i32, ptr %i.al, align 8 ; 2 uses
  %i.ja = load i8, ptr %i.ap, align 4, !range !227, !noundef !152
  switch i8 %i.ja, label %bb.dm [
    i8 75, label %bb.dl
    i8 81, label %bb.dl
  ]

switch.lookup:                                    ; preds = %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.jc = load i8, ptr %i.jb, align 8, !range !236, !noundef !152 ; 2 uses
  %switch.masked = icmp eq i8 %i.jc, 2
  %switch.offset = add nuw nsw i8 %i.jc, 93
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !152, !noundef !152
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !noundef !152 ; 14 uses
  %i.jh = mul i64 %i.jg, 48                       ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.jg, 192153584101141162
  br i1 %or.cond.i.i.i.i, label %bb.dr, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !158

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr @401, ptr %i.ai, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 1, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr null, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 0, ptr %i.jl, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #82
  unreachable

bb.au:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !152, !noundef !152
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  call void @"_ZN145_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..TypeAnnotation$GT$$GT$13from_mainline17h0f513d1616219312E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.ah, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.jo), !inline_history !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ag, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jp)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit" unwind label %bb.eh, !inline_history !23703

bb.av:                                            ; preds = %bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !range !175, !noundef !152
  %i.js = icmp eq i64 %i.jr, -9223372036854775808
  br i1 %i.js, label %bb.ei, label %bb.ej

bb.aw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @404, ptr %i.ae, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 1, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.jw, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #82
  unreachable

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !152, !align !156, !noundef !152
  call fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jy)
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11parse_error17h88b81e1d177340ffE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.az

bb.ay:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @407, ptr %i.ac, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.kc, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #82
  unreachable

bb.az:                                            ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit", %bb.ei, %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit", %bb.ee, %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h4008c02c761c0463E.exit, %._crit_edge721, %bb.cl, %bb.bv, %bb.bn, %bb.ax, %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h6db5add204e9b79dE.exit, %bb.am, %bb.v, %_ZN18nickel_lang_parser3ast5alloc8AstAlloc9let_block17h89cc82eba85005dfE.exit, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h020d14bf7a0a6d70E.exit"
  ret void

bb.ba:                                            ; preds = %bb.j
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #82
  unreachable

bb.bb:                                            ; preds = %bb.j
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i64 16, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.kd, i64 20, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store i32 3, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 1, ptr %i.bc, align 8, !alias.scope !23946
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  store ptr %i.cr, ptr %i.ke, align 8, !alias.scope !23946
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store i64 1, ptr %i.kf, align 8, !alias.scope !23946
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bh, %bb.bb
  %.sroa.7339.0.copyload = phi i64 [ 1, %bb.bb ], [ %i.ku, %bb.bh ] ; 9 uses
  %.pn = phi ptr [ %3, %bb.bb ], [ %i.kl, %bb.bh ] ; 2 uses
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !152, !noundef !152 ; 4 uses
  %i.kg = ptrtoint ptr %.sroa.0.0.val to i64
  %i.kh = and i64 %i.kg, 3
  %..i125 = call i64 @llvm.umin.i64(i64 %i.kh, i64 2)
  switch i64 %..i125, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread [
    i64 2, label %bb.bd
    i64 0, label %bb.be
  ], !prof !157

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ki = load i64, ptr %.sroa.0.0.val, align 8, !noundef !152 ; 2 uses
  %i.kj = icmp ult i64 %i.ki, 864691128455135232
  call void @llvm.assume(i1 %i.kj)
  %.mask.i126 = and i64 %i.ki, 1080863910568919040
  %i.kk = icmp eq i64 %.mask.i126, 360287970189639680
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 16 ; 2 uses
  br i1 %i.kk, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130: ; preds = %bb.be
  %i.km = load i64, ptr %i.kl, align 8, !range !177, !noundef !152 ; 2 uses
  %i.kn = icmp ne i64 %i.km, -9223372036854775756
  call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp eq i64 %i.km, -9223372036854775763
  br i1 %i.ko, label %bb.bf, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread: ; preds = %bb.bc, %bb.be, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130
  %.sroa.0.0.le = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0337.0.copyload = load i64, ptr %i.bc, align 8 ; 6 uses
  %.sroa.5338.0.copyload = load ptr, ptr %i.ke, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bb, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.le)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit132" unwind label %bb.bo, !inline_history !23703

bb.bf:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0333)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5335)
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5335, ptr noundef nonnull align 8 dereferenceable(20) %i.kp, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0333, ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i64 16, i1 false)
  %i.kq = load i64, ptr %i.bc, align 8, !range !153, !alias.scope !23947, !noundef !152
  %i.kr = icmp eq i64 %.sroa.7339.0.copyload, %i.kq
  br i1 %i.kr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ff9117953f79cf6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.ks = load ptr, ptr %i.ke, align 8, !alias.scope !23947, !nonnull !152, !noundef !152
  %i.kt = getelementptr inbounds nuw [64 x i8], ptr %i.ks, i64 %.sroa.7339.0.copyload ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0333, i64 16, i1 false)
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store i32 1, ptr %.sroa.4334.0..sroa_idx, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5335.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5335, i64 20, i1 false)
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  store i32 3, ptr %.sroa.6336.0..sroa_idx, align 8
  %i.ku = add i64 %.sroa.7339.0.copyload, 1       ; 2 uses
  store i64 %i.ku, ptr %i.kf, align 8, !alias.scope !23947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0333)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5335)
  br label %bb.bc

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit132": ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !23948)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5338.0.copyload) ]
  %i.kv = icmp ult i64 %.sroa.7339.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %i.kv)
  %4 = getelementptr inbounds nuw [64 x i8], ptr %.sroa.5338.0.copyload, i64 %.sroa.7339.0.copyload
  %i.kw = shl nuw nsw i64 %.sroa.7339.0.copyload, 6 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !23949, !nonnull !152, !noundef !152 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !23949, !nonnull !152, !noundef !152 ; 2 uses
  %i.lb = load ptr, ptr %i.ky, align 8, !noalias !23949, !nonnull !152, !noundef !152 ; 2 uses
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = and i64 %i.lc, 7
  %i.le = sub nsw i64 0, %i.ld
  %i.lf = getelementptr i8, ptr %i.la, i64 %i.le  ; 3 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.lb to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ult ptr %i.lf, %i.lb
  %i.lk = icmp ugt i64 %i.kw, %i.li
  %or.cond.i.i134 = select i1 %i.lj, i1 true, i1 %i.lk
  br i1 %or.cond.i.i134, label %bb.bk, label %.noexc2.i

bb.bi:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i.i", %bb.bl, %bb.bk
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = icmp eq i64 %.sroa.0337.0.copyload, 0
  br i1 %i.lm, label %common.resume, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ln = shl nuw i64 %.sroa.0337.0.copyload, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5338.0.copyload, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23950
  br label %common.resume

.noexc2.i:                                        ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit132"
  %i.lo = sub nsw i64 0, %i.kw
  %i.lp = getelementptr i8, ptr %i.lf, i64 %i.lo  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lp) ]
  store ptr %i.lp, ptr %i.kz, align 8, !noalias !23949
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135"

bb.bk:                                            ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit132"
  %i.lq = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.kw)
          to label %.noexc3.i unwind label %bb.bi, !noalias !23949 ; 2 uses

.noexc3.i:                                        ; preds = %bb.bk
  %.not5.i.i.i142 = icmp eq ptr %i.lq, null
  br i1 %.not5.i.i.i142, label %bb.bl, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135", !prof !154

bb.bl:                                            ; preds = %.noexc3.i
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i unwind label %bb.bi, !noalias !23949

.noexc4.i:                                        ; preds = %bb.bl
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135": ; preds = %.noexc3.i, %.noexc2.i
  %.sroa.0.0.i.i.i136 = phi ptr [ %i.lp, %.noexc2.i ], [ %i.lq, %.noexc3.i ] ; 2 uses
  %.not.i137 = icmp eq i64 %.sroa.7339.0.copyload, 0
  br i1 %.not.i137, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135", %.noexc5.i
  %.sroa.04.0.i27.i = phi i64 [ %i.lu, %.noexc5.i ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135" ] ; 2 uses
  %.sroa.5.026.i = phi ptr [ %i.ls, %.noexc5.i ], [ %.sroa.5338.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.lr = icmp eq ptr %.sroa.5.026.i, %4
  br i1 %i.lr, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i.i": ; preds = %.lr.ph.i
  %.sroa.0.0.copyload1.i.i = load i32, ptr %.sroa.5.026.i, align 8, !noalias !23951 ; 2 uses
  %.not.i17.i = icmp eq i32 %.sroa.0.0.copyload1.i.i, 3
  br i1 %.not.i17.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i.i", label %.noexc5.i, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i.i", %.lr.ph.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc18.i unwind label %bb.bi, !noalias !23949

.noexc18.i:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i.i"
  unreachable

.noexc5.i:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i.i"
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.5.026.i, i64 64
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.026.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.6.0..sroa_idx2.i.i, i64 60, i1 false), !noalias !23949
  %i.lt = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i.i.i136, i64 %.sroa.04.0.i27.i ; 2 uses
  %i.lu = add nuw nsw i64 %.sroa.04.0.i27.i, 1    ; 2 uses
  store i32 %.sroa.0.0.copyload1.i.i, ptr %i.lt, align 8, !noalias !23952
  %.sroa.4.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i138, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.i, i64 60, i1 false), !noalias !23952
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %exitcond.not.i = icmp eq i64 %i.lu, %.sroa.7339.0.copyload
  br i1 %exitcond.not.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit.i", label %.lr.ph.i

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit.i": ; preds = %.noexc5.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i135"
  %i.lv = icmp eq i64 %.sroa.0337.0.copyload, 0
  br i1 %i.lv, label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit19.i", label %bb.bm

bb.bm:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit.i"
  %i.lw = shl nuw i64 %.sroa.0337.0.copyload, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5338.0.copyload, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23953
  br label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit19.i"

"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit19.i": ; preds = %bb.bm, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit.i"
  %i.lx = load ptr, ptr %i.kx, align 8, !noalias !23954, !nonnull !152, !noundef !152 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !23954, !nonnull !152, !noundef !152 ; 2 uses
  %i.ma = load ptr, ptr %i.lx, align 8, !noalias !23954, !nonnull !152, !noundef !152 ; 2 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = and i64 %i.mb, 7
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr i8, ptr %i.lz, i64 %i.md  ; 3 uses
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.ma to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = icmp ult ptr %i.me, %i.ma
  %i.mj = icmp ult i64 %i.mh, 48
  %or.cond.i6.i = or i1 %i.mi, %i.mj
  br i1 %or.cond.i6.i, label %.noexc145, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit9.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit9.i": ; preds = %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit19.i"
  %i.mk = getelementptr i8, ptr %i.me, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mk) ], !noalias !23955
  store ptr %i.mk, ptr %i.ly, align 8, !noalias !23954
  br label %bb.bn

.noexc145:                                        ; preds = %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit19.i"
  %i.ml = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef 48) ; 2 uses
  %.not5.i.i141 = icmp eq ptr %i.ml, null
  br i1 %.not5.i.i141, label %.noexc146, label %bb.bn, !prof !154

.noexc146:                                        ; preds = %.noexc145
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
  unreachable

bb.bn:                                            ; preds = %.noexc145, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit9.i"
  %.sroa.0.0.i.i140 = phi ptr [ %i.mk, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit9.i" ], [ %i.ml, %.noexc145 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i140, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !23956
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.i136, ptr %i.mm, align 8, !alias.scope !23948
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7339.0.copyload, ptr %i.mn, align 8, !alias.scope !23948
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i.i140, ptr %i.mo, align 8, !alias.scope !23948
  store i8 5, ptr %0, align 8, !alias.scope !23948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.az

bb.bo:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit130.thread
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = icmp eq i64 %.sroa.0337.0.copyload, 0
  br i1 %i.mp, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mq = shl nuw i64 %.sroa.0337.0.copyload, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5338.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5338.0.copyload, i64 noundef %i.mq, i64 noundef range(i64 1, -9223372036854775807) 8) #83
  br label %common.resume

common.resume:                                    ; preds = %.body331, %bb.ds, %bb.by, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %bb.cf, %.body.sink.split.i, %bb.cj, %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm, %bb.ef, %bb.eg, %bb.bi, %bb.bj, %bb.bo, %bb.bp, %bb.eb, %.body.sink.split.i247, %bb.dx, %bb.eh, %.body.thread, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body38.ph.i250, %.body.sink.split.i247 ], [ %i.ya, %.body331 ], [ %i.aab, %bb.eg ], [ %eh.lpad-body38.ph.i, %.body.sink.split.i ], [ %lpad.loopexit.split-lp963, %bb.bq ], [ %i.no, %bb.by ], [ %eh.lpad-body645, %.body.thread ], [ %i.zs, %bb.eb ], [ %i.tq, %bb.df ], [ %lpad.thr_comm.split-lp, %bb.bp ], [ %i.aae, %bb.eh ], [ %lpad.loopexit.split-lp963, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.pv, %bb.cf ], [ %i.qv, %bb.cj ], [ %lpad.loopexit.split-lp969, %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp969, %bb.cm ], [ %i.aab, %bb.ef ], [ %i.ll, %bb.bj ], [ %i.yt, %bb.dx ], [ %i.ll, %bb.bi ], [ %lpad.thr_comm.split-lp, %bb.bo ], [ %i.ya, %bb.ds ]
  resume { ptr, i32 } %common.resume.op

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %bb.bd
  %lpad.loopexit.split-lp963 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val96 = load i64, ptr %i.bc, align 8          ; 2 uses
  %i.mr = icmp eq i64 %.val96, 0
  br i1 %i.mr, label %common.resume, label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val97 = load ptr, ptr %i.ke, align 8, !nonnull !152, !noundef !152
  %i.ms = shl nuw i64 %.val96, 6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97, i64 noundef %i.ms, i64 noundef range(i64 1, -9223372036854775807) 8) #83
  br label %common.resume

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit: ; preds = %bb.u
  %i.mt = getelementptr inbounds nuw i8, ptr %.val86, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !range !177, !noundef !152 ; 2 uses
  %i.mv = icmp ne i64 %i.mu, -9223372036854775756
  tail call void @llvm.assume(i1 %i.mv)
  %i.mw = icmp eq i64 %i.mu, -9223372036854775761
  br i1 %i.mw, label %bb.br, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread: ; preds = %bb.br, %bb.bt, %bb.s, %bb.u, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit152, %bb.bu, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.mx = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #83 ; 5 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.bw, label %bb.bx, !prof !154

bb.br:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %.val86, i64 24
  %.val85 = load ptr, ptr %i.mz, align 8, !nonnull !152, !noundef !152 ; 5 uses
  %i.na = ptrtoint ptr %.val85 to i64
  %i.nb = and i64 %i.na, 3
  %..i148 = tail call i64 @llvm.umin.i64(i64 %i.nb, i64 2)
  switch i64 %..i148, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread [
    i64 2, label %bb.bs
    i64 0, label %bb.bt
  ], !prof !157

bb.bs:                                            ; preds = %bb.br
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.nc = load i64, ptr %.val85, align 8, !noundef !152 ; 2 uses
  %i.nd = icmp ult i64 %i.nc, 864691128455135232
  tail call void @llvm.assume(i1 %i.nd)
  %.mask.i149 = and i64 %i.nc, 1080863910568919040
  %i.ne = icmp eq i64 %.mask.i149, 360287970189639680
  br i1 %i.ne, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit152, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit152: ; preds = %bb.bt
  %i.nf = getelementptr inbounds nuw i8, ptr %.val85, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !range !177, !noundef !152 ; 2 uses
  %i.nh = icmp ne i64 %i.ng, -9223372036854775756
  tail call void @llvm.assume(i1 %i.nh)
  %i.ni = icmp eq i64 %i.ng, -9223372036854775757
  br i1 %i.ni, label %bb.bu, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread

bb.bu:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit152
  %i.nj = getelementptr inbounds nuw i8, ptr %.val85, i64 24
  %i.nk = tail call fastcc noundef zeroext i1 @"_ZN72_$LT$nickel_lang_core..term..UnaryOp$u20$as$u20$core..cmp..PartialEq$GT$2eq17he61010e76873040aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.nj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @396)
  br i1 %i.nk, label %bb.bv, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.nl = getelementptr inbounds nuw i8, ptr %.val85, i64 64 ; 2 uses
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ba, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nl), !inline_history !23703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.nm = getelementptr inbounds nuw i8, ptr %.val86, i64 32
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.az, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nm), !inline_history !23703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ay, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nl), !inline_history !23703
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc12if_then_else17h4b6af27636fe3a7eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.az

bb.bw:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #82
  unreachable

bb.bx:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hb7f4b135708a2613E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aw, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.nn)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit154" unwind label %bb.by, !inline_history !23703

bb.by:                                            ; preds = %bb.bx
  %i.no = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mx, i64 noundef 48, i64 noundef 8) #83
  br label %common.resume

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit154": ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 1, ptr %i.ax, align 8, !alias.scope !23957
  %i.np = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  store ptr %i.mx, ptr %i.np, align 8, !alias.scope !23957
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  store i64 1, ptr %i.nq, align 8, !alias.scope !23957
  switch i64 %..i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit" [
    i64 2, label %.invoke
    i64 0, label %bb.bz
  ], !prof !157

.invoke:                                          ; preds = %bb.cb, %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit154"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont unwind label %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bz:                                            ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit154"
  %i.nr = load i64, ptr %.val86, align 8, !noundef !152 ; 2 uses
  %i.ns = icmp ult i64 %i.nr, 864691128455135232
  tail call void @llvm.assume(i1 %i.ns)
  %.mask.i156 = and i64 %i.nr, 1080863910568919040
  %i.nt = icmp eq i64 %.mask.i156, 360287970189639680
  br i1 %i.nt, label %.lr.ph724.preheader, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit"

.lr.ph724.preheader:                              ; preds = %bb.bz
  %.sroa.08.0723948 = getelementptr inbounds nuw i8, ptr %.val86, i64 16
  %i.nu = load i64, ptr %.sroa.08.0723948, align 8, !range !177, !noundef !152 ; 2 uses
  %i.nv = icmp ne i64 %i.nu, -9223372036854775756
  tail call void @llvm.assume(i1 %i.nv)
  %i.nw = icmp eq i64 %i.nu, -9223372036854775761
  br i1 %i.nw, label %.lr.ph950, label %._crit_edge725

.lr.ph724:                                        ; preds = %bb.cc
  %.sroa.08.0723 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.nx = load i64, ptr %.sroa.08.0723, align 8, !range !177, !noundef !152 ; 2 uses
  %i.ny = icmp ne i64 %i.nx, -9223372036854775756
  call void @llvm.assume(i1 %i.ny)
  %i.nz = icmp eq i64 %i.nx, -9223372036854775761
  br i1 %i.nz, label %.lr.ph950, label %._crit_edge725

._crit_edge725:                                   ; preds = %.lr.ph724, %bb.cc, %bb.cb, %.lr.ph724.preheader
  %i.oa = phi i64 [ 1, %.lr.ph724.preheader ], [ %i.oz, %bb.cb ], [ %i.oz, %bb.cc ], [ %i.oz, %.lr.ph724 ] ; 2 uses
  %i.ob = phi ptr [ %i.mx, %.lr.ph724.preheader ], [ %i.ox, %bb.cb ], [ %i.ox, %bb.cc ], [ %i.ox, %.lr.ph724 ] ; 2 uses
  %i.oc = lshr i64 %i.oa, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23958)
  call void @llvm.experimental.noalias.scope.decl(metadata !23959)
  %.not15.i.i = icmp eq i64 %i.oc, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge725
  %i.od = getelementptr inbounds nuw [48 x i8], ptr %i.ob, i64 %i.oa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.or, %.lr.ph.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.oe = xor i64 %.sroa.0.014.i.i, -1
  %i.of = getelementptr inbounds nuw [48 x i8], ptr %i.ob, i64 %.sroa.0.014.i.i ; 4 uses
  %i.og = getelementptr [48 x i8], ptr %i.od, i64 %i.oe ; 4 uses
  %i.oh = load <2 x i64>, ptr %i.of, align 1, !alias.scope !23960
  %i.oi = load <2 x i64>, ptr %i.og, align 1, !alias.scope !23961
  store <2 x i64> %i.oi, ptr %i.of, align 1, !alias.scope !23960
  store <2 x i64> %i.oh, ptr %i.og, align 1, !alias.scope !23961
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  %i.ol = load <2 x i64>, ptr %i.oj, align 1, !alias.scope !23960
  %i.om = load <2 x i64>, ptr %i.ok, align 1, !alias.scope !23961
  store <2 x i64> %i.om, ptr %i.oj, align 1, !alias.scope !23960
  store <2 x i64> %i.ol, ptr %i.ok, align 1, !alias.scope !23961
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 32 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 32 ; 2 uses
  %i.op = load <2 x i64>, ptr %i.on, align 1, !alias.scope !23960
  %i.oq = load <2 x i64>, ptr %i.oo, align 1, !alias.scope !23961
  store <2 x i64> %i.oq, ptr %i.on, align 1, !alias.scope !23960
  store <2 x i64> %i.op, ptr %i.oo, align 1, !alias.scope !23961
  %i.or = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.or, %i.oc
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit", label %.lr.ph.i.i

.lr.ph950:                                        ; preds = %.lr.ph724.preheader, %.lr.ph724
  %.val86.pn949 = phi ptr [ %.val, %.lr.ph724 ], [ %.val86, %.lr.ph724.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.os = getelementptr inbounds nuw i8, ptr %.val86.pn949, i64 24
  %i.ot = getelementptr inbounds nuw i8, ptr %.val86.pn949, i64 32
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.av, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ot)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit162" unwind label %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23703

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit162": ; preds = %.lr.ph950
  %i.ou = load i64, ptr %i.nq, align 8, !alias.scope !23962, !noundef !152 ; 3 uses
  %i.ov = load i64, ptr %i.ax, align 8, !range !153, !alias.scope !23962, !noundef !152
  %i.ow = icmp eq i64 %i.ou, %i.ov
  br i1 %i.ow, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit162"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h10490702ed1b3c92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @397)
          to label %bb.cb unwind label %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit162", %bb.ca
  %i.ox = load ptr, ptr %i.np, align 8, !alias.scope !23962, !nonnull !152, !noundef !152 ; 4 uses
  %i.oy = getelementptr inbounds nuw [48 x i8], ptr %i.ox, i64 %i.ou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oy, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.av, i64 48, i1 false)
  %i.oz = add i64 %i.ou, 1                        ; 4 uses
  store i64 %i.oz, ptr %i.nq, align 8, !alias.scope !23962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %.val = load ptr, ptr %i.os, align 8, !nonnull !152, !noundef !152 ; 4 uses
  %i.pa = ptrtoint ptr %.val to i64
  %i.pb = and i64 %i.pa, 3
  %..i164 = call i64 @llvm.umin.i64(i64 %i.pb, i64 2)
  switch i64 %..i164, label %._crit_edge725 [
    i64 2, label %.invoke
    i64 0, label %bb.cc
  ], !prof !157

bb.cc:                                            ; preds = %bb.cb
  %i.pc = load i64, ptr %.val, align 8, !noundef !152 ; 2 uses
  %i.pd = icmp ult i64 %i.pc, 864691128455135232
  call void @llvm.assume(i1 %i.pd)
  %.mask.i165 = and i64 %i.pc, 1080863910568919040
  %i.pe = icmp eq i64 %.mask.i165, 360287970189639680
  br i1 %i.pe, label %.lr.ph724, label %._crit_edge725

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit": ; preds = %.lr.ph.i.i, %bb.bz, %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit154", %._crit_edge725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.au, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ex)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit171" unwind label %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !23703

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit171": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit"
  %.sroa.0345.0.copyload = load i64, ptr %i.ax, align 8 ; 5 uses
  %.sroa.5346.0.copyload = load ptr, ptr %i.np, align 8 ; 6 uses
  %.sroa.7347.0.copyload = load i64, ptr %i.nq, align 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23963)
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 32 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.pj = load ptr, ptr %i.pg, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = and i64 %i.pk, 7
  %i.pm = sub nsw i64 0, %i.pl
  %i.pn = getelementptr i8, ptr %i.pi, i64 %i.pm  ; 3 uses
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pj to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = icmp ult ptr %i.pn, %i.pj
  %i.ps = icmp ult i64 %i.pq, 48
  %or.cond.i14.i = or i1 %i.pr, %i.ps
  br i1 %or.cond.i14.i, label %bb.cd, label %.noexc3.i172

.noexc3.i172:                                     ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit171"
  %i.pt = getelementptr i8, ptr %i.pn, i64 -48    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pt) ]
  store ptr %i.pt, ptr %i.ph, align 8, !noalias !23964
  br label %.noexc8.i

bb.cd:                                            ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit171"
  %i.pu = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 8, i64 noundef 48)
          to label %.noexc4.i184 unwind label %bb.cj, !noalias !23964 ; 2 uses

.noexc4.i184:                                     ; preds = %bb.cd
  %.not5.i.i185 = icmp eq ptr %i.pu, null
  br i1 %.not5.i.i185, label %bb.ce, label %.noexc8.i, !prof !154

bb.ce:                                            ; preds = %.noexc4.i184
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc5.i186 unwind label %bb.cj, !noalias !23964

.noexc5.i186:                                     ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i", %bb.ch, %bb.cg
  %i.pv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pw = icmp eq i64 %.sroa.0345.0.copyload, 0
  br i1 %i.pw, label %common.resume, label %.body.sink.split.i

.noexc8.i:                                        ; preds = %.noexc4.i184, %.noexc3.i172
  %.sroa.0.0.i.i173 = phi ptr [ %i.pt, %.noexc3.i172 ], [ %i.pu, %.noexc4.i184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i173, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !23965
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5346.0.copyload) ]
  %i.px = icmp ult i64 %.sroa.7347.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.px)
  %5 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5346.0.copyload, i64 %.sroa.7347.0.copyload
  %.idx.i = mul nuw nsw i64 %.sroa.7347.0.copyload, 48 ; 3 uses
  %i.py = load ptr, ptr %i.pf, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.qb = load ptr, ptr %i.py, align 8, !noalias !23964, !nonnull !152, !noundef !152 ; 2 uses
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = and i64 %i.qc, 7
  %i.qe = sub nsw i64 0, %i.qd
  %i.qf = getelementptr i8, ptr %i.qa, i64 %i.qe  ; 3 uses
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qb to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = icmp ult ptr %i.qf, %i.qb
  %i.qk = icmp ugt i64 %.idx.i, %i.qi
  %or.cond.i.i175 = select i1 %i.qj, i1 true, i1 %i.qk
  br i1 %or.cond.i.i175, label %bb.cg, label %.noexc10.i

.noexc10.i:                                       ; preds = %.noexc8.i
  %i.ql = sub nsw i64 0, %.idx.i
  %i.qm = getelementptr i8, ptr %i.qf, i64 %i.ql  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qm) ]
  store ptr %i.qm, ptr %i.pz, align 8, !noalias !23964
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176"

bb.cg:                                            ; preds = %.noexc8.i
  %i.qn = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx.i)
          to label %.noexc11.i unwind label %bb.cf, !noalias !23964 ; 2 uses

.noexc11.i:                                       ; preds = %bb.cg
  %.not5.i.i.i183 = icmp eq ptr %i.qn, null
  br i1 %.not5.i.i.i183, label %bb.ch, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176", !prof !154

bb.ch:                                            ; preds = %.noexc11.i
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc12.i unwind label %bb.cf, !noalias !23964

.noexc12.i:                                       ; preds = %bb.ch
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176": ; preds = %.noexc11.i, %.noexc10.i
  %.sroa.0.0.i.i.i177 = phi ptr [ %i.qm, %.noexc10.i ], [ %i.qn, %.noexc11.i ] ; 2 uses
  %.not.i178 = icmp eq i64 %.sroa.7347.0.copyload, 0
  br i1 %.not.i178, label %._crit_edge.i, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176", %.noexc13.i
  %.sroa.04.0.i43.i = phi i64 [ %i.qr, %.noexc13.i ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176" ] ; 2 uses
  %.sroa.5.042.i = phi ptr [ %i.qp, %.noexc13.i ], [ %.sroa.5346.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.432.i)
  %i.qo = icmp eq ptr %.sroa.5.042.i, %5
  br i1 %i.qo, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i": ; preds = %.lr.ph.i179
  %.sroa.0.0.copyload1.i.i180 = load i32, ptr %.sroa.5.042.i, align 8, !noalias !23966 ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.0.copyload1.i.i180, 3
  br i1 %.not.i27.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i", label %.noexc13.i, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i", %.lr.ph.i179
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc28.i unwind label %bb.cf, !noalias !23964

.noexc28.i:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i"
  unreachable

.noexc13.i:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i"
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i, i64 48
  %.sroa.6.0..sroa_idx2.i.i181 = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i.i181, i64 44, i1 false), !noalias !23964
  %i.qq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i.i177, i64 %.sroa.04.0.i43.i ; 2 uses
  %i.qr = add nuw nsw i64 %.sroa.04.0.i43.i, 1    ; 2 uses
  store i32 %.sroa.0.0.copyload1.i.i180, ptr %i.qq, align 8, !noalias !23967
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i, i64 44, i1 false), !noalias !23967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.432.i)
  %exitcond.not.i182 = icmp eq i64 %i.qr, %.sroa.7347.0.copyload
  br i1 %exitcond.not.i182, label %._crit_edge.i, label %.lr.ph.i179

._crit_edge.i:                                    ; preds = %.noexc13.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i176"
  %i.qs = icmp eq i64 %.sroa.0345.0.copyload, 0
  br i1 %i.qs, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.i
  %i.qt = mul nuw i64 %.sroa.0345.0.copyload, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5346.0.copyload, i64 noundef %i.qt, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23968
  br label %bb.cl

.body.sink.split.i:                               ; preds = %bb.ck, %bb.cf
  %eh.lpad-body38.ph.i = phi { ptr, i32 } [ %i.qv, %bb.ck ], [ %i.pv, %bb.cf ]
  %i.qu = mul nuw i64 %.sroa.0345.0.copyload, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5346.0.copyload, i64 noundef %i.qu, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23964
  br label %common.resume

bb.cj:                                            ; preds = %bb.ce, %bb.cd
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = icmp eq i64 %.sroa.0345.0.copyload, 0
  br i1 %i.qw, label %common.resume, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5346.0.copyload) ]
  br label %.body.sink.split.i

bb.cl:                                            ; preds = %bb.ci, %._crit_edge.i
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i173, ptr %i.qx, align 8, !alias.scope !23963
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i177, ptr %i.qy, align 8, !alias.scope !23963
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7347.0.copyload, ptr %i.qz, align 8, !alias.scope !23963
  store i8 7, ptr %0, align 8, !alias.scope !23963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.az

.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph950, %bb.ca, %.invoke, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h72cdd1b8fb1c0090E.exit"
  %lpad.loopexit.split-lp969 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val94 = load i64, ptr %i.ax, align 8          ; 2 uses
  %i.ra = icmp eq i64 %.val94, 0
  br i1 %i.ra, label %common.resume, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp675.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val95 = load ptr, ptr %i.np, align 8, !nonnull !152, !noundef !152
  %i.rb = mul nuw i64 %.val94, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val95, i64 noundef %i.rb, i64 noundef range(i64 1, -9223372036854775807) 8) #83
  br label %common.resume

.body.thread652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %.noexc280.a, %bb.ag, %bb.ah, %.invoke900, %bb.cn, %bb.ab, %bb.ae
  %lpad.loopexit.split-lp988 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc112.thread:                                 ; preds = %.noexc112, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge", %bb.w
  %i.rc = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.hb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge" ], [ %i.fv, %.noexc112 ] ; 2 uses
  %i.rd = phi i64 [ 0, %bb.w ], [ %.pre767.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge" ], [ %.pre767.pre771, %.noexc112 ]
  %i.re = phi i64 [ 0, %bb.w ], [ %i.hd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit..noexc112.thread.loopexit_crit_edge" ], [ %i.fw, %.noexc112 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.0.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7418.sroa.6)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  %i.rg = load ptr, ptr %i.rf, align 8, !nonnull !152, !noundef !152
  %i.rh = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  %i.ri = load i64, ptr %i.rh, align 8, !noundef !152 ; 4 uses
  %i.rj = sub i64 %i.rd, %i.re
  %i.rk = icmp ugt i64 %i.ri, %i.rj
  br i1 %i.rk, label %bb.cn, label %.noexc191, !prof !154

bb.cn:                                            ; preds = %.noexc112.thread
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.re, i64 noundef %i.ri, i64 noundef 8, i64 noundef 280)
          to label %.noexc191.thread unwind label %.body.thread652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191.thread:                                 ; preds = %bb.cn
  %.pre768 = load ptr, ptr %i.ff, align 8, !alias.scope !23969
  %.sroa.5361.0.copyload.pre.pre = load i64, ptr %i.fg, align 8
  br label %.preheader

.noexc191:                                        ; preds = %.noexc112.thread
  %i.rl = icmp eq i64 %i.ri, 0
  br i1 %i.rl, label %.noexc70, label %.preheader

.preheader:                                       ; preds = %.noexc191.thread, %.noexc191
  %i.rm = phi ptr [ %.pre768, %.noexc191.thread ], [ %i.rc, %.noexc191 ]
  %.sroa.5361.0.copyload.pre859 = phi i64 [ %.sroa.5361.0.copyload.pre.pre, %.noexc191.thread ], [ %i.re, %.noexc191 ]
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ro = load i64, ptr %i.rn, align 8            ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !nonnull !152 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %.sroa.4.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %.sroa.5.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.rv = getelementptr inbounds nuw i8, ptr %i.h, i64 193
  %i.rw = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.5.0..sroa_idx3.i.i312 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.0531.200..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0531, i64 200
  br label %bb.co

.loopexit.split-lp680.loopexit.split-lp:          ; preds = %bb.da, %.noexc29.i, %bb.cz, %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit16.i.i, %.invoke957, %.invoke959, %.invoke961
  %lpad.loopexit.split-lp976 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i309

.body.i309:                                       ; preds = %.loopexit.split-lp680.loopexit.split-lp, %bb.dd
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.tj, %bb.dd ], [ %lpad.loopexit.split-lp976, %.loopexit.split-lp680.loopexit.split-lp ]
  store i64 %.sroa.6493.0, ptr %i.fg, align 8, !noalias !23970
  br label %.body.thread

bb.co:                                            ; preds = %.preheader, %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i"
  %.sroa.6493.0 = phi i64 [ %i.tn, %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i" ], [ %.sroa.5361.0.copyload.pre859, %.preheader ] ; 3 uses
  %.sroa.06.0.i = phi i64 [ %i.to, %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i" ], [ 0, %.preheader ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [48 x i8], ptr %i.rg, i64 %.sroa.06.0.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5538)
  call void @llvm.experimental.noalias.scope.decl(metadata !23971)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23970
  call void @llvm.experimental.noalias.scope.decl(metadata !23972)
  %i.ry = load ptr, ptr %i.rx, align 8, !alias.scope !23973, !noalias !23970, !nonnull !152, !noundef !152 ; 2 uses
  %i.rz = ptrtoint ptr %i.ry to i64               ; 3 uses
  %i.sa = and i64 %i.rz, 3                        ; 3 uses
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.sa, i64 2)
  switch i64 %..i.i.i, label %bb.cp [
    i64 2, label %.invoke957
    i64 0, label %bb.cq
  ], !prof !157

.invoke957:                                       ; preds = %bb.cu, %bb.ct, %bb.cp, %bb.co
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont958 unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811

.cont958:                                         ; preds = %.invoke957
  unreachable

bb.cp:                                            ; preds = %bb.co
  %i.sb = icmp samesign ugt i64 %i.sa, 1
  br i1 %i.sb, label %.invoke957, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i.i, !prof !154

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i.i: ; preds = %bb.cp
  %.not.not.i.i.i.i = icmp eq i64 %i.sa, 0
  %i.sc = lshr i64 %i.rz, 32
  %i.sd = trunc nuw i64 %i.sc to i32
  %.sroa.3.0.i.i.i.i = select i1 %.not.not.i.i.i.i, i32 undef, i32 %i.sd
  %i.se = trunc i64 %i.rz to i1
  br i1 %i.se, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i, label %.invoke959, !prof !161

bb.cq:                                            ; preds = %bb.co
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sg = load i32, ptr %i.sf, align 8, !noalias !23974, !noundef !152
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i

.invoke959:                                       ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i10.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.cont960 unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811

.cont960:                                         ; preds = %.invoke959
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i: ; preds = %bb.cq, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i.i
  %.sroa.0.0.i.i.i308 = phi i32 [ %i.sg, %bb.cq ], [ %.sroa.3.0.i.i.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i.i ] ; 3 uses
  %i.sh = icmp eq i32 %.sroa.0.0.i.i.i308, -1
  br i1 %i.sh, label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i
  %i.si = and i32 %.sroa.0.0.i.i.i308, 2147483647
  %i.sj = zext nneg i32 %i.si to i64              ; 3 uses
  %i.sk = icmp ugt i64 %i.ro, %i.sj
  br i1 %i.sk, label %bb.cs, label %.invoke961

bb.cs:                                            ; preds = %bb.cr
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.rq, i64 %i.sj
  %i.sm = icmp slt i32 %.sroa.0.0.i.i.i308, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rr, ptr noundef nonnull align 4 dereferenceable(12) %i.sl, i64 12, i1 false), !noalias !23975
  %..i7.i.i = zext i1 %i.sm to i32
  br label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i

.invoke961:                                       ; preds = %bb.cw, %bb.cr
  %i.sn = phi i64 [ %i.sj, %bb.cr ], [ %i.ta, %bb.cw ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sn, i64 noundef %i.ro, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #82
          to label %.cont962 unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811

.cont962:                                         ; preds = %.invoke961
  unreachable

_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i: ; preds = %bb.cs, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i
  %.sink.i.i.i = phi i32 [ %..i7.i.i, %bb.cs ], [ 2, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i ]
  store i32 %.sink.i.i.i, ptr %i.k, align 4, !alias.scope !23976, !noalias !23977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.so = getelementptr inbounds nuw i8, ptr %i.rx, i64 32 ; 3 uses
  %i.sp = load ptr, ptr %i.so, align 8, !alias.scope !23971, !noalias !23970, !noundef !152 ; 3 uses
  %.not.i.i310 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i310, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23977
  %i.sq = ptrtoint ptr %i.sp to i64               ; 3 uses
  %i.sr = and i64 %i.sq, 3                        ; 3 uses
  %..i8.i.i = call i64 @llvm.umin.i64(i64 %i.sr, i64 2)
  switch i64 %..i8.i.i, label %bb.cu [
    i64 2, label %.invoke957
    i64 0, label %bb.cv
  ], !prof !157

bb.cu:                                            ; preds = %bb.ct
  %i.ss = icmp samesign ugt i64 %i.sr, 1
  br i1 %i.ss, label %.invoke957, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i10.i.i, !prof !154

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i10.i.i: ; preds = %bb.cu
  %.not.not.i.i11.i.i = icmp eq i64 %i.sr, 0
  %i.st = lshr i64 %i.sq, 32
  %i.su = trunc nuw i64 %i.st to i32
  %.sroa.3.0.i.i12.i.i = select i1 %.not.not.i.i11.i.i, i32 undef, i32 %i.su
  %i.sv = trunc i64 %i.sq to i1
  br i1 %i.sv, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i, label %.invoke959, !prof !161

bb.cv:                                            ; preds = %bb.ct
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !noalias !23978, !noundef !152
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i: ; preds = %bb.cv, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i10.i.i
  %.sroa.0.0.i9.i.i = phi i32 [ %i.sx, %bb.cv ], [ %.sroa.3.0.i.i12.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i10.i.i ] ; 3 uses
  %i.sy = icmp eq i32 %.sroa.0.0.i9.i.i, -1
  br i1 %i.sy, label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit16.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i
  %i.sz = and i32 %.sroa.0.0.i9.i.i, 2147483647
  %i.ta = zext nneg i32 %i.sz to i64              ; 3 uses
  %i.tb = icmp ugt i64 %i.ro, %i.ta
  br i1 %i.tb, label %bb.cx, label %.invoke961

bb.cx:                                            ; preds = %bb.cw
  %i.tc = getelementptr inbounds nuw [12 x i8], ptr %i.rq, i64 %i.ta
  %i.td = icmp slt i32 %.sroa.0.0.i9.i.i, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.rs, ptr noundef nonnull align 4 dereferenceable(12) %i.tc, i64 12, i1 false), !noalias !23979
  %..i14.i.i = zext i1 %i.td to i32
  br label %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit16.i.i

_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit16.i.i: ; preds = %bb.cx, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i
  %.sink.i15.i.i = phi i32 [ %..i14.i.i, %bb.cx ], [ 2, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit13.i.i ]
  store i32 %.sink.i15.i.i, ptr %i.f, align 4, !alias.scope !23980, !noalias !23977
  invoke void @_ZN18nickel_lang_parser8position7TermPos4fuse17h178e09ab1d162c74E(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.f)
          to label %.noexc28.i311 unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811

.noexc28.i311:                                    ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23977
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !23977
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.noexc28.i311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23977
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rx)
          to label %.noexc29.i unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811

.noexc29.i:                                       ; preds = %bb.cz
  %i.te = invoke { ptr, i64 } @_ZN18nickel_lang_parser3ast6record13FieldPathElem16single_expr_path17he77a5ab4953b1c42E(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i)
          to label %.noexc30.i unwind label %.loopexit.split-lp680.loopexit.split-lp, !noalias !23970, !inline_history !23811 ; 2 uses

.noexc30.i:                                       ; preds = %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23977
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !23981)
  call void @llvm.experimental.noalias.scope.decl(metadata !23982)
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !23982, !noalias !23970, !noundef !152 ; 2 uses
  %.not.i326 = icmp eq ptr %i.tg, null
  br i1 %.not.i326, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23983
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  invoke void @"_ZN163_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..record..FieldMetadata$GT$$GT$13from_mainline17h760592dda216adadE"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.c, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.th)
          to label %.noexc329 unwind label %.loopexit.split-lp680.loopexit.split-lp, !inline_history !23826

.noexc329:                                        ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(200) %i.c, i64 200, i1 false), !noalias !23984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23983
  br label %.noexc31.i

bb.db:                                            ; preds = %.noexc30.i
  store ptr null, ptr %i.rt, align 8, !alias.scope !23981, !noalias !23970
  store i64 18, ptr %i.h, align 8, !alias.scope !23981, !noalias !23970
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i327, align 8, !alias.scope !23981, !noalias !23970
  store i64 0, ptr %.sroa.5.0..sroa_idx.i328, align 8, !alias.scope !23981, !noalias !23970
  store i8 0, ptr %i.ru, align 8, !alias.scope !23981, !noalias !23970
  store i8 0, ptr %i.rv, align 1, !alias.scope !23981, !noalias !23970
  store i64 -9223372036854775806, ptr %i.rw, align 8, !alias.scope !23981, !noalias !23970
  br label %.noexc31.i

.noexc31.i:                                       ; preds = %bb.db, %.noexc329
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i307)
  %i.ti = load ptr, ptr %i.so, align 8, !alias.scope !23971, !noalias !23970, !noundef !152
  %.not6.i.i = icmp eq ptr %i.ti, null
  br i1 %.not6.i.i, label %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i", label %bb.dc

bb.dc:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23977
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.so)
          to label %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1fd1032638291ccaE.exit.i.i" unwind label %bb.dd, !inline_history !23827

"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1fd1032638291ccaE.exit.i.i": ; preds = %bb.dc
  %.sroa.01.0.copyload2.i.i = load i32, ptr %i.e, align 8, !noalias !23977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.i.i307, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa_idx3.i.i312, i64 44, i1 false), !noalias !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23977
  br label %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i"

bb.dd:                                            ; preds = %bb.dc
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.h) #86, !noalias !23985, !inline_history !23811
  br label %.body.i309

"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i": ; preds = %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1fd1032638291ccaE.exit.i.i", %.noexc31.i
  %.sroa.01.0.i.i313 = phi i32 [ %.sroa.01.0.copyload2.i.i, %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1fd1032638291ccaE.exit.i.i" ], [ 3, %.noexc31.i ]
  %i.tk = extractvalue { ptr, i64 } %i.te, 1
  %i.tl = extractvalue { ptr, i64 } %i.te, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0531.200..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0531, ptr noundef nonnull align 8 dereferenceable(200) %i.h, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5538, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.i.i307, i64 44, i1 false), !noalias !23970
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23970
  %i.tm = getelementptr inbounds nuw [280 x i8], ptr %i.rm, i64 %.sroa.6493.0 ; 5 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.tm, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0531, i64 216, i1 false)
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tm, i64 216
  store i32 %.sroa.01.0.i.i313, ptr %.sroa.4537.0..sroa_idx, align 8, !noalias !23986
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tm, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5538.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5538, i64 44, i1 false), !noalias !23986
  %.sroa.6539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tm, i64 264
  store ptr %i.tl, ptr %.sroa.6539.0..sroa_idx, align 8, !noalias !23986
  %.sroa.7540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tm, i64 272
  store i64 %i.tk, ptr %.sroa.7540.0..sroa_idx, align 8, !noalias !23986
  %i.tn = add i64 %.sroa.6493.0, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5538)
  %i.to = add nuw i64 %.sroa.06.0.i, 1            ; 2 uses
  %i.tp = icmp eq i64 %i.to, %i.ri
  br i1 %i.tp, label %bb.de, label %bb.co

bb.de:                                            ; preds = %"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline28_$u7b$$u7b$closure$u7d$$u7d$17h68186a7d16bb9fe2E.exit.i"
  store i64 %i.tn, ptr %i.fg, align 8, !noalias !23970
  %.sroa.4360.0.copyload.pre = load ptr, ptr %i.ff, align 8
  br label %.noexc70

bb.df:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", %bb.dh, %bb.dg
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E"(ptr noalias noundef align 8 dereferenceable(32) %i.z) #86, !noalias !23987
  br label %common.resume

.noexc70:                                         ; preds = %.noexc191, %bb.de
  %.sroa.5361.0.copyload = phi i64 [ %i.re, %.noexc191 ], [ %i.tn, %bb.de ] ; 6 uses
  %.sroa.4360.0.copyload = phi ptr [ %i.rc, %.noexc191 ], [ %.sroa.4360.0.copyload.pre, %bb.de ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.sroa.0359.0.copyload = load i64, ptr %i.at, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !23987
  %i.tr = icmp ult i64 %.sroa.5361.0.copyload, 32940614417338486
  call void @llvm.assume(i1 %i.tr)
  %i.ts = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4360.0.copyload, i64 %.sroa.5361.0.copyload ; 4 uses
  store ptr %.sroa.4360.0.copyload, ptr %i.z, align 8, !alias.scope !23988
  %i.tt = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.0359.0.copyload, ptr %i.tt, align 8, !alias.scope !23988
  %i.tu = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.4360.0.copyload, ptr %i.tu, align 8, !alias.scope !23988
  %i.tv = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.ts, ptr %i.tv, align 8, !alias.scope !23988
  %i.tw = ptrtoint ptr %i.ts to i64
  %.idx = mul nuw nsw i64 %.sroa.5361.0.copyload, 280 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 32 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ub = load ptr, ptr %i.ty, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = and i64 %i.uc, 7
  %i.ue = sub nsw i64 0, %i.ud
  %i.uf = getelementptr i8, ptr %i.ua, i64 %i.ue  ; 3 uses
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ub to i64
  %i.ui = sub i64 %i.ug, %i.uh
  %i.uj = icmp ult ptr %i.uf, %i.ub
  %i.uk = icmp ugt i64 %.idx, %i.ui
  %or.cond.i = select i1 %i.uj, i1 true, i1 %i.uk
  br i1 %or.cond.i, label %bb.dg, label %.noexc72

.noexc72:                                         ; preds = %.noexc70
  %i.ul = sub nsw i64 0, %.idx
  %i.um = getelementptr i8, ptr %i.uf, i64 %i.ul  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.um) ]
  store ptr %i.um, ptr %i.tz, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66"

bb.dg:                                            ; preds = %.noexc70
  %i.un = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc73 unwind label %bb.df  ; 2 uses

.noexc73:                                         ; preds = %bb.dg
  %.not5.i.i69 = icmp eq ptr %i.un, null
  br i1 %.not5.i.i69, label %bb.dh, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66", !prof !154

bb.dh:                                            ; preds = %.noexc73
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc74 unwind label %bb.df

.noexc74:                                         ; preds = %bb.dh
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66": ; preds = %.noexc72, %.noexc73
  %.sroa.0.0.i.i67 = phi ptr [ %i.um, %.noexc72 ], [ %i.un, %.noexc73 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.5361.0.copyload, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph716

.lr.ph716:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66", %.noexc75
  %.sroa.04.0.i68715 = phi i64 [ %i.uq, %.noexc75 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66" ] ; 2 uses
  %.val89568714 = phi ptr [ %6, %.noexc75 ], [ %.sroa.4360.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4408)
  %i.uo = icmp eq ptr %.val89568714, %i.ts
  br i1 %i.uo, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i": ; preds = %.lr.ph716
  %6 = getelementptr inbounds nuw i8, ptr %.val89568714, i64 280 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.val89568714, align 8, !noalias !23989 ; 2 uses
  %.not.i201 = icmp eq i64 %.sroa.0.0.copyload1.i, 19
  br i1 %.not.i201, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %.noexc75, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i", %.lr.ph716
  %7 = phi ptr [ %6, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i" ], [ %.val89568714, %.lr.ph716 ]
  store ptr %7, ptr %i.tu, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc202 unwind label %bb.df

.noexc202:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i"
  unreachable

.noexc75:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val89568714, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4408, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.6.0..sroa_idx2.i, i64 272, i1 false)
  %i.up = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i67, i64 %.sroa.04.0.i68715 ; 2 uses
  %i.uq = add nuw nsw i64 %.sroa.04.0.i68715, 1   ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.up, align 8, !noalias !23987
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4408.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.4408, i64 272, i1 false), !noalias !23987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4408)
  %exitcond.not = icmp eq i64 %i.uq, %.sroa.5361.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph716

._crit_edge:                                      ; preds = %.noexc75, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66"
  %.lcssa713 = phi ptr [ %.sroa.4360.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i66" ], [ %6, %.noexc75 ] ; 4 uses
  store ptr %.lcssa713, ptr %i.tu, align 8
  %i.ur = ptrtoint ptr %.lcssa713 to i64
  %i.us = sub nuw i64 %i.tw, %i.ur
  %i.ut = udiv exact i64 %i.us, 280
  %i.uu = icmp eq ptr %i.ts, %.lcssa713
  br i1 %i.uu, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.uw, %.lr.ph.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.uv = getelementptr inbounds nuw [280 x i8], ptr %.lcssa713, i64 %.sroa.0.07.i.i.i
  %i.uw = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.uv), !noalias !23990
  %i.ux = icmp eq i64 %i.uw, %i.ut
  br i1 %i.ux, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i": ; preds = %.lr.ph.i.i.i, %._crit_edge
  %i.uy = icmp eq i64 %.sroa.0359.0.copyload, 0
  br i1 %i.uy, label %.noexc59, label %bb.di

bb.di:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i"
  %i.uz = mul nuw i64 %.sroa.0359.0.copyload, 280
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4360.0.copyload, i64 noundef %i.uz, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !23990
  br label %.noexc59

.noexc59:                                         ; preds = %bb.di, %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !23987
  %i.va = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.vb = load ptr, ptr %i.va, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.fi, i64 104
  %i.vd = load i64, ptr %i.vc, align 8, !noundef !152 ; 6 uses
  %i.ve = getelementptr inbounds nuw [384 x i8], ptr %i.vb, i64 %i.vd
  %i.vf = icmp samesign ugt i64 %i.vd, 41175768021673106
  %i.vg = mul nuw nsw i64 %i.vd, 224              ; 3 uses
  br i1 %i.vf, label %.noexc60, label %bb.dj, !prof !154

.noexc60:                                         ; preds = %.noexc59
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
  unreachable

bb.dj:                                            ; preds = %.noexc59
  %i.vh = load ptr, ptr %i.tx, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 32 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.vk = load ptr, ptr %i.vh, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = and i64 %i.vl, 7
  %i.vn = sub nsw i64 0, %i.vm
  %i.vo = getelementptr i8, ptr %i.vj, i64 %i.vn  ; 3 uses
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = ptrtoint ptr %i.vk to i64
  %i.vr = sub i64 %i.vp, %i.vq
  %i.vs = icmp ult ptr %i.vo, %i.vk
  %i.vt = icmp ugt i64 %i.vg, %i.vr
  %or.cond.i76 = select i1 %i.vs, i1 true, i1 %i.vt
  br i1 %or.cond.i76, label %.noexc62, label %.noexc61

.noexc61:                                         ; preds = %bb.dj
  %i.vu = sub nsw i64 0, %i.vg
  %i.vv = getelementptr i8, ptr %i.vo, i64 %i.vu  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vv) ]
  store ptr %i.vv, ptr %i.vi, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55"

.noexc62:                                         ; preds = %bb.dj
  %i.vw = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.vg) ; 2 uses
  %.not5.i.i58 = icmp eq ptr %i.vw, null
  br i1 %.not5.i.i58, label %.noexc63, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55", !prof !154

.noexc63:                                         ; preds = %.noexc62
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55": ; preds = %.noexc61, %.noexc62
  %.sroa.0.0.i.i56 = phi ptr [ %i.vv, %.noexc61 ], [ %i.vw, %.noexc62 ] ; 2 uses
  %.not734 = icmp eq i64 %i.vd, 0
  br i1 %.not734, label %._crit_edge721, label %.lr.ph720

.lr.ph720:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55"
  %.sroa.4505.200..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4505, i64 192
  %.sroa.4505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph720, %.noexc64
  %.sroa.04.0.i57719 = phi i64 [ 0, %.lr.ph720 ], [ %i.wb, %.noexc64 ] ; 2 uses
  %.sroa.0569.0718 = phi ptr [ %i.vb, %.lr.ph720 ], [ %i.vz, %.noexc64 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4438)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6435)
  %i.vx = icmp eq ptr %.sroa.0569.0718, %i.ve
  br i1 %i.vx, label %.noexc206.thread, label %.noexc206

.noexc206:                                        ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4505)
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0569.0718, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4505.200..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.vy, i64 20, i1 false), !noalias !23991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23992
  call void @"_ZN163_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..record..FieldMetadata$GT$$GT$13from_mainline17h760592dda216adadE"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.0569.0718), !inline_history !23852
  %.sroa.0504.0.copyload = load i64, ptr %i.d, align 8, !noalias !23993 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.4505, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.4505.0..sroa_idx, i64 192, i1 false), !noalias !23993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6435, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4505, i64 216, i1 false), !noalias !23994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4505)
  %.not.i205 = icmp eq i64 %.sroa.0504.0.copyload, 19
  br i1 %.not.i205, label %.noexc206.thread, label %.noexc64, !prof !208

.noexc206.thread:                                 ; preds = %bb.dk, %.noexc206
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82, !inline_history !23855
  unreachable

.noexc64:                                         ; preds = %.noexc206
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0569.0718, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6435, i64 216, i1 false), !noalias !23995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6435)
  %i.wa = getelementptr inbounds nuw [224 x i8], ptr %.sroa.0.0.i.i56, i64 %.sroa.04.0.i57719 ; 2 uses
  %i.wb = add nuw nsw i64 %.sroa.04.0.i57719, 1   ; 2 uses
  store i64 %.sroa.0504.0.copyload, ptr %i.wa, align 8
  %.sroa.4438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4438)
  %exitcond763.not = icmp eq i64 %i.wb, %i.vd
  br i1 %exitcond763.not, label %._crit_edge721, label %bb.dk

._crit_edge721:                                   ; preds = %.noexc64, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55"
  %i.wc = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.wd = load i8, ptr %i.wc, align 8, !range !160, !noundef !152
  store ptr %.sroa.0.0.i.i56, ptr %i.as, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.vd, ptr %i.we, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.0.0.i.i67, ptr %i.wf, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.5361.0.copyload, ptr %i.wg, align 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 %i.wd, ptr %i.wh, align 8
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.az

.body.thread:                                     ; preds = %.body.thread652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i309, %bb.aj
  %eh.lpad-body645 = phi { ptr, i32 } [ %i.gy, %bb.aj ], [ %eh.lpad-body.i, %.body.i309 ], [ %lpad.loopexit.split-lp988, %.body.thread652.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h17a3bd712ae42451E"(ptr noalias noundef align 8 dereferenceable(24) %i.at) #86
  br label %common.resume

bb.dl:                                            ; preds = %bb.as, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4451)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4451, ptr noundef nonnull align 4 dereferenceable(44) %i.an, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.an, ptr noundef nonnull align 4 dereferenceable(44) %i.ao, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ao, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4451, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4451)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.as, %bb.dl
  %.sroa.0368.sroa.0.0 = phi i32 [ %.sroa.0368.sroa.0.0.copyload, %bb.as ], [ %.sroa.6369.sroa.0.0.copyload447, %bb.dl ] ; 2 uses
  %.sroa.6369.sroa.0.0 = phi i32 [ %.sroa.6369.sroa.0.0.copyload447, %bb.as ], [ %.sroa.0368.sroa.0.0.copyload, %bb.dl ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23996)
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !noalias !23997, !nonnull !152, !noundef !152 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 32 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !noalias !23997, !nonnull !152, !noundef !152 ; 2 uses
  %i.wm = load ptr, ptr %i.wj, align 8, !noalias !23997, !nonnull !152, !noundef !152 ; 2 uses
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = and i64 %i.wn, 3
  %i.wp = sub nsw i64 0, %i.wo
  %i.wq = getelementptr i8, ptr %i.wl, i64 %i.wp  ; 3 uses
  %i.wr = ptrtoint ptr %i.wq to i64
  %i.ws = ptrtoint ptr %i.wm to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = icmp ult ptr %i.wq, %i.wm
  %i.wv = icmp ult i64 %i.wt, 24
  %or.cond.i7.i = or i1 %i.wu, %i.wv
  br i1 %or.cond.i7.i, label %bb.dn, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i": ; preds = %bb.dm
  %i.ww = getelementptr i8, ptr %i.wq, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ww) ], !noalias !23998
  store ptr %i.ww, ptr %i.wk, align 8, !noalias !23997
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.wx = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef 24), !noalias !23997 ; 2 uses
  %.not5.i.i218 = icmp eq ptr %i.wx, null
  br i1 %.not5.i.i218, label %bb.do, label %bb.dp, !prof !154

bb.do:                                            ; preds = %bb.dn
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !23997
  unreachable

bb.dp:                                            ; preds = %bb.dn, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i"
  %.sroa.0.0.i.i208 = phi ptr [ %i.ww, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i" ], [ %i.wx, %bb.dn ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.0.i.i208, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !23999
  %i.wy = load ptr, ptr %i.wi, align 8, !noalias !24000, !nonnull !152, !noundef !152 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 32 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !noalias !24000, !nonnull !152, !noundef !152 ; 2 uses
  %i.xb = load ptr, ptr %i.wy, align 8, !noalias !24000, !nonnull !152, !noundef !152 ; 2 uses
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = and i64 %i.xc, 7
  %i.xe = sub nsw i64 0, %i.xd
  %i.xf = getelementptr i8, ptr %i.xa, i64 %i.xe  ; 3 uses
  %i.xg = ptrtoint ptr %i.xf to i64
  %i.xh = ptrtoint ptr %i.xb to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = icmp ult ptr %i.xf, %i.xb
  %i.xk = icmp ult i64 %i.xi, 96
  %or.cond.i.i209 = or i1 %i.xj, %i.xk
  br i1 %or.cond.i.i209, label %.noexc4.i215, label %.noexc3.i210

.noexc3.i210:                                     ; preds = %bb.dp
  %i.xl = getelementptr i8, ptr %i.xf, i64 -96    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xl) ]
  store ptr %i.xl, ptr %i.wz, align 8, !noalias !24000
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"

.noexc4.i215:                                     ; preds = %bb.dp
  %i.xm = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef 96), !noalias !24000 ; 2 uses
  %.not5.i.i.i216 = icmp eq ptr %i.xm, null
  br i1 %.not5.i.i.i216, label %.noexc5.i217, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i", !prof !154

.noexc5.i217:                                     ; preds = %.noexc4.i215
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !24000
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i": ; preds = %.noexc4.i215, %.noexc3.i210
  %.sroa.0.0.i.i.i211 = phi ptr [ %i.xl, %.noexc3.i210 ], [ %i.xm, %.noexc4.i215 ] ; 5 uses
  %.not.i17.i213 = icmp eq i32 %.sroa.0368.sroa.0.0, 3
  br i1 %.not.i17.i213, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i", !prof !208

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i", %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82, !noalias !24000
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"
  store i32 %.sroa.0368.sroa.0.0, ptr %.sroa.0.0.i.i.i211, align 8, !noalias !24001
  %.sroa.4.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i214, ptr noundef nonnull align 4 dereferenceable(44) %i.ak, i64 44, i1 false)
  %.not.i17.1.i = icmp eq i32 %.sroa.6369.sroa.0.0, 3
  br i1 %.not.i17.1.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i", label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h4008c02c761c0463E.exit, !prof !208

_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h4008c02c761c0463E.exit: ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i"
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 48
  store i32 %.sroa.6369.sroa.0.0, ptr %i.xn, align 8, !noalias !24001
  %.sroa.4.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.1.i, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i208, ptr %i.xo, align 8, !alias.scope !23996
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i211, ptr %i.xp, align 8, !alias.scope !23996
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.xq, align 8, !alias.scope !23996
  store i8 14, ptr %0, align 8, !alias.scope !23996
  br label %bb.az

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %switch.lookup
  %i.xr = icmp eq i64 %i.jh, 0
  br i1 %i.xr, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", label %bb.dq

bb.dq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !24002, !inline_history !23877
  %i.xs = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jh, i64 noundef range(i64 1, 9) 8) #83, !noalias !24002, !inline_history !23877 ; 2 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %bb.dr, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

bb.dr:                                            ; preds = %bb.dq, %switch.lookup
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.dq ], [ 0, %switch.lookup ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.jh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82, !noalias !24003, !inline_history !23877
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %bb.dq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.xs, %bb.dq ] ; 11 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.jg, %bb.dq ] ; 10 uses
  %i.xu = icmp samesign ule i64 %i.jg, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.xu), !noalias !24004
  %i.xv = icmp eq i64 %i.jg, 0
  br i1 %i.xv, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit", label %.preheader687

.preheader687:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i"
  %.sroa.6562.0 = phi i64 [ %i.xy, %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ] ; 3 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.6562.0
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.xw)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i" unwind label %.body331, !inline_history !23878

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i": ; preds = %.preheader687
  %i.xx = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %.sroa.6562.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xx, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.xy = add nuw nsw i64 %.sroa.6562.0, 1        ; 2 uses
  %i.xz = icmp eq i64 %i.xy, %i.jg
  br i1 %i.xz, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit", label %.preheader687

.body331:                                         ; preds = %.preheader687
  %i.ya = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yb = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.yb, label %common.resume, label %bb.ds

bb.ds:                                            ; preds = %.body331
  %i.yc = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.yc, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24003, !inline_history !23877
  br label %common.resume

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit": ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"
  br i1 %switch.masked, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit"
  %switch = icmp ult i64 %i.jg, 2
  br i1 %switch, label %.invoke902, label %bb.ec

bb.du:                                            ; preds = %bb.ed, %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24005)
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 32 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yh = load ptr, ptr %i.ye, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = and i64 %i.yi, 3
  %i.yk = sub nsw i64 0, %i.yj
  %i.yl = getelementptr i8, ptr %i.yg, i64 %i.yk  ; 3 uses
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yh to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = icmp ult ptr %i.yl, %i.yh
  %i.yq = icmp ult i64 %i.yo, 24
  %or.cond.i14.i220 = or i1 %i.yp, %i.yq
  br i1 %or.cond.i14.i220, label %bb.dv, label %.noexc3.i221

.noexc3.i221:                                     ; preds = %bb.du
  %i.yr = getelementptr i8, ptr %i.yl, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yr) ]
  store ptr %i.yr, ptr %i.yf, align 8, !noalias !24006
  br label %.noexc8.i222

bb.dv:                                            ; preds = %bb.du
  %i.ys = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef 24)
          to label %.noexc4.i259 unwind label %bb.eb, !noalias !24006 ; 2 uses

.noexc4.i259:                                     ; preds = %bb.dv
  %.not5.i.i260 = icmp eq ptr %i.ys, null
  br i1 %.not5.i.i260, label %bb.dw, label %.noexc8.i222, !prof !154

bb.dw:                                            ; preds = %.noexc4.i259
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc5.i261 unwind label %bb.eb, !noalias !24006

.noexc5.i261:                                     ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", %bb.dz, %bb.dy
  %i.yt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yu = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.yu, label %common.resume, label %.body.sink.split.i247

.noexc8.i222:                                     ; preds = %.noexc4.i259, %.noexc3.i221
  %.sroa.0.0.i.i223 = phi ptr [ %i.yr, %.noexc3.i221 ], [ %i.ys, %.noexc4.i259 ] ; 2 uses
  store i8 %switch.offset, ptr %.sroa.0.0.i.i223, align 4, !noalias !24007
  %8 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.jg
  %.idx.i229 = mul nuw nsw i64 %i.jg, 48          ; 3 uses
  %i.yv = load ptr, ptr %i.yd, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 32 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yy = load ptr, ptr %i.yv, align 8, !noalias !24006, !nonnull !152, !noundef !152 ; 2 uses
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = and i64 %i.yz, 7
  %i.zb = sub nsw i64 0, %i.za
  %i.zc = getelementptr i8, ptr %i.yx, i64 %i.zb  ; 3 uses
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = ptrtoint ptr %i.yy to i64
  %i.zf = sub i64 %i.zd, %i.ze
  %i.zg = icmp ult ptr %i.zc, %i.yy
  %i.zh = icmp ugt i64 %.idx.i229, %i.zf
  %or.cond.i.i230 = select i1 %i.zg, i1 true, i1 %i.zh
  br i1 %or.cond.i.i230, label %bb.dy, label %.noexc10.i231

.noexc10.i231:                                    ; preds = %.noexc8.i222
  %i.zi = sub nsw i64 0, %.idx.i229
  %i.zj = getelementptr i8, ptr %i.zc, i64 %i.zi  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zj) ]
  store ptr %i.zj, ptr %i.yw, align 8, !noalias !24006
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232"

bb.dy:                                            ; preds = %.noexc8.i222
  %i.zk = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx.i229)
          to label %.noexc11.i254 unwind label %bb.dx, !noalias !24006 ; 2 uses

.noexc11.i254:                                    ; preds = %bb.dy
  %.not5.i.i.i255 = icmp eq ptr %i.zk, null
  br i1 %.not5.i.i.i255, label %bb.dz, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232", !prof !154

bb.dz:                                            ; preds = %.noexc11.i254
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc12.i256 unwind label %bb.dx, !noalias !24006

.noexc12.i256:                                    ; preds = %bb.dz
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232": ; preds = %.noexc11.i254, %.noexc10.i231
  %.sroa.0.0.i.i.i233 = phi ptr [ %i.zj, %.noexc10.i231 ], [ %i.zk, %.noexc11.i254 ] ; 2 uses
  %.not.i234 = icmp eq i64 %i.jg, 0
  br i1 %.not.i234, label %._crit_edge.i245, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232", %.noexc13.i241
  %.sroa.04.0.i43.i236 = phi i64 [ %i.zo, %.noexc13.i241 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232" ] ; 2 uses
  %.sroa.5.042.i237 = phi ptr [ %i.zm, %.noexc13.i241 ], [ %.sroa.10.0.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.432.i219)
  %i.zl = icmp eq ptr %.sroa.5.042.i237, %8
  br i1 %i.zl, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238": ; preds = %.lr.ph.i235
  %.sroa.0.0.copyload1.i.i239 = load i32, ptr %.sroa.5.042.i237, align 8, !noalias !24008 ; 2 uses
  %.not.i27.i240 = icmp eq i32 %.sroa.0.0.copyload1.i.i239, 3
  br i1 %.not.i27.i240, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", label %.noexc13.i241, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238", %.lr.ph.i235
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc28.i253 unwind label %bb.dx, !noalias !24006

.noexc28.i253:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246"
  unreachable

.noexc13.i241:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238"
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i237, i64 48
  %.sroa.6.0..sroa_idx2.i.i242 = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i237, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i219, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i.i242, i64 44, i1 false), !noalias !24006
  %i.zn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i.i233, i64 %.sroa.04.0.i43.i236 ; 2 uses
  %i.zo = add nuw nsw i64 %.sroa.04.0.i43.i236, 1 ; 2 uses
  store i32 %.sroa.0.0.copyload1.i.i239, ptr %i.zn, align 8, !noalias !24009
  %.sroa.432.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.0..sroa_idx.i243, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i219, i64 44, i1 false), !noalias !24009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.432.i219)
  %exitcond.not.i244 = icmp eq i64 %i.zo, %i.jg
  br i1 %exitcond.not.i244, label %._crit_edge.i245, label %.lr.ph.i235

._crit_edge.i245:                                 ; preds = %.noexc13.i241, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232"
  %i.zp = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.zp, label %bb.ee, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i245
  %i.zq = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.zq, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24010
  br label %bb.ee

.body.sink.split.i247:                            ; preds = %bb.eb, %bb.dx
  %eh.lpad-body38.ph.i250 = phi { ptr, i32 } [ %i.yt, %bb.dx ], [ %i.zs, %bb.eb ]
  %i.zr = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.zr, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24006
  br label %common.resume

bb.eb:                                            ; preds = %bb.dw, %bb.dv
  %i.zs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zt = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.zt, label %common.resume, label %.body.sink.split.i247

bb.ec:                                            ; preds = %bb.dt
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.zu, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zu, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not42 = icmp eq i64 %i.jg, 2
  br i1 %.not42, label %.invoke902, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.zu, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zu, ptr noundef nonnull align 8 dereferenceable(48) %i.zv, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zv, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.du

.invoke902:                                       ; preds = %bb.dt, %bb.ec
  %i.zw = phi i64 [ %i.jg, %bb.dt ], [ 2, %bb.ec ] ; 2 uses
  %i.zx = phi ptr [ @398, %bb.dt ], [ @399, %bb.ec ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.zw, i64 noundef %i.zw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zx) #82
          to label %.cont903 unwind label %bb.ef

.cont903:                                         ; preds = %.invoke902
  unreachable

bb.ee:                                            ; preds = %bb.ea, %._crit_edge.i245
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i223, ptr %i.zy, align 8, !alias.scope !24005
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i233, ptr %i.zz, align 8, !alias.scope !24005
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.jg, ptr %i.aaa, align 8, !alias.scope !24005
  store i8 14, ptr %0, align 8, !alias.scope !24005
  br label %bb.az

bb.ef:                                            ; preds = %.invoke902
  %i.aab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aac = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.aac, label %common.resume, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aad = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.aad, i64 noundef range(i64 1, -9223372036854775807) 8) #83
  br label %common.resume

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit": ; preds = %bb.au
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9annotated17h7bd421623c87fb00E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.az

bb.eh:                                            ; preds = %bb.au
  %i.aae = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17h727915114fc71ce1E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ah) #86
  br label %common.resume

bb.ei:                                            ; preds = %bb.av
  %i.aaf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aag = load i32, ptr %i.aaf, align 8, !noundef !152
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.aah, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aag, ptr %.sroa.419.0..sroa_idx, align 4
  store i8 16, ptr %0, align 8
  br label %bb.az

bb.ej:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val87 = load ptr, ptr %i.aai, align 8, !nonnull !152, !noundef !152
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val88 = load i64, ptr %i.aaj, align 8, !noundef !152 ; 7 uses
  %i.aak = icmp slt i64 %.val88, 0
  br i1 %i.aak, label %bb.el, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !158

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.ej
  %i.aal = icmp eq i64 %.val88, 0
  br i1 %i.aal, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit", label %bb.ek

bb.ek:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !24011
  %i.aam = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val88, i64 noundef range(i64 1, 9) 1) #83, !noalias !24011 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, null
  br i1 %i.aan, label %bb.el, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit"

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.ek ], [ 0, %bb.ej ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.val88, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82, !noalias !24012
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hebe6965aefbe98e5E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.ek
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.aam, %bb.ek ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val87, i64 %.val88, i1 false), !noalias !24013
  store i64 %.val88, ptr %i.af, align 8
  %.sroa.4393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4393.0..sroa_idx, align 8
  %.sroa.5394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val88, ptr %.sroa.5394.0..sroa_idx, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aap = load i8, ptr %i.aao, align 8, !range !174, !noundef !152
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11import_path17had679b3306edede6E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.af, i8 noundef %i.aap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.az
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$10next_token17h27c2c437449d737dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !24027 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 18 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24028
  call void @"_ZN91_$LT$nickel_lang_parser..lexer..Lexer$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h542836bd6d5d620bE"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(120) %1), !noalias !24029
  %i.e = load i64, ptr %i.b, align 8, !range !237, !noalias !24030, !noundef !152 ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 170
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !24030 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.510.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.510.0..sroa_idx.i.i, align 4, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.510.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.510.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.510.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.510.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.8.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.510.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.8.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.9.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.510.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.510.sroa.9.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !24030 ; 2 uses
  %.sroa.510.sroa.10.0..sroa.510.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.510.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.510.sroa.10.0..sroa.510.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24030 ; 2 uses
  %i.f = icmp eq i64 %i.e, 169
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24028
  store i64 176, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24028
  store i64 173, ptr %0, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 25, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.510.sroa.0.0.copyload.i.i, ptr %.sroa.632.0..sroa_idx, align 4
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.510.sroa.4.0.copyload.i.i, ptr %.sroa.733.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.510.sroa.5.0.copyload.i.i, ptr %.sroa.834.0..sroa_idx, align 4
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.510.sroa.6.0.copyload.i.i, ptr %.sroa.935.0..sroa_idx, align 8
  %.sroa.1036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.510.sroa.7.0.copyload.i.i, ptr %.sroa.1036.0..sroa_idx, align 4
  %.sroa.1137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.510.sroa.8.0.copyload.i.i, ptr %.sroa.1137.0..sroa_idx, align 8
  %.sroa.1238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.510.sroa.9.0.copyload.i.i, ptr %.sroa.1238.0..sroa_idx, align 4
  %.sroa.1339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@"_ZN135_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17h6c397f3a8c394f14E":bb.a

bb.z:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.cr, i64 20, i1 false), !noalias !24772
  br label %"_ZN77_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h6161ee199924fa65E.exit.i"

"_ZN77_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h6161ee199924fa65E.exit.i": ; preds = %bb.z, %bb.y, %bb.w
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.z ], [ %i.cq, %bb.y ], [ undef, %bb.w ]
  %.sroa.4.0.i.i = phi i32 [ 5, %bb.z ], [ %i.cj, %bb.y ], [ 3, %bb.w ]
  %.sroa.0.0.i.i = phi ptr [ undef, %bb.z ], [ %i.cp, %bb.y ], [ undef, %bb.w ]
  store ptr %.sroa.0.0.i.i, ptr %i.bn, align 8, !alias.scope !24772
  store i32 %.sroa.4.0.i.i, ptr %i.bo, align 8, !alias.scope !24772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.i.i, i64 20, i1 false), !noalias !24773
  store ptr %.sroa.8.0.i.i, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !24772
  store i64 13, ptr %i.d, align 8, !alias.scope !24772
  br label %.noexc149

bb.aa:                                            ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !range !169, !alias.scope !24778, !noundef !152 ; 4 uses
  %i.cu = icmp ne i32 %i.ct, 4
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nsw i32 %i.ct, -3
  %i.cw = icmp samesign ugt i32 %i.ct, 2
  %narrow.i.i2.i = select i1 %i.cw, i32 %i.cv, i32 1
  switch i32 %narrow.i.i2.i, label %bb.ab [
    i32 0, label %"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i"
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.8.8..sroa_idx.i.i, i64 16, i1 false), !noalias !24772
  %i.cz = load ptr, ptr %i.cx, align 8, !alias.scope !24779, !nonnull !152, !align !156, !noundef !152
  %i.da = load ptr, ptr %i.cy, align 8, !alias.scope !24780, !nonnull !152, !align !156, !noundef !152
  br label %"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i"

bb.ad:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.db, i64 20, i1 false), !noalias !24772
  br label %"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i"

bb.ae:                                            ; preds = %bb.aa
  br label %"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i"

"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.sroa.9.0.i.i = phi ptr [ undef, %bb.ae ], [ %i.da, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.aa ]
  %.sroa.4.0.i3.i = phi i32 [ 6, %bb.ae ], [ %i.ct, %bb.ac ], [ 5, %bb.ad ], [ 3, %bb.aa ]
  %.sroa.0.0.i4.i = phi ptr [ undef, %bb.ae ], [ %i.cz, %bb.ac ], [ undef, %bb.ad ], [ undef, %bb.aa ]
  store ptr %.sroa.0.0.i4.i, ptr %i.bn, align 8, !alias.scope !24772
  store i32 %.sroa.4.0.i3.i, ptr %i.bo, align 8, !alias.scope !24772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.i.i, i64 20, i1 false), !noalias !24773
  store ptr %.sroa.9.0.i.i, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !24772
  store i64 14, ptr %i.d, align 8, !alias.scope !24772
  br label %.noexc149

bb.af:                                            ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !24781, !nonnull !152, !align !156, !noundef !152
  %i.de = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.df = load i8, ptr %i.de, align 8, !range !160, !alias.scope !24773, !noundef !152
  store ptr %i.dd, ptr %i.bn, align 8, !alias.scope !24772
  store i8 %i.df, ptr %i.bo, align 8, !alias.scope !24772
  store i64 15, ptr %i.d, align 8, !alias.scope !24772
  br label %.noexc149

bb.ag:                                            ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !24782, !nonnull !152, !align !156, !noundef !152
  store ptr %i.dh, ptr %i.bn, align 8, !alias.scope !24772
  store i64 16, ptr %i.d, align 8, !alias.scope !24772
  br label %.noexc149

bb.ah:                                            ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !24773, !noundef !152
  store i64 %i.dj, ptr %i.bn, align 8, !alias.scope !24772
  store i64 17, ptr %i.d, align 8, !alias.scope !24772
  br label %.noexc149

.sink.split.i:                                    ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  invoke fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he1d6ad4577a0fdeeE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk)
          to label %.noexc155 unwind label %bb.al

.noexc155:                                        ; preds = %bb.v, %.sink.split.i
  store i64 %i.bu, ptr %i.a, align 8, !alias.scope !24783, !noalias !24775
  %i.dl = load ptr, ptr %i.cf, align 8, !alias.scope !24784, !nonnull !152, !align !156, !noundef !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.cg, i64 20, i1 false), !alias.scope !24775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !24773
  store ptr %i.dl, ptr %i.br, align 8, !alias.scope !24772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24775
  br label %.noexc149

.noexc149:                                        ; preds = %.noexc155, %bb.ah, %bb.ag, %bb.af, %"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..clone..Clone$GT$5clone17h68f003267ce0c4f1E.exit.i", %"_ZN77_$LT$nickel_lang_parser..ast..typ..EnumRows$u20$as$u20$core..clone..Clone$GT$5clone17h6161ee199924fa65E.exit.i", %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !noalias !24785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24785
  store i8 %i.r, ptr %i.c, align 1, !noalias !24786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24786
  store ptr %2, ptr %i.b, align 8, !noalias !24786
  store ptr %3, ptr %i.bl, align 8, !noalias !24786
  store ptr %i.c, ptr %i.bm, align 8, !noalias !24786
  invoke fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$8traverse17h7e55e1ba59173040E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.d, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(24) %i.b, i1 noundef zeroext %4)
          to label %.noexc150 unwind label %bb.al, !inline_history !24742

.noexc150:                                        ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24785
  %.sroa.035.0.copyload.i140 = load i64, ptr %i.e, align 8, !noalias !24785 ; 2 uses
  %i.dn = and i64 %.sroa.035.0.copyload.i140, -2
  %switch.i141 = icmp eq i64 %i.dn, 18
  br i1 %switch.i141, label %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1a3a7a053486322dE.exit.i.thread.i147", label %bb.ai

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1a3a7a053486322dE.exit.i.thread.i147": ; preds = %.noexc150
  %i.do = icmp eq ptr %i.bt, %i.y
  br i1 %i.do, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i", label %bb.k

bb.ai:                                            ; preds = %.noexc150
  %.sroa.436.0.copyload.le.i142 = load ptr, ptr %.sroa.436.0..sroa_idx.i137, align 8, !noalias !24785
  %.sroa.537.0.copyload.le.i143 = load i64, ptr %.sroa.537.0..sroa_idx.i138, align 8, !noalias !24785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx.i144, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.638.0..sroa_idx.i139, i64 80, i1 false), !noalias !24787
  store i64 %.sroa.035.0.copyload.i140, ptr %i.j, align 8, !alias.scope !24771
  store ptr %.sroa.436.0.copyload.le.i142, ptr %.sroa.4.0..sroa_idx.i145, align 8, !alias.scope !24771
  store i64 %.sroa.537.0.copyload.le.i143, ptr %.sroa.5.0..sroa_idx.i146, align 8, !alias.scope !24771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dp = icmp samesign ult i64 %storemerge201, 88686269585142076
  call void @llvm.assume(i1 %i.dp), !noalias !24788
  %i.dq = load i64, ptr %i.k, align 8, !range !153, !alias.scope !24789, !noalias !24770, !noundef !152
  %i.dr = icmp eq i64 %storemerge201, %i.dq
  br i1 %i.dr, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i_crit_edge", %bb.ai
  %i.ds = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i_crit_edge" ], [ %.sroa.573.0.copyload75203, %bb.ai ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [104 x i8], ptr %i.ds, i64 %storemerge201
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  %i.du = add nuw nsw i64 %storemerge201, 1       ; 3 uses
  store i64 %i.du, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !24770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dv = icmp eq ptr %i.bt, %i.y
  br i1 %i.dv, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i", label %.lr.ph.i136

bb.aj:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7db6833b9f220b37E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.j) #86
  br label %.body.i

bb.ak:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %storemerge201, i64 noundef 1, i64 noundef 8, i64 noundef 104)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i_crit_edge" unwind label %bb.aj, !noalias !24769, !inline_history !24691

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i_crit_edge": ; preds = %bb.ak
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !24789, !noalias !24770
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i", %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1a3a7a053486322dE.exit.i.thread.i147", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %storemerge196 = phi i64 [ %storemerge201, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1a3a7a053486322dE.exit.i.thread.i147" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ], [ %i.du, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i" ]
  %.sroa.573.0.copyload75189 = phi ptr [ %.sroa.573.0.copyload75203, %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h1a3a7a053486322dE.exit.i.thread.i147" ], [ %i.bh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ], [ %i.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4bf1523442a1b3a7E.exit.i" ]
  store i64 18, ptr %i.j, align 8, !alias.scope !24771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.071.0.copyload72 = load i64, ptr %i.k, align 8, !noalias !24790
  br label %.noexc.i

bb.al:                                            ; preds = %.sink.split.i, %.noexc149
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aj, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dx, %bb.al ], [ %i.dw, %bb.aj ]
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h71338fe344c84ecbE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #86, !noalias !24765, !inline_history !24747
  br label %.body

bb.am:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.thread.i", %bb.ao, %bb.an
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17he07668ff65cb2cd6E"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #86, !noalias !24791, !inline_history !24750
  br label %.body

.noexc.i:                                         ; preds = %.noexc39.thread, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i"
  %.sroa.676.0 = phi i64 [ %storemerge196, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i" ], [ 0, %.noexc39.thread ] ; 6 uses
  %.sroa.573.0 = phi ptr [ %.sroa.573.0.copyload75189, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i" ], [ inttoptr (i64 8 to ptr), %.noexc39.thread ] ; 6 uses
  %.sroa.071.0 = phi i64 [ %.sroa.071.0.copyload72, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hd39a65fab578f8bfE.exit.i" ], [ 0, %.noexc39.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !24762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24792
  %i.dz = icmp samesign ult i64 %.sroa.676.0, 88686269585142076
  call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [104 x i8], ptr %.sroa.573.0, i64 %.sroa.676.0 ; 2 uses
  store ptr %.sroa.573.0, ptr %i.n, align 8, !alias.scope !24793
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.071.0, ptr %i.eb, align 8, !alias.scope !24793
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %.sroa.573.0, ptr %i.ec, align 8, !alias.scope !24793
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ea, ptr %i.ed, align 8, !alias.scope !24793
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.573.0) ]
  %.idx = mul nuw nsw i64 %.sroa.676.0, 104       ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = and i64 %i.ej, 7
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr i8, ptr %i.eh, i64 %i.el  ; 3 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ei to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult ptr %i.em, %i.ei
  %i.er = icmp ugt i64 %.idx, %i.ep
  %or.cond.i.i = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i.i, label %bb.an, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i": ; preds = %.noexc.i
  %i.es = sub nsw i64 0, %.idx
  %i.et = getelementptr i8, ptr %i.em, i64 %i.es  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  store ptr %i.et, ptr %i.eg, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"

bb.an:                                            ; preds = %.noexc.i
  %i.eu = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc3.i unwind label %bb.am, !inline_history !24750 ; 2 uses

.noexc3.i:                                        ; preds = %bb.an
  %.not5.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not5.i.i.i, label %bb.ao, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", !prof !154

bb.ao:                                            ; preds = %.noexc3.i
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i unwind label %bb.am, !inline_history !24750

.noexc4.i:                                        ; preds = %bb.ao
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i", %.noexc3.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.et, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i" ], [ %i.eu, %.noexc3.i ] ; 2 uses
  %.not119 = icmp eq i64 %.sroa.676.0, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", %.noexc5.i
  %.sroa.04.0.i.i118 = phi i64 [ %i.ex, %.noexc5.i ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 2 uses
  %.val.i113117 = phi ptr [ %5, %.noexc5.i ], [ %.sroa.573.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.461)
  %i.ev = icmp eq ptr %.val.i113117, %i.ea
  br i1 %i.ev, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.i": ; preds = %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %.val.i113117, i64 104 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.val.i113117, align 8, !noalias !24794 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, 18
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.thread.i", label %.noexc5.i, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.i", %.lr.ph
  %6 = phi ptr [ %5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.i" ], [ %.val.i113117, %.lr.ph ]
  store ptr %6, ptr %i.ec, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc33 unwind label %bb.am

.noexc33:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.thread.i"
  unreachable

.noexc5.i:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h24450017547e1f9dE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val.i113117, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.461, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2.i, i64 96, i1 false)
  %i.ew = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.04.0.i.i118 ; 2 uses
  %i.ex = add nuw nsw i64 %.sroa.04.0.i.i118, 1   ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.ew, align 8, !noalias !24791
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.461.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.461, i64 96, i1 false), !noalias !24791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461)
  %exitcond.not = icmp eq i64 %i.ex, %.sroa.676.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.ap:                                            ; preds = %.noexc, %bb.d
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %.body.i, %bb.ap, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i, %bb.h, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.dy, %bb.am ], [ %i.ey, %bb.ap ], [ %eh.lpad-body.i, %.body.i ], [ %i.ai, %bb.e ], [ %i.ai, %bb.f ], [ %i.ai, %bb.g ], [ %i.ai, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ], [ %i.ai, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17hbe242b88241469a3E.exit.sink.split.i.i.i" ], [ %i.ai, %bb.h ], [ %i.ai, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ]
  call void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17hda895e25b5b908dcE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.q) #86
  resume { ptr, i32 } %eh.lpad-body

._crit_edge:                                      ; preds = %.noexc5.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"
  %.lcssa = phi ptr [ %.sroa.573.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ], [ %5, %.noexc5.i ]
  store ptr %.lcssa, ptr %i.ec, align 8
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17he07668ff65cb2cd6E"(ptr noalias noundef align 8 dereferenceable(32) %i.n), !noalias !24791, !inline_history !24750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !24792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.676.0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN136_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h7f7cbdef5774b206E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !24795 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.val = load ptr, ptr %1, align 8, !nonnull !152, !noundef !152 ; 3 uses
  %i.b = ptrtoint ptr %.val to i64
  %i.c = and i64 %i.b, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %..i, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit.thread [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !157

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.val, align 8, !noundef !152 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask.i = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask.i, 792633534417207296
  br i1 %i.f, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit, label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %0, align 8, !nonnull !152, !align !170, !noundef !152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !152, !align !156, !noundef !152
  %i.k = tail call fastcc noundef ptr @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$12traverse_ref17hb8ac126849f2e9c7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g, ptr noundef nonnull align 1 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2) ; 2 uses
  %.not5 = icmp eq ptr %i.k, null
  %. = select i1 %.not5, i64 1, i64 3
  br label %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit.thread

_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit.thread: ; preds = %bb.a, %bb.c, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit
  %.sroa.4.1 = phi ptr [ %i.k, %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.1 = phi i64 [ %., %_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h013e6edbeafddef1E.exit ], [ 1, %bb.c ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN136_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse28_$u7b$$u7b$closure$u7d$$u7d$17hc2ea7022fe854472E"(ptr nofree readnone captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !24800 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.h, align 8
  %i.i = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.j = and i64 %i.i, 3                          ; 3 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2)
  switch i64 %..i, label %bb.b [
    i64 2, label %.invoke
    i64 0, label %bb.c
  ], !prof !157

.invoke:                                          ; preds = %bb.b, %bb.a
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %i.j, 1
  br i1 %i.k, label %.invoke, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i, !prof !154

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i: ; preds = %bb.b
  %.not.not.i.i = icmp eq i64 %i.j, 0
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32
  %.sroa.3.0.i.i = select i1 %.not.not.i.i, i32 undef, i32 %i.m
  %i.n = trunc i64 %i.i to i1
  br i1 %i.n, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit, label %bb.d, !prof !161

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noalias !24801, !noundef !152
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit

bb.d:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.noexc13 unwind label %bb.o

.noexc13:                                         ; preds = %bb.d
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit: ; preds = %bb.c, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i
  %.sroa.0.0.i = phi i32 [ %i.p, %bb.c ], [ %.sroa.3.0.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue7content17h5471752e14fb6256E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %0)
  %i.q = load i64, ptr %i.g, align 8, !range !247, !noundef !152 ; 2 uses
  %i.r = icmp ne i64 %i.q, 23
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 29
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !152, !noundef !152 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !152, !noundef !152
  call void %i.w(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !152, !noundef !152 ; 2 uses
  store ptr %i.y, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.z = load i8, ptr %.8.val, align 1, !range !160, !noundef !152
  %i.aa = trunc nuw i8 %i.z to i1
  invoke fastcc void @"_ZN121_$LT$nickel_lang_core..typ..Type$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..typ..Type$GT$$GT$8traverse17h73ec4e38c95e1f09E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(104) %i.e, i1 noundef zeroext %i.aa)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !24802
  %i.ac = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #83, !noalias !24802 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.k, !prof !154

bb.g:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..eval..value..TypeData$GT$17ha5899b2ca6fdbc38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.c) #86
          to label %.thread unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24802
  store ptr @760, ptr %i.b, align 8, !noalias !24802
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.af, align 8, !noalias !24802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ag, align 8, !noalias !24802
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8, !noalias !24802
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ai, align 8, !noalias !24802
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #82
          to label %bb.i unwind label %bb.g, !noalias !24802

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !24802
  unreachable

bb.k:                                             ; preds = %bb.f
  store i64 792633534417207297, ptr %i.ac, align 8, !noalias !24802
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.sroa.0.0.i, ptr %i.ak, align 8, !noalias !24802
end_hunk_4
begin_hunk_5_@"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hf1ef4cf45ac1d46eE":bb.a
  %i.az = load i64, ptr %i.ay, align 8, !noundef !152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0160, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %i.az
  %i.bb = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17habd50c221ed41190E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.ax, ptr noundef %i.ba, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4) ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !34439, !nonnull !152, !noundef !152 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !34439, !nonnull !152, !noundef !152 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !noalias !34439, !nonnull !152, !noundef !152 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = and i64 %i.bj, 7
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bl  ; 3 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult ptr %i.bm, %i.bi
  %i.br = icmp ult i64 %i.bp, 32
  %or.cond.i133 = or i1 %i.bq, %i.br
  br i1 %or.cond.i133, label %bb.k, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit135"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit135": ; preds = %bb.j
  %i.bs = getelementptr i8, ptr %i.bm, i64 -32    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ], !noalias !34439
  store ptr %i.bs, ptr %i.bg, align 8, !noalias !34439
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit"

bb.k:                                             ; preds = %bb.j
  %i.bt = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 32), !noalias !34439 ; 2 uses
  %.not5.i = icmp eq ptr %i.bt, null
  br i1 %.not5.i, label %bb.l, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit", !prof !154

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34439
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit135", %bb.k
  %.sroa.0.0.i = phi ptr [ %i.bs, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit135" ], [ %i.bt, %bb.k ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0160, i64 16, i1 false)
  %.sroa.4201.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store ptr %i.bc, ptr %.sroa.4201.0..sroa.0.0.i.sroa_idx, align 8, !noalias !34439
  %.sroa.5202.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  store i64 %i.bd, ptr %.sroa.5202.0..sroa.0.0.i.sroa_idx, align 8, !noalias !34439
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0160)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.874.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.bu, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 6, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i, ptr %.sroa.672.0..sroa_idx, align 8
  br label %bb.ad

bb.m:                                             ; preds = %bb.d
  br label %.noexc.i

bb.n:                                             ; preds = %bb.d
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.685, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.685.0..sroa_idx, i64 16, i1 false)
  br label %.noexc.i

common.resume:                                    ; preds = %bb.p, %.body.i, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.o ], [ %eh.lpad-body.i, %.body.i ], [ %i.by, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.thread.i", %bb.aa, %bb.z
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$$GT$17h3824b589478bfc56E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #86, !noalias !34440, !inline_history !34388
  br label %common.resume

.noexc.i:                                         ; preds = %bb.d, %bb.n, %bb.m
  %.sroa.083.0 = phi i32 [ %i.x, %bb.n ], [ 4, %bb.m ], [ 3, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw [272 x i8], ptr %i.t, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %2, ptr %i.i, align 8, !noalias !34441
  store i8 %i.n, ptr %i.h, align 1, !noalias !34441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34442
  store ptr %i.t, ptr %i.f, align 8, !alias.scope !34443, !noalias !34444
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bw, ptr %.sroa.4244.0..sroa_idx, align 8, !alias.scope !34443, !noalias !34444
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %.sroa.5245.0..sroa_idx, align 8, !alias.scope !34443, !noalias !34444
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %3, ptr %.sroa.6246.0..sroa_idx, align 8, !alias.scope !34443, !noalias !34444
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %.sroa.7247.0..sroa_idx, align 8, !alias.scope !34443, !noalias !34444
  %.sroa.8248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.a, ptr %.sroa.8248.0..sroa_idx, align 8, !alias.scope !34443, !noalias !34444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34445
  call fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4ad305a367e70dc5E"(ptr noalias noundef align 8 captures(address) dereferenceable(272) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f), !noalias !34446, !inline_history !34413
  %i.bx = load i64, ptr %i.d, align 8, !range !165, !noalias !34447, !noundef !152
  %.not.i.i = icmp eq i64 %i.bx, 19
  br i1 %.not.i.i, label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2ed27f1db3bede82E.exit", label %bb.q

bb.p:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha09f899492b71283E"(ptr noalias noundef align 8 dereferenceable(272) %i.d) #86, !noalias !34447, !inline_history !34414
  br label %common.resume

bb.q:                                             ; preds = %.noexc.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !34448, !inline_history !34414
  %i.bz = call noundef align 8 dereferenceable_or_null(1088) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1088, i64 noundef range(i64 1, 9) 8) #83, !noalias !34448, !inline_history !34414 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 1088, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc1.i unwind label %bb.p, !noalias !34447, !inline_history !34414

.noexc1.i:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bz, ptr noundef nonnull align 8 dereferenceable(272) %i.d, i64 272, i1 false), !noalias !34447
  store i64 4, ptr %i.e, align 8, !noalias !34445
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !34445
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !34445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !34449
  br label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i", %bb.s
  %.sroa.5.0.copyload = phi ptr [ %i.cf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i" ], [ %i.bz, %bb.s ] ; 2 uses
  %.sroa.7.0.copyload = phi i64 [ %i.ch, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i" ], [ 1, %bb.s ] ; 6 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4ad305a367e70dc5E"(ptr noalias noundef align 8 captures(address) dereferenceable(272) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc.i284 unwind label %bb.x, !noalias !34447, !inline_history !34419

.noexc.i284:                                      ; preds = %bb.t
  %i.cb = load i64, ptr %i.b, align 8, !range !165, !noalias !34447, !noundef !152
  %.not.i.i.i = icmp eq i64 %i.cb, 19
  br i1 %.not.i.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.noexc.i284
  %i.cc = icmp samesign ult i64 %.sroa.7.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.cc), !noalias !34450
  %i.cd = load i64, ptr %i.e, align 8, !range !153, !alias.scope !34451, !noalias !34452, !noundef !152
  %i.ce = icmp eq i64 %.sroa.7.0.copyload, %i.cd
  br i1 %i.ce, label %bb.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit_crit_edge.i", %bb.u
  %i.cf = phi ptr [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit_crit_edge.i" ], [ %.sroa.5.0.copyload, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [272 x i8], ptr %i.cf, i64 %.sroa.7.0.copyload
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.cg, ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !34447
  %i.ch = add nuw nsw i64 %.sroa.7.0.copyload, 1  ; 2 uses
  store i64 %i.ch, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !34451, !noalias !34452
  br label %bb.t

bb.v:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha09f899492b71283E"(ptr noalias noundef align 8 dereferenceable(272) %i.b) #86, !noalias !34447, !inline_history !34414
  br label %.body.i

bb.w:                                             ; preds = %bb.u
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sroa.7.0.copyload, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 272)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit_crit_edge.i" unwind label %bb.v, !noalias !34447, !inline_history !34414

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit_crit_edge.i": ; preds = %bb.w
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !34451, !noalias !34452
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h62b12275d335fd0fE.exit.i"

bb.x:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cj, %bb.x ], [ %i.ci, %bb.v ]
  call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$$GT$17h732a05b7ab92f509E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #86, !noalias !34452, !inline_history !34413
  br label %common.resume

bb.y:                                             ; preds = %.noexc.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34445
  %.sroa.0285.0.copyload = load i64, ptr %i.e, align 8, !noalias !34453
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2ed27f1db3bede82E.exit"

"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2ed27f1db3bede82E.exit": ; preds = %.noexc.i, %bb.y
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.y ], [ 0, %.noexc.i ] ; 6 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.y ], [ inttoptr (i64 8 to ptr), %.noexc.i ] ; 6 uses
  %.sroa.0285.0 = phi i64 [ %.sroa.0285.0.copyload, %bb.y ], [ 0, %.noexc.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34442
  %i.ck = load ptr, ptr %i.i, align 8, !noalias !34441, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34454
  %i.cl = icmp samesign ult i64 %.sroa.7.0, 33909456017848441
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [272 x i8], ptr %.sroa.5.0, i64 %.sroa.7.0 ; 3 uses
  store ptr %.sroa.5.0, ptr %i.g, align 8, !alias.scope !34455
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0285.0, ptr %i.cn, align 8, !alias.scope !34455
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.5.0, ptr %i.co, align 8, !alias.scope !34455
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cm, ptr %i.cp, align 8, !alias.scope !34455
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %.idx = mul nuw nsw i64 %.sroa.7.0, 272         ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = and i64 %i.cv, 7
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr i8, ptr %i.ct, i64 %i.cx  ; 3 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ult ptr %i.cy, %i.cu
  %i.dd = icmp ugt i64 %.idx, %i.db
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %bb.z, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i": ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2ed27f1db3bede82E.exit"
  %i.de = sub nsw i64 0, %.idx
  %i.df = getelementptr i8, ptr %i.cy, i64 %i.de  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  store ptr %i.df, ptr %i.cs, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"

bb.z:                                             ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h2ed27f1db3bede82E.exit"
  %i.dg = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %i.ck, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc3.i unwind label %bb.o, !inline_history !34388 ; 2 uses

.noexc3.i:                                        ; preds = %bb.z
  %.not5.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not5.i.i.i, label %bb.aa, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", !prof !154

bb.aa:                                            ; preds = %.noexc3.i
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4.i unwind label %bb.o, !inline_history !34388

.noexc4.i:                                        ; preds = %bb.aa
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i", %.noexc3.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.df, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit.i" ], [ %i.dg, %.noexc3.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3f8c585c9fab3220E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i", %.noexc5.i
  %.sroa.04.0.i.i267 = phi i64 [ %i.dj, %.noexc5.i ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 2 uses
  %.val.i249266 = phi ptr [ %5, %.noexc5.i ], [ %.sroa.5.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4223)
  %i.dh = icmp eq ptr %.val.i249266, %i.cm
  br i1 %i.dh, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.i": ; preds = %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %.val.i249266, i64 272 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.val.i249266, align 8, !noalias !34456 ; 2 uses
  %.not.i137 = icmp eq i64 %.sroa.0.0.copyload1.i, 19
  br i1 %.not.i137, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.thread.i", label %.noexc5.i, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.i", %.lr.ph
  %6 = phi ptr [ %5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.i" ], [ %i.cm, %.lr.ph ]
  store ptr %6, ptr %i.co, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.thread.i"
  unreachable

.noexc5.i:                                        ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8a710e0d87e2dc98E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val.i249266, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4223, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx2.i, i64 264, i1 false)
  %i.di = getelementptr inbounds nuw [272 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.04.0.i.i267 ; 2 uses
  %i.dj = add nuw nsw i64 %.sroa.04.0.i.i267, 1   ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.di, align 8, !noalias !34440
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4223.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4223, i64 264, i1 false), !noalias !34440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4223)
  %exitcond.not = icmp eq i64 %i.dj, %.sroa.7.0
  br i1 %exitcond.not, label %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3f8c585c9fab3220E.exit, label %.lr.ph

_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3f8c585c9fab3220E.exit: ; preds = %.noexc5.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i"
  %.lcssa = phi ptr [ %.sroa.5.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i" ], [ %5, %.noexc5.i ]
  store ptr %.lcssa, ptr %i.co, align 8
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$$GT$17h3824b589478bfc56E"(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !34440, !inline_history !34388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !34457, !nonnull !152, !noundef !152 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !34457, !nonnull !152, !noundef !152 ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !noalias !34457, !nonnull !152, !noundef !152 ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = and i64 %i.dp, 7
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr i8, ptr %i.dn, i64 %i.dr  ; 3 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ult ptr %i.ds, %i.do
  %i.dx = icmp ult i64 %i.dv, 56
  %or.cond.i = or i1 %i.dw, %i.dx
  br i1 %or.cond.i, label %bb.ab, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit": ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3f8c585c9fab3220E.exit
  %i.dy = getelementptr i8, ptr %i.ds, i64 -56    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ], !noalias !34457
  store ptr %i.dy, ptr %i.dm, align 8, !noalias !34457
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit126"

bb.ab:                                            ; preds = %_ZN18nickel_lang_parser8traverse19traverse_alloc_many17h3f8c585c9fab3220E.exit
  %i.dz = call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 56), !noalias !34457 ; 2 uses
  %.not5.i125 = icmp eq ptr %i.dz, null
  br i1 %.not5.i125, label %bb.ac, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit126", !prof !154

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34457
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit126": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit", %bb.ab
  %.sroa.0.0.i124 = phi ptr [ %i.dy, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit" ], [ %i.dz, %bb.ab ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i124, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %.sroa.7173.0..sroa.0.0.i124.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i124, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7173.0..sroa.0.0.i124.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.685, i64 16, i1 false)
  %.sroa.4170.0..sroa.0.0.i124.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i124, i64 16
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.4170.0..sroa.0.0.i124.sroa_idx, align 8, !noalias !34457
  %.sroa.5171.0..sroa.0.0.i124.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i124, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.5171.0..sroa.0.0.i124.sroa_idx, align 8, !noalias !34457
  %.sroa.6172.0..sroa.0.0.i124.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i124, i64 32
  store i32 %.sroa.083.0, ptr %.sroa.6172.0..sroa.0.0.i124.sroa_idx, align 8, !noalias !34457
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.ea, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i124, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit118", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit122", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit126", %bb.c
  ret void

bb.ae:                                            ; preds = %bb.e
  br label %bb.ag

bb.af:                                            ; preds = %bb.e
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.681, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.681.0..sroa_idx, i64 16, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.af, %bb.ae
  %.sroa.079.0 = phi i32 [ %i.ah, %bb.af ], [ 4, %bb.ae ], [ 3, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0149)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0149, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.af
  %i.ec = tail call fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17habd50c221ed41190E(ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.ad, ptr noundef %i.eb, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4) ; 2 uses
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !34458, !nonnull !152, !noundef !152 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !34458, !nonnull !152, !noundef !152 ; 2 uses
  %i.ej = load ptr, ptr %i.eg, align 8, !noalias !34458, !nonnull !152, !noundef !152 ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = and i64 %i.ek, 7
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr i8, ptr %i.ei, i64 %i.em  ; 3 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.ej to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult ptr %i.en, %i.ej
  %i.es = icmp ult i64 %i.eq, 56
  %or.cond.i127 = or i1 %i.er, %i.es
  br i1 %or.cond.i127, label %bb.ah, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit129"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit129": ; preds = %bb.ag
  %i.et = getelementptr i8, ptr %i.en, i64 -56    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ], !noalias !34458
  store ptr %i.et, ptr %i.eh, align 8, !noalias !34458
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit122"

bb.ah:                                            ; preds = %bb.ag
  %i.eu = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 56), !noalias !34458 ; 2 uses
  %.not5.i121 = icmp eq ptr %i.eu, null
  br i1 %.not5.i121, label %bb.ai, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit122", !prof !154

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34458
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit122": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit129", %bb.ah
  %.sroa.0.0.i120 = phi ptr [ %i.et, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit129" ], [ %i.eu, %bb.ah ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i120, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0149, i64 16, i1 false)
  %.sroa.7185.0..sroa.0.0.i120.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i120, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7185.0..sroa.0.0.i120.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.681, i64 16, i1 false)
  %.sroa.4182.0..sroa.0.0.i120.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i120, i64 16
  store ptr %i.ed, ptr %.sroa.4182.0..sroa.0.0.i120.sroa_idx, align 8, !noalias !34458
  %.sroa.5183.0..sroa.0.0.i120.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i120, i64 24
  store i64 %i.ee, ptr %.sroa.5183.0..sroa.0.0.i120.sroa_idx, align 8, !noalias !34458
  %.sroa.6184.0..sroa.0.0.i120.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i120, i64 32
  store i32 %.sroa.079.0, ptr %.sroa.6184.0..sroa.0.0.i120.sroa_idx, align 8, !noalias !34458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0149)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.831.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.ev, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 3, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i120, ptr %.sroa.629.0..sroa_idx, align 8
  br label %bb.ad

bb.aj:                                            ; preds = %bb.h, %bb.i
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.488.0..sroa_idx, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.4.0..sroa_idx20.i, i64 12, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.12.sroa.3, ptr noundef nonnull align 8 dereferenceable(20) %i.ew, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %.sroa.488.sroa.5.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.488.sroa.5.0..sroa.488.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.i, i64 20, i1 false)
  %.sroa.488.sroa.7.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.488.sroa.7.0..sroa.488.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  store i32 %i.an, ptr %i.j, align 8
  %.sroa.488.sroa.4.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.ap, ptr %.sroa.488.sroa.4.0..sroa.488.0..sroa_idx.sroa_idx, align 8
  %.sroa.488.sroa.6.0..sroa.488.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 %i.as, ptr %.sroa.488.sroa.6.0..sroa.488.0..sroa_idx.sroa_idx, align 8
  call fastcc void @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hf1ef4cf45ac1d46eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4), !inline_history !34434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.038.0.copyload = load i32, ptr %i.k, align 8 ; 2 uses
  %.not113 = icmp eq i32 %.sroa.038.0.copyload, 3
  br i1 %.not113, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.thread, %bb.aj, %bb.an
  %.sroa.093.0 = phi i32 [ %.sroa.038.0.copyload, %bb.an ], [ 3, %bb.aj ], [ 3, %.thread ]
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !34459, !nonnull !152, !noundef !152 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !34459, !nonnull !152, !noundef !152 ; 2 uses
  %i.fb = load ptr, ptr %i.ey, align 8, !noalias !34459, !nonnull !152, !noundef !152 ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = and i64 %i.fc, 7
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = getelementptr i8, ptr %i.fa, i64 %i.fe  ; 3 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fb to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp ult ptr %i.ff, %i.fb
  %i.fk = icmp ult i64 %i.fi, 104
  %or.cond.i130 = or i1 %i.fj, %i.fk
  br i1 %or.cond.i130, label %bb.al, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit132"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit132": ; preds = %bb.ak
  %i.fl = getelementptr i8, ptr %i.ff, i64 -104   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ], !noalias !34459
  store ptr %i.fl, ptr %i.ez, align 8, !noalias !34459
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit118"

bb.al:                                            ; preds = %bb.ak
  %i.fm = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef 104), !noalias !34459 ; 2 uses
  %.not5.i117 = icmp eq ptr %i.fm, null
  br i1 %.not5.i117, label %bb.am, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit118", !prof !154

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34459
  unreachable
end_hunk_5
begin_hunk_6_@"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE":bb.a
  %.not.i.i39 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i39, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread", label %bb.z

bb.z:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6e968d8991238f39E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34678
  %i.ce = load ptr, ptr %.sroa.582.0..sroa_idx, align 8, !alias.scope !34679, !noalias !34676, !nonnull !152, !align !156, !noundef !152
  %i.cf = load ptr, ptr %.sroa.683.0..sroa_idx, align 8, !alias.scope !34679, !noalias !34676, !nonnull !152, !align !156, !noundef !152
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cd)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i" unwind label %bb.al, !noalias !34674, !inline_history !34600

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i": ; preds = %bb.z
  %.sroa.0102.0.copyload = load i32, ptr %i.d, align 8, !noalias !34680 ; 2 uses
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7104, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7104.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34678
  %.not.i40 = icmp eq i32 %.sroa.0102.0.copyload, 3
  br i1 %.not.i40, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread", label %bb.ab

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread": ; preds = %bb.x, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6e968d8991238f39E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34674
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !34673, !noalias !34676 ; 2 uses
  %i.cg = icmp eq i64 %.val9.i, 0
  br i1 %i.cg, label %.noexc, label %bb.aa

bb.aa:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread"
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val10.i = load ptr, ptr %i.ch, align 8, !alias.scope !34673, !noalias !34676, !nonnull !152, !noundef !152
  %i.ci = shl nuw i64 %.val9.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34674, !inline_history !34594
  br label %.noexc

bb.ab:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !34681, !inline_history !34594
  %i.cj = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, 9) 8) #83, !noalias !34681, !inline_history !34594 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.ac, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 192, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc12.i unwind label %bb.al, !noalias !34674, !inline_history !34594

.noexc12.i:                                       ; preds = %bb.ac
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i": ; preds = %bb.ab
  %.sroa.4112.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4112.0..sroa.10.0.i.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7104, i64 44, i1 false)
  store i32 %.sroa.0102.0.copyload, ptr %i.cj, align 8, !noalias !34674
  store i64 4, ptr %i.f, align 8, !noalias !34674
  %.sroa.4.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i42, align 8, !noalias !34674
  %.sroa.6.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i43, align 8, !noalias !34674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !34677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34682), !noalias !34676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34683), !noalias !34676
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !34684, !noalias !34685, !noundef !152 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread", label %.lr.ph246

.lr.ph246:                                        ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph246, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"
  %i.cq = phi ptr [ %i.cj, %.lr.ph246 ], [ %i.dd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ]
  %i.cr = phi i64 [ 1, %.lr.ph246 ], [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ] ; 7 uses
  %i.cs = phi i64 [ %i.cm, %.lr.ph246 ], [ %i.dg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ]
  %i.ct = add i64 %i.cs, -1
  store i64 %i.ct, ptr %i.cl, align 8, !alias.scope !34684, !noalias !34685
  %i.cu = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha56621c27cd2fb5bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc.i.i unwind label %bb.ah ; 2 uses

.noexc.i.i:                                       ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread", label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34686
  %i.cv = load ptr, ptr %i.co, align 8, !alias.scope !34687, !noalias !34685, !nonnull !152, !align !156, !noundef !152
  %i.cw = load ptr, ptr %i.cp, align 8, !alias.scope !34687, !noalias !34685, !nonnull !152, !align !156, !noundef !152
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i" unwind label %bb.ah, !inline_history !34615

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i": ; preds = %bb.ae
  %.sroa.0113.0.copyload = load i32, ptr %i.c, align 8, !noalias !34688 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7115, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7115.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34686
  %.not.i18.i = icmp eq i32 %.sroa.0113.0.copyload, 3
  br i1 %.not.i18.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread", label %bb.af

bb.af:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i"
  %i.cx = icmp samesign ult i64 %i.cr, 192153584101141163
  tail call void @llvm.assume(i1 %i.cx), !noalias !34676
  %i.cy = load i64, ptr %i.f, align 8, !range !153, !alias.scope !34682, !noalias !34674, !noundef !152
  %i.cz = icmp eq i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.aj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i", %.noexc.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %.sroa.5.0.copyload = phi i64 [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ], [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ], [ %i.cr, %.noexc.i.i ], [ %i.cr, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i" ]
  %.val4.i.i = load i64, ptr %i.e, align 8, !alias.scope !34683, !noalias !34674 ; 2 uses
  %i.da = icmp eq i64 %.val4.i.i, 0
  br i1 %i.da, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread"
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val5.i.i = load ptr, ptr %i.db, align 8, !alias.scope !34683, !noalias !34674, !nonnull !152, !noundef !152
  %i.dc = shl nuw i64 %.val4.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34685, !inline_history !34616
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge", %bb.af
  %i.dd = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" ], [ %i.cq, %bb.af ] ; 2 uses
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4123)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4123, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7115, i64 44, i1 false)
  store i32 %.sroa.0113.0.copyload, ptr %i.de, align 8, !noalias !34685
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4123.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4123, i64 44, i1 false), !noalias !34685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4123)
  %i.df = add nuw nsw i64 %i.cr, 1                ; 3 uses
  store i64 %i.df, ptr %.sroa.6.0..sroa_idx.i43, align 8, !alias.scope !34682, !noalias !34674
  %i.dg = load i64, ptr %i.cl, align 8, !alias.scope !34684, !noalias !34685, !noundef !152 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread", label %bb.ad

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %bb.aj
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val6.i.i = load i64, ptr %i.e, align 8, !alias.scope !34683, !noalias !34674 ; 2 uses
  %i.dj = icmp eq i64 %.val6.i.i, 0
  br i1 %i.dj, label %"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val7.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !34683, !noalias !34674, !nonnull !152, !noundef !152
  %i.dl = shl nuw i64 %.val6.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34685, !inline_history !34616
  br label %"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i"

"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i": ; preds = %bb.ai, %bb.ah
  %.val.i = load i64, ptr %i.f, align 8, !noalias !34674 ; 2 uses
  %i.dm = icmp eq i64 %.val.i, 0
  br i1 %i.dm, label %common.resume, label %bb.ak

bb.aj:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cr, i64 noundef 1, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" unwind label %bb.ah, !noalias !34674, !inline_history !34616

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge": ; preds = %bb.aj
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i42, align 8, !alias.scope !34682, !noalias !34674
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i": ; preds = %bb.ag, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34674
  %.sroa.066.0.copyload = load i64, ptr %i.f, align 8, !noalias !34689
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i42, align 8, !noalias !34689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34674
  br label %.noexc

bb.ak:                                            ; preds = %"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i"
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i42, align 8, !noalias !34674, !nonnull !152, !noundef !152
  %i.dn = mul nuw i64 %.val.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34674, !inline_history !34594
  br label %common.resume

common.resume:                                    ; preds = %bb.an, %bb.ao, %"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i", %bb.ak, %bb.am, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.al ], [ %i.di, %bb.ak ], [ %i.di, %"_ZN4core3ptr380drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$..from_mainline..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h45030642e0d47185E.exit9.i.i" ], [ %i.do, %bb.am ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.an ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.ac, %bb.z, %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %i.u, align 8, !alias.scope !34673, !noalias !34676 ; 2 uses
  %i.dp = icmp eq i64 %.val7.i, 0
  br i1 %i.dp, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val8.i = load ptr, ptr %i.dq, align 8, !alias.scope !34673, !noalias !34676, !nonnull !152, !noundef !152
  %i.dr = shl nuw i64 %.val7.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.dr, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34674, !inline_history !34594
  br label %common.resume

bb.an:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", %bb.aq, %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = icmp eq i64 %.sroa.066.0, 0
  br i1 %i.dt, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = mul nuw i64 %.sroa.066.0, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34690
  br label %common.resume

.noexc:                                           ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread", %bb.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i"
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i" ], [ 0, %bb.aa ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread" ] ; 6 uses
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i" ], [ inttoptr (i64 8 to ptr), %bb.aa ], [ inttoptr (i64 8 to ptr), %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread" ] ; 5 uses
  %.sroa.066.0 = phi i64 [ %.sroa.066.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17he9aaba1362ffe5faE.exit.i" ], [ 0, %bb.aa ], [ 0, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce391d8da6165a18E.exit.i.thread" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !34670
  %i.dv = icmp samesign ult i64 %.sroa.5.0, 192153584101141163
  tail call void @llvm.assume(i1 %i.dv)
  %4 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.3.0, i64 %.sroa.5.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  %.idx = mul nuw nsw i64 %.sroa.5.0, 48          ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ea = load ptr, ptr %i.dx, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = and i64 %i.eb, 7
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr i8, ptr %i.dz, i64 %i.ed  ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ea to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp ult ptr %i.ee, %i.ea
  %i.ej = icmp ugt i64 %.idx, %i.eh
  %or.cond.i = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond.i, label %bb.ap, label %.noexc10

.noexc10:                                         ; preds = %.noexc
  %i.ek = sub nsw i64 0, %.idx
  %i.el = getelementptr i8, ptr %i.ee, i64 %i.ek  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  store ptr %i.el, ptr %i.dy, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5"

bb.ap:                                            ; preds = %.noexc
  %i.em = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc11 unwind label %bb.an  ; 2 uses

.noexc11:                                         ; preds = %bb.ap
  %.not5.i.i8 = icmp eq ptr %i.em, null
  br i1 %.not5.i.i8, label %bb.aq, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5", !prof !154

bb.aq:                                            ; preds = %.noexc11
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc12 unwind label %bb.an

.noexc12:                                         ; preds = %bb.aq
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5": ; preds = %.noexc10, %.noexc11
  %.sroa.0.0.i.i6 = phi ptr [ %i.el, %.noexc10 ], [ %i.em, %.noexc11 ] ; 2 uses
  %.not251 = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not251, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph249

.lr.ph249:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5", %.noexc13
  %.sroa.04.0.i7248 = phi i64 [ %i.eq, %.noexc13 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5" ] ; 2 uses
  %.sroa.5.0155247 = phi ptr [ %i.eo, %.noexc13 ], [ %.sroa.3.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.479)
  %i.en = icmp eq ptr %.sroa.5.0155247, %4
  br i1 %i.en, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i": ; preds = %.lr.ph249
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.0155247, align 8, !noalias !34691 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %.noexc13, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i", %.lr.ph249
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc30 unwind label %bb.an

.noexc30:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i"
  unreachable

.noexc13:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.5.0155247, i64 48
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0155247, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.479, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i, i64 44, i1 false)
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i6, i64 %.sroa.04.0.i7248 ; 2 uses
  %i.eq = add nuw nsw i64 %.sroa.04.0.i7248, 1    ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.ep, align 8, !noalias !34692
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.479, i64 44, i1 false), !noalias !34692
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.479)
  %exitcond252.not = icmp eq i64 %i.eq, %.sroa.5.0
  br i1 %exitcond252.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph249

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit": ; preds = %.noexc13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i5"
  %i.er = icmp eq i64 %.sroa.066.0, 0
  br i1 %i.er, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit31", label %bb.ar

bb.ar:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit"
  %i.es = mul nuw i64 %.sroa.066.0, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !34693
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit31"

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit31": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.0.0.i.i6, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.5.0, ptr %i.eu, align 8
  store i8 13, ptr %i.ac, align 8
  br label %bb.o

bb.as:                                            ; preds = %bb.c
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ew, align 8
  store i8 13, ptr %i.ac, align 8
  br label %bb.o

bb.at:                                            ; preds = %bb.d
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !152 ; 6 uses
  %i.fb = getelementptr inbounds nuw [72 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = icmp samesign ugt i64 %i.fa, 32940614417338485
  %i.fd = mul nuw nsw i64 %i.fa, 280              ; 3 uses
  br i1 %i.fc, label %bb.au, label %bb.av, !prof !154

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34694
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !34694, !nonnull !152, !noundef !152 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !34694, !nonnull !152, !noundef !152 ; 2 uses
  %i.fi = load ptr, ptr %i.ff, align 8, !noalias !34694, !nonnull !152, !noundef !152 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = and i64 %i.fj, 7
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl  ; 3 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ult ptr %i.fm, %i.fi
  %i.fr = icmp ugt i64 %i.fd, %i.fp
  %or.cond.i14 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond.i14, label %bb.aw, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit17"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit17": ; preds = %bb.av
  %i.fs = sub nsw i64 0, %i.fd
  %i.ft = getelementptr i8, ptr %i.fm, i64 %i.fs  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ], !noalias !34694
  store ptr %i.ft, ptr %i.fg, align 8, !noalias !34694
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.aw:                                            ; preds = %bb.av
  %i.fu = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %i.fd), !noalias !34694 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.fu, null
  br i1 %.not5.i.i, label %bb.ax, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !34694
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit17", %bb.aw
  %.sroa.0.0.i.i = phi ptr [ %i.ft, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit17" ], [ %i.fu, %bb.aw ] ; 2 uses
  %.not250 = icmp eq i64 %i.fa, 0
  br i1 %.not250, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17h3c8700787999655fE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !nonnull !152
  %i.fz = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.9140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.10141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %.sroa.11142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.12143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 193
  %.sroa.13144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbf3198f656c9c4d4E.exit"
  %.sroa.04.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.he, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbf3198f656c9c4d4E.exit" ] ; 2 uses
  %.sroa.0148.0244 = phi ptr [ %i.ey, %.lr.ph ], [ %i.gb, %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hbf3198f656c9c4d4E.exit" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.489.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.489.sroa.0.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.489.sroa.0.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.489.sroa.0.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.489.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.0.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.0.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.0.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.686.sroa.5)
  %i.ga = icmp eq ptr %.sroa.0148.0244, %i.fb
  br i1 %i.ga, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h946bc4c18367a436E.exit.thread", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0148.0244, i64 72
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0148.0244, i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34695), !noalias !34696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0148.0244, i64 24 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !34695, !noalias !34697, !noundef !152 ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i36, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !34698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.gc, i64 16, i1 false), !noalias !34699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !34698
  %i.gf = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gg = and i64 %i.gf, 3                        ; 3 uses
  %..i49 = call i64 @llvm.umin.i64(i64 %i.gg, i64 2)
  switch i64 %..i49, label %bb.bc [
    i64 2, label %bb.bb
    i64 0, label %bb.be
  ], !prof !157

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !34700
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.gh = icmp samesign ugt i64 %i.gg, 1
  br i1 %i.gh, label %bb.bd, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i51, !prof !154

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82, !noalias !34700
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i51: ; preds = %bb.bc
  %.not.not.i.i52 = icmp eq i64 %i.gg, 0
  %i.gi = lshr i64 %i.gf, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %.sroa.3.0.i.i53 = select i1 %.not.not.i.i52, i32 undef, i32 %i.gj
  %i.gk = trunc i64 %i.gf to i1
  br i1 %i.gk, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit54, label %bb.bf, !prof !161

bb.be:                                            ; preds = %bb.ba
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !noalias !34700, !noundef !152
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit54

bb.bf:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i51
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82, !noalias !34700
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit54: ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i51, %bb.be
  %.sroa.0.0.i50 = phi i32 [ %i.gm, %bb.be ], [ %.sroa.3.0.i.i53, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i51 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34701)
  %i.gn = icmp eq i32 %.sroa.0.0.i50, -1
  br i1 %i.gn, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit54
  %i.go = and i32 %.sroa.0.0.i50, 2147483647
  %i.gp = zext nneg i32 %i.go to i64              ; 3 uses
  %i.gq = icmp ugt i64 %i.fw, %i.gp
  br i1 %i.gq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %i.fy, i64 %i.gp
  %i.gs = icmp slt i32 %.sroa.0.0.i50, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fz, ptr noundef nonnull align 4 dereferenceable(12) %i.gr, i64 12, i1 false), !noalias !34702
  %..i46 = zext i1 %i.gs to i32
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gp, i64 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1367) #82, !noalias !34703
  unreachable

.thread:                                          ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.gc, i64 16, i1 false), !noalias !34699
end_hunk_6
begin_hunk_7_@_ZN16nickel_lang_core9serialize4yaml15load_json_value17hfd41c4a4565256a9E:bb.a
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E"(ptr noalias noundef align 8 dereferenceable(136) %i.c) #86
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !range !203, !noundef !152 ; 2 uses
  %.not = icmp eq i32 %i.e, 25
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.0..sroa_idx, i64 16, i1 false)
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.211.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.58.0..sroa_idx, i64 52, i1 false)
  store i32 %i.e, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !69649)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !69649, !nonnull !152, !noundef !152 ; 2 uses
  %i.g = icmp eq ptr %.val.i, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.g, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.val.i, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !69649, !nonnull !152, !noundef !152 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.01.i.i.i, align 8, !noalias !69649, !nonnull !152, !noundef !152
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !69649, !noundef !152
  %i.n = load i64, ptr %i.k, align 8, !range !226, !noalias !69649, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef %i.n) #83, !noalias !69649
  %i.o = icmp eq ptr %i.i, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.o, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = invoke noundef nonnull ptr @"_ZN137_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..ast..compat..FromAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$8from_ast17hcf273254595730beE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  %i.r = invoke fastcc noundef nonnull ptr @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17haf18886c4974b621E"(ptr noundef nonnull %i.q, ptr noalias noundef nonnull align 1 %i.a, i1 noundef zeroext true)
          to label %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit unwind label %bb.b

_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i32 25, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !69650)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i17 = load ptr, ptr %i.t, align 8, !alias.scope !69650, !nonnull !152, !noundef !152 ; 2 uses
  %i.u = icmp eq ptr %.val.i17, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.u, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit, %.lr.ph.i.i.i18
  %.sroa.0.01.i.i.i19 = phi ptr [ %i.w, %.lr.ph.i.i.i18 ], [ %.val.i17, %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !69650, !nonnull !152, !noundef !152 ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.01.i.i.i19, align 8, !noalias !69650, !nonnull !152, !noundef !152
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !69650, !noundef !152
  %i.ab = load i64, ptr %i.y, align 8, !range !226, !noalias !69650, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.aa, i64 noundef %i.ab) #83, !noalias !69650
  %i.ac = icmp eq ptr %i.w, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.ac, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i18

"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit": ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i18, %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$typed_arena..Arena$LT$malachite_q..Rational$GT$$GT$17hf2f67c2e9c9d97a2E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$typed_arena..Arena$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h058ddf9fc6059c4cE"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16nickel_lang_core9serialize4yaml15load_yaml_value17h0283d61466f8bf4fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality !guid !69655 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc3new17h87503a9e6e73c0b1E(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.c)
  invoke void @_ZN16nickel_lang_core9serialize4yaml9load_yaml17h34968d481eb67e56E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, i32 %5, i1 noundef zeroext %6)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.e, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E"(ptr noalias noundef align 8 dereferenceable(136) %i.c) #86
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !range !203, !noundef !152 ; 2 uses
  %.not = icmp eq i32 %i.e, 25
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.69.0..sroa_idx, i64 16, i1 false)
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %.sroa.211.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.58.0..sroa_idx, i64 52, i1 false)
  store i32 %i.e, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !69656)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !69656, !nonnull !152, !noundef !152 ; 2 uses
  %i.g = icmp eq ptr %.val.i, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.g, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %.val.i, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !69656, !nonnull !152, !noundef !152 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.01.i.i.i, align 8, !noalias !69656, !nonnull !152, !noundef !152
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !69656, !noundef !152
  %i.n = load i64, ptr %i.k, align 8, !range !226, !noalias !69656, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.m, i64 noundef %i.n) #83, !noalias !69656
  %i.o = icmp eq ptr %i.i, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.o, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = invoke noundef nonnull ptr @"_ZN137_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..ast..compat..FromAst$LT$nickel_lang_parser..ast..Ast$GT$$GT$8from_ast17hcf273254595730beE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  %i.r = invoke fastcc noundef nonnull ptr @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17haf18886c4974b621E"(ptr noundef nonnull %i.q, ptr noalias noundef nonnull align 1 %i.a, i1 noundef zeroext true)
          to label %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit unwind label %bb.b

_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store i32 25, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !69657)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i17 = load ptr, ptr %i.t, align 8, !alias.scope !69657, !nonnull !152, !noundef !152 ; 2 uses
  %i.u = icmp eq ptr %.val.i17, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.u, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit, %.lr.ph.i.i.i18
  %.sroa.0.01.i.i.i19 = phi ptr [ %i.w, %.lr.ph.i.i.i18 ], [ %.val.i17, %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !noalias !69657, !nonnull !152, !noundef !152 ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.01.i.i.i19, align 8, !noalias !69657, !nonnull !152, !noundef !152
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i19, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !69657, !noundef !152
  %i.ab = load i64, ptr %i.y, align 8, !range !226, !noalias !69657, !noundef !152
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.aa, i64 noundef %i.ab) #83, !noalias !69657
  %i.ac = icmp eq ptr %i.w, @_ZN7bumpalo11EMPTY_CHUNK17h495e90151685e09fE
  br i1 %i.ac, label %"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit", label %.lr.ph.i.i.i18

"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..alloc..AstAlloc$GT$17h93e30b2bc4f96bf4E.exit": ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i18, %_ZN16nickel_lang_core9serialize4yaml11ast_to_term17h7d690b6748a7042cE.exit, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call fastcc void @"_ZN4core3ptr68drop_in_place$LT$typed_arena..Arena$LT$malachite_q..Rational$GT$$GT$17hf2f67c2e9c9d97a2E"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$typed_arena..Arena$LT$nickel_lang_parser..error..ParseError$GT$$GT$17h058ddf9fc6059c4cE"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core9serialize4yaml4Node6finish17hb20a08327253cc14E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, ptr noundef nonnull align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !69668 {
bb.a:
  %.sroa.4 = alloca [44 x i8], align 4            ; 4 uses
  %i.a = load i64, ptr %1, align 8, !range !176, !noundef !152 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %.noexc
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", %bb.f, %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.g, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = mul nuw i64 %.sroa.0.0.copyload, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !69669
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit"

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !152, !noundef !152 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = icmp ult i64 %.sroa.3.0.copyload, 192153584101141163
  tail call void @llvm.assume(i1 %i.k)
  %3 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  %.idx = mul nuw nsw i64 %.sroa.3.0.copyload, 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 7
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult ptr %i.t, %i.p
  %i.y = icmp ugt i64 %.idx, %i.w
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %bb.e, label %.noexc10

.noexc10:                                         ; preds = %.noexc
  %i.z = sub nsw i64 0, %.idx
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  store ptr %i.aa, ptr %i.n, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.e:                                             ; preds = %.noexc
  %i.ab = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc11 unwind label %bb.c   ; 2 uses

.noexc11:                                         ; preds = %bb.e
  %.not5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.f:                                             ; preds = %.noexc11
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %bb.f
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc10, %.noexc11
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %.noexc10 ], [ %i.ab, %.noexc11 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.3.0.copyload, 0
  br i1 %.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc13
  %.sroa.04.0.i28 = phi i64 [ %i.af, %.noexc13 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.sroa.5.027 = phi ptr [ %i.ad, %.noexc13 ], [ %.sroa.2.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.ac = icmp eq ptr %.sroa.5.027, %3
  br i1 %i.ac, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i": ; preds = %.lr.ph
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.027, align 8, !noalias !69670 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %.noexc13, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i", %.lr.ph
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i"
  unreachable

.noexc13:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.027, i64 48
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.5.027, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i, i64 44, i1 false)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i28 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.04.0.i28, 1      ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.ae, align 8, !noalias !69671
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4, i64 44, i1 false), !noalias !69671
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %exitcond.not = icmp eq i64 %i.af, %.sroa.3.0.copyload
  br i1 %exitcond.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.f

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit": ; preds = %.noexc13, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.ag = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ag, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit21", label %bb.g

bb.g:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit"
  %i.ah = mul nuw i64 %.sroa.0.0.copyload, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !69672
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit21"

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit21": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 13, ptr %i.ai, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i.i, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = tail call fastcc noundef align 8 dereferenceable(40) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11record_data17h24712f4e7205f4b9E(ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %1)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 10, ptr %i.al, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit21"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core9serialize4yaml6Loader11push_scalar17h32dccc697ee3b81fE(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #2 personality ptr @rust_eh_personality !guid !69703 {
bb.a:
  %.sroa.5.i = alloca [6 x i8], align 2           ; 5 uses
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.14.sroa.9.i = alloca [6 x i8], align 2   ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 18 uses
  %.sroa.7167.sroa.7.sroa.7.i = alloca [6 x i8], align 2 ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 18 uses
  %.sroa.7141.sroa.7.sroa.7.i = alloca [6 x i8], align 2 ; 7 uses
  %.sroa.785.sroa.7.sroa.7.i = alloca [6 x i8], align 1 ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 18 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.785.sroa.7.sroa.7.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.not.i = icmp eq i8 %3, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not391.i = icmp eq ptr %5, null
  br i1 %.not391.i, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !69704, !nonnull !152, !align !156, !noundef !152
  %i.k = tail call { ptr, i64 } @_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E(ptr noundef nonnull align 8 %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !69708 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.m, i64 0
  br label %.thread444.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %5, align 8, !range !175, !alias.scope !69706, !noundef !152
  %.not392.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not392.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !69706, !nonnull !152, !align !156, !noundef !152
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.028.0.ph.i = phi ptr [ %5, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %i.r = tail call noundef zeroext i1 @_ZN13saphyr_parser6parser3Tag19is_yaml_core_schema17h78eedb458c56dc59E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.028.0.ph.i), !noalias !69709
  br i1 %i.r, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7167.sroa.7.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69710
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !69704, !nonnull !152, !align !170, !noundef !152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !69704, !noundef !152
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !69704, !nonnull !152, !align !156, !noundef !152
  call fastcc void @_ZN16nickel_lang_core9serialize4yaml6Loader20push_scalar_with_err5parse17h97f08bfc060ca693E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.v, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %6, ptr noundef nonnull align 8 %i.x), !noalias !69711
  %i.y = load i32, ptr %i.d, align 8, !range !203, !noalias !69710, !noundef !152 ; 2 uses
  %.not394.i = icmp eq i32 %i.y, 25
  br i1 %.not394.i, label %bb.ak, label %bb.aj

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7141.sroa.7.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !69710
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !69704, !nonnull !152, !align !170, !noundef !152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !69704, !noundef !152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !69704, !nonnull !152, !align !156, !noundef !152
  call fastcc void @_ZN16nickel_lang_core9serialize4yaml6Loader20push_scalar_with_err5parse17h97f08bfc060ca693E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %6, ptr noundef nonnull align 8 %i.ae), !noalias !69711
  %i.af = load i32, ptr %i.e, align 8, !range !203, !noalias !69710, !noundef !152 ; 2 uses
  %.not396.i = icmp eq i32 %i.af, 25
  br i1 %.not396.i, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !69709, !nonnull !152, !noundef !152 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !69709, !noundef !152
  switch i64 %i.aj, label %.thread.sink.split [
    i64 4, label %bb.l
    i64 3, label %bb.o
    i64 5, label %bb.r
  ]

bb.j:                                             ; preds = %bb.h
  %.sroa.4325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4325.0.copyload.i = load i32, ptr %.sroa.4325.0..sroa_idx.i, align 4, !noalias !69710
  %.sroa.5326.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load <2 x i8>, ptr %.sroa.5326.0..sroa_idx.i, align 8, !noalias !69710
  %.sroa.7328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7141.sroa.7.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7328.0..sroa_idx.i, i64 6, i1 false), !noalias !69710
  %.sroa.8329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8329.0.copyload.i = load ptr, ptr %.sroa.8329.0..sroa_idx.i, align 8, !noalias !69710
  %.sroa.9330.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.al = load <2 x i64>, ptr %.sroa.9330.0..sroa_idx.i, align 8, !noalias !69710
  %.sroa.11332.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.am = load <2 x i64>, ptr %.sroa.11332.0..sroa_idx.i, align 8, !noalias !69712
  %.sroa.43.40..sroa.11332.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.43.40.copyload = load ptr, ptr %.sroa.43.40..sroa.11332.0..sroa_idx.i.sroa_idx, align 8, !noalias !69712
  %.sroa.44.40..sroa.11332.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.44.40.copyload = load i64, ptr %.sroa.44.40..sroa.11332.0..sroa_idx.i.sroa_idx, align 8, !noalias !69712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7141.sroa.7.sroa.7.i, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7141.sroa.7.sroa.7.i)
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0309.0.copyload.i = load i8, ptr %i.an, align 8, !noalias !69710
  %.sroa.4310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.4310.0.copyload.i = load i8, ptr %.sroa.4310.0..sroa_idx.i, align 1, !noalias !69710
  %.sroa.5311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7141.sroa.7.sroa.7.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5311.0..sroa_idx.i, i64 6, i1 false), !noalias !69710
  %.sroa.6312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6312.0.copyload.i = load ptr, ptr %.sroa.6312.0..sroa_idx.i, align 8, !noalias !69710
  %.sroa.7313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = load <2 x i64>, ptr %.sroa.7313.0..sroa_idx.i, align 8, !noalias !69710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !69710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.sroa.9.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7141.sroa.7.sroa.7.i, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7141.sroa.7.sroa.7.i)
  br label %.thread444.i

bb.l:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.ah, align 1
  %i.aq = icmp ne i32 %i.ap, 1819242338
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.at = tail call fastcc noundef i8 @"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !alias.scope !69705 ; 2 uses
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %.thread.sink.split, label %.thread444.i

bb.n:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.sroa.9.i, ptr noundef nonnull align 2 dereferenceable(6) %i.h, i64 6, i1 false)
  br label %.thread444.i

end_hunk_7
begin_hunk_8_@"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6ptr_eq17h12244407e53ede83E":bb.a
bb.e:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !152
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !152
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c
  %.sroa.01.1 = phi i1 [ %.sroa.01.0.in, %bb.f ], [ %.sroa.01.0.in, %bb.c ], [ false, %bb.h ], [ false, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.l = icmp eq ptr %.0.val, %.0.val1
  %i.m = select i1 %.sroa.01.1, i1 %i.l, i1 false
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noundef !152
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ %i.m, %bb.g ], [ %.sroa.01.0.in, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 6) i8 @_ZN18nickel_lang_parser3ast11InputFormat9from_path17h8f88e33742064134E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !78346 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !152, !noundef !152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !152
  %i.d = tail call { ptr, i64 } @_ZN3std4path4Path9extension17hf9b291662793d453E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !171, !noundef !152
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge.thread

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !152, !align !170, !noundef !152 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.l, label %.critedge.thread [
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %i.j, align 1
  %i.n = xor i16 %i.m, 25454
  %i.o = getelementptr i8, ptr %i.j, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = xor i16 %i.q, 108
  %i.s = or i16 %i.n, %i.r
  %i.t = icmp ne i16 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge.thread, label %bb.h

.critedge.thread:                                 ; preds = %bb.d, %.critedge.thread.thread, %bb.i, %bb.g, %bb.h, %bb.f, %bb.e, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 5, %bb.c ], [ %.mux, %.critedge.thread.thread ], [ 2, %bb.g ], [ 1, %bb.f ], [ 0, %bb.e ], [ 5, %bb.a ], [ 2, %bb.h ], [ %spec.select, %bb.i ], [ 5, %bb.d ]
  ret i8 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.j, align 1
  %i.x = icmp ne i32 %i.w, 1852797802
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.j, align 1
  %i.ab = icmp ne i32 %i.aa, 1819107705
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge.thread, label %.critedge.thread.thread

bb.h:                                             ; preds = %bb.e
  %i.ae = load i16, ptr %i.j, align 1
  %i.af = xor i16 %i.ae, 28025
  %i.ag = getelementptr i8, ptr %i.j, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 108
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge.thread, label %bb.i

.critedge.thread.thread:                          ; preds = %bb.g
  %i.ao = load i32, ptr %i.j, align 1
  %i.ap = icmp ne i32 %i.ao, 1819111284
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  %.mux = select i1 %i.ar, i8 3, i8 5
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.as = load i16, ptr %i.j, align 1
  %i.at = xor i16 %i.as, 30836
  %i.au = getelementptr i8, ptr %i.j, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.aw, 116
  %i.ay = or i16 %i.at, %i.ax
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  %spec.select = select i1 %i.bb, i8 4, i8 5
  br label %.critedge.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(40) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11record_data17h24712f4e7205f4b9E(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !78361 {
bb.a:
  %.sroa.472 = alloca [272 x i8], align 8         ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !152, !noundef !152
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 7
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 4 uses
  %i.l = icmp ult ptr %i.k, %i.g
  br i1 %i.l, label %bb.b, label %.noexc18

.body:                                            ; preds = %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..array..iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$C$0_usize$GT$$GT$17hbb91072561cd82b9E"(ptr noalias noundef align 8 dereferenceable(16) %i.b) #86
  tail call fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h17a3bd712ae42451E"(ptr noalias noundef align 8 dereferenceable(24) %1) #86
  br label %.body.thread

.noexc18:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store ptr %i.k, ptr %i.e, align 8
  br label %.noexc27

bb.b:                                             ; preds = %bb.a
  %i.n = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef 0)
          to label %.noexc19 unwind label %.body  ; 2 uses

.noexc19:                                         ; preds = %bb.b
  %.not5.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i, label %bb.c, label %.noexc27, !prof !154

bb.c:                                             ; preds = %.noexc19
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc20 unwind label %.body

.noexc20:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h110fe886b38d6507E"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #86, !noalias !78362
  br label %.body.thread

.noexc27:                                         ; preds = %.noexc19, %.noexc18
  %.sroa.0.0.i.i = phi ptr [ %i.k, %.noexc18 ], [ %i.n, %.noexc19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx50, align 8, !nonnull !152, !noundef !152 ; 6 uses
  %.sroa.5.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx51, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78362
  %i.p = icmp ult i64 %.sroa.5.0.copyload, 32940614417338486
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [280 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload ; 5 uses
  store ptr %.sroa.4.0.copyload, ptr %i.a, align 8, !alias.scope !78363
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.r, align 8, !alias.scope !78363
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload, ptr %i.s, align 8, !alias.scope !78363
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.q, ptr %i.t, align 8, !alias.scope !78363
  %i.u = ptrtoint ptr %i.q to i64
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload, 280 ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = and i64 %i.z, 7
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr i8, ptr %i.x, i64 %i.ab   ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult ptr %i.ac, %i.y
  %i.ah = icmp ugt i64 %.idx, %i.af
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %bb.e, label %.noexc29

.noexc29:                                         ; preds = %.noexc27
  %i.ai = sub nsw i64 0, %.idx
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ai  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  store ptr %i.aj, ptr %i.w, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23"

bb.e:                                             ; preds = %.noexc27
  %i.ak = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc30 unwind label %bb.d   ; 2 uses

.noexc30:                                         ; preds = %bb.e
  %.not5.i.i26 = icmp eq ptr %i.ak, null
  br i1 %.not5.i.i26, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23", !prof !154

bb.f:                                             ; preds = %.noexc30
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc31 unwind label %bb.d

.noexc31:                                         ; preds = %bb.f
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23": ; preds = %.noexc29, %.noexc30
  %.sroa.0.0.i.i24 = phi ptr [ %i.aj, %.noexc29 ], [ %i.ak, %.noexc30 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23", %.noexc32
  %.sroa.04.0.i2585 = phi i64 [ %i.an, %.noexc32 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23" ] ; 2 uses
  %.val437384 = phi ptr [ %2, %.noexc32 ], [ %.sroa.4.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.472)
  %i.al = icmp eq ptr %.val437384, %i.q
  br i1 %i.al, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i": ; preds = %.lr.ph
  %2 = getelementptr inbounds nuw i8, ptr %.val437384, i64 280 ; 3 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %.val437384, align 8, !noalias !78364 ; 2 uses
  %.not.i48 = icmp eq i64 %.sroa.0.0.copyload1.i, 19
  br i1 %.not.i48, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i", label %.noexc32, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i", %.lr.ph
  %3 = phi ptr [ %2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i" ], [ %i.q, %.lr.ph ]
  store ptr %3, ptr %i.s, align 8
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc49 unwind label %bb.d

.noexc49:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.thread.i"
  unreachable

.noexc32:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4fea270520e0abfeE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.val437384, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.472, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.6.0..sroa_idx2.i, i64 272, i1 false)
  %i.am = getelementptr inbounds nuw [280 x i8], ptr %.sroa.0.0.i.i24, i64 %.sroa.04.0.i2585 ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i2585, 1    ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.am, align 8, !noalias !78362
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.472.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.472, i64 272, i1 false), !noalias !78362
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.472)
  %exitcond.not = icmp eq i64 %i.an, %.sroa.5.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.noexc32, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23"
  %.lcssa = phi ptr [ %.sroa.4.0.copyload, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i23" ], [ %2, %.noexc32 ] ; 3 uses
  %i.ao = ptrtoint ptr %.lcssa to i64
  %i.ap = sub nuw i64 %i.u, %i.ao
  %i.aq = udiv exact i64 %i.ap, 280
  %i.ar = icmp eq ptr %i.q, %.lcssa
  br i1 %i.ar, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.as = getelementptr inbounds nuw [280 x i8], ptr %.lcssa, i64 %.sroa.0.07.i.i.i
  %i.at = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  tail call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.as), !noalias !78365
  %i.au = icmp eq i64 %i.at, %i.aq
  br i1 %i.au, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i": ; preds = %.lr.ph.i.i.i, %._crit_edge
  %i.av = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i"
  %i.aw = mul nuw i64 %.sroa.0.0.copyload, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !78365
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17hbdc87bbc9d052fb3E.exit.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78362
  %i.ax = load ptr, ptr %i.c, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = and i64 %i.bb, 7
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr i8, ptr %i.az, i64 %i.bd  ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult ptr %i.be, %i.ba
  %i.bj = icmp ult i64 %i.bh, 40
  %or.cond.i37 = or i1 %i.bi, %i.bj
  br i1 %or.cond.i37, label %.noexc7, label %.noexc6

.noexc6:                                          ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.be, i64 -40    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bk, ptr %i.ay, align 8
  br label %bb.i

.noexc7:                                          ; preds = %bb.h
  %i.bl = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef 8, i64 noundef 40) ; 2 uses
  %.not5.i = icmp eq ptr %i.bl, null
  br i1 %.not5.i, label %.noexc8, label %bb.i, !prof !154

.noexc8:                                          ; preds = %.noexc7
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
  unreachable

bb.i:                                             ; preds = %.noexc7, %.noexc6
  %.sroa.0.0.i = phi ptr [ %i.bk, %.noexc6 ], [ %i.bl, %.noexc7 ] ; 6 uses
  store ptr %.sroa.0.0.i.i, ptr %.sroa.0.0.i, align 8, !noalias !78366
  %.sroa.464.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store i64 0, ptr %.sroa.464.0..sroa.0.0.i.sroa_idx, align 8, !noalias !78366
  %.sroa.565.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store ptr %.sroa.0.0.i.i24, ptr %.sroa.565.0..sroa.0.0.i.sroa_idx, align 8, !noalias !78366
  %.sroa.666.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  store i64 %.sroa.5.0.copyload, ptr %.sroa.666.0..sroa.0.0.i.sroa_idx, align 8, !noalias !78366
  %.sroa.767.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32
  store i8 0, ptr %.sroa.767.0..sroa.0.0.i.sroa_idx, align 8, !noalias !78366
  ret ptr %.sroa.0.0.i

.body.thread:                                     ; preds = %.body, %bb.d
  %eh.lpad-body78 = phi { ptr, i32 } [ %i.m, %.body ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body78
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(104) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc14clone_ref_from17ha0ea3be20428ba57E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !78370 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h9e6751ae9cf57e40E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.c, i64 16, i1 false), !alias.scope !78371
  call void @"_ZN94_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hba7f971e3d24b3b1E"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = and i64 %i.j, 7
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l     ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult ptr %i.m, %i.i
  %i.r = icmp ult i64 %i.p, 104
  %or.cond.i = or i1 %i.q, %i.r
  br i1 %or.cond.i, label %bb.b, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.m, i64 -104     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  store ptr %i.s, ptr %i.g, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit"

bb.b:                                             ; preds = %bb.a
  %i.t = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef 8, i64 noundef 104)
          to label %.noexc2 unwind label %bb.d    ; 2 uses

.noexc2:                                          ; preds = %bb.b
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit", !prof !154

bb.c:                                             ; preds = %.noexc2
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr112drop_in_place$LT$bumpalo..Bump..alloc$LT$nickel_lang_parser..ast..typ..Type$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h9703224e6cab5d42E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #86
  resume { ptr, i32 } %i.u

"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17h512d2bb14b2ed232E.exit": ; preds = %.noexc, %.noexc2
  %.sroa.0.0.i1 = phi ptr [ %i.s, %.noexc ], [ %i.t, %.noexc2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  ret ptr %.sroa.0.0.i1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18nickel_lang_parser3ast7builder6Record5field17h84187b018ccc5b2eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef range(i64 5, 15) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !78374 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83
  %i.c = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef 4) #83 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e, !prof !154

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ]
  call fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_parser..ast..builder..Record$GT$17h6617b8fd41f1b206E"(ptr noalias noundef align 8 dereferenceable(56) %1) #86
  resume { ptr, i32 } %.pn

bb.c:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 4) #82
          to label %bb.i unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !78375
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN3std4sync6poison4once4Once15call_once_force17h74c08efd033371ecE.exit.i, label %bb.f, !prof !161

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78375
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !78375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78375
  store ptr %i.b, ptr %i.a, align 8, !noalias !78375
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @1639, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1641)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78375
  br label %_ZN3std4sync6poison4once4Once15call_once_force17h74c08efd033371ecE.exit.i

_ZN3std4sync6poison4once4Once15call_once_force17h74c08efd033371ecE.exit.i: ; preds = %.noexc, %bb.e
  %i.h = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17he997da325d36bac3E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17h74c08efd033371ecE.exit.i, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 4) #83
  br label %bb.b
end_hunk_8
begin_hunk_9_@_ZN18nickel_lang_parser8traverse19traverse_alloc_many17habd50c221ed41190E:bb.a

bb.b:                                             ; preds = %.lr.ph, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread"
  %.sroa.0175.0231 = phi ptr [ %1, %.lr.ph ], [ %i.g, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread" ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0175.0231, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81609), !noalias !81610
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0175.0231, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !169, !alias.scope !81611, !noalias !81612, !noundef !152 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %.sroa.10.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0175.0231, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %.sroa.10.0..sroa_idx11.i.i.i.i, i64 20, i1 false), !noalias !81613
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0175.0231, i64 40
  %i.l = load i32, ptr %i.k, align 8, !range !200, !alias.scope !81611, !noalias !81612, !noundef !152 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.l, 3
  br i1 %.not.i.i.i.i, label %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6cbd4c9d4bf6d44cE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0175.0231, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !81613
  br label %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6cbd4c9d4bf6d44cE.exit.i.i"

"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6cbd4c9d4bf6d44cE.exit.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5134.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.i.i.i.i, i64 20, i1 false), !noalias !81615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7136.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !81615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0175.0231, i64 16, i1 false), !noalias !81616
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i)
  store i32 %i.i, ptr %.sroa.4133.0..sroa_idx, align 8, !noalias !81617
  store i32 %i.l, ptr %.sroa.6135.0..sroa_idx, align 8, !noalias !81617
  call fastcc void @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hf1ef4cf45ac1d46eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4), !inline_history !81578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !81614
  %.sroa.0138.0.copyload = load i32, ptr %i.d, align 8 ; 2 uses
  %.sroa.0138.0.copyload.off = add i32 %.sroa.0138.0.copyload, -3
  %switch = icmp ult i32 %.sroa.0138.0.copyload.off, 2
  br i1 %switch, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread", label %bb.e

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread": ; preds = %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6cbd4c9d4bf6d44cE.exit.i.i"
  %i.m = icmp eq ptr %i.g, %2
  br i1 %i.m, label %.noexc, label %bb.b

bb.e:                                             ; preds = %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h6cbd4c9d4bf6d44cE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !81618, !inline_history !81583
  %i.n = tail call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 256, i64 noundef range(i64 1, 9) 8) #83, !noalias !81618, !inline_history !81583 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 256, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82, !noalias !81619, !inline_history !81583
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i": ; preds = %bb.e
  %.sroa.481.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.481.0..sroa.10.0.i.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4139.0..sroa_idx, i64 60, i1 false)
  store i32 %.sroa.0138.0.copyload, ptr %i.n, align 8, !noalias !81619
  store i64 4, ptr %i.e, align 8, !noalias !81608
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !81608
  %.sroa.6.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i18, align 8, !noalias !81608
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81620), !noalias !81621
  %i.p = icmp eq ptr %i.g, %2
  br i1 %i.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i"
  %i.q = phi ptr [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph" ], [ %i.ac, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i" ]
  %i.r = phi i64 [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i" ] ; 6 uses
  %.sroa.0.0234 = phi ptr [ %i.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph.lr.ph" ], [ %i.s, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i" ]
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph", %.noexc14.i.thread
  %.sroa.0.1232 = phi ptr [ %.sroa.0.0234, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph" ], [ %i.s, %.noexc14.i.thread ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1232, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81622)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1232, i64 16
  %i.u = load i32, ptr %i.t, align 8, !range !169, !alias.scope !81623, !noalias !81619, !noundef !152 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit"
  %.sroa.10.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1232, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %.sroa.10.0..sroa_idx11.i.i, i64 20, i1 false), !noalias !81624
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1232, i64 40
  %i.x = load i32, ptr %i.w, align 8, !range !200, !alias.scope !81623, !noalias !81619, !noundef !152 ; 2 uses
  %.not.i.i20 = icmp eq i32 %i.x, 3
  br i1 %.not.i.i20, label %"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..clone..Clone$GT$5clone17hb67aab00108ebedbE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1232, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !81624
  br label %"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..clone..Clone$GT$5clone17hb67aab00108ebedbE.exit.i"

"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..clone..Clone$GT$5clone17hb67aab00108ebedbE.exit.i": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5169.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.i.i, i64 20, i1 false), !noalias !81626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7171.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !81626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1232, i64 16, i1 false), !noalias !81627
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i32 %i.u, ptr %.sroa.4168.0..sroa_idx, align 8, !noalias !81628
  store i32 %i.x, ptr %.sroa.6170.0..sroa_idx, align 8, !noalias !81628
  invoke fastcc void @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hf1ef4cf45ac1d46eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !81597

.noexc22:                                         ; preds = %"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..clone..Clone$GT$5clone17hb67aab00108ebedbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81625
  %.sroa.0173.0.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  %.sroa.0173.0.copyload.off = add i32 %.sroa.0173.0.copyload, -3
  %switch267 = icmp ult i32 %.sroa.0173.0.copyload.off, 2
  br i1 %switch267, label %.noexc14.i.thread, label %bb.i

.noexc14.i.thread:                                ; preds = %.noexc22
  %i.y = icmp eq ptr %i.s, %2
  br i1 %i.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit"

bb.i:                                             ; preds = %.noexc22
  %i.z = icmp samesign ult i64 %i.r, 144115188075855872
  tail call void @llvm.assume(i1 %i.z), !noalias !81621
  %i.aa = load i64, ptr %i.e, align 8, !range !153, !alias.scope !81620, !noalias !81608, !noundef !152
  %i.ab = icmp eq i64 %i.r, %i.aa
  br i1 %i.ab, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i"

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 64)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !81619, !inline_history !81598

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i_crit_edge": ; preds = %bb.j
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !alias.scope !81620, !noalias !81608
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i_crit_edge", %bb.i
  %i.ac = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i_crit_edge" ], [ %i.q, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.r ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4107)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4107, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4174.0..sroa_idx, i64 60, i1 false)
  store i32 %.sroa.0173.0.copyload, ptr %i.ad, align 8, !noalias !81629
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4107.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4107, i64 60, i1 false), !noalias !81629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4107)
  %i.ae = add nuw nsw i64 %i.r, 1                 ; 3 uses
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i18, align 8, !alias.scope !81620, !noalias !81608
  %i.af = icmp eq ptr %i.s, %2
  br i1 %i.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e91631a6a24a863E.exit.lr.ph"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i", %.noexc14.i.thread, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %.sroa.654.0.copyload56 = phi i64 [ %i.r, %.noexc14.i.thread ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ], [ %i.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6525b28a32b40db4E.exit.i.i" ]
  %.sroa.049.0.copyload50 = load i64, ptr %i.e, align 8, !noalias !81630
  %.sroa.551.0.copyload53 = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !81630
  br label %.noexc

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..clone..Clone$GT$5clone17hb67aab00108ebedbE.exit.i", %bb.j
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !81608 ; 2 uses
  %i.ag = icmp eq i64 %.val.i, 0
  br i1 %i.ag, label %common.resume, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !81608, !nonnull !152, !noundef !152
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.l, %bb.k
  %.sroa.049.0.sink = phi i64 [ %.val.i, %bb.k ], [ %.sroa.049.0, %bb.l ]
  %.sroa.551.0.sink = phi ptr [ %.val5.i, %bb.k ], [ %.sroa.551.0, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp278, %bb.k ], [ %i.ai, %bb.l ]
  %i.ah = shl nuw i64 %.sroa.049.0.sink, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0.sink, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !152
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp278, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %bb.l ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i", %bb.n, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.049.0, 0
  br i1 %i.aj, label %common.resume, label %common.resume.sink.split

.noexc:                                           ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread", %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i"
  %.sroa.654.0 = phi i64 [ %.sroa.654.0.copyload56, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i" ], [ 0, %bb.a ], [ 0, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread" ] ; 6 uses
  %.sroa.551.0 = phi ptr [ %.sroa.551.0.copyload53, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i" ], [ inttoptr (i64 8 to ptr), %bb.a ], [ inttoptr (i64 8 to ptr), %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread" ] ; 5 uses
  %.sroa.049.0 = phi i64 [ %.sroa.049.0.copyload50, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha0cba8c2cb47bec0E.exit.i" ], [ 0, %bb.a ], [ 0, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hddfb731e54812133E.exit.thread" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !81608
  %i.ak = icmp ult i64 %.sroa.654.0, 144115188075855872
  tail call void @llvm.assume(i1 %i.ak)
  %5 = getelementptr inbounds nuw [64 x i8], ptr %.sroa.551.0, i64 %.sroa.654.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.551.0) ]
  %i.al = shl nuw nsw i64 %.sroa.654.0, 6         ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = and i64 %i.ar, 7
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at  ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult ptr %i.au, %i.aq
  %i.az = icmp ugt i64 %i.al, %i.ax
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i, label %bb.m, label %.noexc2

.noexc2:                                          ; preds = %.noexc
  %i.ba = sub nsw i64 0, %i.al
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.ba  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.ao, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.m:                                             ; preds = %.noexc
  %i.bc = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef %i.al)
          to label %.noexc3 unwind label %bb.l    ; 2 uses

.noexc3:                                          ; preds = %bb.m
  %.not5.i.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i.i, label %bb.n, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.n:                                             ; preds = %.noexc3
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4 unwind label %bb.l

.noexc4:                                          ; preds = %bb.n
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc2, %.noexc3
  %.sroa.0.0.i.i = phi ptr [ %i.bb, %.noexc2 ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.654.0, 0
  br i1 %.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit", label %.lr.ph237

.lr.ph237:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc5
  %.sroa.04.0.i236 = phi i64 [ %i.bg, %.noexc5 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.sroa.5.0235 = phi ptr [ %i.be, %.noexc5 ], [ %.sroa.551.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.440)
  %i.bd = icmp eq ptr %.sroa.5.0235, %5
  br i1 %i.bd, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i": ; preds = %.lr.ph237
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.0235, align 8, !noalias !81631 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i", label %.noexc5, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i", %.lr.ph237
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.thread.i"
  unreachable

.noexc5:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ddb56ff35990406E.exit.i"
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.5.0235, i64 64
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0235, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.440, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.6.0..sroa_idx2.i, i64 60, i1 false)
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i236 ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.04.0.i236, 1     ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.bf, align 8, !noalias !81632
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.440, i64 60, i1 false), !noalias !81632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.440)
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.654.0
  br i1 %exitcond.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit", label %.lr.ph237

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit": ; preds = %.noexc5, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.bh = icmp eq i64 %.sroa.049.0, 0
  br i1 %i.bh, label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit13", label %bb.o

bb.o:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit"
  %i.bi = shl nuw i64 %.sroa.049.0, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.551.0, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !81633
  br label %"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit13"

"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..Pattern$GT$$GT$17h451f0e67b932bb26E.exit13": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hb6d566235fa3d10cE.exit", %bb.o
  %i.bj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.bk = insertvalue { ptr, i64 } %i.bj, i64 %.sroa.654.0, 1
  ret { ptr, i64 } %i.bk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN18nickel_lang_parser8traverse19traverse_alloc_many17hdc66c7562ab56789E(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !81708 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %.sroa.22.i.i23 = alloca [23 x i8], align 1     ; 21 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 3 uses
  %.sroa.22.i.i = alloca [23 x i8], align 1       ; 21 uses
  %.sroa.4169 = alloca [44 x i8], align 4         ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.4102 = alloca [44 x i8], align 4         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !81709
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.8..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %.sroa.22.i.i23, i64 7
  %.sroa.22.4..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.22.i.i23, i64 3
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread"
  %.sroa.0229.0287 = phi ptr [ %1, %.lr.ph ], [ %i.g, %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread" ] ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81710)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i23)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81711), !noalias !81712
  %i.i = load i8, ptr %i.h, align 8, !range !210, !alias.scope !81713, !noalias !81712, !noundef !152 ; 2 uses
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27"
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
  ]

default.unreachable:                              ; preds = %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  unreachable

bb.c:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx32.i.i82 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx32.i.i82, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.d:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx31.i.i79 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx31.i.i79, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.e:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx30.i.i76 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx30.i.i76, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.f:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx29.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx29.i.i73, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.g:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx28.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx28.i.i70, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.h:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx27.i.i67 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx27.i.i67, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.i:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx26.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx26.i.i64, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.j:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx25.i.i61 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx25.i.i61, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.k:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22.4..sroa_idx.i.i60, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.j, i64 20, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.l:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx24.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx24.i.i57, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.m:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx23.i.i54 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx23.i.i54, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.n:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx22.i.i51 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx22.i.i51, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.o:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx21.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx21.i.i48, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.p:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx20.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx20.i.i45, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.q:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx19.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx19.i.i42, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.r:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22.8..sroa_idx.i.i39, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, i64 16, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.s:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx18.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx18.i.i36, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

bb.t:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx17.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx17.i.i24, i64 23, i1 false), !alias.scope !81714, !noalias !81715
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split"

"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split": ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.24.0..sroa_idx33.i.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0229.0287, i64 40
  %.sroa.24.0.copyload34.i.i26 = load ptr, ptr %.sroa.24.0..sroa_idx33.i.i25, align 8, !alias.scope !81716, !noalias !81712
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27"

"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27": ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split", %bb.b
  %.sroa.24.0.i.i28 = phi ptr [ undef, %bb.b ], [ %.sroa.24.0.copyload34.i.i26, %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27.sink.split" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5225.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i23, i64 23, i1 false), !noalias !81718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0229.0287, i64 16, i1 false), !noalias !81719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i23)
  store i8 %i.i, ptr %.sroa.4224.0..sroa_idx, align 8, !noalias !81720
  store ptr %.sroa.24.0.i.i28, ptr %.sroa.6226.0..sroa_idx, align 8, !noalias !81720
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4), !inline_history !81676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81717
  %.sroa.0227.0.copyload = load i32, ptr %i.b, align 8 ; 2 uses
  %.sroa.0227.0.copyload.off = add i32 %.sroa.0227.0.copyload, -3
  %switch = icmp ult i32 %.sroa.0227.0.copyload.off, 2
  br i1 %switch, label %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread", label %bb.u

"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread": ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27"
  %i.l = icmp eq ptr %i.g, %2
  br i1 %i.l, label %.noexc, label %bb.b

bb.u:                                             ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i27"
end_hunk_9
begin_hunk_10_@_ZN18nickel_lang_parser8traverse19traverse_alloc_many17hdc66c7562ab56789E:bb.a
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 6, label %bb.ab
    i8 7, label %bb.ac
    i8 8, label %bb.ad
    i8 9, label %bb.ae
    i8 10, label %bb.af
    i8 11, label %bb.ag
    i8 12, label %bb.ah
    i8 13, label %bb.ai
    i8 14, label %bb.aj
    i8 15, label %bb.ak
    i8 16, label %bb.al
    i8 17, label %bb.am
    i8 18, label %bb.an
  ]

bb.w:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx32.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.x:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx31.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.y:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx30.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.z:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx29.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.aa:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx28.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ab:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx27.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ac:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx26.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ad:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx25.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ae:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.22.4..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.u, i64 20, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.af:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx24.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ag:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx23.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ah:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx22.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ai:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx21.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.aj:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx20.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.ak:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx19.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22.8..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.v, i64 16, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.am:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx18.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

bb.an:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.22.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.22.0..sroa_idx17.i.i, i64 23, i1 false), !alias.scope !81728, !noalias !81729
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split"

"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split": ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.sroa.24.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1288, i64 40
  %.sroa.24.0.copyload34.i.i = load ptr, ptr %.sroa.24.0..sroa_idx33.i.i, align 8, !alias.scope !81730, !noalias !81722
  br label %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i"

"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i": ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"
  %.sroa.24.0.i.i = phi ptr [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit" ], [ %.sroa.24.0.copyload34.i.i, %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i.sink.split" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !81731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5215.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.i.i, i64 23, i1 false), !noalias !81732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1288, i64 16, i1 false), !noalias !81733
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  store i8 %i.t, ptr %.sroa.4214.0..sroa_idx, align 8, !noalias !81734
  store ptr %.sroa.24.0.i.i, ptr %.sroa.6216.0..sroa_idx, align 8, !noalias !81734
  invoke fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$8traverse17hb8b6b68287eafce4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !81698

.noexc21:                                         ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !81731
  %.sroa.0217.0.copyload = load i32, ptr %i.d, align 8 ; 2 uses
  %.sroa.0217.0.copyload.off = add i32 %.sroa.0217.0.copyload, -3
  %switch328 = icmp ult i32 %.sroa.0217.0.copyload.off, 2
  br i1 %switch328, label %.noexc13.i.thread, label %bb.ao

.noexc13.i.thread:                                ; preds = %.noexc21
  %i.w = icmp eq ptr %i.r, %2
  br i1 %i.w, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit"

bb.ao:                                            ; preds = %.noexc21
  %i.x = icmp samesign ult i64 %i.q, 192153584101141163
  tail call void @llvm.assume(i1 %i.x), !noalias !81724
  %i.y = load i64, ptr %i.e, align 8, !range !153, !alias.scope !81723, !noalias !81709, !noundef !152
  %i.z = icmp eq i64 %i.q, %i.y
  br i1 %i.z, label %bb.ap, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.q, i64 noundef 1, i64 noundef 8, i64 noundef 48)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !81722, !inline_history !81699

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge": ; preds = %bb.ap
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !alias.scope !81723, !noalias !81709
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge", %bb.ao
  %i.aa = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" ], [ %i.p, %bb.ao ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.q ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4169)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4169, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4218.0..sroa_idx, i64 44, i1 false)
  store i32 %.sroa.0217.0.copyload, ptr %i.ab, align 8, !noalias !81735
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4169.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4169, i64 44, i1 false), !noalias !81735
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4169)
  %i.ac = add nuw nsw i64 %i.q, 1                 ; 3 uses
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i18, align 8, !alias.scope !81723, !noalias !81709
  %i.ad = icmp eq ptr %i.r, %2
  br i1 %i.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5493bea424cb5038E.exit.lr.ph"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", %.noexc13.i.thread, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %.sroa.6116.0.copyload118 = phi i64 [ %i.q, %.noexc13.i.thread ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ], [ %i.ac, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ]
  %.sroa.0111.0.copyload112 = load i64, ptr %i.e, align 8, !noalias !81736
  %.sroa.5113.0.copyload115 = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !81736
  br label %.noexc

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN67_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..clone..Clone$GT$5clone17h5dce64c918d4da12E.exit.i", %bb.ap
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !noalias !81709 ; 2 uses
  %i.ae = icmp eq i64 %.val.i, 0
  br i1 %i.ae, label %common.resume, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !81709, !nonnull !152, !noundef !152
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.ar, %bb.aq
  %.sroa.0111.0.sink = phi i64 [ %.val.i, %bb.aq ], [ %.sroa.0111.0, %bb.ar ]
  %.sroa.5113.0.sink = phi ptr [ %.val5.i, %bb.aq ], [ %.sroa.5113.0, %bb.ar ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp343, %bb.aq ], [ %i.ag, %bb.ar ]
  %i.af = mul nuw i64 %.sroa.0111.0.sink, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5113.0.sink, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !152
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ar, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp343, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ag, %bb.ar ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", %bb.at, %bb.as
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0111.0, 0
  br i1 %i.ah, label %common.resume, label %common.resume.sink.split

.noexc:                                           ; preds = %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread", %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i"
  %.sroa.6116.0 = phi i64 [ %.sroa.6116.0.copyload118, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i" ], [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread" ] ; 6 uses
  %.sroa.5113.0 = phi ptr [ %.sroa.5113.0.copyload115, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i" ], [ inttoptr (i64 8 to ptr), %bb.a ], [ inttoptr (i64 8 to ptr), %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread" ] ; 5 uses
  %.sroa.0111.0 = phi i64 [ %.sroa.0111.0.copyload112, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hf4064afac0268840E.exit.i" ], [ 0, %bb.a ], [ 0, %"_ZN4core4iter8adapters6cloned14clone_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0efe312dd5b275a4E.exit86.thread" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !81709
  %i.ai = icmp ult i64 %.sroa.6116.0, 192153584101141163
  tail call void @llvm.assume(i1 %i.ai)
  %5 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5113.0, i64 %.sroa.6116.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5113.0) ]
  %.idx = mul nuw nsw i64 %.sroa.6116.0, 48       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = and i64 %i.ao, 7
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq  ; 3 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult ptr %i.ar, %i.an
  %i.aw = icmp ugt i64 %.idx, %i.au
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %bb.as, label %.noexc2

.noexc2:                                          ; preds = %.noexc
  %i.ax = sub nsw i64 0, %.idx
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.ax  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  store ptr %i.ay, ptr %i.al, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.as:                                            ; preds = %.noexc
  %i.az = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc3 unwind label %bb.ar   ; 2 uses

.noexc3:                                          ; preds = %bb.as
  %.not5.i.i = icmp eq ptr %i.az, null
  br i1 %.not5.i.i, label %bb.at, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.at:                                            ; preds = %.noexc3
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc4 unwind label %bb.ar

.noexc4:                                          ; preds = %bb.at
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc2, %.noexc3
  %.sroa.0.0.i.i = phi ptr [ %i.ay, %.noexc2 ], [ %i.az, %.noexc3 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.6116.0, 0
  br i1 %.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph293

.lr.ph293:                                        ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc5
  %.sroa.04.0.i292 = phi i64 [ %i.bd, %.noexc5 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.sroa.5.0291 = phi ptr [ %i.bb, %.noexc5 ], [ %.sroa.5113.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4102)
  %i.ba = icmp eq ptr %.sroa.5.0291, %5
  br i1 %i.ba, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i": ; preds = %.lr.ph293
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.0291, align 8, !noalias !81737 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %.noexc5, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i", %.lr.ph293
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc12 unwind label %bb.ar

.noexc12:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i"
  unreachable

.noexc5:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.0291, i64 48
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0291, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4102, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i, i64 44, i1 false)
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i292 ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i292, 1     ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.bc, align 8, !noalias !81738
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4102.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4102, i64 44, i1 false), !noalias !81738
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4102)
  %exitcond.not = icmp eq i64 %i.bd, %.sroa.6116.0
  br i1 %exitcond.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph293

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit": ; preds = %.noexc5, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.be = icmp eq i64 %.sroa.0111.0, 0
  br i1 %i.be, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit13", label %bb.au

bb.au:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit"
  %i.bf = mul nuw i64 %.sroa.0111.0, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5113.0, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !81739
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit13"

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit13": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", %bb.au
  %i.bg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.bh = insertvalue { ptr, i64 } %i.bg, i64 %.sroa.6116.0, 1
  ret { ptr, i64 } %i.bh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN18nickel_lang_parser8traverse8Traverse8find_map28_$u7b$$u7b$closure$u7d$$u7d$17h85fab6f241078785E"(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noalias nonnull readonly align 1 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !81740 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %.val = load i64, ptr %1, align 8, !range !163, !noundef !152 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8            ; 6 uses
  %i.d = icmp ne i64 %.val, 12
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %.val, 9
  br i1 %i.e, label %bb.b, label %"_ZN16nickel_lang_core3typ4Type13find_contract28_$u7b$$u7b$closure$u7d$$u7d$17hd63c873574b6603cE.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.f = ptrtoint ptr %.val3 to i64
  %i.g = and i64 %i.f, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 2)
  switch i64 %..i.i, label %"_ZN16nickel_lang_core3typ4Type13find_contract28_$u7b$$u7b$closure$u7d$$u7d$17hd63c873574b6603cE.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !157

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %.val3, align 8, !noundef !152 ; 3 uses
  %i.i = and i64 %i.h, 72057594037927935          ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  %i.l = and i64 %i.h, 1080863910568919040
  %i.m = icmp ult i64 %i.h, 864691128455135232
  tail call void @llvm.assume(i1 %i.m)
  %i.n = or i64 %i.k, %i.l
  store i64 %i.n, ptr %.val3, align 8
  %i.o = icmp eq i64 %i.i, 72057594037927935
  br i1 %i.o, label %bb.e, label %"_ZN16nickel_lang_core3typ4Type13find_contract28_$u7b$$u7b$closure$u7d$$u7d$17hd63c873574b6603cE.exit", !prof !154

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @2796, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.s, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
  unreachable

"_ZN16nickel_lang_core3typ4Type13find_contract28_$u7b$$u7b$closure$u7d$$u7d$17hd63c873574b6603cE.exit": ; preds = %bb.a, %bb.b, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %.val3, %bb.b ], [ %.val3, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, i64 1, i64 3
  %i.t = insertvalue { i64, ptr } poison, i64 %., 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.0.0.i, 1
  ret { i64, ptr } %i.u
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN18nickel_lang_vector5slice18Slice$LT$T$C$_$GT$3get17ha8ba38922e2bfc9eE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #22 !guid !81745 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !152 ; 2 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit", label %bb.b, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !noundef !152 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i8, ptr %i.g, align 8, !noundef !152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81746)
  %i.i = load i64, ptr %i.f, align 8, !range !171, !alias.scope !81746, !noundef !152
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %.lr.ph.i, label %tailrecurse._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %tailrecurse.i
  %.tr48.i = phi i8 [ %i.ak, %tailrecurse.i ], [ %i.h, %bb.c ] ; 2 uses
  %.tr7.i = phi ptr [ %i.aj, %tailrecurse.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.k = mul i8 %.tr48.i, 5
  %i.l = and i8 %i.k, 63
  %i.m = zext nneg i8 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = and i64 %i.n, 31                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.tr7.i, i64 264
  %i.q = load i64, ptr %i.p, align 8, !noundef !152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr7.i, i64 272
  %i.s = load i64, ptr %i.r, align 8, !noundef !152
  %i.t = sub i64 %i.s, %i.q
  %i.u = icmp ult i64 %i.o, %i.t
  br i1 %i.u, label %tailrecurse.i, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit"

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.c
  %.tr.lcssa.i = phi ptr [ %i.f, %bb.c ], [ %i.aj, %tailrecurse.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 264
  %i.w = load i64, ptr %i.v, align 8, !noundef !152 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 272
  %i.y = load i64, ptr %i.x, align 8, !noundef !152
  %i.z = sub i64 %i.y, %i.w
  %i.aa = and i64 %i.c, 31                        ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.d, label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit"

bb.d:                                             ; preds = %tailrecurse._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.w
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  br label %"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit"

tailrecurse.i:                                    ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.tr7.i, i64 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.q
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.o
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !81747, !nonnull !152, !noundef !152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ak = add i8 %.tr48.i, -1
  %i.al = load i64, ptr %i.aj, align 8, !range !171, !noalias !81746, !noundef !152
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %tailrecurse._crit_edge.i

"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3get17hd03e5783379785a3E.exit": ; preds = %.lr.ph.i, %bb.d, %tailrecurse._crit_edge.i, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %tailrecurse._crit_edge.i ], [ %i.ae, %bb.d ], [ null, %.lr.ph.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_vector5slice18Slice$LT$T$C$_$GT$5slice17h6a897bd40e01373bE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 !guid !81748 {
bb.a:
  %.not = icmp ugt i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !154

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1534, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1536) #82
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !152 ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %.not2 = icmp ugt i64 %2, %i.e
  br i1 %.not2, label %bb.d, label %bb.e, !prof !154

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1537, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1538) #82
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = add i64 %i.d, %2
  store i64 %i.f, ptr %i.a, align 8
  %i.g = add i64 %i.d, %1
  store i64 %i.g, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_vector6vector17Node$LT$T$C$_$GT$3set17he5a42c1c87aee79aE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(472) %0, i8 noundef %1, i64 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %3) unnamed_addr #2 personality ptr @rust_eh_personality !guid !81780 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [488 x i8], align 8               ; 14 uses
  %i.c = alloca [488 x i8], align 8               ; 10 uses
end_hunk_10
begin_hunk_11_@"_ZN88_$LT$toml_edit..item..Item$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$6to_ast17h9953bb43362bbe97E":_ZN16nickel_lang_core9serialize10toml_deser9range_pos17h96ce07a1747d8b19E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !118694
  store i32 %3, ptr %i.f, align 4, !noalias !118695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !118695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !118696
  store ptr %i.cn, ptr %i.d, align 8, !alias.scope !118697, !noalias !118698
  store ptr %i.co, ptr %.sroa.4119.0..sroa_idx, align 8, !alias.scope !118697, !noalias !118698
  store ptr %2, ptr %.sroa.5120.0..sroa_idx, align 8, !alias.scope !118697, !noalias !118698
  store ptr %i.f, ptr %.sroa.6121.0..sroa_idx, align 8, !alias.scope !118697, !noalias !118698
  invoke fastcc void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h83f2ee629bd3927cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc29 unwind label %bb.s

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !118696
  %i.cp = invoke fastcc noundef align 8 dereferenceable(40) ptr @_ZN18nickel_lang_parser3ast5alloc8AstAlloc11record_data17h24712f4e7205f4b9E(ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !118695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !118694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !118699
  invoke void @_ZN9toml_edit5table5Table4span17hd82b98476258aaa7E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.cl)
          to label %.noexc31 unwind label %bb.s, !inline_history !118635

.noexc31:                                         ; preds = %.noexc30
  %i.cq = load i64, ptr %i.g, align 8, !range !171, !alias.scope !118700, !noalias !118701, !noundef !152
  %i.cr = trunc nuw i64 %i.cq to i1               ; 3 uses
  %i.cs = load i64, ptr %i.ci, align 8
  %i.ct = load i64, ptr %i.cj, align 8
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = trunc i64 %i.ct to i32
  %.sroa.7113.0 = select i1 %i.cr, i32 %i.cv, i32 undef
  %.sroa.6112.0 = select i1 %i.cr, i32 %i.cu, i32 undef
  %storemerge.i.i = select i1 %i.cr, i32 0, i32 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !118699
  %i.cw = icmp samesign ult i64 %.sroa.7.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.cw), !noalias !118683
  %i.cx = load i64, ptr %i.k, align 8, !range !153, !alias.scope !118693, !noalias !118682, !noundef !152
  %i.cy = icmp eq i64 %.sroa.7.0.copyload, %i.cx
  br i1 %i.cy, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

bb.n:                                             ; preds = %.noexc.i.i
  %i.cz = load ptr, ptr %i.av, align 8, !invariant.load !152, !noalias !118702 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.cz(ptr noundef nonnull %i.au)
          to label %bb.p unwind label %bb.q, !noalias !118702, !inline_history !118658

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !153, !invariant.load !152, !noalias !118702 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !188, !invariant.load !152, !noalias !118702 ; 2 uses
  %i.de = icmp ult i64 %i.dd, -9223372036854775807
  call void @llvm.assume(i1 %i.de), !noalias !118683
  %i.df = icmp eq i64 %i.db, 0
  br i1 %i.df, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) %i.dd) #83, !noalias !118702, !inline_history !118658
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !153, !invariant.load !152, !noalias !118702 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !188, !invariant.load !152, !noalias !118702 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, -9223372036854775807
  call void @llvm.assume(i1 %i.dl), !noalias !118683
  %i.dm = icmp eq i64 %i.di, 0
  br i1 %i.dm, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) %i.dk) #83, !noalias !118702, !inline_history !118658
  br label %.body.i

bb.r:                                             ; preds = %.noexc31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !118703
  invoke void %i.bm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %i.au)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i" unwind label %bb.s, !noalias !118702, !inline_history !118660

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i": ; preds = %bb.r
  %i.dn = load i64, ptr %i.h, align 8, !noalias !118703, !noundef !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !118703
  %i.do = call i64 @llvm.uadd.sat.i64(i64 %i.dn, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.sroa.7.0.copyload, i64 noundef %i.do, i64 noundef 8, i64 noundef 48)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" unwind label %bb.s, !noalias !118682, !inline_history !118658

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i"
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i25, align 8, !alias.scope !118693, !noalias !118682
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge", %.noexc31
  %i.dp = phi ptr [ %.pre, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" ], [ %i.ck, %.noexc31 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dp, i64 %.sroa.7.0.copyload ; 6 uses
  store i32 %storemerge.i.i, ptr %i.dq, align 8, !noalias !118702
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %3, ptr %.sroa.4103.0..sroa_idx, align 4, !noalias !118702
  %.sroa.4103.sroa.0.sroa.4.0..sroa.4103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %.sroa.6112.0, ptr %.sroa.4103.sroa.0.sroa.4.0..sroa.4103.0..sroa_idx.sroa_idx, align 8, !noalias !118702
  %.sroa.4103.sroa.0.sroa.5.0..sroa.4103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 %.sroa.7113.0, ptr %.sroa.4103.sroa.0.sroa.5.0..sroa.4103.0..sroa_idx.sroa_idx, align 4, !noalias !118702
  %.sroa.4103.sroa.4.0..sroa.4103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i8 10, ptr %.sroa.4103.sroa.4.0..sroa.4103.0..sroa_idx.sroa_idx, align 8, !noalias !118702
  %.sroa.4103.sroa.6.0..sroa.4103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %i.cp, ptr %.sroa.4103.sroa.6.0..sroa.4103.0..sroa_idx.sroa_idx, align 8, !noalias !118702
  %i.dr = add nuw nsw i64 %.sroa.7.0.copyload, 1  ; 2 uses
  store i64 %i.dr, ptr %.sroa.6.0..sroa_idx.i26, align 8, !alias.scope !118693, !noalias !118682
  br label %bb.l

bb.s:                                             ; preds = %.noexc29, %.noexc28, %bb.l, %.noexc30, %bb.m, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h4c366fb1a23647d1E.exit.i.i", %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$toml_edit..table..Table$GT$$C$$LT$toml_edit..item..Item$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$..to_ast..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17ha39a4508a11aedeaE"(ptr nonnull %i.au, ptr nonnull %i.av) #86
          to label %.body.i unwind label %bb.t, !noalias !118702, !inline_history !118658

bb.t:                                             ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !118702, !inline_history !118658
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.p
  %.sroa.047.0.copyload = load i64, ptr %i.k, align 8, !noalias !118704
  %.sroa.548.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i25, align 8, !noalias !118704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !118682
  br label %.noexc

.body.i:                                          ; preds = %bb.s, %bb.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dg, %bb.q ], [ %i.dg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.ds, %bb.s ] ; 2 uses
  %.val.i = load i64, ptr %i.k, align 8, !noalias !118682 ; 2 uses
  %i.du = icmp eq i64 %.val.i, 0
  br i1 %i.du, label %common.resume, label %bb.u

bb.u:                                             ; preds = %.body.i
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i25, align 8, !noalias !118682, !nonnull !152, !noundef !152
  %i.dv = mul nuw i64 %.val.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !118682, !inline_history !118627
  br label %common.resume

.body:                                            ; preds = %bb.y, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !118682, !inline_history !118627
  unreachable

bb.v:                                             ; preds = %.noexc37, %.noexc16.i, %bb.k, %"_ZN88_$LT$toml_edit..item..Item$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$6to_ast28_$u7b$$u7b$closure$u7d$$u7d$17he98e5cf13c559ba5E.exit.i", %.noexc17.i, %bb.e, %bb.d
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.av, align 8, !invariant.load !152, !noalias !118682 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i27, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void %i.dx(ptr noundef nonnull %i.au)
          to label %bb.x unwind label %bb.y, !noalias !118682

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !153, !invariant.load !152, !noalias !118682 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !188, !invariant.load !152, !noalias !118682 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -9223372036854775807
  call void @llvm.assume(i1 %i.ec), !noalias !118682
  %i.ed = icmp eq i64 %i.dz, 0
  br i1 %i.ed, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) %i.eb) #83, !noalias !118682
  br label %common.resume

bb.y:                                             ; preds = %bb.w
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !153, !invariant.load !152, !noalias !118682 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !188, !invariant.load !152, !noalias !118682 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, -9223372036854775807
  call void @llvm.assume(i1 %i.ej), !noalias !118682
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) %i.ei) #83, !noalias !118682
  br label %.body

bb.z:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", %bb.ac, %bb.ab
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = icmp eq i64 %.sroa.047.0, 0
  br i1 %i.em, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = mul nuw i64 %.sroa.047.0, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.548.0, i64 noundef %i.en, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !118705
  br label %common.resume

.noexc:                                           ; preds = %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i"
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i" ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ 0, %bb.h ] ; 6 uses
  %.sroa.548.0 = phi ptr [ %.sroa.548.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i" ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 5 uses
  %.sroa.047.0 = phi i64 [ %.sroa.047.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4c35a5c134acc5cdE.exit.i" ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ 0, %bb.h ] ; 4 uses
  %i.eo = icmp samesign ult i64 %.sroa.7.0, 192153584101141163
  call void @llvm.assume(i1 %i.eo)
  %4 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.548.0, i64 %.sroa.7.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.548.0) ]
  %.idx = mul nuw nsw i64 %.sroa.7.0, 48          ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.et = load ptr, ptr %i.eq, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = and i64 %i.eu, 7
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr i8, ptr %i.es, i64 %i.ew  ; 3 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.et to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = icmp ult ptr %i.ex, %i.et
  %i.fc = icmp ugt i64 %.idx, %i.fa
  %or.cond.i = select i1 %i.fb, i1 true, i1 %i.fc
  br i1 %or.cond.i, label %bb.ab, label %.noexc5

.noexc5:                                          ; preds = %.noexc
  %i.fd = sub nsw i64 0, %.idx
  %i.fe = getelementptr i8, ptr %i.ex, i64 %i.fd  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  store ptr %i.fe, ptr %i.er, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.ab:                                            ; preds = %.noexc
  %i.ff = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc6 unwind label %bb.z    ; 2 uses

.noexc6:                                          ; preds = %bb.ab
  %.not5.i.i = icmp eq ptr %i.ff, null
  br i1 %.not5.i.i, label %bb.ac, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.ac:                                            ; preds = %.noexc6
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc7 unwind label %bb.z

.noexc7:                                          ; preds = %bb.ac
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc5, %.noexc6
  %.sroa.0.0.i.i = phi ptr [ %i.fe, %.noexc5 ], [ %i.ff, %.noexc6 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc8
  %.sroa.04.0.i154 = phi i64 [ %i.fj, %.noexc8 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.sroa.5.0136153 = phi ptr [ %i.fh, %.noexc8 ], [ %.sroa.548.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.454)
  %i.fg = icmp eq ptr %.sroa.5.0136153, %4
  br i1 %i.fg, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i": ; preds = %.lr.ph
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.0136153, align 8, !noalias !118706 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %.noexc8, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i", %.lr.ph
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc15 unwind label %bb.z

.noexc15:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i"
  unreachable

.noexc8:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5.0136153, i64 48
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0136153, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.454, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i, i64 44, i1 false)
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i154 ; 2 uses
  %i.fj = add nuw nsw i64 %.sroa.04.0.i154, 1     ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.fi, align 8, !noalias !118707
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.454, i64 44, i1 false), !noalias !118707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.454)
  %exitcond.not = icmp eq i64 %i.fj, %.sroa.7.0
  br i1 %exitcond.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit": ; preds = %.noexc8, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.fk = icmp eq i64 %.sroa.047.0, 0
  br i1 %i.fk, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit16", label %bb.ad

bb.ad:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit"
  %i.fl = mul nuw i64 %.sroa.047.0, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.548.0, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !118708
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit16"

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit16": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", %bb.ad
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 13, ptr %i.fm, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.i.i, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.0, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 %storemerge.i, ptr %0, align 8
  %.sroa.3.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %.sroa.3.0..sroa_idx41, align 4
  %.sroa.4.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx43, align 8
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx45, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit16", %_ZN16nickel_lang_core9serialize10toml_deser9range_pos17h96ce07a1747d8b19E.exit20, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17ha4b74a75e8890622E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !118732 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload3 = load ptr, ptr %1, align 8, !alias.scope !118733, !nonnull !152, !noundef !152 ; 3 uses
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload5 = load ptr, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !118733, !nonnull !152, !noundef !152 ; 3 uses
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload7 = load i64, ptr %.sroa.6.0..sroa_idx6, align 8, !alias.scope !118733 ; 4 uses
  %i.b = ptrtoint ptr %.sroa.5.0.copyload5 to i64
  %i.c = ptrtoint ptr %.sroa.0.0.copyload3 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = and i64 %i.d, 3
  %.not.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not.i.i to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.e, %i.g
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.6.0.copyload7) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !118734, !noundef !152 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !153, !alias.scope !118734, !noundef !152
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.h, %i.l
  br i1 %i.m, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit", !prof !154

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.h, i64 noundef 1, i64 noundef 1)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit": ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload3, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.5.0.copyload5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.6.0.copyload7, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118738)
  %.not.i.i2 = icmp eq i64 %.sroa.6.0.copyload7, 0
  br i1 %.not.i.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit"
  %i.n = add i64 %.sroa.6.0.copyload7, -1
  %i.o = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h63273c8f10b4fb50E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.n), !noalias !118739
  %.not5.i.i = icmp eq i32 %i.o, 1114112
  br i1 %.not5.i.i, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h5b8b3b3236cc32c6E.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !118740
  %.pre10 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !118740
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit"
  %i.p = phi ptr [ %.pre10, %._crit_edge ], [ %.sroa.5.0.copyload5, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit" ] ; 5 uses
  %i.q = phi ptr [ %.pre, %._crit_edge ], [ %.sroa.0.0.copyload3, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118741)
  %.not.i18.i.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i18.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h5b8b3b3236cc32c6E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1680c38782c57c33E.exit.i.i.i", %.lr.ph.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.0.1817.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h1680c38782c57c33E.exit.i.i.i" ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.0.019.i.i.i, align 1, !noalias !118742, !noundef !152 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i": ; preds = %bb.e
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.p
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !118742, !noundef !152
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i": ; preds = %bb.e
  %i.af = zext nneg i8 %i.t to i32
  %i.ag = load i64, ptr %i.i, align 8, !alias.scope !118743, !noundef !152 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  br label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i"
  %i.ai = icmp ne ptr %i.y, %i.p
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.y, align 1, !noalias !118742, !noundef !152
  %i.al = shl nuw nsw i32 %i.ac, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.w, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ar, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i"
  %i.as = icmp ne ptr %i.aj, %i.p
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !noalias !118742, !noundef !152
  %i.av = shl nuw nsw i32 %i.w, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bb, 1114112
  br i1 %.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator8for_each17h5b8b3b3236cc32c6E.exit, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i"
  %spec.select.i9.i.i.i = phi i32 [ %i.bb, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i" ], [ %i.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i" ], [ %i.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i" ] ; 6 uses
  %.sroa.0.18.i.i.i = phi ptr [ %i.at, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i" ], [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit14.i.i.i.i.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb7a3713bb3dcc536E.exit12.i.i.i.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118744)
  %i.bc = load i64, ptr %i.i, align 8, !alias.scope !118745, !noundef !152 ; 4 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ult i32 %spec.select.i9.i.i.i, 128
  br i1 %i.be, label %bb.h, label %bb.f

bb.f:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i"
  %i.bf = icmp samesign ult i32 %spec.select.i9.i.i.i, 2048
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp samesign ult i32 %spec.select.i9.i.i.i, 65536
  %..i.i.i.i.i.i = select i1 %i.bg, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i"
  %i.bh = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i" ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i" ]
  %i.bi = phi i64 [ %i.bc, %bb.f ], [ %i.bc, %bb.g ], [ %i.bc, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i" ], [ %i.ag, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i" ] ; 4 uses
  %.sroa.0.1817.i.i.i = phi ptr [ %.sroa.0.18.i.i.i, %bb.f ], [ %.sroa.0.18.i.i.i, %bb.g ], [ %.sroa.0.18.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i" ], [ %i.s, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i" ] ; 2 uses
  %spec.select.i916.i.i.i = phi i32 [ %spec.select.i9.i.i.i, %bb.f ], [ %spec.select.i9.i.i.i, %bb.g ], [ %spec.select.i9.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i" ], [ %i.af, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i" ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i.i.i, %bb.g ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i" ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i" ] ; 3 uses
  %i.bj = load i64, ptr %0, align 8, !range !153, !alias.scope !118746, !noundef !152
  %i.bk = sub nsw i64 %i.bj, %i.bi
  %i.bl = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i, %i.bk
  br i1 %i.bl, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i", !prof !154

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bi, i64 noundef %.sroa.0.0.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1), !noalias !118740
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !118745
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h78751dbb142bcaa0E.exit.i.i.i.i.i.i": ; preds = %bb.i, %bb.h
  %i.bm = phi i64 [ %i.bi, %bb.h ], [ %.pre.i.i.i.i.i.i, %bb.i ] ; 2 uses
end_hunk_11
begin_hunk_12_@"_ZN90_$LT$toml_edit..value..Value$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$6to_ast17hdc54806548f37ea8E":_ZN16nickel_lang_core9serialize10toml_deser9range_pos17h96ce07a1747d8b19E.exit
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.bz, %bb.n ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i.i28, %bb.n ] ; 2 uses
  %i.cb = icmp ule i64 %.sroa.0.0.i.i28, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.cb), !noalias !119929
  %.sroa.460.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.460.0..sroa.10.0.i.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.755, i64 44, i1 false)
  store i32 %.sroa.053.0.copyload, ptr %.sroa.10.0.i.i, align 8, !noalias !119928
  store i64 %.sroa.4.0.i.i, ptr %i.j, align 8, !noalias !119928
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i29, align 8, !noalias !119928
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i30, align 8, !noalias !119928
  call void @llvm.experimental.noalias.scope.decl(metadata !119934), !noalias !119929
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %bb.p

bb.p:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"
  %i.cc = phi ptr [ %i.cx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ], [ %.sroa.10.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ]
  %.sroa.7.0.copyload = phi i64 [ %i.cz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i" ] ; 6 uses
  %i.cd = invoke noundef align 8 dereferenceable_or_null(176) ptr %i.bd(ptr noundef nonnull align 1 %i.ba)
          to label %.noexc.i.i unwind label %bb.w, !inline_history !119858 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.p
  %.not.i.i18.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i18.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i.thread", label %bb.q

bb.q:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !119935
  invoke void @"_ZN90_$LT$toml_edit..value..Value$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$6to_ast17hdc54806548f37ea8E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.cd, ptr noundef nonnull align 8 %2, i32 noundef %3)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i" unwind label %bb.w, !inline_history !119863

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i": ; preds = %bb.q
  %.sroa.063.0.copyload = load i32, ptr %i.f, align 8, !noalias !119936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.765, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.765.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !119935
  %.not.i19.i = icmp eq i32 %.sroa.063.0.copyload, 3
  br i1 %.not.i19.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i.thread", label %bb.r

bb.r:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i"
  %i.ce = icmp samesign ult i64 %.sroa.7.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.ce), !noalias !119929
  %i.cf = load i64, ptr %i.j, align 8, !range !153, !alias.scope !119934, !noalias !119928, !noundef !152
  %i.cg = icmp eq i64 %.sroa.7.0.copyload, %i.cf
  br i1 %i.cg, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i.thread": ; preds = %.noexc.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i"
  %i.ch = load ptr, ptr %i.bb, align 8, !invariant.load !152, !noalias !119937 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i.thread"
  invoke void %i.ch(ptr noundef nonnull %i.ba)
          to label %bb.t unwind label %bb.u, !noalias !119937, !inline_history !119864

bb.t:                                             ; preds = %bb.s, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfcca910590139e6aE.exit.i.i.thread"
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !range !153, !invariant.load !152, !noalias !119937 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !188, !invariant.load !152, !noalias !119937 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, -9223372036854775807
  call void @llvm.assume(i1 %i.cm), !noalias !119929
  %i.cn = icmp eq i64 %i.cj, 0
  br i1 %i.cn, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #83, !noalias !119937, !inline_history !119864
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i"

bb.u:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !153, !invariant.load !152, !noalias !119937 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !range !188, !invariant.load !152, !noalias !119937 ; 2 uses
  %i.ct = icmp ult i64 %i.cs, -9223372036854775807
  call void @llvm.assume(i1 %i.ct), !noalias !119929
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.u
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.cq, i64 noundef range(i64 1, -9223372036854775807) %i.cs) #83, !noalias !119937, !inline_history !119864
  br label %.body.i

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !119938
  invoke void %i.bg(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 %i.ba)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i" unwind label %bb.w, !noalias !119937, !inline_history !119865

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i": ; preds = %bb.v
  %i.cv = load i64, ptr %i.g, align 8, !noalias !119938, !noundef !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !119938
  %i.cw = call i64 @llvm.uadd.sat.i64(i64 %i.cv, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.7.0.copyload, i64 noundef %i.cw, i64 noundef 8, i64 noundef 48)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" unwind label %bb.w, !noalias !119928, !inline_history !119864

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i"
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !119934, !noalias !119928
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge", %bb.r
  %i.cx = phi ptr [ %.pre, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i_crit_edge" ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.cx, i64 %.sroa.7.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.470)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.470, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.765, i64 44, i1 false)
  store i32 %.sroa.063.0.copyload, ptr %i.cy, align 8, !noalias !119937
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.470.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.470, i64 44, i1 false), !noalias !119937
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.470)
  %i.cz = add nuw nsw i64 %.sroa.7.0.copyload, 1  ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx.i30, align 8, !alias.scope !119934, !noalias !119928
  br label %bb.p

bb.w:                                             ; preds = %bb.p, %bb.q, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h888dcdd260deb10eE.exit.i.i", %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr310drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$RF$toml_edit..value..Value$GT$$C$$LT$toml_edit..value..Value$u20$as$u20$nickel_lang_core..serialize..toml_deser..ToAst$GT$..to_ast..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4d714b2a8d9627c1E"(ptr nonnull %i.ba, ptr nonnull %i.bb) #86
          to label %.body.i unwind label %bb.x, !noalias !119937, !inline_history !119864

bb.x:                                             ; preds = %bb.w
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !119937, !inline_history !119864
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.t
  %.sroa.033.0.copyload = load i64, ptr %i.j, align 8, !noalias !119939
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i29, align 8, !noalias !119939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !119928
  br label %.noexc

.body.i:                                          ; preds = %bb.w, %bb.u, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.u ], [ %i.co, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.da, %bb.w ] ; 2 uses
  %.val.i = load i64, ptr %i.j, align 8, !noalias !119928 ; 2 uses
  %i.dc = icmp eq i64 %.val.i, 0
  br i1 %i.dc, label %common.resume118, label %bb.y

bb.y:                                             ; preds = %.body.i
  %.val5.i = load ptr, ptr %.sroa.4.0..sroa_idx.i29, align 8, !noalias !119928, !nonnull !152, !noundef !152
  %i.dd = mul nuw i64 %.val.i, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !119928, !inline_history !119851
  br label %common.resume118

.body:                                            ; preds = %bb.ac, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !119928, !inline_history !119851
  unreachable

bb.z:                                             ; preds = %bb.o, %bb.j, %bb.i, %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.bb, align 8, !invariant.load !152, !noalias !119928 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void %i.df(ptr noundef nonnull %i.ba)
          to label %bb.ab unwind label %bb.ac, !noalias !119928

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !153, !invariant.load !152, !noalias !119928 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !188, !invariant.load !152, !noalias !119928 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, -9223372036854775807
  call void @llvm.assume(i1 %i.dk), !noalias !119928
  %i.dl = icmp eq i64 %i.dh, 0
  br i1 %i.dl, label %common.resume118, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) %i.dj) #83, !noalias !119928
  br label %common.resume118

bb.ac:                                            ; preds = %bb.aa
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !153, !invariant.load !152, !noalias !119928 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !188, !invariant.load !152, !noalias !119928 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, -9223372036854775807
  call void @llvm.assume(i1 %i.dr), !noalias !119928
  %i.ds = icmp eq i64 %i.do, 0
  br i1 %i.ds, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) %i.dq) #83, !noalias !119928
  br label %.body

bb.ad:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", %bb.ag, %bb.af
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = icmp eq i64 %.sroa.033.0, 0
  br i1 %i.du, label %common.resume118, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = mul nuw i64 %.sroa.033.0, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !119940
  br label %common.resume118

.noexc:                                           ; preds = %bb.l, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i"
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i" ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ 0, %bb.l ] ; 6 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i" ], [ inttoptr (i64 8 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb.l ] ; 5 uses
  %.sroa.033.0 = phi i64 [ %.sroa.033.0.copyload, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h4de749814c3b6e7fE.exit.i" ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i" ], [ 0, %bb.l ] ; 4 uses
  %i.dw = icmp samesign ult i64 %.sroa.7.0, 192153584101141163
  call void @llvm.assume(i1 %i.dw)
  %4 = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0, i64 %.sroa.7.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %.idx = mul nuw nsw i64 %.sroa.7.0, 48          ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !nonnull !152, !noundef !152 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = and i64 %i.ec, 7
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr i8, ptr %i.ea, i64 %i.ee  ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.eb to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = icmp ult ptr %i.ef, %i.eb
  %i.ek = icmp ugt i64 %.idx, %i.ei
  %or.cond.i = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond.i, label %bb.af, label %.noexc8

.noexc8:                                          ; preds = %.noexc
  %i.el = sub nsw i64 0, %.idx
  %i.em = getelementptr i8, ptr %i.ef, i64 %i.el  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  store ptr %i.em, ptr %i.dz, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"

bb.af:                                            ; preds = %.noexc
  %i.en = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %2, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx)
          to label %.noexc9 unwind label %bb.ad   ; 2 uses

.noexc9:                                          ; preds = %bb.af
  %.not5.i.i = icmp eq ptr %i.en, null
  br i1 %.not5.i.i, label %bb.ag, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", !prof !154

bb.ag:                                            ; preds = %.noexc9
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc10 unwind label %bb.ad

.noexc10:                                         ; preds = %bb.ag
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i": ; preds = %.noexc8, %.noexc9
  %.sroa.0.0.i.i = phi ptr [ %i.em, %.noexc8 ], [ %i.en, %.noexc9 ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.0, 0
  br i1 %.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i", %.noexc11
  %.sroa.04.0.i88 = phi i64 [ %i.er, %.noexc11 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 2 uses
  %.sroa.5.07687 = phi ptr [ %i.ep, %.noexc11 ], [ %.sroa.5.0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.439)
  %i.eo = icmp eq ptr %.sroa.5.07687, %4
  br i1 %i.eo, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i": ; preds = %.lr.ph
  %.sroa.0.0.copyload1.i = load i32, ptr %.sroa.5.07687, align 8, !noalias !119941 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i", label %.noexc11, !prof !208

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i", %.lr.ph
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc19 unwind label %bb.ad

.noexc19:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i"
  unreachable

.noexc11:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i"
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.5.07687, i64 48
  %.sroa.6.0..sroa_idx2.i18 = getelementptr inbounds nuw i8, ptr %.sroa.5.07687, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.439, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i18, i64 44, i1 false)
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.04.0.i88 ; 2 uses
  %i.er = add nuw nsw i64 %.sroa.04.0.i88, 1      ; 2 uses
  store i32 %.sroa.0.0.copyload1.i, ptr %i.eq, align 8, !noalias !119942
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.439, i64 44, i1 false), !noalias !119942
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.439)
  %exitcond.not = icmp eq i64 %i.er, %.sroa.7.0
  br i1 %exitcond.not, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", label %.lr.ph

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit": ; preds = %.noexc11, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i"
  %i.es = icmp eq i64 %.sroa.033.0, 0
  br i1 %i.es, label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit20", label %bb.ah

bb.ah:                                            ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit"
  %i.et = mul nuw i64 %.sroa.033.0, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0, i64 noundef %i.et, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !119943
  br label %"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit20"

"_ZN4core3ptr88drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h7fee70828a6d1eaeE.exit20": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17he91c1592cf159c35E.exit", %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.7.0, ptr %i.ev, align 8
  store i8 13, ptr %i.r, align 8
  br label %bb.bk

bb.ai:                                            ; preds = %_ZN16nickel_lang_core9serialize10toml_deser9range_pos17h96ce07a1747d8b19E.exit
  %i.ew = call { ptr, ptr } @_ZN9toml_edit12inline_table11InlineTable4iter17hc5cfc2cf82a19b6bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) ; 2 uses
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0      ; 17 uses
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1      ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %3, ptr %i.m, align 4, !noalias !119945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !119945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !119946
  store ptr %i.ex, ptr %i.k, align 8, !alias.scope !119947, !noalias !119948
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ey, ptr %.sroa.450.0..sroa_idx, align 8, !alias.scope !119947, !noalias !119948
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %2, ptr %.sroa.551.0..sroa_idx, align 8, !alias.scope !119947, !noalias !119948
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.m, ptr %.sroa.652.0..sroa_idx, align 8, !alias.scope !119947, !noalias !119948
  call void @llvm.experimental.noalias.scope.decl(metadata !119949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !119950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !119951
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6aeb2e2395d9c176E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.d, ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k)
          to label %bb.ak unwind label %bb.aj, !noalias !119949, !inline_history !119894

bb.aj:                                            ; preds = %bb.ai
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ai
  %i.fa = load i64, ptr %i.d, align 8, !range !165, !noalias !119952, !noundef !152
  %.not.i.i105 = icmp eq i64 %i.fa, 19
  br i1 %.not.i.i105, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119951
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !invariant.load !152, !noalias !119953, !nonnull !152
  invoke void %i.fc(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.ex)
          to label %bb.ar unwind label %bb.aq, !noalias !119952, !inline_history !119899

bb.am:                                            ; preds = %bb.ak
  store i64 0, ptr %i.l, align 8, !alias.scope !119954
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8, !alias.scope !119954
  %i.fe = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.fe, align 8, !alias.scope !119954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !119951
  %i.ff = load ptr, ptr %i.ey, align 8, !invariant.load !152, !noalias !119955 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i1.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ], !noalias !119950
  invoke void %i.ff(ptr noundef nonnull %i.ex)
          to label %bb.ao unwind label %bb.ap, !noalias !119955, !inline_history !119900

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !range !153, !invariant.load !152, !noalias !119955 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !188, !invariant.load !152, !noalias !119955 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, -9223372036854775807
  call void @llvm.assume(i1 %i.fk), !noalias !119950
  %i.fl = icmp eq i64 %i.fh, 0
  br i1 %i.fl, label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hdd416a0750a65d31E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i117"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i117": ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ], !noalias !119950
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) %i.fj) #83, !noalias !119955, !inline_history !119900
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hdd416a0750a65d31E.exit"

bb.ap:                                            ; preds = %bb.an
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !153, !invariant.load !152, !noalias !119955 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !range !188, !invariant.load !152, !noalias !119955 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, -9223372036854775807
  call void @llvm.assume(i1 %i.fr), !noalias !119950
  %i.fs = icmp eq i64 %i.fo, 0
  br i1 %i.fs, label %common.resume118, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i116"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i116": ; preds = %bb.ap
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ex, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) %i.fq) #83, !noalias !119955, !inline_history !119900
  br label %common.resume118

bb.aq:                                            ; preds = %bb.at, %bb.al
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17h749d063c2a3d4733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.d), !noalias !119952, !inline_history !119900
  br label %bb.bg

bb.ar:                                            ; preds = %bb.al
  %i.fu = load i64, ptr %i.c, align 8, !noalias !119951, !noundef !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119951
  %i.fv = call i64 @llvm.uadd.sat.i64(i64 %i.fu, i64 1) ; 2 uses
  %.sroa.0.0.i.i107 = call noundef i64 @llvm.umax.i64(i64 %i.fv, i64 4) ; 3 uses
  %i.fw = mul i64 %.sroa.0.0.i.i107, 280          ; 3 uses
  %or.cond.i.i.i.i108 = icmp ugt i64 %i.fv, 32940614417338485
  br i1 %or.cond.i.i.i.i108, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109, !prof !158

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109: ; preds = %bb.ar
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !119956, !inline_history !119900
  %i.fy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.fw, i64 noundef range(i64 1, 9) 8) #83, !noalias !119956, !inline_history !119900 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.4.0.ph.i.i115 = phi i64 [ 8, %bb.as ], [ 0, %bb.ar ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i115, i64 %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc.i unwind label %bb.aq, !noalias !119952, !inline_history !119900

.noexc.i:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109
  %.sroa.10.0.i.i110 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109 ], [ %i.fy, %bb.as ] ; 3 uses
  %.sroa.4.0.i.i111 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i109 ], [ %.sroa.0.0.i.i107, %bb.as ] ; 2 uses
  %i.ga = icmp ule i64 %.sroa.0.0.i.i107, %.sroa.4.0.i.i111
  call void @llvm.assume(i1 %i.ga), !noalias !119950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0.i.i110, ptr noundef nonnull align 8 dereferenceable(280) %i.d, i64 280, i1 false), !noalias !119952
  store i64 %.sroa.4.0.i.i111, ptr %i.e, align 8, !noalias !119951
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i110, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !119951
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !119951
  call void @llvm.experimental.noalias.scope.decl(metadata !119957)
  call void @llvm.experimental.noalias.scope.decl(metadata !119958), !noalias !119950
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  br label %bb.av

bb.av:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit.i", %bb.au
  %i.gc = phi ptr [ %i.gk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit.i" ], [ %.sroa.10.0.i.i110, %bb.au ]
  %i.gd = phi i64 [ %i.gm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit.i" ], [ 1, %bb.au ] ; 5 uses
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6aeb2e2395d9c176E"(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.ay unwind label %bb.ax, !noalias !119949

bb.aw:                                            ; preds = %bb.bb, %bb.ax
  %.pn.i.i.i = phi { ptr, i32 } [ %i.gn, %bb.bb ], [ %i.ge, %bb.ax ]
  invoke fastcc void @"_ZN4core3ptr455drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$$RF$str$C$$RF$toml_edit..value..Value$RP$$GT$$C$nickel_lang_core..serialize..toml_deser..to_record$LT$toml_edit..value..Value$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$$RF$str$C$$RF$toml_edit..value..Value$RP$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h14b44385cdf87715E"(ptr nonnull %i.ex, ptr nonnull %i.ey) #86
          to label %.body.i112 unwind label %bb.bc, !noalias !119959, !inline_history !119909

bb.ax:                                            ; preds = %bb.av
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %bb.av
  %i.gf = load i64, ptr %i.a, align 8, !range !165, !noalias !119952, !noundef !152
  %.not.i.i.i114 = icmp eq i64 %i.gf, 19
  br i1 %.not.i.i.i114, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h6fa6b8123a338f10E.exit.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gg = icmp samesign ult i64 %i.gd, 32940614417338486
  call void @llvm.assume(i1 %i.gg), !noalias !119950
  %i.gh = load i64, ptr %i.e, align 8, !range !153, !alias.scope !119960, !noalias !119955, !noundef !152
  %i.gi = icmp eq i64 %i.gd, %i.gh
  br i1 %i.gi, label %bb.ba, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h44ccfcbed5084761E.exit.i"

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119961
  %i.gj = load ptr, ptr %i.gb, align 8, !invariant.load !152, !noalias !119962, !nonnull !152
  invoke void %i.gj(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.ex)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h3a1055aeff80b19fE.exit12.i" unwind label %bb.bb, !noalias !119952, !inline_history !119916

end_hunk_12
