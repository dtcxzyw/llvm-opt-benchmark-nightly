Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN15index_scheduler5queue5Queue8register17h0be7d55737be855aE:bb.a
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"

bb.eh:                                            ; preds = %bb.dz
  %.sroa.081.0.copyload.i = load i64, ptr %i.aj, align 8, !noalias !51721
  %.sroa.683.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.683.0.copyload.i = load ptr, ptr %.sroa.683.0..sroa_idx.i, align 8, !noalias !51721
  %.sroa.786.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.786.0.copyload.i = load i64, ptr %.sroa.786.0..sroa_idx.i, align 8, !noalias !51721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !51721
  br label %bb.ea

bb.ei:                                            ; preds = %bb.ee, %bb.ed
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %.sroa.081.0.i, label %bb.ej [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"
  ]

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.683.0.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.683.0.i, i64 noundef %.sroa.081.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !51826
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i"

"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i": ; preds = %bb.ed, %bb.eb
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !51720
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i64 %.sroa.081.0.i, ptr %i.lr, align 8, !alias.scope !51719, !noalias !51720
  %.sroa.683.0..sroa_idx84.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store ptr %.sroa.683.0.i, ptr %.sroa.683.0..sroa_idx84.i, align 8, !alias.scope !51719, !noalias !51720
  %.sroa.786.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i64 %.sroa.786.0.i, ptr %.sroa.786.0..sroa_idx87.i, align 8, !alias.scope !51719, !noalias !51720
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.lb, ptr %i.ls, align 8, !alias.scope !51719, !noalias !51720
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.sroa.516.0.i, ptr %i.lt, align 8, !alias.scope !51719, !noalias !51720
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !51720
  store i64 -9223372036854775793, ptr %i.bk, align 8, !alias.scope !51719, !noalias !51720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !51721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !51721
  br label %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"

bb.ek:                                            ; preds = %bb.bs, %bb.br, %bb.be, %bb.bd, %bb.az, %bb.ax, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Key$GT$$GT$17h88803d0921332ce4E.exit.i.i", %bb.bj, %bb.bt, %bb.bu, %bb.bz, %bb.ca, %bb.cd, %bb.ce, %bb.cg, %bb.ch, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i", %bb.cm, %.body.i, %bb.da, %bb.de, %bb.df, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i", %bb.dj, %bb.dr, %bb.ds, %bb.du, %bb.dv, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i", %bb.ef, %bb.ek
  %eh.lpad-body = phi { ptr, i32 } [ %i.lv, %bb.ek ], [ %eh.lpad-body.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Key$GT$$GT$17h88803d0921332ce4E.exit.i.i" ], [ %i.hf, %bb.bt ], [ %.pn.pn.i.i, %bb.bj ], [ %i.hf, %bb.bu ], [ %i.kt, %bb.dv ], [ %i.hz, %bb.ca ], [ %i.id, %bb.ce ], [ %i.ii, %bb.ch ], [ %.pn27.pn.i, %bb.cm ], [ %eh.lpad-body.i, %bb.da ], [ %i.kc, %bb.df ], [ %.pn22.i, %bb.dj ], [ %i.ko, %bb.ds ], [ %i.hz, %bb.bz ], [ %i.id, %bb.cd ], [ %i.ii, %bb.cg ], [ %.pn27.pn.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17he58f49b22575bf74E.exit.i" ], [ %eh.lpad-body.i, %.body.i ], [ %i.kc, %bb.de ], [ %.pn22.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit.i" ], [ %i.ko, %bb.dr ], [ %i.kt, %bb.du ], [ %.pn.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd9220220a7cf1ae9E.exit73.i" ], [ %.pn.i, %bb.ef ] ; 2 uses
  %i.lw = load i64, ptr %i.bl, align 8, !range !98, !alias.scope !51827, !noundef !57
  %i.lx = icmp eq i64 %i.lw, 19
  br i1 %i.lx, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$17h8181b99bb2f749ddE.exit", label %bb.el

bb.el:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$meilisearch_types..tasks..Details$GT$17h90c86c9b3279c100E"(ptr noalias noundef readonly align 8 dereferenceable(192) %i.bl)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$meilisearch_types..tasks..Details$GT$$GT$17h8181b99bb2f749ddE.exit" unwind label %bb.ih

"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit": ; preds = %"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8a29e3fa993389a9E.exit.i", %bb.dy, %bb.dw, %bb.dt, %bb.dn, %bb.dd, %bb.db, %bb.cy, %bb.ci, %bb.cf, %bb.by, %bb.bw, %"_ZN74_$LT$meilisearch_types..tasks..DsrUpdate$u20$as$u20$core..clone..Clone$GT$5clone17h5fd7716f645b4bf5E.exit.i", %"_ZN95_$LT$meilisearch_types..tasks..network..NetworkTopologyChange$u20$as$u20$core..clone..Clone$GT$5clone17hc7b7c609397173c8E.exit.i", %.noexc49, %bb.ay, %bb.aw, %.noexc44, %.noexc41, %.noexc39
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bo, i64 776
  store i32 %..i, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i32 0, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bo, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 751
  store i8 1, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bo, i64 767
  store i8 1, ptr %.sroa.27.0..sroa_idx8, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.mb, ptr noundef nonnull align 8 dereferenceable(104) %i.bm, i64 104, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bo, i64 720
  store i32 0, ptr %i.mc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bo, ptr noundef nonnull align 8 dereferenceable(192) %i.bl, i64 192, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %i.bo, i64 780
  store i8 0, ptr %i.md, align 4
  %i.me = getelementptr inbounds nuw i8, ptr %i.bo, i64 424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.me, ptr noundef nonnull align 8 dereferenceable(288) %i.bk, i64 288, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bo, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.mf, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 104, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bo, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !51828)
  %i.mh = load i64, ptr %i.me, align 8, !range !95, !noundef !57 ; 3 uses
  %i.mi = icmp ne i64 %i.mh, -9223372036854775790
  call void @llvm.assume(i1 %i.mi)
  %i.mj = add i64 %i.mh, 9223372036854775797
  %switch.i = icmp ult i64 %i.mj, 2
  br i1 %switch.i, label %bb.em, label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

bb.em:                                            ; preds = %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !51829)
  %i.mk = lshr i32 %..i, 16
  %i.ml = trunc nuw i32 %i.mk to i16              ; 2 uses
  %i.mm = trunc i32 %..i to i16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bo, i64 472 ; 2 uses
  %.promoted25.i.i = load i64, ptr %i.mn, align 8, !alias.scope !51830 ; 3 uses
  %i.mo = icmp ult i64 %.promoted25.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.mo)
  %.not33.i.i = icmp eq i64 %.promoted25.i.i, 0
  br i1 %.not33.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.lr.ph.lr.ph.i.i

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.em
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bo, i64 464
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !51830, !nonnull !57, !noundef !57 ; 6 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.01.0.ph31.i.i = phi i64 [ 0, %.lr.ph.lr.ph.i.i ], [ %i.mx, %.outer.i.i ] ; 4 uses
  %.promoted2729.i.i = phi i64 [ %.promoted25.i.i, %.lr.ph.lr.ph.i.i ], [ %.promoted26.i.i, %.outer.i.i ]
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %.sroa.01.0.ph31.i.i ; 7 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mv = xor i64 %.sroa.01.0.ph31.i.i, -1
  br label %bb.en

bb.en:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i", %.lr.ph.i.i
  %.promoted26.i.i = phi i64 [ %.promoted2729.i.i, %.lr.ph.i.i ], [ %i.nh, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i" ] ; 5 uses
  %i.mw = load i16, ptr %i.ms, align 8, !noalias !51830, !noundef !57 ; 2 uses
  %.not.i.i55 = icmp ult i16 %i.mw, %i.ml
  br i1 %.not.i.i55, label %.outer.i.i, label %bb.eo

.outer.i.i:                                       ; preds = %bb.eq, %bb.en
  %i.mx = add nuw nsw i64 %.sroa.01.0.ph31.i.i, 1 ; 2 uses
  %i.my = icmp samesign ult i64 %i.mx, %.promoted26.i.i
  br i1 %i.my, label %.lr.ph.i.i, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"

bb.eo:                                            ; preds = %bb.en
  %i.mz = icmp eq i16 %i.mw, %i.ml
  %..i.i = select i1 %i.mz, i16 %i.mm, i16 0
  %.sroa.013.0.insert.ext.i.i = zext i16 %..i.i to i48
  %.sroa.013.2.insert.insert.i.i = or disjoint i48 %.sroa.013.0.insert.ext.i.i, 4294901760
  %i.na = invoke noundef i64 @_ZN7roaring6bitmap9container9Container12remove_range17h1a85b2ff3d71fcb1E(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mr, i48 %.sroa.013.2.insert.insert.i.i)
          to label %.noexc57 unwind label %.loopexit152 ; 0 uses

.noexc57:                                         ; preds = %bb.eo
  %i.nb = load i64, ptr %i.mr, align 8, !range !83, !noalias !51830, !noundef !57 ; 3 uses
  %i.nc = icmp eq i64 %i.nb, -9223372036854775808
  %i.nd = load i64, ptr %i.mt, align 8, !noalias !51830, !noundef !57 ; 2 uses
  br i1 %i.nc, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.noexc57
  %i.ne = icmp ult i64 %i.nd, 4611686018427387904
  call void @llvm.assume(i1 %i.ne)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.noexc57
  %.sroa.012.0.in.i.i = icmp eq i64 %i.nd, 0
  br i1 %.sroa.012.0.in.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i", label %.outer.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i": ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !51831)
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51832 ; 4 uses
  %i.nf = add nsw i64 %.promoted26.i.i, %i.mv
  %i.ng = shl nuw nsw i64 %i.nf, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mr, ptr nonnull align 8 %i.mu, i64 %i.ng, i1 false), !noalias !51833
  %i.nh = add nsw i64 %.promoted26.i.i, -1        ; 5 uses
  store i64 %i.nh, ptr %i.mn, align 8, !alias.scope !51834, !noalias !51835
  switch i64 %i.nb, label %bb.er [
    i64 -9223372036854775808, label %bb.es
    i64 0, label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"
  ]

bb.er:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  %i.ni = shl nuw i64 %i.nb, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.ni, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !51830
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"

bb.es:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !51830
  br label %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"

"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i": ; preds = %bb.es, %bb.er, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb39822a987decdbeE.exit.i.i"
  %i.nj = icmp ult i64 %i.nh, 288230376151711744
  call void @llvm.assume(i1 %i.nj)
  %i.nk = icmp samesign ult i64 %.sroa.01.0.ph31.i.i, %i.nh
  br i1 %i.nk, label %bb.en, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i": ; preds = %.outer.i.i, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i"
  %i.nl = phi i64 [ %i.nh, %"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h2c84ad0dbc5c64f5E.exit.i.i" ], [ %.promoted26.i.i, %.outer.i.i ] ; 5 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i"
  %min.iters.check = icmp ult i64 %i.nl, 5
  br i1 %min.iters.check, label %.preheader.i.preheader946, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %i.nn = and i64 %i.nl, 3                        ; 2 uses
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = select i1 %i.no, i64 4, i64 %i.nn
  %n.vec = sub nsw i64 %i.nl, %i.np               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.og, %vector.body ]
  %vec.phi839 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.oh, %vector.body ]
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %index
  %i.nr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %index
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %index
  %i.nt = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %index
  %i.nu = getelementptr i8, ptr %i.nq, i64 16
  %i.nv = getelementptr i8, ptr %i.nr, i64 48
  %i.nw = getelementptr i8, ptr %i.ns, i64 80
  %i.nx = getelementptr i8, ptr %i.nt, i64 112
  %i.ny = load i64, ptr %i.nu, align 8, !noalias !51828
  %i.nz = load i64, ptr %i.nv, align 8, !noalias !51828
  %i.oa = insertelement <2 x i64> poison, i64 %i.ny, i64 0
  %i.ob = insertelement <2 x i64> %i.oa, i64 %i.nz, i64 1
  %i.oc = load i64, ptr %i.nw, align 8, !noalias !51828
  %i.od = load i64, ptr %i.nx, align 8, !noalias !51828
  %i.oe = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %i.of = insertelement <2 x i64> %i.oe, i64 %i.od, i64 1
  %i.og = add <2 x i64> %i.ob, %vec.phi           ; 2 uses
  %i.oh = add <2 x i64> %i.of, %vec.phi839        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oi = icmp eq i64 %index.next, %n.vec
  br i1 %i.oi, label %middle.block, label %vector.body, !llvm.loop !51415

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.oh, %i.og
  %i.oj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.i.preheader946

.preheader.i.preheader946:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.09.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.oj, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader946, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"
  %.sroa.09.0.i.i = phi i64 [ %i.op, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.09.0.i.i.ph, %.preheader.i.preheader946 ] ; 2 uses
  %.sroa.07.0.i.i = phi i64 [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ], [ %.sroa.07.0.i.i.ph, %.preheader.i.preheader946 ]
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %.sroa.09.0.i.i ; 2 uses
  %.val.i.i56 = load i64, ptr %i.ok, align 8, !range !83, !noalias !51828, !noundef !57
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %.val19.i.i = load i64, ptr %i.ol, align 8, !noalias !51828 ; 2 uses
  %i.om = icmp eq i64 %.val.i.i56, -9223372036854775808
  br i1 %i.om, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", label %bb.et

bb.et:                                            ; preds = %.preheader.i
  %i.on = icmp ult i64 %.val19.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.on)
  br label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i"

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i": ; preds = %bb.et, %.preheader.i
  %i.oo = add i64 %.val19.i.i, %.sroa.07.0.i.i    ; 2 uses
  %i.op = add nuw i64 %.sroa.09.0.i.i, 1          ; 2 uses
  %i.oq = icmp eq i64 %i.op, %i.nl
  br i1 %i.oq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", label %.preheader.i, !llvm.loop !51416

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i", %bb.em
  %.sroa.04.0.i.i = phi i64 [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$12remove_range17h39d26abdede7c060E.exit.i" ], [ 0, %bb.em ], [ %i.oo, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h0b6db31b2acc6f9aE.exit.i.i" ]
  %i.or = load i64, ptr %i.bo, align 8, !range !98, !alias.scope !51828, !noundef !57
  %i.os = add nsw i64 %i.or, -11
  %or.cond.i = icmp ult i64 %i.os, 2
  br i1 %or.cond.i, label %bb.eu, label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

bb.eu:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i"
  %.sroa.02.0.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %.sroa.04.0.i.i, ptr %.sroa.02.0.i, align 8, !alias.scope !51828
  br label %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit

.loopexit152:                                     ; preds = %bb.eo
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.loopexit.split-lp153:                            ; preds = %bb.id, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %.loopexit152, %.loopexit.split-lp153, %bb.gz, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %.body.i68
  %eh.lpad-body81 = phi { ptr, i32 } [ %.pn30.i, %bb.gz ], [ %.pn30.i, %.body.i68 ], [ %.pn30.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %lpad.loopexit154, %.loopexit152 ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp153 ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch_types..tasks..Task$GT$17h5bb1e41146e1ac72E"(ptr noalias noundef align 8 dereferenceable(784) %i.bo) #81
          to label %.thread125 unwind label %bb.ih

_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit: ; preds = %bb.eu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h916a0a98c2c76365E.exit.i", %"_ZN80_$LT$meilisearch_types..tasks..KindWithContent$u20$as$u20$core..clone..Clone$GT$5clone17h1f0143e95f6e0bcaE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !51836)
  %i.ot = icmp eq i64 %i.mh, -9223372036854775798
  br i1 %i.ot, label %bb.ev, label %bb.id

bb.ev:                                            ; preds = %_ZN15index_scheduler5utils36filter_out_references_to_newer_tasks17hf8affc903aa95743E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !51837
  %i.ou = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  %i.ow = load i8, ptr %i.ov, align 8, !range !74, !noalias !51838, !noundef !57
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i", !prof !58

._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.ev
  %.pre.i.i.i.i.i = load i64, ptr %i.ou, align 8, !noalias !51839
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !51839
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i": ; preds = %bb.ev
  %i.oy = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc79 unwind label %.loopexit.split-lp153 ; 2 uses

.noexc79:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h97edf49b851bdd58E.exit.i.i.i.i.i"
  %i.oz = extractvalue { i64, i64 } %i.oy, 0
  %i.pa = extractvalue { i64, i64 } %i.oy, 1      ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store i64 %i.pa, ptr %i.pb, align 8, !noalias !51840
  store i8 1, ptr %i.ov, align 8, !noalias !51840
  br label %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"

"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i": ; preds = %.noexc79, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.pa, %.noexc79 ]
  %i.pc = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h80fe8d30f88dc9f2E.exit_crit_edge.i.i.i.i.i ], [ %i.oz, %.noexc79 ] ; 2 uses
  %i.pd = add i64 %i.pc, 1
  store i64 %i.pd, ptr %i.ou, align 8, !noalias !51839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @30, i64 32, i1 false), !noalias !51837
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  store i64 %i.pc, ptr %.sroa.4126.0..sroa_idx.i, align 8, !noalias !51837
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store i64 %.pre-phi.i.i, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !51837
  %i.pe = getelementptr inbounds nuw i8, ptr %i.bo, i64 440
  %i.pf = load ptr, ptr %i.pe, align 8, !alias.scope !51836, !noalias !51841, !nonnull !57, !noundef !57 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bo, i64 448
  %i.ph = load i64, ptr %i.pg, align 8, !alias.scope !51836, !noalias !51841, !noundef !57 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ph, 56
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx.i
  %.not384.i = icmp eq i64 %i.ph, 0
  br i1 %.not384.i, label %.thread505.i, label %.lr.ph.i

.thread505.i:                                     ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !51842
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i.i.i.i"

.lr.ph.i:                                         ; preds = %"_ZN87_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..default..Default$GT$7default17hef99325a4aea1b09E.exit.i"
  %.sroa.421.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.812.0..sroa_idx.i.i.i43.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.1018.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fi, %.lr.ph.i
  %.sroa.0118.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0118.2, %bb.fi ]
  %.sroa.7119.0 = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.7119.2, %bb.fi ]
  %.sroa.10120.0 = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.10120.2, %bb.fi ]
  %.sroa.026.0385.i = phi ptr [ %i.pf, %.lr.ph.i ], [ %i.pr, %bb.fi ] ; 3 uses
  %i.po = phi ptr [ null, %.lr.ph.i ], [ %i.ahy, %bb.fi ]
  %i.pp = phi i64 [ undef, %.lr.ph.i ], [ %i.ahx, %bb.fi ]
  %i.pq = phi i64 [ 0, %.lr.ph.i ], [ %i.ahw, %bb.fi ]
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.026.0385.i, i64 56 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.026.0385.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !51837
  store i64 2, ptr %.sroa.421.0..sroa_idx.i58, align 8, !noalias !51837
  store ptr %.sroa.026.0385.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !51837
  store ptr %i.ps, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !51837
  br label %bb.ex

._crit_edge.i:                                    ; preds = %bb.fi
  switch i64 %i.ahw, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit74.i" [
    i64 0, label %bb.gx
    i64 1, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9354c8e726cff173E.exit.i"
  ]

.loopexit214.i:                                   ; preds = %bb.gt, %bb.gs, %bb.gr
  %lpad.loopexit216.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

.loopexit.split-lp215.loopexit.i:                 ; preds = %bb.fc
  %lpad.loopexit218.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

.loopexit.split-lp215.loopexit.split-lp.i:        ; preds = %.invoke.i, %.invoke582.i
  %.sroa.0118.5 = phi ptr [ %.sroa.0118.1, %.invoke.i ], [ %.sroa.0118.4, %.invoke582.i ]
  %.sroa.7119.5 = phi i64 [ %.sroa.7119.1, %.invoke.i ], [ %.sroa.7119.4, %.invoke582.i ]
  %lpad.loopexit.split-lp219.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp215.i

bb.ex:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i", %bb.ew
  %.sroa.0118.1 = phi ptr [ %.sroa.0118.0, %bb.ew ], [ %.sroa.0118.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %.sroa.7119.1 = phi i64 [ %.sroa.7119.0, %bb.ew ], [ %.sroa.7119.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %.sroa.10120.1 = phi i64 [ %.sroa.10120.0, %bb.ew ], [ %.sroa.10120.2, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 3 uses
  %i.pt = phi i64 [ 0, %bb.ew ], [ 1, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 2 uses
  %i.pu = phi ptr [ %i.po, %bb.ew ], [ %i.ahy, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 10 uses
  %i.pv = phi i64 [ %i.pp, %bb.ew ], [ %i.ahx, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb93b5d43c69f1241E.exit.i" ] ; 8 uses
end_hunk_0
