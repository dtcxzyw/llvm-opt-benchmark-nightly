Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front17h09e510639d3db7d6E":bb.a
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %.sroa.557.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.cj, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bx, ptr noundef nonnull align 1 %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %.thread121, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hd0505a364fb95182E.exit"
  %i.cq = call noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cr = getelementptr i8, ptr %i.cq, i64 289
  %.val = load i8, ptr %i.cr, align 1, !range !59, !noundef !52
  %i.cs = trunc nuw i8 %.val to i1
  br i1 %i.cs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 289
  store i8 1, ptr %i.cu, align 1, !alias.scope !16366
  %i.cv = load i32, ptr %0, align 4, !range !111, !noundef !52
  %i.cw = trunc nuw i32 %i.cv to i1
  %i.cx = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.cy = icmp eq i64 %i.cx, 0                    ; 2 uses
  br i1 %i.cw, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cz = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.ak, label %.thread139

bb.n:                                             ; preds = %bb.l
  br i1 %i.cy, label %bb.z, label %.thread133

bb.o:                                             ; preds = %bb.l
  br i1 %i.cy, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.db, label %bb.q [
    i8 0, label %.critedge
    i8 1, label %.thread124
    i8 2, label %.thread124
  ], !prof !71

bb.q:                                             ; preds = %bb.p
  %i.dc = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE") ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %.critedge, label %.thread124

.thread124:                                       ; preds = %bb.p, %bb.p, %bb.q
  %.sroa.040.0126 = phi i8 [ %i.dc, %bb.q ], [ %i.db, %bb.p ], [ %i.db, %bb.p ]
  %i.de = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.df = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.de, i8 noundef %.sroa.040.0126)
  br i1 %i.df, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.thread124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dg = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @859, ptr %i.q, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.dl, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @93, ptr %i.dm, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %.sroa.042.sroa.5.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.dh, ptr %.sroa.443.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  %i.dn = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16367
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.s, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit"

bb.s:                                             ; preds = %bb.r
  %i.dp = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16367 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 6
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ugt i64 %i.dp, 4
  br i1 %i.dr, label %bb.t, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit"

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", align 8, !noalias !16367, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !52, !align !62, !noundef !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !52
  store i64 5, ptr %i.f, align 8, !noalias !16367
  %.sroa.52.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.du, ptr %.sroa.52.0..sroa_idx.i112, align 8, !noalias !16367
  %.sroa.7.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dw, ptr %.sroa.7.0..sroa_idx.i113, align 8, !noalias !16367
  %i.dx = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !52, !nonnull !52
  %i.ec = call noundef zeroext i1 %i.eb(ptr noundef align 1 %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !inline_history !16354
  br i1 %i.ec, label %bb.u, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit"

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16367
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ds, ptr noundef nonnull align 1 %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16367
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit": ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

.critedge:                                        ; preds = %bb.p, %.thread124, %bb.o, %bb.q
  %i.ed = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.critedge
  %i.ef = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 6
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp samesign ugt i64 %i.ef, 4
  br i1 %i.eh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !52, !align !62, !noundef !52
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.em = load i64, ptr %i.el, align 8, !noundef !52
  store i64 5, ptr %i.p, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ek, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.em, ptr %.sroa.7106.0..sroa_idx, align 8
  %i.en = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.eo = extractvalue { ptr, ptr } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.en, 1      ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !invariant.load !52, !nonnull !52
  %i.es = call noundef zeroext i1 %i.er(ptr noundef align 1 %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.et = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h19b468e662334adfE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @859, ptr %i.m, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ey, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @93, ptr %i.ez, align 8
  store i64 1, ptr %i.o, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.587.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.eu, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ei, ptr noundef nonnull align 1 %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %.critedge, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17hf152c97dc7c70a97E.exit"
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.fb, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.445.0..sroa_idx, align 4
  br label %bb.aj

bb.z:                                             ; preds = %bb.n
  %i.fc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fc, label %bb.aa [
    i8 0, label %.thread133
    i8 1, label %.thread130
    i8 2, label %.thread130
  ], !prof !71

bb.aa:                                            ; preds = %bb.z
  %i.fd = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E") ; 2 uses
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %.thread133, label %.thread130

.thread130:                                       ; preds = %bb.z, %bb.z, %bb.aa
  %.sroa.029.0132 = phi i8 [ %i.fd, %bb.aa ], [ %i.fc, %bb.z ], [ %i.fc, %bb.z ]
  %i.ff = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.fg = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ff, i8 noundef %.sroa.029.0132)
  br i1 %i.fg, label %bb.ab, label %.thread133

bb.ab:                                            ; preds = %.thread130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.fh = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @861, ptr %i.x, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr null, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.fm, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @93, ptr %i.fn, align 8
  store i64 1, ptr %i.z, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.fi, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  %i.fo = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16368
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.ac, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.fq = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16368 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 6
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ugt i64 %i.fq, 4
  br i1 %i.fs, label %bb.ad, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit"

bb.ad:                                            ; preds = %bb.ac
  %i.ft = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", align 8, !noalias !16368, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !52, !align !62, !noundef !52
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fx = load i64, ptr %i.fw, align 8, !noundef !52
  store i64 5, ptr %i.d, align 8, !noalias !16368
  %.sroa.52.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.fv, ptr %.sroa.52.0..sroa_idx.i114, align 8, !noalias !16368
  %.sroa.7.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fx, ptr %.sroa.7.0..sroa_idx.i115, align 8, !noalias !16368
  %i.fy = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0      ; 2 uses
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !invariant.load !52, !nonnull !52
  %i.gd = call noundef zeroext i1 %i.gc(ptr noundef align 1 %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !inline_history !16357
  br i1 %i.gd, label %bb.ae, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit"

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16368
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ft, ptr noundef nonnull align 1 %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16368
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit": ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ai

.thread133:                                       ; preds = %bb.z, %bb.aa, %.thread130, %bb.n
  %i.ge = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread133
  %i.gg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, 6
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i64 %i.gg, 4
  br i1 %i.gi, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !nonnull !52, !align !62, !noundef !52
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !noundef !52
  store i64 5, ptr %i.w, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.gl, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.gn, ptr %.sroa.7101.0..sroa_idx, align 8
  %i.go = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0      ; 2 uses
  %i.gq = extractvalue { ptr, ptr } %i.go, 1      ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !invariant.load !52, !nonnull !52
  %i.gt = call noundef zeroext i1 %i.gs(ptr noundef align 1 %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.gu = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17ha7030fbb1a1ca496E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @861, ptr %i.t, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.gz, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @93, ptr %i.ha, align 8
  store i64 1, ptr %i.v, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.577.0..sroa_idx, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.gv, ptr %i.hb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gj, ptr noundef nonnull align 1 %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %.thread133, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h17f9e1a9d31a0a95E.exit"
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.hd = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 184
  store i32 1, ptr %i.he, align 8, !alias.scope !16369
  %.sroa.4.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.hd, i64 188
  %i.hf = load <2 x i32>, ptr %i.hc, align 4
  store <2 x i32> %i.hf, ptr %.sroa.4.0..sroa_idx118, align 4, !alias.scope !16369
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hh = load <2 x i32>, ptr %i.hg, align 8
  store <2 x i32> %i.hh, ptr %i.hc, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front28_$u7b$$u7b$closure$u7d$$u7d$17h3c52949168214739E.exit", %.thread139, %bb.aq, %bb.as, %bb.ar, %bb.y, %bb.ai
  ret void

bb.ak:                                            ; preds = %bb.m
  %i.hi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hi, label %bb.al [
    i8 0, label %.thread139
    i8 1, label %.thread136
    i8 2, label %.thread136
  ], !prof !71

bb.al:                                            ; preds = %bb.ak
  %i.hj = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E") ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %.thread139, label %.thread136

.thread136:                                       ; preds = %bb.ak, %bb.ak, %bb.al
  %.sroa.018.0138 = phi i8 [ %i.hj, %bb.al ], [ %i.hi, %bb.ak ], [ %i.hi, %bb.ak ]
  %i.hl = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.hm = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hl, i8 noundef %.sroa.018.0138)
  br i1 %i.hm, label %bb.am, label %.thread139

bb.am:                                            ; preds = %.thread136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.hn = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$10push_front10__CALLSITE17h343b009c135a94a9E", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr @863, ptr %i.ae, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
end_hunk_0
begin_hunk_1_@"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push17h47f4e7b37f46a10fE":bb.a
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %.sroa.557.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ck, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, ptr noundef nonnull align 1 %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %.thread121, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h26a20ce961eb84e7E.exit"
  %i.cr = call noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cs = getelementptr i8, ptr %i.cr, i64 289
  %.val = load i8, ptr %i.cs, align 1, !range !59, !noundef !52
  %i.ct = trunc nuw i8 %.val to i1
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 289
  store i8 1, ptr %i.cv, align 1, !alias.scope !16403
  %i.cw = load i32, ptr %0, align 4, !range !111, !noundef !52
  %i.cx = trunc nuw i32 %i.cw to i1
  %i.cy = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.cz = icmp eq i64 %i.cy, 0                    ; 2 uses
  br i1 %i.cx, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.da = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ak, label %.thread139

bb.n:                                             ; preds = %bb.l
  br i1 %i.cz, label %bb.z, label %.thread133

bb.o:                                             ; preds = %bb.l
  br i1 %i.cz, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dc, label %bb.q [
    i8 0, label %.critedge
    i8 1, label %.thread124
    i8 2, label %.thread124
  ], !prof !71

bb.q:                                             ; preds = %bb.p
  %i.dd = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E") ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %.critedge, label %.thread124

.thread124:                                       ; preds = %bb.p, %bb.p, %bb.q
  %.sroa.040.0126 = phi i8 [ %i.dd, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.p ]
  %i.df = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.dg = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.df, i8 noundef %.sroa.040.0126)
  br i1 %i.dg, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.thread124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dh = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @859, ptr %i.q, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.dm, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @93, ptr %i.dn, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %.sroa.042.sroa.5.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.di, ptr %.sroa.443.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  %i.do = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16404
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.s, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit"

bb.s:                                             ; preds = %bb.r
  %i.dq = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16404 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 6
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp samesign ugt i64 %i.dq, 4
  br i1 %i.ds, label %bb.t, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit"

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !noalias !16404, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !52, !align !62, !noundef !52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !52
  store i64 5, ptr %i.f, align 8, !noalias !16404
  %.sroa.52.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dv, ptr %.sroa.52.0..sroa_idx.i112, align 8, !noalias !16404
  %.sroa.7.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx.i113, align 8, !noalias !16404
  %i.dy = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !52, !nonnull !52
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef align 1 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !inline_history !16391
  br i1 %i.ed, label %bb.u, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit"

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16404
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dt, ptr noundef nonnull align 1 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16404
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit": ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

.critedge:                                        ; preds = %bb.p, %.thread124, %bb.o, %bb.q
  %i.ee = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.critedge
  %i.eg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i64 %i.eg, 4
  br i1 %i.ei, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ej = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !52, !align !62, !noundef !52
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noundef !52
  store i64 5, ptr %i.p, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.el, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.en, ptr %.sroa.7106.0..sroa_idx, align 8
  %i.eo = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !52, !nonnull !52
  %i.et = call noundef zeroext i1 %i.es(ptr noundef align 1 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eu = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @859, ptr %i.m, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ez, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @93, ptr %i.fa, align 8
  store i64 1, ptr %i.o, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.587.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ev, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, ptr noundef nonnull align 1 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %.critedge, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h540c2f2b7748d900E.exit"
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.fc, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.445.0..sroa_idx, align 4
  br label %bb.aj

bb.z:                                             ; preds = %bb.n
  %i.fd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fd, label %bb.aa [
    i8 0, label %.thread133
    i8 1, label %.thread130
    i8 2, label %.thread130
  ], !prof !71

bb.aa:                                            ; preds = %bb.z
  %i.fe = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE") ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %.thread133, label %.thread130

.thread130:                                       ; preds = %bb.z, %bb.z, %bb.aa
  %.sroa.029.0132 = phi i8 [ %i.fe, %bb.aa ], [ %i.fd, %bb.z ], [ %i.fd, %bb.z ]
  %i.fg = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.fh = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fg, i8 noundef %.sroa.029.0132)
  br i1 %i.fh, label %bb.ab, label %.thread133

bb.ab:                                            ; preds = %.thread130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fi = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @861, ptr %i.y, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.fn, align 8
  store ptr %i.y, ptr %i.z, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @93, ptr %i.fo, align 8
  store i64 1, ptr %i.aa, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.fj, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  %i.fp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16405
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.ac, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.fr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16405 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 6
  call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp samesign ugt i64 %i.fr, 4
  br i1 %i.ft, label %bb.ad, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit"

bb.ad:                                            ; preds = %bb.ac
  %i.fu = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !noalias !16405, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !52, !align !62, !noundef !52
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !52
  store i64 5, ptr %i.d, align 8, !noalias !16405
  %.sroa.52.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.fw, ptr %.sroa.52.0..sroa_idx.i114, align 8, !noalias !16405
  %.sroa.7.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fy, ptr %.sroa.7.0..sroa_idx.i115, align 8, !noalias !16405
  %i.fz = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ga = extractvalue { ptr, ptr } %i.fz, 0      ; 2 uses
  %i.gb = extractvalue { ptr, ptr } %i.fz, 1      ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !52, !nonnull !52
  %i.ge = call noundef zeroext i1 %i.gd(ptr noundef align 1 %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !inline_history !16394
  br i1 %i.ge, label %bb.ae, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit"

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16405
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fu, ptr noundef nonnull align 1 %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16405
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit": ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ai

.thread133:                                       ; preds = %bb.z, %bb.aa, %.thread130, %bb.n
  %i.gf = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread133
  %i.gh = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 6
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp samesign ugt i64 %i.gh, 4
  br i1 %i.gj, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gk = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !52, !align !62, !noundef !52
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !noundef !52
  store i64 5, ptr %i.x, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.gm, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.go, ptr %.sroa.7101.0..sroa_idx, align 8
  %i.gp = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0      ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gp, 1      ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !invariant.load !52, !nonnull !52
  %i.gu = call noundef zeroext i1 %i.gt(ptr noundef align 1 %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gv = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @861, ptr %i.u, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.ha, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @93, ptr %i.hb, align 8
  store i64 1, ptr %i.w, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.577.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.gw, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gk, ptr noundef nonnull align 1 %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %.thread133, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17haa198745d4c15a9dE.exit"
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hf = load ptr, ptr %1, align 8, !nonnull !52, !align !55, !noundef !52
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hh = load <2 x i32>, ptr %i.he, align 4
  store <2 x i32> %i.hh, ptr %i.hg, align 8
  store ptr %i.hf, ptr %i.t, align 8
  %i.hi = load <2 x i32>, ptr %i.hd, align 8
  %i.hj = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 184
  store i32 1, ptr %i.hk, align 8, !alias.scope !16406
  %.sroa.4.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.hj, i64 188
  store <2 x i32> %i.hi, ptr %.sroa.4.0..sroa_idx118, align 4, !alias.scope !16406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hl = load <2 x i32>, ptr %i.hd, align 8
  store <2 x i32> %i.hl, ptr %i.he, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17h6dadb18ea86b0cc6E.exit", %.thread139, %bb.aq, %bb.as, %bb.ar, %bb.y, %bb.ai
  ret void

bb.ak:                                            ; preds = %bb.m
  %i.hm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hm, label %bb.al [
    i8 0, label %.thread139
    i8 1, label %.thread136
    i8 2, label %.thread136
  ], !prof !71

bb.al:                                            ; preds = %bb.ak
  %i.hn = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E") ; 2 uses
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %.thread139, label %.thread136

.thread136:                                       ; preds = %bb.ak, %bb.ak, %bb.al
  %.sroa.018.0138 = phi i8 [ %i.hn, %bb.al ], [ %i.hm, %bb.ak ], [ %i.hm, %bb.ak ]
  %i.hp = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.hq = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hp, i8 noundef %.sroa.018.0138)
  br i1 %i.hq, label %bb.am, label %.thread139

bb.am:                                            ; preds = %.thread136
end_hunk_1
begin_hunk_2_@"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push17haa5883519331a650E":bb.a
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %.sroa.557.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ck, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.by, ptr noundef nonnull align 1 %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %.thread121, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hc75ce2157e4b8906E.exit"
  %i.cr = call noundef nonnull align 8 ptr @"_ZN74_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h65e86d0c382a55b7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cs = getelementptr i8, ptr %i.cr, i64 294
  %.val = load i8, ptr %i.cs, align 2, !range !59, !noundef !52
  %i.ct = trunc nuw i8 %.val to i1
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 294
  store i8 1, ptr %i.cv, align 2, !alias.scope !16427
  %i.cw = load i32, ptr %0, align 4, !range !111, !noundef !52
  %i.cx = trunc nuw i32 %i.cw to i1
  %i.cy = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.cz = icmp eq i64 %i.cy, 0                    ; 2 uses
  br i1 %i.cx, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.da = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ak, label %.thread139

bb.n:                                             ; preds = %bb.l
  br i1 %i.cz, label %bb.z, label %.thread133

bb.o:                                             ; preds = %bb.l
  br i1 %i.cz, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.dc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dc, label %bb.q [
    i8 0, label %.critedge
    i8 1, label %.thread124
    i8 2, label %.thread124
  ], !prof !71

bb.q:                                             ; preds = %bb.p
  %i.dd = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E") ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %.critedge, label %.thread124

.thread124:                                       ; preds = %bb.p, %bb.p, %bb.q
  %.sroa.040.0126 = phi i8 [ %i.dd, %bb.q ], [ %i.dc, %bb.p ], [ %i.dc, %bb.p ]
  %i.df = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.dg = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.df, i8 noundef %.sroa.040.0126)
  br i1 %i.dg, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.thread124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dh = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @859, ptr %i.q, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.dm, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @93, ptr %i.dn, align 8
  store i64 1, ptr %i.s, align 8
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8
  %.sroa.042.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 1, ptr %.sroa.042.sroa.5.0..sroa_idx, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.di, ptr %.sroa.443.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  %i.do = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16428
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.s, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit"

bb.s:                                             ; preds = %bb.r
  %i.dq = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16428 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 6
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp samesign ugt i64 %i.dq, 4
  br i1 %i.ds, label %bb.t, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit"

bb.t:                                             ; preds = %bb.s
  %i.dt = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !noalias !16428, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !52, !align !62, !noundef !52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !52
  store i64 5, ptr %i.f, align 8, !noalias !16428
  %.sroa.52.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dv, ptr %.sroa.52.0..sroa_idx.i112, align 8, !noalias !16428
  %.sroa.7.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx.i113, align 8, !noalias !16428
  %i.dy = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !52, !nonnull !52
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef align 1 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f), !inline_history !16415
  br i1 %i.ed, label %bb.u, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit"

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !16428
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dt, ptr noundef nonnull align 1 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16428
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit": ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

.critedge:                                        ; preds = %bb.p, %.thread124, %bb.o, %bb.q
  %i.ee = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.critedge
  %i.eg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i64 %i.eg, 4
  br i1 %i.ei, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ej = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !52, !align !62, !noundef !52
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noundef !52
  store i64 5, ptr %i.p, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.el, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.en, ptr %.sroa.7106.0..sroa_idx, align 8
  %i.eo = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !52, !nonnull !52
  %i.et = call noundef zeroext i1 %i.es(ptr noundef align 1 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.eu = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h674b0d213d14b307E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @859, ptr %i.m, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.ez, align 8
  store ptr %i.m, ptr %i.n, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @93, ptr %i.fa, align 8
  store i64 1, ptr %i.o, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 1, ptr %.sroa.587.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ev, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, ptr noundef nonnull align 1 %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %.critedge, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hf1944cf39d2e4c6aE.exit"
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.fc, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.445.0..sroa_idx, align 4
  br label %bb.aj

bb.z:                                             ; preds = %bb.n
  %i.fd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fd, label %bb.aa [
    i8 0, label %.thread133
    i8 1, label %.thread130
    i8 2, label %.thread130
  ], !prof !71

bb.aa:                                            ; preds = %bb.z
  %i.fe = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE") ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %.thread133, label %.thread130

.thread130:                                       ; preds = %bb.z, %bb.z, %bb.aa
  %.sroa.029.0132 = phi i8 [ %i.fe, %bb.aa ], [ %i.fd, %bb.z ], [ %i.fd, %bb.z ]
  %i.fg = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.fh = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fg, i8 noundef %.sroa.029.0132)
  br i1 %i.fh, label %bb.ab, label %.thread133

bb.ab:                                            ; preds = %.thread130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fi = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @861, ptr %i.y, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.fn, align 8
  store ptr %i.y, ptr %i.z, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @93, ptr %i.fo, align 8
  store i64 1, ptr %i.aa, align 8
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.031.sroa.4.0..sroa_idx, align 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.fj, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  %i.fp = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !16429
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.ac, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.fr = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !16429 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, 6
  call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp samesign ugt i64 %i.fr, 4
  br i1 %i.ft, label %bb.ad, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit"

bb.ad:                                            ; preds = %bb.ac
  %i.fu = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !noalias !16429, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !52, !align !62, !noundef !52
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !52
  store i64 5, ptr %i.d, align 8, !noalias !16429
  %.sroa.52.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.fw, ptr %.sroa.52.0..sroa_idx.i114, align 8, !noalias !16429
  %.sroa.7.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.fy, ptr %.sroa.7.0..sroa_idx.i115, align 8, !noalias !16429
  %i.fz = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.ga = extractvalue { ptr, ptr } %i.fz, 0      ; 2 uses
  %i.gb = extractvalue { ptr, ptr } %i.fz, 1      ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !52, !nonnull !52
  %i.ge = call noundef zeroext i1 %i.gd(ptr noundef align 1 %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !inline_history !16418
  br i1 %i.ge, label %bb.ae, label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit"

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !16429
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fu, ptr noundef nonnull align 1 %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16429
  br label %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit"

"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit": ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ai

.thread133:                                       ; preds = %bb.z, %bb.aa, %.thread130, %bb.n
  %i.gf = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread133
  %i.gh = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 6
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp samesign ugt i64 %i.gh, 4
  br i1 %i.gj, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gk = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !52, !align !62, !noundef !52
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !noundef !52
  store i64 5, ptr %i.x, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.gm, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.go, ptr %.sroa.7101.0..sroa_idx, align 8
  %i.gp = call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0      ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gp, 1      ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !invariant.load !52, !nonnull !52
  %i.gu = call noundef zeroext i1 %i.gt(ptr noundef align 1 %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gv = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17h696a04b34854023cE", align 8, !nonnull !52, !align !55, !noundef !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @861, ptr %i.u, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.ha, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @93, ptr %i.hb, align 8
  store i64 1, ptr %i.w, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.577.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.gw, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gk, ptr noundef nonnull align 1 %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %.thread133, %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hbc6cefa8e8f4c2faE.exit"
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hf = load ptr, ptr %1, align 8, !nonnull !52, !align !55, !noundef !52
  %i.hg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hh = load <2 x i32>, ptr %i.he, align 4
  store <2 x i32> %i.hh, ptr %i.hg, align 8
  store ptr %i.hf, ptr %i.t, align 8
  %i.hi = load <2 x i32>, ptr %i.hd, align 8
  %i.hj = call noundef align 8 dereferenceable(304) ptr @"_ZN77_$LT$h2..proto..streams..store..Ptr$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h909ab8883e73f558E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 220
  store i32 1, ptr %i.hk, align 4, !alias.scope !16430
  %.sroa.4.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.hj, i64 224
  store <2 x i32> %i.hi, ptr %.sroa.4.0..sroa_idx118, align 8, !alias.scope !16430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hl = load <2 x i32>, ptr %i.hd, align 8
  store <2 x i32> %i.hl, ptr %i.he, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push28_$u7b$$u7b$closure$u7d$$u7d$17hd916a34917fa157aE.exit", %.thread139, %bb.aq, %bb.as, %bb.ar, %bb.y, %bb.ai
  ret void

bb.ak:                                            ; preds = %bb.m
  %i.hm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hm, label %bb.al [
    i8 0, label %.thread139
    i8 1, label %.thread136
    i8 2, label %.thread136
  ], !prof !71

bb.al:                                            ; preds = %bb.ak
  %i.hn = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E") ; 2 uses
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %.thread139, label %.thread136

.thread136:                                       ; preds = %bb.ak, %bb.ak, %bb.al
  %.sroa.018.0138 = phi i8 [ %i.hn, %bb.al ], [ %i.hm, %bb.ak ], [ %i.hm, %bb.ak ]
  %i.hp = load ptr, ptr @"_ZN2h25proto7streams5store14Queue$LT$N$GT$4push10__CALLSITE17he8b84474becc90c9E", align 8, !nonnull !52, !align !55, !noundef !52
  %i.hq = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hp, i8 noundef %.sroa.018.0138)
  br i1 %i.hq, label %bb.am, label %.thread139

bb.am:                                            ; preds = %.thread136
end_hunk_2
