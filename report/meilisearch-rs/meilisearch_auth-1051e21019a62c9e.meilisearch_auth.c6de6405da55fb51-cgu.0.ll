Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN16meilisearch_auth14AuthController33get_optional_uid_from_encoded_key17h9a31cd80b2ea4485E:bb.a
  store ptr %.sroa.758.0.ph.i, ptr %i.bp, align 8, !noalias !2365
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  store i8 1, ptr %i.bq, align 8, !noalias !2365
  store ptr %i.x, ptr %i.r, align 8, !noalias !2365
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i64 %i.z, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !2365
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %2, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !2365
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store i64 %3, ptr %.sroa.618.0..sroa_idx.i, align 8, !noalias !2365
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.10.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.614.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %.sroa.715.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.816.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %.sroa.917.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %.sroa.1018.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %.sroa.1119.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1220.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %.sroa.1421.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  %.sroa.1522.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.1623.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %.sroa.1724.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %.sroa.1825.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %.sroa.1926.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.2027.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 17
  %.sroa.2128.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %.sroa.2229.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 19
  %.sroa.2330.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %.sroa.2431.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 21
  %.sroa.2532.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %.sroa.2633.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  %.sroa.2734.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.2835.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %.sroa.2936.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 26
  %.sroa.3037.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 27
  %.sroa.3138.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.sroa.3239.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 29
  %.sroa.3340.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 30
  %.sroa.3441.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 31
  %.sroa.3542.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.3643.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  %.sroa.3744.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %.sroa.3845.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 27
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  br label %bb.r

bb.r:                                             ; preds = %.noexc44.i, %bb.q
  %i.df = phi i8 [ %.pre.i, %.noexc44.i ], [ 1, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2391
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4heed6cursor8RoCursor12move_on_next17hd8f15388f5c5c9d6E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp, i8 noundef 0)
          to label %.noexc42.i unwind label %.loopexit.i, !noalias !2363

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.bq, align 8, !alias.scope !2392, !noalias !2393
  invoke void @_ZN4heed6cursor8RoCursor13move_on_first17hd2e6b37cf3ea6ed0E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bp, i8 noundef 0)
          to label %.noexc42.i unwind label %.loopexit.i, !noalias !2363

.noexc42.i:                                       ; preds = %bb.t, %bb.s
  %i.dh = load i64, ptr %i.k, align 8, !range !18, !noalias !2391, !noundef !8
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fac79f030d45ae9E.exit.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc42.i
  %i.dj = load ptr, ptr %i.br, align 8, !noalias !2391, !noundef !8 ; 3 uses
  %.not.i.i40.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i40.i, label %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fac79f030d45ae9E.exit.thread.i.i", label %.thread.i.i

"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fac79f030d45ae9E.exit.thread.i.i": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2391
  br label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8422296a65d29b7bE.exit.thread.i

.thread.i.i:                                      ; preds = %bb.u
  %i.dk = load i64, ptr %i.bs, align 8, !noalias !2391, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2394
  store i32 5, ptr %i.l, align 8, !noalias !2394
  store ptr %i.dj, ptr %.sroa.3.0..sroa_idx53.i.i, align 8, !noalias !2394
  store i64 %i.dk, ptr %.sroa.4.0..sroa_idx54.i.i, align 8, !noalias !2394
  br label %bb.w

"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fac79f030d45ae9E.exit.i.i": ; preds = %.noexc42.i
  %i.dl = load <2 x i32>, ptr %i.br, align 8, !noalias !2395
  %.sroa.03.0.copyload4.i.i = load i32, ptr %i.br, align 8, !noalias !2395 ; 2 uses
  %.sroa.97.0.copyload9.i.i = load ptr, ptr %i.bs, align 8, !noalias !2395 ; 2 uses
  %.sroa.10.0.copyload11.i.i = load i64, ptr %.sroa.10.0..sroa_idx10.i.i, align 8, !noalias !2395 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2391
  %.not.i41.i = icmp eq i32 %.sroa.03.0.copyload4.i.i, 6
  br i1 %.not.i41.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8422296a65d29b7bE.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %"_ZN107_$LT$heed..iterator..iter..RoIter$LT$KC$C$DC$C$IM$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2fac79f030d45ae9E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2394
  store <2 x i32> %i.dl, ptr %i.l, align 8, !noalias !2394
  store ptr %.sroa.97.0.copyload9.i.i, ptr %.sroa.3.0..sroa_idx53.i.i, align 8, !noalias !2394
  store i64 %.sroa.10.0.copyload11.i.i, ptr %.sroa.4.0..sroa_idx54.i.i, align 8, !noalias !2394
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.03.0.copyload4.i.i, 5
  br i1 %.not.i.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.v
  invoke void @"_ZN4core3ptr32drop_in_place$LT$heed..Error$GT$17hd6b0c83cf88cd8ceE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.l)
          to label %.noexc44.i unwind label %.loopexit.i, !noalias !2363

bb.w:                                             ; preds = %bb.v, %.thread.i.i
  %.sroa.10.04457.i.i = phi i64 [ %i.dk, %.thread.i.i ], [ %.sroa.10.0.copyload11.i.i, %bb.v ]
  %.sroa.97.04556.i.i = phi ptr [ %i.dj, %.thread.i.i ], [ %.sroa.97.0.copyload9.i.i, %bb.v ] ; 16 uses
  %i.dm = icmp ugt i64 %.sroa.10.04457.i.i, 15
  br i1 %i.dm, label %_ZN16meilisearch_auth5store18try_split_array_at17h2d72f07d07204513E.exit.i.i.i.i.i, label %.noexc44.i

_ZN16meilisearch_auth5store18try_split_array_at17h2d72f07d07204513E.exit.i.i.i.i.i: ; preds = %bb.w
  %.sroa.062.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.97.04556.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.463.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 1
  %.sroa.463.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.463.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.564.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 2
  %.sroa.564.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.564.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.665.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 3
  %.sroa.665.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.665.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.766.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 4
  %.sroa.766.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.766.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.867.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 5
  %.sroa.867.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.867.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.968.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 6
  %.sroa.968.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.968.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1069.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 7
  %.sroa.1069.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1069.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1170.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 8
  %.sroa.1170.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1170.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1271.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 9
  %.sroa.1271.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1271.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1372.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 10
  %.sroa.1372.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1372.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1473.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 11
  %.sroa.1473.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1473.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1574.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 12
  %.sroa.1574.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1574.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1675.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 13
  %.sroa.1675.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1675.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1776.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 14
  %.sroa.1776.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1776.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %.sroa.1877.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.97.04556.i.i, i64 15
  %.sroa.1877.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.1877.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 1, !noalias !2397 ; 3 uses
  %i.dn = load ptr, ptr %i.r, align 8, !alias.scope !2398, !noalias !2399, !nonnull !8, !align !13, !noundef !8
  %i.do = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !2398, !noalias !2399, !noundef !8
  %i.dp = load i64, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !2398, !noalias !2399, !noundef !8 ; 2 uses
  %4 = and i64 %i.dp, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.noexc8.i.i.i.i.i, label %.noexc44.i

.noexc8.i.i.i.i.i:                                ; preds = %_ZN16meilisearch_auth5store18try_split_array_at17h2d72f07d07204513E.exit.i.i.i.i.i
  %i.dq = load ptr, ptr %.sroa.517.0..sroa_idx.i, align 8, !alias.scope !2398, !noalias !2399, !nonnull !8, !align !13, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2400
  store i32 3, ptr %i.f, align 8, !noalias !2400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2401
  store ptr %i.dq, ptr %i.e, align 8, !alias.scope !2402, !noalias !2403
  store i64 %i.dp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2402, !noalias !2403
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2402, !noalias !2403
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2402, !noalias !2403
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2402, !noalias !2404
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2407
  %i.dr = invoke fastcc { i1, i8 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0c1eeb37278d99cE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.noexc45.i unwind label %.loopexit.i, !noalias !2363 ; 2 uses

.noexc45.i:                                       ; preds = %.noexc8.i.i.i.i.i
  %i.ds = extractvalue { i1, i8 } %i.dr, 0
  %i.dt = extractvalue { i1, i8 } %i.dr, 1
  br i1 %i.ds, label %bb.x, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i"

bb.x:                                             ; preds = %.noexc45.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.du = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2409, !noalias !2410, !nonnull !8, !align !12, !noundef !8
  %i.dv = load i32, ptr %i.du, align 8, !range !2411, !noalias !2412, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dv, 3
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2413, !noalias !2414
  %i.dw = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.dw, i1 false
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2413, !noalias !2414
  %i.dx = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.dx, i1 false
  br i1 %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc9.i.i.i.i.i:                                ; preds = %bb.x
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #50
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !2363

.noexc46.i:                                       ; preds = %.noexc9.i.i.i.i.i
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !2415
  %i.dy = call noundef dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 9) 1) #49, !noalias !2415 ; 6 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.noexc10.i.i.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.noexc10.i.i.i.i.i:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #50
          to label %.noexc47.i unwind label %.loopexit.split-lp.i, !noalias !2363

.noexc47.i:                                       ; preds = %.noexc10.i.i.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.dt, ptr %i.dy, align 1, !noalias !2416
  store i64 8, ptr %i.d, align 8, !noalias !2407
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2407
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !2414
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %i.ea = invoke fastcc { i1, i8 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0c1eeb37278d99cE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i, !noalias !2416 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.eb = extractvalue { i1, i8 } %i.ea, 0
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = phi ptr [ %i.em, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dy, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ed = phi i64 [ %i.en, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 8, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ee = phi i64 [ %i.ep, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { i1, i8 } [ %i.eq, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ea, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ef = extractvalue { i1, i8 } %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.eg = icmp sgt i64 %i.ee, -1
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp eq i64 %i.ee, %i.ed
  br i1 %i.eh, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  %i.ei = load ptr, ptr %i.bt, align 8, !alias.scope !2422, !noalias !2423, !nonnull !8, !align !12, !noundef !8
  %i.ej = load i32, ptr %i.ei, align 8, !range !2411, !noalias !2424, !noundef !8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ej, 3
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !2425, !noalias !2426
  %i.ek = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.ek, i1 false
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !2425, !noalias !2426
  %i.el = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.el, i1 false
  br i1 %or.cond3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h67d0c0b692aca1f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #50
          to label %.noexc7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i, !noalias !2416

.noexc7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.z
  unreachable

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h67d0c0b692aca1f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.y
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ed, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2416

.noexc8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h67d0c0b692aca1f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !9, !alias.scope !2427, !noalias !2428
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2427, !noalias !2428
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.en = phi i64 [ %.pre5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee
  store i8 %i.ef, ptr %i.eo, align 1, !noalias !2429
  %i.ep = add nuw i64 %i.ee, 1                    ; 3 uses
  store i64 %i.ep, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2427, !noalias !2428
  %i.eq = invoke fastcc { i1, i8 } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he0c1eeb37278d99cE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !2416 ; 2 uses

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.er = extractvalue { i1, i8 } %i.eq, 0
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.i.i.i.i.i.i.i.i.i"

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9cf38a49aecb6495E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h67d0c0b692aca1f4E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb4bbe0f7e5c6f83eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i: ; preds = %bb.z
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !range !9, !alias.scope !2430, !noalias !2407, !noundef !8 ; 2 uses
  %i.es = icmp eq i64 %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.es, label %.body48.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val1.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2430, !noalias !2407, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !2431
  br label %.body48.i

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.copyload10.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !2432 ; 4 uses
  %.sroa.7.0.copyload12.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2432 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2401
  %i.et = load i32, ptr %i.f, align 8, !range !2411, !noalias !2400, !noundef !8
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.et, 3
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.i.i.i.i.i.i", label %bb.ab

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2401
  %i.eu = load i32, ptr %i.f, align 8, !range !2411, !noalias !2400, !noundef !8
  %.not.not.i17.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eu, 3
  br i1 %.not.not.i17.i.i.i.i.i.i.i.i.i, label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread62.i.i.i.i.i.i", label %.thread20.i.i.i.i.i.i.i.i.i

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i": ; preds = %.noexc45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2401
  %i.ev = load i32, ptr %i.f, align 8, !range !2411, !noalias !2400, !noundef !8
  %.not.not.i4.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ev, 3
  br i1 %.not.not.i4.i.i.i.i.i.i.i.i.i, label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread62.i.i.i.i.i.i", label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread57.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ew = icmp eq i64 %.sroa.09.0.copyload10.pre.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ew, label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread57.i.i.i.i.i.i", label %.thread20.i.i.i.i.i.i.i.i.i

.thread20.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ab, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0.copyload12.i1824.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.copyload12.pre.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %i.dy, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.09.0.copyload10.i1923.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.0.copyload10.pre.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ 8, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload12.i1824.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload12.i1824.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.09.0.copyload10.i1923.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !2433
  br label %"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread57.i.i.i.i.i.i"

"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread57.i.i.i.i.i.i": ; preds = %.thread20.i.i.i.i.i.i.i.i.i, %bb.ab, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2400
  br label %.noexc44.i

"_ZN58_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$hex..FromHex$GT$8from_hex17hfc3b8655fd9eea71E.exit.thread62.i.i.i.i.i.i": ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i", %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i"
  %.sroa.10.0.ph.i.i.i.i.i.i = phi ptr [ %i.dy, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 1 to ptr), %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i" ]
  %.sroa.16.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i" ]
  %.sroa.040.0.ph.i.i.i.i.i.i = phi i64 [ 8, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread13.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h4759c67a5d814adcE.exit.i.thread.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2400
  br label %bb.ae
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h09e0857a21787371E"
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h09e0857a21787371E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4859)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4859, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4859
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4859 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0655ab2309fb656dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4859, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0655ab2309fb656dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4859, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4859, !noundef !8
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4859, !noundef !8
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4859
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4859, !nonnull !8, !noundef !8
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4859
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4859, !nonnull !8, !noundef !8
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4859, !inline_history !4858
  %i.s = load i64, ptr %i.e, align 8, !noalias !4859, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4859
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0655ab2309fb656dE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0655ab2309fb656dE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4859, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4859, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4859
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr193drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$17hd71f116f94a3e8fcE"(ptr %.0.val, i8 %.8.val) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.h = add i32 %i.g, -1073741823                ; 2 uses
  %or.cond.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.i, label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5caf201e34bcb123E.exit", label %bb.e, !prof !16

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.h)
  br label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5caf201e34bcb123E.exit"

"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5caf201e34bcb123E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17hbe52428e4bf53bd4E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 1, 33) %2) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4879)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !4878, !noalias !4879
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !4879, !noalias !4878
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !4878, !noalias !4879
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !4879, !noalias !4878
  %exitcond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4881)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !4880, !noalias !4881
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.d, align 1, !alias.scope !4881, !noalias !4880
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.c, align 1, !alias.scope !4880, !noalias !4881
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.d, align 1, !alias.scope !4881, !noalias !4880
  %exitcond.not.i.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4883)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !4882, !noalias !4883
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.f, align 1, !alias.scope !4883, !noalias !4882
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.e, align 1, !alias.scope !4882, !noalias !4883
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.f, align 1, !alias.scope !4883, !noalias !4882
  %exitcond.not.i.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.i.2, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !4884, !noalias !4885
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.h, align 1, !alias.scope !4885, !noalias !4884
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.g, align 1, !alias.scope !4884, !noalias !4885
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.h, align 1, !alias.scope !4885, !noalias !4884
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i: ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %bb.a
  %.not4.i = icmp eq i64 %i.b, 0
  br i1 %.not4.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i
  %i.i = and i64 %2, 56                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 4 uses
  %i.l = icmp samesign ult i64 %i.b, 4
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4887)
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %i.j, align 1, !alias.scope !4886, !noalias !4887
  %.sroa.02.0.copyload.i.i6.i = load i32, ptr %i.k, align 1, !alias.scope !4887, !noalias !4886
  store i32 %.sroa.02.0.copyload.i.i6.i, ptr %i.j, align 1, !alias.scope !4886, !noalias !4887
  store i32 %.sroa.0.0.copyload.i.i5.i, ptr %i.k, align 1, !alias.scope !4887, !noalias !4886
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.m = and i64 %2, 2
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4889)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.o, align 1, !alias.scope !4888, !noalias !4889
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.p, align 1, !alias.scope !4889, !noalias !4888
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.o, align 1, !alias.scope !4888, !noalias !4889
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.p, align 1, !alias.scope !4889, !noalias !4888
  %i.q = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %3 = and i64 %2, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.1.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4891)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.r, align 1, !alias.scope !4890, !noalias !4891
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.s, align 1, !alias.scope !4891, !noalias !4890
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.r, align 1, !alias.scope !4890, !noalias !4891
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.s, align 1, !alias.scope !4891, !noalias !4890
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h05fd4323c7baf087E.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr212drop_in_place$LT$heed..iterator..prefix..RoPrefix$LT$meilisearch_auth..store..KeyIdActionCodec$C$heed_types..serde_json..SerdeJson$LT$core..option..Option$LT$time..offset_date_time..OffsetDateTime$GT$$GT$$GT$$GT$17h30119b55d4e3031aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @"_ZN64_$LT$heed..cursor..RoCursor$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb513896864dab575E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr43drop_in_place$LT$heed..cursor..RoCursor$GT$17hd173788accc73c19E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4896)
  %.val.i = load i64, ptr %0, align 8, !range !9, !alias.scope !4896, !noundef !8 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !4896, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !4896
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit"

"_ZN4core3ptr43drop_in_place$LT$heed..cursor..RoCursor$GT$17hd173788accc73c19E.exit": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4897)
  %.val.i1 = load i64, ptr %0, align 8, !range !9, !alias.scope !4897, !noundef !8 ; 2 uses
  %i.e = icmp eq i64 %.val.i1, 0
  br i1 %i.e, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit3", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr43drop_in_place$LT$heed..cursor..RoCursor$GT$17hd173788accc73c19E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2 = load ptr, ptr %i.f, align 8, !alias.scope !4897, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !4897
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit3"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit3": ; preds = %"_ZN4core3ptr43drop_in_place$LT$heed..cursor..RoCursor$GT$17hd173788accc73c19E.exit", %bb.d
  ret void

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha8399efb2de0ca55E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr231drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$$GT$17ha763a347c6f2fbd8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !12, !noundef !8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !14, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.i = add i32 %i.h, -1073741823                ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.i, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr193drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$17hd71f116f94a3e8fcE.exit", label %bb.e, !prof !16

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.i)
  br label %"_ZN4core3ptr193drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$17hd71f116f94a3e8fcE.exit"

"_ZN4core3ptr193drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$std..collections..hash..map..HashMap$LT$std..path..PathBuf$C$alloc..sync..Arc$LT$synchronoise..event..SignalEvent$GT$$GT$$GT$$GT$17hd71f116f94a3e8fcE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr248drop_in_place$LT$core..result..Result$LT$$LP$uuid..Uuid$C$meilisearch_types..keys..Action$C$core..option..Option$LT$$RF$$u5b$u8$u5d$$GT$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$$GT$17h3ec02f1bd7ff5a54E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4898, !noundef !8
  %.not = icmp eq i8 %i.a, 58
  br i1 %.not, label %bb.b, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !8 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #49
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17hdc457d87d9520c96E.exit"

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !25, !invariant.load !8 ; 2 uses
  %i.p = icmp ult i64 %i.o, -9223372036854775807
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h852cd73b8cbed04bE.exit5.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.o) #49
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h852cd73b8cbed04bE.exit5.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h852cd73b8cbed04bE.exit5.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr290drop_in_place$LT$core..iter..adapters..map..Map$LT$std..collections..hash..set..IntoIter$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$C$$LT$meilisearch_auth..SearchRules$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$..into_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc55bfbad459b1a9cE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4927, !noundef !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3aa6226f4611bb2dE.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i16, ptr %i.e, align 8, !alias.scope !4928
  %.promoted8.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4927
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted12.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4927
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$$LP$$RP$$RP$$GT$17h7042396c40c3b410E.exit.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %"_ZN4core3ptr93drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$$LP$$RP$$RP$$GT$17h7042396c40c3b410E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.g = phi i64 [ %i.c, %.preheader.i.i.i.i.i.i ], [ %i.t, %"_ZN4core3ptr93drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$$LP$$RP$$RP$$GT$17h7042396c40c3b410E.exit.i.i.i.i.i.i" ]
  %.lcssa710.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %.lcssa79.i.i.i.i.i.i, %"_ZN4core3ptr93drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$$LP$$RP$$RP$$GT$17h7042396c40c3b410E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.h = phi i16 [ %.promoted.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.q, %"_ZN4core3ptr93drop_in_place$LT$$LP$meilisearch_types..index_uid_pattern..IndexUidPattern$C$$LP$$RP$$RP$$GT$17h7042396c40c3b410E.exit.i.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4929)
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h83a68c409d8f94c6E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !4928
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !4928
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h83a68c409d8f94c6E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i, %bb.b ]
  %.val911.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !4928
  %i.k = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -384 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.k to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3put17h7c17451269a98fb4E":bb.a
  store ptr @192, ptr %i.c, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 279, ptr %i.cg, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.ck, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #53
  unreachable

_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit: ; preds = %bb.ak
  store i64 %i.ak, ptr %i.o, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ah, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cm = icmp sgt i64 %.sroa.9.0.copyload.i, -1
  br i1 %i.cm, label %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150, label %bb.am, !prof !39

bb.am:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @192, ptr %i.a, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 279, ptr %i.cn, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cr, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, i1 noundef zeroext false, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #53
  unreachable

_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150: ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit
  store i64 %.sroa.9.0.copyload.i, ptr %i.n, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noundef !8 ; 2 uses
  %.not136 = icmp eq ptr %i.cu, null
  br i1 %.not136, label %bb.ao, label %bb.an, !prof !10

bb.an:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150
  %i.cv = call noundef i32 @mdb_put(ptr noundef nonnull %i.cu, i32 noundef %.8.val, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, i32 noundef 0) #49
  %i.cw = invoke { i32, i32 } @_ZN4heed3mdb10lmdb_error10mdb_result17h91f495da5828afd4E(i32 noundef %i.cv)
          to label %bb.as unwind label %bb.ap     ; 2 uses

bb.ao:                                            ; preds = %_ZN4core5slice3raw14from_raw_parts18precondition_check17h5a7d8ed6c95136a1E.exit150
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #50
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao, %bb.an
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %cond, label %.body, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !5905
  br label %.body

bb.ar:                                            ; preds = %bb.ao
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.cy = extractvalue { i32, i32 } %i.cw, 0      ; 2 uses
  %.not137 = icmp eq i32 %i.cy, 22
  br i1 %.not137, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = extractvalue { i32, i32 } %i.cw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN87_$LT$heed..Error$u20$as$u20$core..convert..From$LT$heed..mdb..lmdb_error..Error$GT$$GT$4from17hea4d5b0dd9c7836fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, i32 noundef %i.cy, i32 %i.cz)
          to label %bb.ax unwind label %bb.ap

bb.au:                                            ; preds = %bb.as
  store i32 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %cond33 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %cond33, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152", label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !5906
  br label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152"

"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152": ; preds = %bb.au, %bb.av
  switch i64 %i.ae, label %bb.aw [
    i64 -9223372036854775808, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"
    i64 0, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"
  ]

bb.aw:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !5907
  br label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"

"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153": ; preds = %bb.d, %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154", %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154", %bb.az, %bb.aw, %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152", %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit152"
  ret void

bb.ax:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %cond34 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %cond34, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154", label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !5908
  br label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154"

"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154": ; preds = %bb.ax, %bb.ay, %bb.aj
  switch i64 %i.ae, label %bb.az [
    i64 -9223372036854775808, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"
    i64 0, label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"
  ]

bb.az:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit154"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !5909
  br label %"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit153"

"_ZN4core3ptr59drop_in_place$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$17h999b5cc2562f5d7cE.exit": ; preds = %bb.ah, %.body, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17hb2c96aa287e818a2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull align 4 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = alloca [40 x i8], align 1                ; 4 uses
  %i.e = alloca [40 x i8], align 1                ; 4 uses
  %i.f = alloca [40 x i8], align 1                ; 4 uses
  %i.g = alloca [40 x i8], align 1                ; 4 uses
  %i.h = alloca [40 x i8], align 1                ; 4 uses
  %i.i = alloca [40 x i8], align 1                ; 4 uses
  %i.j = alloca [40 x i8], align 1                ; 4 uses
  %i.k = alloca [40 x i8], align 1                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = load i16, ptr %1, align 8, !range !44, !noundef !8
  switch i16 %i.n, label %default.unreachable147 [
    i16 0, label %bb.b
    i16 1, label %bb.d
    i16 2, label %bb.ef
    i16 3, label %bb.ei
    i16 4, label %bb.ej
  ]

default.unreachable147:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !align !13, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6241)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !6242, !noalias !6243, !noundef !8 ; 3 uses
  %i.u = load i64, ptr %2, align 8, !range !9, !alias.scope !6242, !noalias !6243, !noundef !8
  %i.v = sub i64 %i.u, %i.t
  %i.w = icmp ugt i64 %i.r, %i.v
  br i1 %i.w, label %bb.c, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit", !prof !10

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.t, i64 noundef %i.r, i64 noundef 1, i64 noundef 1), !noalias !6243
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !6244, !noalias !6243
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit": ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.t, %bb.b ], [ %.pre.i.i.i.i, %bb.c ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !6244, !noalias !6243, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.p, i64 %i.r, i1 false), !noalias !6244
  %i.ac = add i64 %i.x, %i.r
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !6244, !noalias !6243
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.086.0.copyload = load i48, ptr %i.ad, align 2 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6247)
  %.sroa.024.1.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 8 ; 5 uses
  %.sroa.024.1.extract.trunc.i = trunc i48 %.sroa.024.1.extract.shift.i to i8 ; 10 uses
  %.sroa.024.2.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 16 ; 2 uses
  %.sroa.024.2.extract.trunc.i = trunc i48 %.sroa.024.2.extract.shift.i to i8 ; 5 uses
  %.sroa.024.3.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 24 ; 2 uses
  %trunc.i = trunc i48 %.sroa.086.0.copyload to i8
  switch i8 %trunc.i, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.t
    i8 3, label %switch.lookup
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ap
    i8 10, label %bb.aq
    i8 11, label %bb.bo
    i8 12, label %bb.by
    i8 13, label %bb.cd
    i8 14, label %.loopexit
    i8 15, label %bb.ci
    i8 16, label %.loopexit
  ]

bb.e:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i", %bb.ci, %bb.ap, %bb.am, %bb.ac, %bb.t, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i", %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !alias.scope !6248, !noalias !6249, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i, label %bb.g, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val165.i = load i32, ptr %i.ag, align 4, !alias.scope !6246, !noalias !6250 ; 2 uses
  %i.ah = and i32 %.val165.i, 511                 ; 2 uses
  %i.ai = lshr i32 %.val165.i, 9
  %.lobit.i.i.i = and i32 %i.ai, 1
  %i.aj = add nuw nsw i32 %.lobit.i.i.i, 59       ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.ah, %i.aj ; 2 uses
  %..i.i.i = select i1 %.not.i.i.i, i32 2, i32 0
  %.7.i.i.i = select i1 %.not.i.i.i, i32 %i.aj, i32 0
  %i.ak = sub nsw i32 %i.ah, %.7.i.i.i            ; 2 uses
  %i.al = mul nsw i32 %i.ak, 268
  %i.am = add nsw i32 %i.al, 8028
  %i.an = lshr i32 %i.am, 13                      ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, %..i.i.i         ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = mul nuw nsw i32 %i.an, 3917
  %i.as = add nuw nsw i32 %i.ar, 28902
  %i.at = lshr i32 %i.as, 7
  %i.au = sub nsw i32 %i.ak, %i.at                ; 2 uses
  %i.av = and i32 %i.au, 255
  %.sroa.43.0.extract.trunc.i.i = trunc i32 %i.ao to i8 ; 2 uses
  %.sroa.54.0.extract.trunc.i.i = trunc i32 %i.au to i8 ; 2 uses
  %i.aw = add i8 %.sroa.43.0.extract.trunc.i.i, -1
  %i.ax = icmp ult i8 %i.aw, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %.sroa.43.0.extract.trunc.i.i, ptr %i.ay, align 2, !alias.scope !6248, !noalias !6249
  %i.az = icmp ne i32 %i.av, 0
  tail call void @llvm.assume(i1 %i.az)
  store i8 %.sroa.54.0.extract.trunc.i.i, ptr %i.ae, align 4, !alias.scope !6248, !noalias !6249
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i": ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %.sroa.54.0.extract.trunc.i.i, %bb.g ], [ %i.af, %bb.f ] ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %bb.e [
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
  ]

bb.h:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !range !45, !alias.scope !6251, !noalias !6249, !noundef !8 ; 2 uses
  %.not.i.i179.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i179.i, label %bb.i, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val164.i = load i32, ptr %i.bc, align 4, !range !46, !alias.scope !6246, !noalias !6250, !noundef !8 ; 2 uses
  %i.bd = and i32 %.val164.i, 511                 ; 2 uses
  %i.be = lshr i32 %.val164.i, 9
  %.lobit.i.i.i.i.i = and i32 %i.be, 1
  %i.bf = add nuw nsw i32 %.lobit.i.i.i.i.i, 59   ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.bd, %i.bf ; 2 uses
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 2, i32 0
  %.6.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bf, i32 0
  %i.bg = sub nsw i32 %i.bd, %.6.i.i.i.i.i
  %i.bh = mul nsw i32 %i.bg, 268
  %i.bi = add nsw i32 %i.bh, 8028
  %i.bj = lshr i32 %i.bi, 13
  %i.bk = add nuw nsw i32 %i.bj, %..i.i.i.i.i
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = icmp ne i8 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  store i8 %i.bl, ptr %i.ba, align 2, !alias.scope !6251, !noalias !6249
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i": ; preds = %bb.i, %bb.h
  %i.bn = phi i8 [ %i.bb, %bb.h ], [ %i.bl, %bb.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6252)
  %trunc.i.i = trunc i48 %.sroa.024.3.extract.shift.i to i8
  switch i8 %trunc.i.i, label %bb.j [
    i8 0, label %bb.k
    i8 1, label %bb.p
    i8 2, label %bb.r
  ]

bb.j:                                             ; preds = %bb.k, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  unreachable

bb.k:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  switch i8 %.sroa.024.2.extract.trunc.i, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bo = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef range(i8 1, 13) %i.bn), !noalias !6253
  %i.bp = extractvalue { i64, ptr } %i.bo, 1
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.br = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef range(i8 1, 13) %i.bn), !noalias !6253
  %i.bs = extractvalue { i64, ptr } %i.br, 1
  %i.bt = ptrtoint ptr %i.bs to i64
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6255
  %i.bu = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef range(i8 1, 13) %i.bn, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.k), !noalias !6256 ; 2 uses
  %i.bv = sub nuw i64 3, %i.bu                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6257)
  call void @llvm.experimental.noalias.scope.decl(metadata !6258)
  call void @llvm.experimental.noalias.scope.decl(metadata !6259)
  call void @llvm.experimental.noalias.scope.decl(metadata !6260)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !6261, !noalias !6262, !noundef !8 ; 3 uses
  %i.by = load i64, ptr %2, align 8, !range !9, !alias.scope !6261, !noalias !6262, !noundef !8
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = icmp ugt i64 %i.bv, %i.bz
  br i1 %i.ca, label %bb.o, label %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i.i, !prof !10

bb.o:                                             ; preds = %bb.n
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bx, i64 noundef %i.bv, i64 noundef 1, i64 noundef 1), !noalias !6262
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !6263, !noalias !6262
  br label %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i.i

_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i.i: ; preds = %bb.o, %bb.n
  %i.cb = phi i64 [ %i.bx, %bb.n ], [ %.pre.i.i.i.i.i.i.i, %bb.o ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bu
  %i.cd = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !6263, !noalias !6262, !nonnull !8, !noundef !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull readonly align 1 %i.cc, i64 %i.bv, i1 false), !noalias !6264
  %i.ch = add nuw i64 %i.cb, %i.bv
  store i64 %i.ch, ptr %i.bw, align 8, !alias.scope !6263, !noalias !6262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6255
  br label %.loopexit

bb.p:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  %i.ci = zext nneg i8 %i.bn to i64
  %i.cj = getelementptr [16 x i8], ptr @256, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !6265, !nonnull !8, !align !13, !noundef !8
  %i.cm = getelementptr i8, ptr %i.cj, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !6265, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6269)
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !6270, !noalias !6271, !noundef !8 ; 3 uses
  %i.cq = load i64, ptr %2, align 8, !range !9, !alias.scope !6270, !noalias !6271, !noundef !8
  %i.cr = sub i64 %i.cq, %i.cp
  %i.cs = icmp ugt i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.q, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i.i", !prof !10

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cp, i64 noundef %i.cn, i64 noundef 1, i64 noundef 1), !noalias !6271
  %.pre.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !6272, !noalias !6271
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i.i": ; preds = %bb.q, %bb.p
  %i.ct = phi i64 [ %i.cp, %bb.p ], [ %.pre.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.cu = icmp sgt i64 %i.ct, -1
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !6272, !noalias !6271, !nonnull !8, !noundef !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull readonly align 1 %i.cl, i64 %i.cn, i1 false), !noalias !6273
  %i.cy = add i64 %i.ct, %i.cn
  store i64 %i.cy, ptr %i.co, align 8, !alias.scope !6272, !noalias !6271
end_hunk_2
begin_hunk_3_@"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17hb2c96aa287e818a2E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6433)
  %.sroa.01.0.i199.i = tail call i8 @llvm.abs.i8(i8 %.val163.i, i1 true) ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %default.unreachable2.i204.i [
    i8 0, label %bb.ce
    i8 1, label %bb.cf
    i8 2, label %bb.cg
  ]

default.unreachable2.i204.i:                      ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.pu = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.01.0.i199.i), !noalias !6253
  br label %_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.pv = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.01.0.i199.i), !noalias !6253
  br label %_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i

bb.cg:                                            ; preds = %bb.cd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6435
  %i.pw = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %.sroa.01.0.i199.i, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.b), !noalias !6436 ; 2 uses
  %i.px = sub nuw i64 3, %i.pw                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6437)
  call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  call void @llvm.experimental.noalias.scope.decl(metadata !6439)
  call void @llvm.experimental.noalias.scope.decl(metadata !6440)
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !6441, !noalias !6442, !noundef !8 ; 3 uses
  %i.qa = load i64, ptr %2, align 8, !range !9, !alias.scope !6441, !noalias !6442, !noundef !8
  %i.qb = sub i64 %i.qa, %i.pz
  %i.qc = icmp ugt i64 %i.px, %i.qb
  br i1 %i.qc, label %bb.ch, label %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i200.i, !prof !10

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.pz, i64 noundef %i.px, i64 noundef 1, i64 noundef 1), !noalias !6442
  %.pre.i.i.i.i.i.i203.i = load i64, ptr %i.py, align 8, !alias.scope !6443, !noalias !6442
  br label %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i200.i

_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i200.i: ; preds = %bb.ch, %bb.cg
  %i.qd = phi i64 [ %i.pz, %bb.cg ], [ %.pre.i.i.i.i.i.i203.i, %bb.ch ] ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pw
  %i.qf = icmp sgt i64 %i.qd, -1
  call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !6443, !noalias !6442, !nonnull !8, !noundef !8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qi, ptr nonnull readonly align 1 %i.qe, i64 %i.px, i1 false), !noalias !6444
  %i.qj = add nuw i64 %i.qd, %i.px
  store i64 %i.qj, ptr %i.py, align 8, !alias.scope !6443, !noalias !6442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6435
  %i.qk = inttoptr i64 %i.px to ptr
  %i.ql = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.qk, 1
  br label %_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i

_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i: ; preds = %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i200.i, %bb.cf, %bb.ce
  %.pn.i201.i = phi { i64, ptr } [ %i.pu, %bb.ce ], [ %i.pv, %bb.cf ], [ %i.ql, %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i200.i ]
  %.sroa.4.0.i202.i = extractvalue { i64, ptr } %.pn.i201.i, 1
  %i.qm = ptrtoint ptr %.sroa.4.0.i202.i to i64
  br label %.loopexit

bb.ci:                                            ; preds = %bb.d
  %i.qn = trunc i48 %.sroa.024.1.extract.shift.i to i1 ; 4 uses
  switch i8 %.sroa.024.2.extract.trunc.i, label %bb.e [
    i8 0, label %bb.eb
    i8 1, label %bb.ec
    i8 2, label %bb.ed
    i8 3, label %bb.ee
  ]

bb.cj:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.qo = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !6253
  br label %bb.cm

bb.ck:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.qp = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !6253
  br label %bb.cm

bb.cl:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.qq = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !6253
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.pn160.i = phi { i64, ptr } [ %i.qo, %bb.cj ], [ %i.qp, %bb.ck ], [ %i.qq, %bb.cl ]
  %.sroa.729.0.in.i = extractvalue { i64, ptr } %.pn160.i, 1
  %.sroa.729.0.i = ptrtoint ptr %.sroa.729.0.in.i to i64
  br label %.loopexit

bb.cn:                                            ; preds = %bb.t
  %i.qr = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h87143a31fa9931dbE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dq), !noalias !6253
  br label %bb.cq

bb.co:                                            ; preds = %bb.t
  %i.qs = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h01023ec27a929010E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dq), !noalias !6253
  br label %bb.cq

bb.cp:                                            ; preds = %bb.t
  %i.qt = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h8331190bcc830d77E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dq), !noalias !6253
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %.pn158.i = phi { i64, ptr } [ %i.qr, %bb.cn ], [ %i.qs, %bb.co ], [ %i.qt, %bb.cp ]
  %.sroa.741.0.in.i = extractvalue { i64, ptr } %.pn158.i, 1
  %.sroa.741.0.i = ptrtoint ptr %.sroa.741.0.in.i to i64
  br label %.loopexit

bb.cr:                                            ; preds = %bb.ac
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !alias.scope !6445, !noalias !6249, !noundef !8 ; 2 uses
  %.not.i205.i = icmp eq i8 %i.qv, 0
  br i1 %.not.i205.i, label %bb.cs, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.cs:                                            ; preds = %bb.cr
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val175.i = load i32, ptr %i.qw, align 4, !alias.scope !6246, !noalias !6250
  %i.qx = tail call fastcc { i32, i8 } @_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE(i32 noundef %.val175.i) ; 2 uses
  %i.qy = extractvalue { i32, i8 } %i.qx, 0
  %i.qz = extractvalue { i32, i8 } %i.qx, 1       ; 3 uses
  store i32 %i.qy, ptr %4, align 4, !alias.scope !6445, !noalias !6249
  %i.ra = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 1, ptr %i.ra, align 1, !alias.scope !6445, !noalias !6249
  %i.rb = icmp ne i8 %i.qz, 0
  tail call void @llvm.assume(i1 %i.rb)
  store i8 %i.qz, ptr %i.qu, align 1, !alias.scope !6445, !noalias !6249
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.ct:                                            ; preds = %bb.ac
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val176.i = load i32, ptr %i.rc, align 4, !range !46, !alias.scope !6246, !noalias !6250, !noundef !8
  %i.rd = tail call fastcc noundef i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE"(i32 %.val176.i)
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.cu:                                            ; preds = %bb.ac
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val177.i = load i32, ptr %i.re, align 4, !range !46, !alias.scope !6246, !noalias !6250, !noundef !8
  %i.rf = tail call fastcc noundef i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE"(i32 %.val177.i)
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i": ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr
  %.sroa.058.0.i = phi i8 [ %i.rf, %bb.cu ], [ %i.rd, %bb.ct ], [ %i.qz, %bb.cs ], [ %i.qv, %bb.cr ] ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %bb.e [
    i8 0, label %bb.cv
    i8 1, label %bb.cw
    i8 2, label %bb.cx
  ]

bb.cv:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.rg = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !6253
  br label %bb.cy

bb.cw:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.rh = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !6253
  br label %bb.cy

bb.cx:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.ri = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !6253
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %.pn156.i = phi { i64, ptr } [ %i.rg, %bb.cv ], [ %i.rh, %bb.cw ], [ %i.ri, %bb.cx ]
  %.sroa.756.0.in.i = extractvalue { i64, ptr } %.pn156.i, 1
  %.sroa.756.0.i = ptrtoint ptr %.sroa.756.0.in.i to i64
  br label %.loopexit

bb.cz:                                            ; preds = %bb.ad
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val162.i = load i32, ptr %i.rj, align 4, !range !46, !alias.scope !6246, !noalias !6250, !noundef !8
  %i.rk = ashr i32 %.val162.i, 10
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

bb.da:                                            ; preds = %bb.ad
  %i.rl = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !range !14, !alias.scope !6446, !noalias !6249, !noundef !8
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val178.i = load i32, ptr %i.ro, align 4, !alias.scope !6246, !noalias !6250
  %i.rp = tail call fastcc { i32, i8 } @_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE(i32 noundef %.val178.i) ; 2 uses
  %i.rq = extractvalue { i32, i8 } %i.rp, 0       ; 2 uses
  %i.rr = extractvalue { i32, i8 } %i.rp, 1       ; 2 uses
  store i32 %i.rq, ptr %4, align 4, !alias.scope !6446, !noalias !6249
  store i8 1, ptr %i.rl, align 1, !alias.scope !6446, !noalias !6249
  %i.rs = icmp ne i8 %i.rr, 0
  tail call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.rr, ptr %i.rt, align 1, !alias.scope !6446, !noalias !6249
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

bb.dc:                                            ; preds = %bb.da
  %i.ru = load i32, ptr %4, align 4, !alias.scope !6446, !noalias !6249
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i": ; preds = %bb.dc, %bb.db, %bb.cz
  %.sroa.067.0.i = phi i32 [ %i.rk, %bb.cz ], [ %i.ru, %bb.dc ], [ %i.rq, %bb.db ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6447)
  %.sroa.02.3.extract.shift.i222.i = lshr i48 %.sroa.086.0.copyload, 32
  %.sroa.02.3.extract.trunc.i.i = trunc i48 %.sroa.02.3.extract.shift.i222.i to i8
  %5 = and i48 %.sroa.086.0.copyload, 16777216
  %.not.i208.i = icmp eq i48 %5, 0
  %.sroa.02.4.extract.shift.i223.i = lshr i48 %.sroa.086.0.copyload, 40
  %trunc.i209.i = trunc nuw i48 %.sroa.02.4.extract.shift.i223.i to i8
  switch i8 %trunc.i209.i, label %bb.dd [
    i8 0, label %bb.dg
    i8 1, label %bb.de
    i8 2, label %bb.df
  ]

bb.dd:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  unreachable

bb.de:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.rv = sdiv i32 %.sroa.067.0.i, 100            ; 2 uses
  %i.rw = icmp slt i32 %.sroa.067.0.i, 0
  br i1 %i.rw, label %bb.dm, label %bb.dl

bb.df:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.rx = srem i32 %.sroa.067.0.i, 100
  %.sroa.03.2.i.i = tail call i32 @llvm.abs.i32(i32 %i.rx, i1 true)
  br label %bb.dr

bb.dg:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.ry = icmp slt i32 %.sroa.067.0.i, 0
  br i1 %i.ry, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rz = icmp samesign ugt i32 %.sroa.067.0.i, 9999
  br i1 %i.rz, label %bb.dj, label %.thread.i.i

bb.di:                                            ; preds = %bb.dg
  %notsub52.i.i = add i32 %.sroa.067.0.i, -1
  %i.sa = icmp slt i32 %notsub52.i.i, -10000
  br i1 %i.sa, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.dm, %bb.dl, %bb.di, %bb.dh
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !6448
  %i.sb = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !6448 ; 5 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %bb.dk, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i, !prof !11

bb.dk:                                            ; preds = %bb.dj
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #50, !noalias !6448
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i: ; preds = %bb.dj
  store ptr @241, ptr %i.sb, align 8, !noalias !6449
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6449
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !6449
  br label %bb.ek

bb.dl:                                            ; preds = %bb.de
  %i.sd = icmp samesign ugt i32 %.sroa.067.0.i, 9999
  br i1 %i.sd, label %bb.dj, label %.thread.i.i

bb.dm:                                            ; preds = %bb.de
  %notsub.i.i = add i32 %.sroa.067.0.i, -1
  %i.se = icmp slt i32 %notsub.i.i, -10000
  br i1 %i.se, label %bb.dj, label %bb.dn

.thread.i.i:                                      ; preds = %bb.dl, %bb.dh
  %.sroa.04.0.i210.i = phi ptr [ @_ZN4time10formatting13format_number17h5c9dfa46aff5f6eaE, %bb.dl ], [ @_ZN4time10formatting13format_number17h9c57a211a768764fE, %bb.dh ] ; 2 uses
  %.sroa.03.7.i.i = phi i32 [ %i.rv, %bb.dl ], [ %.sroa.067.0.i, %bb.dh ] ; 2 uses
  br i1 %.not.i208.i, label %bb.dr, label %bb.dp

bb.dn:                                            ; preds = %bb.dm, %bb.di
  %.sroa.04.0.ph.i.i = phi ptr [ @_ZN4time10formatting13format_number17h5c9dfa46aff5f6eaE, %bb.dm ], [ @_ZN4time10formatting13format_number17h9c57a211a768764fE, %bb.di ]
  %.sroa.03.7.ph.i.i = phi i32 [ %i.rv, %bb.dm ], [ %.sroa.067.0.i, %bb.di ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.sg = load i64, ptr %i.sf, align 8, !alias.scope !6454, !noalias !6455, !noundef !8 ; 3 uses
  %i.sh = load i64, ptr %2, align 8, !range !9, !alias.scope !6454, !noalias !6455, !noundef !8
  %i.si = icmp eq i64 %i.sh, %i.sg
  br i1 %i.si, label %bb.do, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i", !prof !10

bb.do:                                            ; preds = %bb.dn
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.sg, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6455
  %.pre.i.i.i.i.i212.i = load i64, ptr %i.sf, align 8, !alias.scope !6456, !noalias !6455
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i": ; preds = %bb.do, %bb.dn
  %i.sj = phi i64 [ %i.sg, %bb.dn ], [ %.pre.i.i.i.i.i212.i, %bb.do ] ; 3 uses
  %i.sk = icmp sgt i64 %i.sj, -1
  tail call void @llvm.assume(i1 %i.sk)
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !alias.scope !6456, !noalias !6455, !nonnull !8, !noundef !8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sj
  store i8 45, ptr %i.sn, align 1, !noalias !6457
  %i.so = add nuw i64 %i.sj, 1
  store i64 %i.so, ptr %i.sf, align 8, !alias.scope !6456, !noalias !6455
  br label %bb.dr

bb.dp:                                            ; preds = %.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6461)
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.sq = load i64, ptr %i.sp, align 8, !alias.scope !6462, !noalias !6463, !noundef !8 ; 3 uses
  %i.sr = load i64, ptr %2, align 8, !range !9, !alias.scope !6462, !noalias !6463, !noundef !8
  %i.ss = icmp eq i64 %i.sr, %i.sq
  br i1 %i.ss, label %bb.dq, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i", !prof !10

bb.dq:                                            ; preds = %bb.dp
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.sq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6463
  %.pre.i.i.i.i54.i.i = load i64, ptr %i.sp, align 8, !alias.scope !6464, !noalias !6463
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i": ; preds = %bb.dq, %bb.dp
  %i.st = phi i64 [ %i.sq, %bb.dp ], [ %.pre.i.i.i.i54.i.i, %bb.dq ] ; 3 uses
  %i.su = icmp sgt i64 %i.st, -1
  tail call void @llvm.assume(i1 %i.su)
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !alias.scope !6464, !noalias !6463, !nonnull !8, !noundef !8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.st
  store i8 43, ptr %i.sx, align 1, !noalias !6465
  %i.sy = add nuw i64 %i.st, 1
  store i64 %i.sy, ptr %i.sp, align 8, !alias.scope !6464, !noalias !6463
  br label %bb.dr

bb.dr:                                            ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i", %.thread.i.i, %bb.df
  %.sroa.015.1.i.i = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i" ], [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i" ], [ 0, %.thread.i.i ], [ 0, %bb.df ]
  %.sroa.04.1.i.i = phi ptr [ %.sroa.04.0.ph.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i" ], [ %.sroa.04.0.i210.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i" ], [ %.sroa.04.0.i210.i, %.thread.i.i ], [ @_ZN4time10formatting13format_number17h5c9dfa46aff5f6eaE, %bb.df ]
  %.sroa.03.8.i.i = phi i32 [ %.sroa.03.7.ph.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i211.i" ], [ %.sroa.03.7.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit55.i.i" ], [ %.sroa.03.7.i.i, %.thread.i.i ], [ %.sroa.03.2.i.i, %bb.df ]
  %.sroa.045.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.03.8.i.i, i1 false)
  %i.sz = tail call { i64, ptr } %.sroa.04.1.i.i(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.045.0.i.i, i8 noundef %.sroa.02.3.extract.trunc.i.i), !noalias !6466, !callees !6467, !inline_history !6230 ; 2 uses
  %i.ta = extractvalue { i64, ptr } %i.sz, 0
  %i.tb = extractvalue { i64, ptr } %i.sz, 1      ; 2 uses
  %i.tc = trunc nuw i64 %i.ta to i1
  br i1 %i.tc, label %bb.ek, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = add i64 %.sroa.015.1.i.i, %i.td
  br label %.loopexit

bb.dt:                                            ; preds = %bb.am
  %i.tf = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val167.i), !noalias !6253
  br label %bb.dw

bb.du:                                            ; preds = %bb.am
  %i.tg = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val167.i), !noalias !6253
  br label %bb.dw

bb.dv:                                            ; preds = %bb.am
  %i.th = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val167.i), !noalias !6253
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.pn153.i = phi { i64, ptr } [ %i.tf, %bb.dt ], [ %i.tg, %bb.du ], [ %i.th, %bb.dv ]
  %.sroa.775.0.in.i = extractvalue { i64, ptr } %.pn153.i, 1
  %.sroa.775.0.i = ptrtoint ptr %.sroa.775.0.in.i to i64
  br label %.loopexit

bb.dx:                                            ; preds = %bb.ap
  %i.ti = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hc6e2b06f1c3c122bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !6253
  br label %bb.ea

bb.dy:                                            ; preds = %bb.ap
  %i.tj = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h0d25878214d7cf45E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !6253
  br label %bb.ea

bb.dz:                                            ; preds = %bb.ap
  %i.tk = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !6253
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %.pn.i = phi { i64, ptr } [ %i.ti, %bb.dx ], [ %i.tj, %bb.dy ], [ %i.tk, %bb.dz ]
  %.sroa.786.0.in.i = extractvalue { i64, ptr } %.pn.i, 1
  %.sroa.786.0.i = ptrtoint ptr %.sroa.786.0.in.i to i64
  br label %.loopexit

bb.eb:                                            ; preds = %bb.ci
  %i.tl = tail call fastcc noundef i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h8568d98cf1aa9827E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !6468
  %i.tm = tail call fastcc ptr @_ZN4time10formatting26fmt_unix_timestamp_seconds17h673cc7dc610d344eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.tl, i1 noundef zeroext %i.qn)
  %i.tn = ptrtoint ptr %i.tm to i64
  br label %.loopexit

bb.ec:                                            ; preds = %bb.ci
  %i.to = tail call fastcc noundef i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !6468
  %i.tp = tail call fastcc ptr @_ZN4time10formatting31fmt_unix_timestamp_milliseconds17hdaf577ae07ec5961E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.to, i1 noundef zeroext %i.qn)
  %i.tq = ptrtoint ptr %i.tp to i64
  br label %.loopexit

bb.ed:                                            ; preds = %bb.ci
  %i.tr = tail call fastcc noundef i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !6468
  %i.ts = tail call fastcc ptr @_ZN4time10formatting31fmt_unix_timestamp_microseconds17hcd1960ac11c8b23fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i128 noundef %i.tr, i1 noundef zeroext %i.qn)
  %i.tt = ptrtoint ptr %i.ts to i64
  br label %.loopexit

bb.ee:                                            ; preds = %bb.ci
  %i.tu = tail call fastcc noundef i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !6468
  %i.tv = tail call fastcc ptr @_ZN4time10formatting30fmt_unix_timestamp_nanoseconds17h36e7df82df5c9fbeE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i128 noundef %i.tu, i1 noundef zeroext %i.qn)
  %i.tw = ptrtoint ptr %i.tv to i64
  br label %.loopexit

bb.ef:                                            ; preds = %bb.a
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ua, 24
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.idx
  %i.uc = icmp eq i64 %i.ua, 0
  br i1 %i.uc, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ef
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph, %bb.eh
  %.sroa.0.0.i109 = phi i64 [ 0, %.lr.ph ], [ %i.uh, %bb.eh ]
  %.sroa.017.0.i108 = phi ptr [ %i.ty, %.lr.ph ], [ %i.uf, %bb.eh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6469
  call fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17hb2c96aa287e818a2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.0.i108, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull align 4 dereferenceable(8) %4), !noalias !6470, !inline_history !6237
  %i.ue = load i64, ptr %i.a, align 8, !range !33, !noalias !6469, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.ue, 4
  br i1 %.not.i, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i108, i64 24 ; 2 uses
  %i.ug = load i64, ptr %i.ud, align 8, !noalias !6469, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6469
  %i.uh = add i64 %i.ug, %.sroa.0.0.i109          ; 2 uses
  %i.ui = icmp eq ptr %i.uf, %i.ub
  br i1 %i.ui, label %.loopexit, label %bb.eg

bb.ei:                                            ; preds = %bb.a
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !nonnull !8, !align !12, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17hb2c96aa287e818a2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uk, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef align 4 dereferenceable(8) %4)
  %i.ul = load i64, ptr %i.m, align 8, !range !33, !noundef !8 ; 2 uses
  %.not87 = icmp eq i64 %i.ul, 4
  %i.um = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.un = load i64, ptr %i.um, align 8            ; 2 uses
  br i1 %.not87, label %bb.en, label %bb.em

bb.ej:                                            ; preds = %bb.a
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.up = load i64, ptr %i.uo, align 8, !noundef !8
  %i.uq = icmp eq i64 %i.up, 0
  br i1 %i.uq, label %.loopexit, label %bb.eo

.loopexit:                                        ; preds = %bb.eh, %bb.ef, %bb.d, %bb.d, %bb.l, %bb.m, %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit11.i.i", %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i181.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i183.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit10.i.i", %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit12.i.i, %_ZN4time10formatting8fmt_hour17h63efd62815f9fd84E.exit.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i", %_ZN4time10formatting13fmt_subsecond17h2d24f946d59308caE.exit.i, %_ZN4time10formatting15fmt_offset_hour17h86dbc637566b19cbE.exit.i, %_ZN4time10formatting17fmt_offset_minute17h84d8dd262c65a26cE.exit.i, %_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i, %bb.cm, %bb.cq, %bb.cy, %bb.ds, %bb.dw, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ej, %bb.eq, %bb.en, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit"
  %.sroa.0.0 = phi i64 [ %i.r, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit" ], [ 0, %bb.ej ], [ %.sroa.729.0.i, %bb.cm ], [ %i.un, %bb.en ], [ %i.ux, %bb.eq ], [ %i.gd, %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit12.i.i ], [ %i.fp, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit10.i.i" ], [ 3, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i183.i" ], [ %i.ek, %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i181.i ], [ %i.cn, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i.i" ], [ %i.bv, %_ZN4time10formatting22format_number_pad_none17h73d155280fca0e47E.exit.i.i ], [ %i.bt, %bb.m ], [ %i.bq, %bb.l ], [ %i.tw, %bb.ee ], [ %i.tt, %bb.ed ], [ %i.tq, %bb.ec ], [ %i.tn, %bb.eb ], [ 0, %bb.d ], [ %i.qm, %_ZN4time10formatting17fmt_offset_second17h340a5847394800fbE.exit.i ], [ %i.pq, %_ZN4time10formatting17fmt_offset_minute17h84d8dd262c65a26cE.exit.i ], [ %i.ou, %_ZN4time10formatting15fmt_offset_hour17h86dbc637566b19cbE.exit.i ], [ %i.mw, %_ZN4time10formatting13fmt_subsecond17h2d24f946d59308caE.exit.i ], [ %.sroa.786.0.i, %bb.ea ], [ 2, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit.i" ], [ %.sroa.775.0.i, %bb.dw ], [ %i.ho, %_ZN4time10formatting8fmt_hour17h63efd62815f9fd84E.exit.i ], [ %i.te, %bb.ds ], [ %.sroa.756.0.i, %bb.cy ], [ 3, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h9d05f9d8b5033d31E.exit11.i.i" ], [ %.sroa.741.0.i, %bb.cq ], [ 0, %bb.d ], [ 0, %bb.ef ], [ %i.uh, %bb.eh ]
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.ur, align 8
  store i64 4, ptr %0, align 8
  br label %bb.er

bb.ek:                                            ; preds = %bb.dr, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i
  %.sroa.8.0.ph.in.i = phi ptr [ %i.sb, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i ], [ %i.tb, %bb.dr ]
  %.sroa.0.0.ph.i = phi i64 [ 2, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i ], [ 3, %bb.dr ]
  %.sroa.8.0.ph.i = ptrtoint ptr %.sroa.8.0.ph.in.i to i64
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.255.0..sroa_idx, align 8
  br label %bb.er

bb.el:                                            ; preds = %bb.eg
end_hunk_3
begin_hunk_4_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hf281ade457d4f989E":bb.a
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %.noexc339.i.i.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.i.i.i.i, !noalias !9684

.noexc339.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.i.i
  %i.im = load i64, ptr %i.al, align 8, !range !23, !noalias !9762, !noundef !8
  %i.in = icmp eq i64 %i.im, 2
  %i.io = load ptr, ptr %i.hg, align 8, !noalias !9762, !nonnull !8, !noundef !8 ; 16 uses
  br i1 %i.in, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %.noexc339.i.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9762 ; 2 uses
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i, label %bb.da [
    i64 11, label %bb.ci
    i64 4, label %bb.cj
    i64 3, label %bb.ck
    i64 7, label %bb.cl
    i64 10, label %bb.cn
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ip = load i64, ptr %i.io, align 1
  %i.iq = xor i64 %i.ip, 8390322045806929252
  %i.ir = getelementptr i8, ptr %i.io, i64 3
  %i.is = load i64, ptr %i.ir, align 1
  %i.it = xor i64 %i.is, 7957695015410037347
  %i.iu = or i64 %i.iq, %i.it
  %i.iv = icmp ne i64 %i.iu, 0
  %i.iw = zext i1 %i.iv to i32
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.cs, label %bb.da

bb.cj:                                            ; preds = %bb.ch
  %i.iy = load i32, ptr %i.io, align 1
  %i.iz = icmp ne i32 %i.iy, 1701667182
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ct, label %bb.da

bb.ck:                                            ; preds = %bb.ch
  %i.jc = load i16, ptr %i.io, align 1
  %i.jd = xor i16 %i.jc, 26997
  %i.je = getelementptr i8, ptr %i.io, i64 2
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = zext i8 %i.jf to i16
  %i.jh = xor i16 %i.jg, 100
  %i.ji = or i16 %i.jd, %i.jh
  %i.jj = icmp ne i16 %i.ji, 0
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.cu, label %bb.da

bb.cl:                                            ; preds = %bb.ch
  %i.jm = load i32, ptr %i.io, align 1
  %i.jn = xor i32 %i.jm, 1769235297
  %i.jo = getelementptr i8, ptr %i.io, i64 3
  %i.jp = load i32, ptr %i.jo, align 1
  %i.jq = xor i32 %i.jp, 1936617321
  %i.jr = or i32 %i.jn, %i.jq
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = zext i1 %i.js to i32
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.cv, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jv = load i32, ptr %i.io, align 1
  %i.jw = xor i32 %i.jv, 1701080681
  %i.jx = getelementptr i8, ptr %i.io, i64 3
  %i.jy = load i32, ptr %i.jx, align 1
  %i.jz = xor i32 %i.jy, 1936029797
  %i.ka = or i32 %i.jw, %i.jz
  %i.kb = icmp ne i32 %i.ka, 0
  %i.kc = zext i1 %i.kb to i32
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.cw, label %bb.da

bb.cn:                                            ; preds = %bb.ch
  %i.ke = load i64, ptr %i.io, align 1
  %i.kf = xor i64 %i.ke, 6877952597994535013
  %i.kg = getelementptr i8, ptr %i.io, i64 8
  %i.kh = load i16, ptr %i.kg, align 1
  %i.ki = zext i16 %i.kh to i64
  %i.kj = xor i64 %i.ki, 29793
  %i.kk = or i64 %i.kf, %i.kj
  %i.kl = icmp ne i64 %i.kk, 0
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ko = load i64, ptr %i.io, align 1
  %i.kp = xor i64 %i.ko, 6873730481798869603
  %i.kq = getelementptr i8, ptr %i.io, i64 8
  %i.kr = load i16, ptr %i.kq, align 1
  %i.ks = zext i16 %i.kr to i64
  %i.kt = xor i64 %i.ks, 29793
  %i.ku = or i64 %i.kp, %i.kt
  %i.kv = icmp ne i64 %i.ku, 0
  %i.kw = zext i1 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.cy, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ky = load i64, ptr %i.io, align 1
  %i.kz = xor i64 %i.ky, 6873730481798803573
  %i.la = getelementptr i8, ptr %i.io, i64 8
  %i.lb = load i16, ptr %i.la, align 1
  %i.lc = zext i16 %i.lb to i64
  %i.ld = xor i64 %i.lc, 29793
  %i.le = or i64 %i.kz, %i.ld
  %i.lf = icmp ne i64 %i.le, 0
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.cz, label %bb.da

bb.cq:                                            ; preds = %.noexc339.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  br label %.loopexit625.i.i.i.i

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i": ; preds = %bb.ia, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i", %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.14467.02116.i.i.i.i = phi ptr [ %.sroa.14467.02286.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %bb.ia ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.14467.02120.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0463.02037.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %bb.ia ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0463.02042.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.0463.02287.lcssa2597.ph.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.14461.01831.i.i.i.i = phi ptr [ %.sroa.14461.02289.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %bb.ia ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.14461.01834.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0457.01725.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %bb.ia ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0457.01728.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.0457.02290.lcssa2867.ph.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 3 uses
  %.sroa.14.01547.i.i.i.i = phi ptr [ %.sroa.14.02292.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %bb.ia ], [ %.sroa.14.02292.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.14.01550.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0452.01441.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %bb.ia ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.0452.01444.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %.sroa.0452.02293.lcssa3137.ph.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 3 uses
  %.sroa.0219.1.i.i.i.i = phi i1 [ %.sroa.0219.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0219.6.i.i.i.i, %bb.ia ], [ %.sroa.0219.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ true, %.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0221.1.i.i.i.i = phi i1 [ %.sroa.0221.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0221.6.i.i.i.i, %bb.ia ], [ %.sroa.0221.6.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ true, %.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0223.1.i.i.i.i = phi i8 [ %.sroa.0223.5.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0223.5.i.i.i.i, %bb.ia ], [ %.sroa.0223.5.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.sroa.0225.1.i.i.i.i = phi i8 [ %.sroa.0225.4.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.sroa.0225.4.i.i.i.i, %bb.ia ], [ %.sroa.0225.4.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ 1, %.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ]
  %.pn286.i.i.i.i = phi { ptr, i32 } [ %.pn273.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %.pn273.i.i.i.i, %bb.ia ], [ %.pn273.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i" ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp615.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i ], [ %lpad.loopexit4002.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i ] ; 4 uses
  %i.li = load i64, ptr %i.as, align 8, !range !35, !noalias !9740, !noundef !8
  %i.lj = icmp ne i64 %i.li, -9223372036854775808
  %or.cond9.i.i.i.i = and i1 %.sroa.0219.1.i.i.i.i, %i.lj
  br i1 %or.cond9.i.i.i.i, label %bb.ik, label %bb.ie

.loopexit.i.i.i.i:                                ; preds = %bb.ey, %bb.eh, %bb.ef, %bb.ed, %bb.ec
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.loopexit.i.i.i.i:     ; preds = %bb.gz, %bb.gt, %bb.gn, %bb.gi, %bb.gd, %bb.fx, %bb.fs, %bb.fm, %.loopexit.i.i.i.i.i.i
  %.sroa.0452.02293.lcssa3137.ph.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ -9223372036854775807, %bb.fm ], [ %.sroa.0452.02293.i.i.i.i, %bb.fs ], [ %.sroa.0452.02293.i.i.i.i, %bb.fx ], [ %.sroa.0452.02293.i.i.i.i, %bb.gd ], [ %.sroa.0452.02293.i.i.i.i, %bb.gi ], [ %.sroa.0452.02293.i.i.i.i, %bb.gn ], [ %.sroa.0452.02293.i.i.i.i, %bb.gt ], [ %.sroa.0452.02293.i.i.i.i, %bb.gz ]
  %.sroa.0457.02290.lcssa2867.ph.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fm ], [ -9223372036854775807, %bb.fs ], [ %.sroa.0457.02290.i.i.i.i, %bb.fx ], [ %.sroa.0457.02290.i.i.i.i, %bb.gd ], [ %.sroa.0457.02290.i.i.i.i, %bb.gi ], [ %.sroa.0457.02290.i.i.i.i, %bb.gn ], [ %.sroa.0457.02290.i.i.i.i, %bb.gt ], [ %.sroa.0457.02290.i.i.i.i, %bb.gz ]
  %.sroa.0463.02287.lcssa2597.ph.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fm ], [ %.sroa.0463.02287.i.i.i.i, %bb.fs ], [ %.sroa.0463.02287.i.i.i.i, %bb.fx ], [ -9223372036854775808, %bb.gd ], [ %.sroa.0463.02287.i.i.i.i, %bb.gi ], [ %.sroa.0463.02287.i.i.i.i, %bb.gn ], [ %.sroa.0463.02287.i.i.i.i, %bb.gt ], [ %.sroa.0463.02287.i.i.i.i, %bb.gz ]
  %lpad.loopexit4002.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.loopexit.split-lp.i.i.i.i: ; preds = %bb.fw, %.loopexit.i.i.i385.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit.split-lp.loopexit.split-lp.i.i.i.i:     ; preds = %.invoke6826, %.invoke, %bb.gy, %.loopexit.i.i.i428.i.i.i.i, %bb.gs, %.loopexit.i.i.i418.i.i.i.i, %bb.gm, %.loopexit.i.i.i410.i.i.i.i, %bb.gh, %.loopexit.i.i.i401.i.i.i.i, %bb.gc, %.loopexit.i.i.i393.i.i.i.i, %bb.fr, %.loopexit.i.i.i375.i.i.i.i, %bb.fl, %.loopexit.i.i.i368.i.i.i.i, %bb.fh, %bb.fe, %.loopexit146.i.i.i.i.i.i.i.i.i.i, %bb.ez, %.loopexit147.i.i.i.i.i.i.i.i.i.i, %bb.eo, %bb.eg, %.loopexit242.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i", %.loopexit249.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i", %.loopexit256.i.i.i.i.i.i.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", %.loopexit153.i.i.i.i.i.i.i.i.i.i, %bb.dd, %.loopexit.i.i.i341.i.i.i.i, %bb.cg, %bb.cf, %bb.ce, %.loopexit.i.i.i.i.i.i.i, %bb.cd, %.loopexit23.i.i.i.i.i.i.i
  %.sroa.14467.02120.i.i.i.i = phi ptr [ %.sroa.14467.02286.i.i.i.i, %bb.gy ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gs ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gm ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gh ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.gc ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fr ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fl ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.fh ], [ %.sroa.14467.02286.i.i.i.i, %.invoke6826 ], [ %.sroa.14467.02286.i.i.i.i, %bb.fe ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.ez ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.eo ], [ %.sroa.14467.02286.i.i.i.i, %.invoke ], [ %.sroa.14467.02286.i.i.i.i, %bb.eg ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.dd ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.cg ], [ %.sroa.14467.02286.i.i.i.i, %bb.cf ], [ %.sroa.14467.02286.i.i.i.i, %bb.ce ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.cd ], [ %.sroa.14467.02121.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0463.02042.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %bb.gy ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gs ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gm ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.gh ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ -9223372036854775808, %bb.gc ], [ -9223372036854775808, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fr ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fl ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.fh ], [ %.sroa.0463.02287.i.i.i.i, %.invoke6826 ], [ %.sroa.0463.02287.i.i.i.i, %bb.fe ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.ez ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.eo ], [ %.sroa.0463.02287.i.i.i.i, %.invoke ], [ %.sroa.0463.02287.i.i.i.i, %bb.eg ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.dd ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.cg ], [ %.sroa.0463.02287.i.i.i.i, %bb.cf ], [ %.sroa.0463.02287.i.i.i.i, %bb.ce ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.cd ], [ %.sroa.0463.02011.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.14461.01834.i.i.i.i = phi ptr [ %.sroa.14461.02289.i.i.i.i, %bb.gy ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gs ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gm ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gh ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.gc ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fr ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fl ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.fh ], [ %.sroa.14461.02289.i.i.i.i, %.invoke6826 ], [ %.sroa.14461.02289.i.i.i.i, %bb.fe ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.ez ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.eo ], [ %.sroa.14461.02289.i.i.i.i, %.invoke ], [ %.sroa.14461.02289.i.i.i.i, %bb.eg ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.dd ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.cg ], [ %.sroa.14461.02289.i.i.i.i, %bb.cf ], [ %.sroa.14461.02289.i.i.i.i, %bb.ce ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.cd ], [ %.sroa.14461.01835.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0457.01728.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %bb.gy ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gs ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gm ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gh ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.gc ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ -9223372036854775807, %bb.fr ], [ -9223372036854775807, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fl ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.fh ], [ %.sroa.0457.02290.i.i.i.i, %.invoke6826 ], [ %.sroa.0457.02290.i.i.i.i, %bb.fe ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.ez ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.eo ], [ %.sroa.0457.02290.i.i.i.i, %.invoke ], [ %.sroa.0457.02290.i.i.i.i, %bb.eg ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.dd ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.cg ], [ %.sroa.0457.02290.i.i.i.i, %bb.cf ], [ %.sroa.0457.02290.i.i.i.i, %bb.ce ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.cd ], [ %.sroa.0457.01729.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.14.01550.i.i.i.i = phi ptr [ %.sroa.14.02292.i.i.i.i, %bb.gy ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gs ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gm ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gh ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.gc ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fr ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fl ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.fh ], [ %.sroa.14.02292.i.i.i.i, %.invoke6826 ], [ %.sroa.14.02292.i.i.i.i, %bb.fe ], [ %.sroa.14.02292.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.ez ], [ %.sroa.14.02292.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.eo ], [ %.sroa.14.02292.i.i.i.i, %.invoke ], [ %.sroa.14.02292.i.i.i.i, %bb.eg ], [ %.sroa.14.02292.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.02292.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.dd ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.cg ], [ %.sroa.14.02292.i.i.i.i, %bb.cf ], [ %.sroa.14.02292.i.i.i.i, %bb.ce ], [ %.sroa.14.02292.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.cd ], [ %.sroa.14.01551.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %.sroa.0452.01444.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %bb.gy ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i428.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gs ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i418.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gm ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i410.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gh ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i401.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.gc ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i393.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.fr ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i375.i.i.i.i ], [ -9223372036854775807, %bb.fl ], [ -9223372036854775807, %.loopexit.i.i.i368.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.fh ], [ %.sroa.0452.02293.i.i.i.i, %.invoke6826 ], [ %.sroa.0452.02293.i.i.i.i, %bb.fe ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit146.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.ez ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit147.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.eo ], [ %.sroa.0452.02293.i.i.i.i, %.invoke ], [ %.sroa.0452.02293.i.i.i.i, %bb.eg ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit242.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i82.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit249.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit256.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit153.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.dd ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i341.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.cg ], [ %.sroa.0452.02293.i.i.i.i, %bb.cf ], [ %.sroa.0452.02293.i.i.i.i, %bb.ce ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.cd ], [ %.sroa.0452.01445.i.i.i.i, %.loopexit23.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp615.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

bb.cr:                                            ; preds = %bb.bw
  %.not267.i.i.i.i = icmp eq i64 %.sroa.0452.02293.i.i.i.i, -9223372036854775807
  br i1 %.not267.i.i.i.i, label %bb.hb, label %bb.hc

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not285.i.i.i.i = icmp eq i64 %.sroa.0452.02293.i.i.i.i, -9223372036854775807
  br i1 %.not285.i.i.i.i, label %bb.fi, label %.invoke, !prof !22

bb.ct:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not284.i.i.i.i = icmp eq i64 %.sroa.0457.02290.i.i.i.i, -9223372036854775807
  br i1 %.not284.i.i.i.i, label %bb.fo, label %.invoke, !prof !22

bb.cu:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %i.lk = trunc nuw i8 %.sroa.0.02303.i.i.i.i to i1
  br i1 %i.lk, label %.invoke, label %bb.ft, !prof !10

bb.cv:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not283.i.i.i.i = icmp eq i64 %.sroa.0463.02287.i.i.i.i, -9223372036854775808
  br i1 %.not283.i.i.i.i, label %bb.fz, label %.invoke, !prof !22

bb.cw:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not282.i.i.i.i = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %.not282.i.i.i.i, label %bb.ge, label %.invoke, !prof !22

bb.cx:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not281.i.i.i.i = icmp eq i8 %.sroa.5.02302.i.i.i.i, 2
  br i1 %.not281.i.i.i.i, label %bb.gj, label %.invoke, !prof !22

bb.cy:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not280.not.i.i.i.i = icmp eq i8 %.sroa.524.02300.i.i.i.i, 0
  br i1 %.not280.not.i.i.i.i, label %.invoke, label %bb.gp, !prof !10

bb.cz:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  %.not279.not.i.i.i.i = icmp eq i8 %.sroa.532.02298.i.i.i.i, 0
  br i1 %.not279.not.i.i.i.i, label %.invoke, label %bb.gv, !prof !10

bb.da:                                            ; preds = %bb.cp, %bb.cm, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9762
  call void @llvm.experimental.noalias.scope.decl(metadata !9763)
  call void @llvm.experimental.noalias.scope.decl(metadata !9764)
  %i.ll = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !9765, !noalias !9766, !noundef !8 ; 4 uses
  %.promoted.i.i.i.i340.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9767, !noalias !9768 ; 2 uses
  %i.lm = icmp ult i64 %.promoted.i.i.i.i340.i.i.i.i, %i.ll
  br i1 %i.lm, label %.lr.ph.i.i.i.i342.i.i.i.i, label %.loopexit.i.i.i341.i.i.i.i

.lr.ph.i.i.i.i342.i.i.i.i:                        ; preds = %bb.da
  %i.ln = load ptr, ptr %i.bw, align 8, !alias.scope !9765, !noalias !9766, !nonnull !8, !align !13, !noundef !8 ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %.lr.ph.i.i.i.i342.i.i.i.i
  %i.lo = phi i64 [ %.promoted.i.i.i.i340.i.i.i.i, %.lr.ph.i.i.i.i342.i.i.i.i ], [ %i.lr, %bb.dc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9769)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !noalias !9770, !noundef !8
  switch i8 %i.lq, label %bb.dd [
    i8 32, label %bb.dc
    i8 10, label %bb.dc
    i8 9, label %bb.dc
    i8 13, label %bb.dc
    i8 58, label %bb.de
  ], !prof !47

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db
  %i.lr = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9771, !noalias !9768
  %exitcond.not.i.i.i.i343.i.i.i.i = icmp eq i64 %i.lr, %i.ll
  br i1 %exitcond.not.i.i.i.i343.i.i.i.i, label %.loopexit.i.i.i341.i.i.i.i, label %bb.db

.loopexit.i.i.i341.i.i.i.i:                       ; preds = %bb.da, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9772
  store i64 3, ptr %i.aj, align 8, !noalias !9772
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.noexc344.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc344.i.i.i.i:                                ; preds = %.loopexit.i.i.i341.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9772
  br label %.loopexit625.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9772
  store i64 6, ptr %i.ak, align 8, !noalias !9772
  %i.lt = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %.noexc345.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc345.i.i.i.i:                                ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9772
  br label %.loopexit625.i.i.i.i

bb.de:                                            ; preds = %bb.db
  %i.lu = add i64 %i.lo, 1                        ; 3 uses
  store i64 %i.lu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9773, !noalias !9774
  call void @llvm.experimental.noalias.scope.decl(metadata !9775)
  call void @llvm.experimental.noalias.scope.decl(metadata !9776)
  call void @llvm.experimental.noalias.scope.decl(metadata !9777)
  call void @llvm.experimental.noalias.scope.decl(metadata !9778)
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9779, !noalias !9774
  %i.lv = icmp ult i64 %i.lu, %i.ll
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.de, %bb.ff
  %i.lw = phi ptr [ %i.qe, %bb.ff ], [ %i.ln, %bb.de ] ; 11 uses
  %.promoted.i194.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ %i.lu, %bb.de ]
  %i.lx = phi i64 [ %i.qd, %bb.ff ], [ %i.ll, %bb.de ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %bb.ff ], [ false, %bb.de ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.030.0186.i.i.i.i.i.i.i.i.i.i, %bb.ff ], [ undef, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9780)
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ly = phi i64 [ %.promoted.i194.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mb, %bb.dg ] ; 17 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !9781, !noundef !8 ; 3 uses
  switch i8 %i.ma, label %bb.dh [
    i8 32, label %bb.dg
    i8 10, label %bb.dg
    i8 9, label %bb.dg
    i8 13, label %bb.dg
    i8 110, label %bb.di
    i8 116, label %bb.do
    i8 102, label %bb.du
    i8 45, label %bb.ec
    i8 34, label %bb.ed
    i8 91, label %bb.ee
    i8 123, label %bb.ee
  ]

bb.dg:                                            ; preds = %bb.df, %bb.df, %bb.df, %bb.df
  %i.mb = add i64 %i.ly, 1                        ; 3 uses
  store i64 %i.mb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9782, !noalias !9783
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mb, %i.lx
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i.i.i.i.i.i, label %bb.df

.loopexit153.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.de, %bb.ff, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9784
  store i64 5, ptr %i.ai, align 8, !noalias !9784
  %i.mc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc346.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc346.i.i.i.i:                                ; preds = %.loopexit153.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9784
  br label %.loopexit625.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.md = add i8 %i.ma, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.md, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.eh, label %bb.eg, !prof !16

bb.di:                                            ; preds = %bb.df
  %i.me = add i64 %i.ly, 1                        ; 4 uses
  store i64 %i.me, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9785, !noalias !9774
  call void @llvm.experimental.noalias.scope.decl(metadata !9786)
  %umax.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.me, i64 %i.lx) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9787)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.me, %i.lx
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i, label %bb.dj, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.dj:                                            ; preds = %bb.di
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !noalias !9788, !noundef !8
  %i.mh = add i64 %i.ly, 2                        ; 3 uses
  store i64 %i.mh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9789, !noalias !9790
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mg, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.dk, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !9791)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mh, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !9792, !noundef !8
  %i.mk = add i64 %i.ly, 3                        ; 3 uses
  store i64 %i.mk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9793, !noalias !9790
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mj, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.dm, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !9794)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mk, %umax.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !noalias !9795, !noundef !8
  %i.mn = add i64 %i.ly, 4
  store i64 %i.mn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9796, !noalias !9790
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.mm, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %.loopexit150.i.i.i.i.i.i.i.i.i.i, label %.loopexit256.i.i.i.i.i.i.i.i.i.i, !prof !19

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dm, %bb.dk, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9797
  store i64 5, ptr %i.aa, align 8, !noalias !9797
  %i.mo = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc347.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc347.i.i.i.i:                                ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9797
  br label %.loopexit625.i.i.i.i

.loopexit256.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dn, %bb.dl, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9797
  store i64 9, ptr %i.z, align 8, !noalias !9797
  %i.mp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h129cdf0eed6a26acE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z)
          to label %.noexc348.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc348.i.i.i.i:                                ; preds = %.loopexit256.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9797
  br label %.loopexit625.i.i.i.i

bb.do:                                            ; preds = %bb.df
  %i.mq = add i64 %i.ly, 1                        ; 4 uses
  store i64 %i.mq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9798, !noalias !9774
  call void @llvm.experimental.noalias.scope.decl(metadata !9799)
  %umax.i69.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mq, i64 %i.lx) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9800)
  %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.mq, %i.lx
  br i1 %exitcond.not.i71.not.i.i.i.i.i.i.i.i.i.i, label %bb.dp, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i"

bb.dp:                                            ; preds = %bb.do
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !9801, !noundef !8
  %i.mt = add i64 %i.ly, 2                        ; 3 uses
  store i64 %i.mt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9802, !noalias !9803
  %.not.i72.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ms, 114
  br i1 %.not.i72.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %.loopexit249.i.i.i.i.i.i.i.i.i.i, !prof !19

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !9804)
  %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mt, %umax.i69.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i74.i.i.i.i.i.i.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !noalias !9805, !noundef !8
end_hunk_4
begin_hunk_5_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hf281ade457d4f989E":bb.a

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9956
  store i64 6, ptr %i.e, align 8, !noalias !9956
  %i.uc = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc437.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i, !noalias !9684

.noexc437.i.i.i.i:                                ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9956
  br label %.loopexit625.i.i.i.i

bb.gz:                                            ; preds = %bb.gw
  %i.ud = add i64 %i.tx, 1
  store i64 %i.ud, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !9957, !noalias !9958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9959
  invoke fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h025ae41a0cc2e870E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bu)
          to label %.noexc438.i.i.i.i unwind label %.loopexit.split-lp.loopexit.loopexit.i.i.i.i, !noalias !9684

.noexc438.i.i.i.i:                                ; preds = %bb.gz
  %i.ue = load i8, ptr %i.hh, align 1, !range !14, !noalias !9959, !noundef !8
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %.thread595.i.i.i.i, label %bb.ha

.thread595.i.i.i.i:                               ; preds = %.noexc438.i.i.i.i
  %.sroa.611.0.copyload.i.i.i.i434598.i.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i433.i.i.i.i, align 8, !noalias !9959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9959
  br label %.loopexit625.i.i.i.i

bb.ha:                                            ; preds = %.noexc438.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.031.i49.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %i.c, i64 7, i1 false), !noalias !9740
  %.sroa.611.0.copyload.i.i.i.i434.i.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i433.i.i.i.i, align 8, !noalias !9959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9959
  %i.ug = ptrtoint ptr %.sroa.611.0.copyload.i.i.i.i434.i.i.i.i to i64
  br label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h1cd303e913ff1fadE.exit.i.i.i.i"

bb.hb:                                            ; preds = %bb.cr
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.cr
  %.sroa.10.0532.i.i.i.i = phi i64 [ undef, %bb.hb ], [ %.sroa.19.02291.i.i.i.i, %bb.cr ]
  %.sroa.8485.0.i.i.i.i = phi ptr [ undef, %bb.hb ], [ %.sroa.14.02292.i.i.i.i, %bb.cr ] ; 5 uses
  %.sroa.0483.0.i.i.i.i = phi i64 [ -9223372036854775808, %bb.hb ], [ %.sroa.0452.02293.i.i.i.i, %bb.cr ] ; 5 uses
  %.sroa.0225.4.i.i.i.i = phi i8 [ 1, %bb.hb ], [ 0, %bb.cr ] ; 4 uses
  %.not268.i.i.i.i = icmp eq i64 %.sroa.0457.02290.i.i.i.i, -9223372036854775807
  br i1 %.not268.i.i.i.i, label %bb.he, label %bb.hf

bb.hd:                                            ; preds = %bb.hh, %bb.hg, %bb.hg
  %i.uh = trunc nuw i8 %.sroa.0223.5.i.i.i.i to i1
  %i.ui = trunc nuw i8 %.sroa.0225.4.i.i.i.i to i1
  br label %.loopexit625.i.i.i.i

bb.he:                                            ; preds = %bb.hc
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hc
  %.sroa.10496.0.i.i.i.i = phi i64 [ undef, %bb.he ], [ %.sroa.19462.02288.i.i.i.i, %bb.hc ]
  %.sroa.8493.0.i.i.i.i = phi ptr [ undef, %bb.he ], [ %.sroa.14461.02289.i.i.i.i, %bb.hc ] ; 5 uses
  %.sroa.0491.0.i.i.i.i = phi i64 [ -9223372036854775808, %bb.he ], [ %.sroa.0457.02290.i.i.i.i, %bb.hc ] ; 5 uses
  %.sroa.0223.5.i.i.i.i = phi i8 [ 1, %bb.he ], [ 0, %bb.hc ] ; 4 uses
  %i.uj = trunc nuw i8 %.sroa.0.02303.i.i.i.i to i1
  br i1 %i.uj, label %bb.hl, label %bb.hi

bb.hg:                                            ; preds = %bb.hm, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i", %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i"
  switch i64 %.sroa.0483.0.i.i.i.i, label %bb.hh [
    i64 -9223372036854775808, label %bb.hd
    i64 0, label %bb.hd
  ]

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8485.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8485.0.i.i.i.i, i64 noundef %.sroa.0483.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9960
  br label %bb.hd

bb.hi:                                            ; preds = %bb.hf
  %i.uk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h43f920edffadda4dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 3)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i" unwind label %bb.hk, !noalias !9684

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i": ; preds = %bb.hr, %bb.hq, %bb.hk
  %.sroa.0219.6.i.i.i.i = phi i1 [ true, %bb.hk ], [ %.not270.i.i.i.i, %bb.hq ], [ %.not270.i.i.i.i, %bb.hr ] ; 3 uses
  %.sroa.0221.6.i.i.i.i = phi i1 [ true, %bb.hk ], [ false, %bb.hq ], [ false, %bb.hr ] ; 3 uses
  %.pn273.i.i.i.i = phi { ptr, i32 } [ %i.ul, %bb.hk ], [ %.pn.i67.i.i.i, %bb.hq ], [ %.pn.i67.i.i.i, %bb.hr ] ; 3 uses
  switch i64 %.sroa.0491.0.i.i.i.i, label %bb.hj [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i"
  ]

bb.hj:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8493.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8493.0.i.i.i.i, i64 noundef %.sroa.0491.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9961
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i"

bb.hk:                                            ; preds = %bb.hn, %bb.hi
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i"

bb.hl:                                            ; preds = %bb.hf
  %.not269.i.i.i.i = icmp eq i64 %.sroa.0463.02287.i.i.i.i, -9223372036854775808
  br i1 %.not269.i.i.i.i, label %bb.hn, label %bb.ho

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i": ; preds = %bb.hu, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i", %bb.hn, %bb.hi
  %.sroa.284.0.i.i.i = phi ptr [ %i.uk, %bb.hi ], [ %.sroa.284.1.i.i.i, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i" ], [ %.sroa.284.1.i.i.i, %bb.hu ], [ %i.um, %bb.hn ]
  %.sroa.0463.022872687.i.i.i.i = phi i64 [ %.sroa.0463.02287.i.i.i.i, %bb.hi ], [ 0, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %bb.hu ], [ -9223372036854775808, %bb.hn ]
  %.sroa.0219.8.i.i.i.i = phi i1 [ true, %bb.hi ], [ %.not270.i.i.i.i, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i" ], [ %.not270.i.i.i.i, %bb.hu ], [ true, %bb.hn ]
  %.sroa.0221.8.i.i.i.i = phi i1 [ true, %bb.hi ], [ false, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i" ], [ false, %bb.hu ], [ true, %bb.hn ]
  switch i64 %.sroa.0491.0.i.i.i.i, label %bb.hm [
    i64 -9223372036854775808, label %bb.hg
    i64 0, label %bb.hg
  ]

bb.hm:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8493.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8493.0.i.i.i.i, i64 noundef %.sroa.0491.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9962
  br label %bb.hg

bb.hn:                                            ; preds = %bb.hl
  %i.um = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h43f920edffadda4dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @94, i64 noundef 7)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i" unwind label %bb.hk, !noalias !9684

bb.ho:                                            ; preds = %bb.hl
  %.not270.i.i.i.i = icmp eq i64 %i.hp, -9223372036854775808 ; 5 uses
  br i1 %.not270.i.i.i.i, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.un = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h43f920edffadda4dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @95, i64 noundef 7)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i" unwind label %bb.hs, !noalias !9684

bb.hq:                                            ; preds = %bb.hw, %bb.hs
  %.pn.i67.i.i.i = phi { ptr, i32 } [ %i.up, %bb.hs ], [ %i.us, %bb.hw ] ; 2 uses
  %i.uo = icmp eq i64 %.sroa.0463.02287.i.i.i.i, 0
  br i1 %i.uo, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i", label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14467.02286.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14467.02286.i.i.i.i, i64 noundef %.sroa.0463.02287.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9684
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i"

bb.hs:                                            ; preds = %bb.hp
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.ht:                                            ; preds = %bb.ho
  %.not271.i.i.i.i = icmp eq i8 %.sroa.5.02302.i.i.i.i, 2
  br i1 %.not271.i.i.i.i, label %.invoke.invoke.i.i.i.i, label %bb.hv, !prof !10

"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i": ; preds = %bb.hx, %bb.hp
  %.sroa.284.1.i.i.i = phi ptr [ %i.uv, %bb.hx ], [ %i.un, %bb.hp ] ; 2 uses
  %i.uq = icmp eq i64 %.sroa.0463.02287.i.i.i.i, 0
  br i1 %i.uq, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i", label %bb.hu

bb.hu:                                            ; preds = %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14467.02286.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14467.02286.i.i.i.i, i64 noundef %.sroa.0463.02287.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9684
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit444.i.i.i.i"

bb.hv:                                            ; preds = %bb.ht
  %i.ur = trunc nuw i8 %.sroa.524.02300.i.i.i.i to i1
  br i1 %i.ur, label %.invoke.invoke.i.i.i.i, label %bb.hy, !prof !10

bb.hw:                                            ; preds = %.invoke.invoke.i.i.i.i
  %i.us = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE"(ptr noalias noundef align 8 dereferenceable(24) %i.as) #51, !noalias !9684
  br label %bb.hq

bb.hx:                                            ; preds = %.invoke.invoke.i.i.i.i
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE"(ptr noalias noundef align 8 dereferenceable(24) %i.as), !noalias !9684
  br label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he85598c51024dd9eE.exit.i.i.i.i"

bb.hy:                                            ; preds = %bb.hv
  %i.ut = trunc nuw i8 %.sroa.532.02298.i.i.i.i to i1
  br i1 %i.ut, label %.invoke.invoke.i.i.i.i, label %bb.hz, !prof !10

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.62.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.031.i49.i.i.i, i64 7, i1 false), !noalias !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.68.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.0.i.i.i.i, i64 7, i1 false), !noalias !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.65.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.017.i.i.i.i, i64 7, i1 false), !noalias !9963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.59.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.023.i.i.i.i, i64 7, i1 false), !noalias !9963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.031.i49.i.i.i)
  br label %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"

.invoke.invoke.i.i.i.i:                           ; preds = %bb.hy, %bb.hv, %bb.ht
  %i.uu = phi ptr [ @98, %bb.hy ], [ @97, %bb.hv ], [ @96, %bb.ht ]
  %i.uv = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h43f920edffadda4dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.uu, i64 noundef 10)
          to label %bb.hx unwind label %bb.hw, !noalias !9684

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i": ; preds = %bb.hj, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i", %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit.i60.i.i.i"
  switch i64 %.sroa.0483.0.i.i.i.i, label %bb.ia [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"
  ]

bb.ia:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit440.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8485.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8485.0.i.i.i.i, i64 noundef %.sroa.0483.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9964
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"

.loopexit625.i.i.i.i:                             ; preds = %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i, %.noexc361.i.i.i.i, %.noexc357.i.i.i.i, %.noexc354.i.i.i.i, %.noexc353.i.i.i.i, %.invoke, %bb.hd, %.thread595.i.i.i.i, %.noexc437.i.i.i.i, %.noexc436.i.i.i.i, %.thread586.i.i.i.i, %.noexc425.i.i.i.i, %.noexc424.i.i.i.i, %.thread578.i.i.i.i, %.noexc415.i.i.i.i, %.noexc414.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i, %.loopexit4009.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i, %.loopexit627.i.i.i.i, %.noexc366.i.i.i.i, %.noexc364.i.i.i.i, %.noexc363.i.i.i.i, %.noexc362.i.i.i.i, %.noexc360.i.i.i.i, %.noexc359.i.i.i.i, %.noexc356.i.i.i.i, %.noexc352.i.i.i.i, %.noexc351.i.i.i.i, %.noexc350.i.i.i.i, %.noexc349.i.i.i.i, %.noexc348.i.i.i.i, %.noexc347.i.i.i.i, %.noexc346.i.i.i.i, %.noexc345.i.i.i.i, %.noexc344.i.i.i.i, %bb.cq, %.noexc338.i.i.i.i, %.noexc337.i.i.i.i, %.noexc336.i.i.i.i, %.noexc335.i.i.i.i, %.noexc334.i.i.i.i, %.noexc.i50.i.i.i
  %.sroa.284.2.i.i.i = phi ptr [ %.sroa.284.0.i.i.i, %bb.hd ], [ %i.ub, %.noexc436.i.i.i.i ], [ %i.qt, %.loopexit627.i.i.i.i ], [ %i.io, %bb.cq ], [ %i.np, %.noexc351.i.i.i.i ], [ %i.nb, %.noexc350.i.i.i.i ], [ %i.lt, %.noexc345.i.i.i.i ], [ %i.rt, %.loopexit4009.i.i.i.i ], [ %i.ps, %.noexc362.i.i.i.i ], [ %i.qh, %.noexc366.i.i.i.i ], [ %i.oz, %.noexc359.i.i.i.i ], [ %i.qa, %.noexc363.i.i.i.i ], [ %i.pp, %.noexc360.i.i.i.i ], [ %i.mp, %.noexc348.i.i.i.i ], [ %i.sz, %.noexc414.i.i.i.i ], [ %i.pr, %.noexc361.i.i.i.i ], [ %i.tm, %.noexc424.i.i.i.i ], [ %i.tt, %.invoke ], [ %i.ih, %.noexc336.i.i.i.i ], [ %i.ig, %.noexc335.i.i.i.i ], [ %i.ii, %.noexc337.i.i.i.i ], [ %i.if, %.noexc334.i.i.i.i ], [ %i.hw, %.noexc.i50.i.i.i ], [ %i.ij, %.noexc338.i.i.i.i ], [ %.sroa.0.0.i.ph.i.i376.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.0.0.i.ph.i.i394.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.0.0.i.ph.i.i402.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.611.0.copyload.i.i.i.i580.i.i.i.i, %.thread578.i.i.i.i ], [ %i.ta, %.noexc415.i.i.i.i ], [ %.sroa.611.0.copyload.i.i.i.i422589.i.i.i.i, %.thread586.i.i.i.i ], [ %i.tn, %.noexc425.i.i.i.i ], [ %.sroa.611.0.copyload.i.i.i.i434598.i.i.i.i, %.thread595.i.i.i.i ], [ %i.uc, %.noexc437.i.i.i.i ], [ %i.nq, %.noexc352.i.i.i.i ], [ %i.mo, %.noexc347.i.i.i.i ], [ %i.mc, %.noexc346.i.i.i.i ], [ %i.og, %.noexc356.i.i.i.i ], [ %i.ls, %.noexc344.i.i.i.i ], [ %i.na, %.noexc349.i.i.i.i ], [ %i.qc, %.noexc364.i.i.i.i ], [ %i.ns, %.noexc353.i.i.i.i ], [ %i.oh, %.noexc357.i.i.i.i ], [ %i.nu, %.noexc354.i.i.i.i ], [ %i.sf, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %i.sr, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ], [ %i.rh, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ] ; 4 uses
  %.sroa.14467.02135.i.i.i.i = phi ptr [ %.sroa.14467.02286.i.i.i.i, %bb.hd ], [ %.sroa.14467.02286.i.i.i.i, %.noexc436.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit627.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %bb.cq ], [ %.sroa.14467.02286.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.invoke ], [ %.sroa.14467.02286.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.14467.02121.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc338.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %.noexc357.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.14467.02286.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0463.02009.i.i.i.i = phi i64 [ %.sroa.0463.022872687.i.i.i.i, %bb.hd ], [ %.sroa.0463.02287.i.i.i.i, %.noexc436.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit627.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %bb.cq ], [ %.sroa.0463.02287.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.invoke ], [ %.sroa.0463.02287.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.0463.02011.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc338.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %.noexc357.i.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ], [ %.sroa.0463.02287.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ] ; 2 uses
  %.sroa.14461.01849.i.i.i.i = phi ptr [ %.sroa.14461.02289.i.i.i.i, %bb.hd ], [ %.sroa.14461.02289.i.i.i.i, %.noexc436.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit627.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %bb.cq ], [ %.sroa.14461.02289.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.invoke ], [ %.sroa.14461.02289.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.14461.01835.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc338.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %.noexc357.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.14461.02289.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0457.01743.i.i.i.i = phi i64 [ %.sroa.0457.02290.i.i.i.i, %bb.hd ], [ %.sroa.0457.02290.i.i.i.i, %.noexc436.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit627.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %bb.cq ], [ %.sroa.0457.02290.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.invoke ], [ %.sroa.0457.02290.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.0457.01729.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc338.i.i.i.i ], [ -9223372036854775807, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %.noexc357.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.0457.02290.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ], [ -9223372036854775807, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ] ; 3 uses
  %.sroa.14.01565.i.i.i.i = phi ptr [ %.sroa.14.02292.i.i.i.i, %bb.hd ], [ %.sroa.14.02292.i.i.i.i, %.noexc436.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit627.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %bb.cq ], [ %.sroa.14.02292.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.invoke ], [ %.sroa.14.02292.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.14.01551.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc338.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %.noexc357.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.14.02292.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ] ; 2 uses
  %.sroa.0452.01459.i.i.i.i = phi i64 [ %.sroa.0452.02293.i.i.i.i, %bb.hd ], [ %.sroa.0452.02293.i.i.i.i, %.noexc436.i.i.i.i ], [ -9223372036854775807, %.loopexit627.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %bb.cq ], [ %.sroa.0452.02293.i.i.i.i, %.noexc351.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc350.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc345.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.loopexit4009.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc362.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc366.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc359.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc363.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc360.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc348.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc414.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc361.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc424.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.invoke ], [ %.sroa.0452.02293.i.i.i.i, %.noexc336.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc335.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc337.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc334.i.i.i.i ], [ %.sroa.0452.01445.i.i.i.i, %.noexc.i50.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc338.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.thread578.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc415.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.thread586.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc425.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.thread595.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc437.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc352.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc347.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc346.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc356.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc344.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc349.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc364.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc353.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc354.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %.noexc357.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ %.sroa.0452.02293.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ] ; 3 uses
  %.sroa.0219.15.i.i.i.i = phi i1 [ %.sroa.0219.8.i.i.i.i, %bb.hd ], [ true, %.noexc436.i.i.i.i ], [ true, %.loopexit627.i.i.i.i ], [ true, %bb.cq ], [ true, %.noexc351.i.i.i.i ], [ true, %.noexc350.i.i.i.i ], [ true, %.noexc345.i.i.i.i ], [ true, %.loopexit4009.i.i.i.i ], [ true, %.noexc362.i.i.i.i ], [ true, %.noexc366.i.i.i.i ], [ true, %.noexc359.i.i.i.i ], [ true, %.noexc363.i.i.i.i ], [ true, %.noexc360.i.i.i.i ], [ true, %.noexc348.i.i.i.i ], [ true, %.noexc414.i.i.i.i ], [ true, %.noexc361.i.i.i.i ], [ true, %.noexc424.i.i.i.i ], [ true, %.invoke ], [ true, %.noexc336.i.i.i.i ], [ true, %.noexc335.i.i.i.i ], [ true, %.noexc337.i.i.i.i ], [ true, %.noexc334.i.i.i.i ], [ true, %.noexc.i50.i.i.i ], [ true, %.noexc338.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ true, %.thread578.i.i.i.i ], [ true, %.noexc415.i.i.i.i ], [ true, %.thread586.i.i.i.i ], [ true, %.noexc425.i.i.i.i ], [ true, %.thread595.i.i.i.i ], [ true, %.noexc437.i.i.i.i ], [ true, %.noexc352.i.i.i.i ], [ true, %.noexc347.i.i.i.i ], [ true, %.noexc346.i.i.i.i ], [ true, %.noexc356.i.i.i.i ], [ true, %.noexc344.i.i.i.i ], [ true, %.noexc349.i.i.i.i ], [ true, %.noexc364.i.i.i.i ], [ true, %.noexc353.i.i.i.i ], [ true, %.noexc354.i.i.i.i ], [ true, %.noexc357.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ]
  %.sroa.0221.12.i.i.i.i = phi i1 [ %.sroa.0221.8.i.i.i.i, %bb.hd ], [ true, %.noexc436.i.i.i.i ], [ true, %.loopexit627.i.i.i.i ], [ true, %bb.cq ], [ true, %.noexc351.i.i.i.i ], [ true, %.noexc350.i.i.i.i ], [ true, %.noexc345.i.i.i.i ], [ true, %.loopexit4009.i.i.i.i ], [ true, %.noexc362.i.i.i.i ], [ true, %.noexc366.i.i.i.i ], [ true, %.noexc359.i.i.i.i ], [ true, %.noexc363.i.i.i.i ], [ true, %.noexc360.i.i.i.i ], [ true, %.noexc348.i.i.i.i ], [ true, %.noexc414.i.i.i.i ], [ true, %.noexc361.i.i.i.i ], [ true, %.noexc424.i.i.i.i ], [ true, %.invoke ], [ true, %.noexc336.i.i.i.i ], [ true, %.noexc335.i.i.i.i ], [ true, %.noexc337.i.i.i.i ], [ true, %.noexc334.i.i.i.i ], [ true, %.noexc.i50.i.i.i ], [ true, %.noexc338.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ true, %.thread578.i.i.i.i ], [ true, %.noexc415.i.i.i.i ], [ true, %.thread586.i.i.i.i ], [ true, %.noexc425.i.i.i.i ], [ true, %.thread595.i.i.i.i ], [ true, %.noexc437.i.i.i.i ], [ true, %.noexc352.i.i.i.i ], [ true, %.noexc347.i.i.i.i ], [ true, %.noexc346.i.i.i.i ], [ true, %.noexc356.i.i.i.i ], [ true, %.noexc344.i.i.i.i ], [ true, %.noexc349.i.i.i.i ], [ true, %.noexc364.i.i.i.i ], [ true, %.noexc353.i.i.i.i ], [ true, %.noexc354.i.i.i.i ], [ true, %.noexc357.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ]
  %.sroa.0223.7.i.i.i.i = phi i1 [ %i.uh, %bb.hd ], [ true, %.noexc436.i.i.i.i ], [ true, %.loopexit627.i.i.i.i ], [ true, %bb.cq ], [ true, %.noexc351.i.i.i.i ], [ true, %.noexc350.i.i.i.i ], [ true, %.noexc345.i.i.i.i ], [ true, %.loopexit4009.i.i.i.i ], [ true, %.noexc362.i.i.i.i ], [ true, %.noexc366.i.i.i.i ], [ true, %.noexc359.i.i.i.i ], [ true, %.noexc363.i.i.i.i ], [ true, %.noexc360.i.i.i.i ], [ true, %.noexc348.i.i.i.i ], [ true, %.noexc414.i.i.i.i ], [ true, %.noexc361.i.i.i.i ], [ true, %.noexc424.i.i.i.i ], [ true, %.invoke ], [ true, %.noexc336.i.i.i.i ], [ true, %.noexc335.i.i.i.i ], [ true, %.noexc337.i.i.i.i ], [ true, %.noexc334.i.i.i.i ], [ true, %.noexc.i50.i.i.i ], [ true, %.noexc338.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ true, %.thread578.i.i.i.i ], [ true, %.noexc415.i.i.i.i ], [ true, %.thread586.i.i.i.i ], [ true, %.noexc425.i.i.i.i ], [ true, %.thread595.i.i.i.i ], [ true, %.noexc437.i.i.i.i ], [ true, %.noexc352.i.i.i.i ], [ true, %.noexc347.i.i.i.i ], [ true, %.noexc346.i.i.i.i ], [ true, %.noexc356.i.i.i.i ], [ true, %.noexc344.i.i.i.i ], [ true, %.noexc349.i.i.i.i ], [ true, %.noexc364.i.i.i.i ], [ true, %.noexc353.i.i.i.i ], [ true, %.noexc354.i.i.i.i ], [ true, %.noexc357.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ]
  %.sroa.0225.6.i.i.i.i = phi i1 [ %i.ui, %bb.hd ], [ true, %.noexc436.i.i.i.i ], [ true, %.loopexit627.i.i.i.i ], [ true, %bb.cq ], [ true, %.noexc351.i.i.i.i ], [ true, %.noexc350.i.i.i.i ], [ true, %.noexc345.i.i.i.i ], [ true, %.loopexit4009.i.i.i.i ], [ true, %.noexc362.i.i.i.i ], [ true, %.noexc366.i.i.i.i ], [ true, %.noexc359.i.i.i.i ], [ true, %.noexc363.i.i.i.i ], [ true, %.noexc360.i.i.i.i ], [ true, %.noexc348.i.i.i.i ], [ true, %.noexc414.i.i.i.i ], [ true, %.noexc361.i.i.i.i ], [ true, %.noexc424.i.i.i.i ], [ true, %.invoke ], [ true, %.noexc336.i.i.i.i ], [ true, %.noexc335.i.i.i.i ], [ true, %.noexc337.i.i.i.i ], [ true, %.noexc334.i.i.i.i ], [ true, %.noexc.i50.i.i.i ], [ true, %.noexc338.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.thread.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.thread.i.i.i.i ], [ true, %.thread578.i.i.i.i ], [ true, %.noexc415.i.i.i.i ], [ true, %.thread586.i.i.i.i ], [ true, %.noexc425.i.i.i.i ], [ true, %.thread595.i.i.i.i ], [ true, %.noexc437.i.i.i.i ], [ true, %.noexc352.i.i.i.i ], [ true, %.noexc347.i.i.i.i ], [ true, %.noexc346.i.i.i.i ], [ true, %.noexc356.i.i.i.i ], [ true, %.noexc344.i.i.i.i ], [ true, %.noexc349.i.i.i.i ], [ true, %.noexc364.i.i.i.i ], [ true, %.noexc353.i.i.i.i ], [ true, %.noexc354.i.i.i.i ], [ true, %.noexc357.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h3a9e3d6dacbfd450E.exit382.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h8829ce4f81ebeaa1E.exit.i.i.i.i ], [ true, %_ZN10serde_core2de9MapAccess10next_value17h95f14d21a1cf62ffE.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.031.i49.i.i.i)
  %i.uw = load i64, ptr %i.as, align 8, !range !35, !noalias !9740, !noundef !8 ; 3 uses
  %i.ux = icmp ne i64 %i.uw, -9223372036854775808
  %or.cond.i.i.i.i = and i1 %.sroa.0219.15.i.i.i.i, %i.ux
  br i1 %or.cond.i.i.i.i, label %bb.ib, label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i"

"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i": ; preds = %bb.id, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i57.i.i.i", %.loopexit625.i.i.i.i
  %i.uy = and i64 %.sroa.0463.02009.i.i.i.i, 9223372036854775807
  %i.uz = icmp ne i64 %i.uy, 0
  %or.cond602.not.i.i.i.i = and i1 %i.uz, %.sroa.0221.12.i.i.i.i
  br i1 %or.cond602.not.i.i.i.i, label %bb.if, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit446.i.i.i.i"

bb.ib:                                            ; preds = %.loopexit625.i.i.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.va, align 8, !noalias !9740, !nonnull !8, !noundef !8 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.vb, align 8, !noalias !9740, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9965)
  %i.vc = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.vc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i57.i.i.i", label %.lr.ph.i.i.i.i52.i.i.i

.lr.ph.i.i.i.i52.i.i.i:                           ; preds = %bb.ib, %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i"
  %.sroa.0.011.i.i.i.i53.i.i.i = phi i64 [ %i.ve, %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i" ], [ 0, %bb.ib ] ; 2 uses
  %i.vd = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i53.i.i.i ; 2 uses
  %i.ve = add nuw i64 %.sroa.0.011.i.i.i.i53.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i54.i.i.i = load i64, ptr %i.vd, align 8, !range !9, !alias.scope !9966, !noalias !9967, !noundef !8 ; 2 uses
  %i.vf = icmp eq i64 %.val8.i.i.i.i54.i.i.i, 0
  br i1 %i.vf, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i", label %bb.ic

bb.ic:                                            ; preds = %.lr.ph.i.i.i.i52.i.i.i
  %i.vg = getelementptr i8, ptr %i.vd, i64 8
  %.val9.i.i.i.i55.i.i.i = load ptr, ptr %i.vg, align 8, !alias.scope !9965, !noalias !9967, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i55.i.i.i, i64 noundef %.val8.i.i.i.i54.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9968
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i": ; preds = %bb.ic, %.lr.ph.i.i.i.i52.i.i.i
  %i.vh = icmp eq i64 %i.ve, %.val1.i.i.i.i.i
  br i1 %i.vh, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i57.i.i.i", label %.lr.ph.i.i.i.i52.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i57.i.i.i": ; preds = %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit.i.i.i.i56.i.i.i", %bb.ib
  %i.vi = icmp eq i64 %i.uw, 0
  br i1 %i.vi, label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i", label %bb.id

bb.id:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h75e78f77638fc4afE.exit.i.i57.i.i.i"
  %i.vj = mul nuw i64 %i.uw, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.vj, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !9967
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i"

bb.ie:                                            ; preds = %bb.ik, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"
  %i.vk = and i64 %.sroa.0463.02037.i.i.i.i, 9223372036854775807
  %i.vl = icmp ne i64 %i.vk, 0
  %or.cond603.not.i.i.i.i = and i1 %i.vl, %.sroa.0221.1.i.i.i.i
  br i1 %or.cond603.not.i.i.i.i, label %bb.il, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit449.i.i.i.i"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit446.i.i.i.i": ; preds = %bb.if, %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i"
  %i.vm = icmp ne i64 %.sroa.0457.01743.i.i.i.i, -9223372036854775807
  %or.cond5.i.i.i.i = select i1 %i.vm, i1 %.sroa.0223.7.i.i.i.i, i1 false
  br i1 %or.cond5.i.i.i.i, label %bb.ig, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i"

bb.if:                                            ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE.exit.i51.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14467.02135.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14467.02135.i.i.i.i, i64 noundef %.sroa.0463.02009.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9684
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit446.i.i.i.i"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit449.i.i.i.i": ; preds = %bb.il, %bb.ie
  %i.vn = icmp ne i64 %.sroa.0457.01725.i.i.i.i, -9223372036854775807
  %i.vo = trunc nuw i8 %.sroa.0223.1.i.i.i.i to i1
  %or.cond13.i.i.i.i = select i1 %i.vn, i1 %i.vo, i1 false
  br i1 %or.cond13.i.i.i.i, label %bb.im, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i": ; preds = %bb.ih, %bb.ig, %bb.ig, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit446.i.i.i.i"
  %i.vp = icmp ne i64 %.sroa.0452.01459.i.i.i.i, -9223372036854775807
  %or.cond7.i.i.i.i = select i1 %i.vp, i1 %.sroa.0225.6.i.i.i.i, i1 false
  br i1 %or.cond7.i.i.i.i, label %bb.ii, label %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"

bb.ig:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit446.i.i.i.i"
  switch i64 %.sroa.0457.01743.i.i.i.i, label %bb.ih [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i"
  ]

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14461.01849.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14461.01849.i.i.i.i, i64 noundef %.sroa.0457.01743.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9969
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i": ; preds = %bb.in, %bb.im, %bb.im, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit449.i.i.i.i"
  %i.vq = icmp ne i64 %.sroa.0452.01441.i.i.i.i, -9223372036854775807
  %i.vr = trunc nuw i8 %.sroa.0225.1.i.i.i.i to i1
  %or.cond15.i.i.i.i = select i1 %i.vq, i1 %i.vr, i1 false
  br i1 %or.cond15.i.i.i.i, label %bb.io, label %.body.i

bb.ii:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i"
  switch i64 %.sroa.0452.01459.i.i.i.i, label %bb.ij [
    i64 -9223372036854775808, label %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"
    i64 0, label %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"
  ]

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.01565.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.01565.i.i.i.i, i64 noundef %.sroa.0452.01459.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9970
  br label %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"

bb.ik:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit445.i.i.i.i"
  call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17h08b3de727379674dE"(ptr noalias noundef align 8 dereferenceable(24) %i.as) #51, !noalias !9684
  br label %bb.ie

bb.il:                                            ; preds = %bb.ie
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14467.02116.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14467.02116.i.i.i.i, i64 noundef %.sroa.0463.02037.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9684
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit449.i.i.i.i"

bb.im:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h808d1f2552f1389fE.exit449.i.i.i.i"
  switch i64 %.sroa.0457.01725.i.i.i.i, label %bb.in [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i"
  ]

bb.in:                                            ; preds = %bb.im
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14461.01831.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14461.01831.i.i.i.i, i64 noundef %.sroa.0457.01725.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9971
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i"

bb.io:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit450.i.i.i.i"
  switch i64 %.sroa.0452.01441.i.i.i.i, label %bb.ip [
    i64 -9223372036854775808, label %.body.i
    i64 0, label %.body.i
  ]

bb.ip:                                            ; preds = %bb.io
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.01547.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.01547.i.i.i.i, i64 noundef %.sroa.0452.01441.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !9972
  br label %.body.i

"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i": ; preds = %bb.ij, %bb.ii, %bb.ii, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i", %bb.hz
  %.sroa.69.0.i.i.i = phi ptr [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.7.sroa.5.02296.i.i.i.i, %bb.hz ]
  %.sroa.67.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.8.02301.i.i.i.i, %bb.hz ]
  %.sroa.66.0.i.i.i = phi i8 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.5.02302.i.i.i.i, %bb.hz ]
  %.sroa.64.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.836.02297.i.i.i.i, %bb.hz ]
  %.sroa.61.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.828.02299.i.i.i.i, %bb.hz ]
  %.sroa.58.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.10496.0.i.i.i.i, %bb.hz ]
  %.sroa.57.0.i.i.i = phi ptr [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.8493.0.i.i.i.i, %bb.hz ]
  %.sroa.56.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.0491.0.i.i.i.i, %bb.hz ]
  %.sroa.55.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.10.0532.i.i.i.i, %bb.hz ]
  %.sroa.54.0.i.i.i = phi ptr [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.8485.0.i.i.i.i, %bb.hz ]
  %.sroa.53.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.0483.0.i.i.i.i, %bb.hz ]
  %.sroa.51.0.i.i.i = phi i64 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.19468.02285.i.i.i.i, %bb.hz ]
  %.sroa.284.3.i.i.i = phi ptr [ %.sroa.284.2.i.i.i, %bb.ij ], [ %.sroa.284.2.i.i.i, %bb.ii ], [ %.sroa.284.2.i.i.i, %bb.ii ], [ %.sroa.284.2.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.14467.02286.i.i.i.i, %bb.hz ]
  %.sroa.03.3.i.i.i = phi i64 [ -9223372036854775808, %bb.ij ], [ -9223372036854775808, %bb.ii ], [ -9223372036854775808, %bb.ii ], [ -9223372036854775808, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.0463.02287.i.i.i.i, %bb.hz ]
  %.sroa.70.0.i.i.i = phi i8 [ undef, %bb.ij ], [ undef, %bb.ii ], [ undef, %bb.ii ], [ undef, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hb9ccc08717770d02E.exit447.i.i.i.i" ], [ %.sroa.7.sroa.6.02295.i.i.i.i, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9682
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0.i.i.i.i)
  %i.vs = load i8, ptr %i.by, align 8, !range !14, !alias.scope !9683, !noalias !9684, !noundef !8
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"
  %i.vu = load i8, ptr %i.bx, align 1, !alias.scope !9683, !noalias !9684, !noundef !8
  %i.vv = add i8 %i.vu, 1
  store i8 %i.vv, ptr %i.bx, align 1, !alias.scope !9683, !noalias !9684
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %"_ZN181_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Key$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h3635d1fe8bf57e62E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !9682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !9682
  store i64 %.sroa.03.3.i.i.i, ptr %i.bo, align 8, !noalias !9682
  %.sroa.284.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.sroa.284.3.i.i.i, ptr %.sroa.284.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.51.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.sroa.51.0.i.i.i, ptr %.sroa.51.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.i.i.i, i64 24, i1 false), !noalias !9682
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i64 %.sroa.53.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr %.sroa.54.0.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i64 %.sroa.55.0.i.i.i, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i64 %.sroa.56.0.i.i.i, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store ptr %.sroa.57.0.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i64 %.sroa.58.0.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.59.i.i.i, i64 7, i1 false), !noalias !9682
  %.sroa.60.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 103
  store i8 0, ptr %.sroa.60.0..sroa_idx.i.i.i, align 1, !noalias !9682
  %.sroa.61.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store i64 %.sroa.61.0.i.i.i, ptr %.sroa.61.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.62.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.62.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.62.i.i.i, i64 7, i1 false), !noalias !9682
  %.sroa.63.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 119
  store i8 0, ptr %.sroa.63.0..sroa_idx.i.i.i, align 1, !noalias !9682
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store i64 %.sroa.64.0.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !9682
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.65.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.65.i.i.i, i64 7, i1 false), !noalias !9682
end_hunk_5
begin_hunk_6_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2f8e4128e87aaef1E":bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hce542a00f0d5a24cE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val12 = load i64, ptr %i.a, align 8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val13 = load i64, ptr %i.b, align 8, !noundef !8
  %i.c = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h37f4bc4a1701c4abE(i64 %.val12, i64 %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10663)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10664, !noalias !10665, !noundef !8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i", !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h21582f08ffd5e6cbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i" unwind label %bb.l ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !10662, !noalias !10666, !nonnull !8, !noundef !8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !10662, !noalias !10666, !noundef !8 ; 4 uses
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !10663, !noalias !10667 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !10663, !noalias !10667 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i"
  %.pn.i.i = phi i64 [ %i.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i" ], [ %i.al, %bb.e ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i" ], [ %.sroa.6.120.i.i, %bb.e ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i" ], [ %.sroa.01.122.i.i, %bb.e ]
  %i.m = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hf8fafa1c25090218E.exit.i" ], [ %i.ak, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !10668 ; 3 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.p, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i"
  %.sroa.05.026.i.i = phi i16 [ %i.aa, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i" ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.0.017.i.i, %i.r
  %i.t = and i64 %i.s, %.val7.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %.val4.i.i = load i64, ptr %i.w, align 8, !noalias !10669, !noundef !8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val4.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i", !prof !29

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.i": ; preds = %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %i.v, i64 -16
  %.val3.i.i = load ptr, ptr %i.x, align 8, !noalias !10669, !nonnull !8, !noundef !8
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val3.i.i, i64 %.val1.i.i.i), !alias.scope !10670, !noalias !10669
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i", !prof !30

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i", %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.d, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.i", %.lr.ph.i.i
  %i.z = add i16 %.sroa.05.026.i.i, -1
  %i.aa = and i16 %i.z, %.sroa.05.026.i.i         ; 2 uses
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ac, 0      ; 2 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ae
  %i.af = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ag = and i64 %i.af, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noalias !10663, !noundef !8 ; 2 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.g, label %bb.j, !prof !10

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !10663
  %i.ap = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %i.ar = icmp ne i16 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.at = zext nneg i16 %i.as to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.at
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !10671
  br label %bb.j

"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit": ; preds = %bb.i, %bb.h, %bb.j
  ret void

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h228fea57155a1213E.exit.i"
  %.val10 = load i64, ptr %1, align 8, !range !9, !alias.scope !31, !noundef !8 ; 2 uses
  %i.au = icmp eq i64 %.val10, 0
  br i1 %i.au, label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !10672
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit"

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.av = phi i8 [ %.pre, %bb.g ], [ %i.an, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.at, %bb.g ], [ %.sroa.6.121.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10673)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ax = and i8 %i.av, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ba = and i64 %i.az, %.val7.i
  store i8 %i.j, ptr %i.aw, align 1, !noalias !10671
  %i.bb = getelementptr i8, ptr %.val.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.j, ptr %i.bc, align 1, !noalias !10671
  %i.bd = load <2 x i64>, ptr %i.d, align 8, !alias.scope !10673, !noalias !10674
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ay, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.d, align 8, !alias.scope !10673, !noalias !10674
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bh = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !10673
  br label %"_ZN4core3ptr74drop_in_place$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$17h3a36d5c731295741E.exit"

bb.k:                                             ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.bj

bb.l:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %1, align 8, !range !9, !alias.scope !31, !noundef !8 ; 2 uses
  %i.bk = icmp eq i64 %.val, 0
  br i1 %i.bk, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.bl, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !10675
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 1, 33) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !8
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !8
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h09e0857a21787371E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !10678
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !49

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !10678
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !50

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !8
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !10

bb.g:                                             ; preds = %._crit_edge.i15
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !8
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !8
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17hbe52428e4bf53bd4E(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
end_hunk_6
