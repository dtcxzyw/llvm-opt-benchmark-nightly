Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hab07e225e1baabb1E":bb.a
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !8418, !noalias !8419
  store i8 1, ptr %0, align 8, !alias.scope !8418, !noalias !8419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit"

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, ptr noundef nonnull align 4 dereferenceable(7) %i.aw, i64 7, i1 false), !noalias !8437
  %.sroa.14.1..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %.sroa.14.1.copyload9.i.i = load ptr, ptr %.sroa.14.1..sroa_idx8.i.i, align 1, !noalias !8437
  %.sroa.18.1..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %.sroa.18.1.copyload15.i.i = load i8, ptr %.sroa.18.1..sroa_idx14.i.i, align 1, !noalias !8437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8401
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ax, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, i64 7, i1 false), !noalias !8419
  %.sroa.4.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.1.copyload9.i.i, ptr %.sroa.4.0..sroa_idx21.i.i, align 8, !alias.scope !8418, !noalias !8419
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.18.1.copyload15.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !8418, !noalias !8419
  store i8 0, ptr %0, align 8, !alias.scope !8418, !noalias !8419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit"

bb.l:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, ptr noundef nonnull align 4 dereferenceable(7) %i.ay, i64 7, i1 false), !noalias !8438
  %.sroa.14.1..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %.sroa.14.1.copyload7.i.i = load ptr, ptr %.sroa.14.1..sroa_idx6.i.i, align 1, !noalias !8438
  %.sroa.18.1..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 19
  %.sroa.18.1.copyload.i.i = load i8, ptr %.sroa.18.1..sroa_idx13.i.i, align 1, !noalias !8438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8401
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.az, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, i64 7, i1 false), !noalias !8419
  %.sroa.4.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.1.copyload7.i.i, ptr %.sroa.4.0..sroa_idx23.i.i, align 8, !alias.scope !8418, !noalias !8419
  %.sroa.6.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.18.1.copyload.i.i, ptr %.sroa.6.0..sroa_idx25.i.i, align 8, !alias.scope !8418, !noalias !8419
  store i8 0, ptr %0, align 8, !alias.scope !8418, !noalias !8419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit"

"_ZN4uuid8external13serde_support68_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$uuid..Uuid$GT$11deserialize17hd91d074e8bd63551E.exit": ; preds = %.loopexit.i.i, %bb.f, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8400
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17heb05182918d3105bE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8449)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !8452, !noalias !8455, !noundef !26 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !8458, !noalias !8459 ; 2 uses
  %i.ab = icmp ult i64 %.promoted.i.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !8452, !noalias !8455, !nonnull !26, !align !208, !noundef !26
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ae = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ah, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8460)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !8461, !noundef !26
  switch i8 %i.ag, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !8232

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ah = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.y, align 8, !alias.scope !8462, !noalias !8459
  %exitcond.not.i.i.i = icmp eq i64 %i.ah, %i.aa
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8465
  store i64 5, ptr %i.x, align 8, !noalias !8465
  %i.ai = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !8466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8465
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !8466, !noalias !8467
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !8466, !noalias !8467
  br label %"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h9fc1317c7d6ea272E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !231, !alias.scope !8467, !noalias !8466, !noundef !26
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @374), !noalias !8466
  br label %.thread53.i.i

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !8467, !noalias !8466, !noundef !26
  %i.aq = add i8 %i.ap, -1                        ; 2 uses
  store i8 %i.aq, ptr %i.ao, align 1, !alias.scope !8467, !noalias !8466
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.fo, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.as = add i64 %i.ae, 1
  store i64 %i.as, ptr %i.y, align 8, !alias.scope !8468, !noalias !8466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8465
  store ptr %1, ptr %i.v, align 8, !noalias !8471
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.at, align 8, !noalias !8471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8471
  store i64 0, ptr %i.u, align 8, !noalias !8471
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.au, align 8, !noalias !8471
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.h

common.resume.i.i:                                ; preds = %bb.gb, %bb.fr, %bb.fj, %bb.fi
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.fi ], [ %i.ge, %bb.gb ], [ %lpad.phi.i.i.i, %bb.fj ], [ %i.fv, %bb.fr ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.fn, %bb.g
  %i.bb = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.fk, %bb.fn ]
  %i.bc = phi i64 [ 0, %bb.g ], [ %i.fm, %bb.fn ] ; 5 uses
  store i64 %i.bc, ptr %i.av, align 8, !noalias !8471
  call void @llvm.experimental.noalias.scope.decl(metadata !8475)
  call void @llvm.experimental.noalias.scope.decl(metadata !8478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8481
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h0542a0ab27d56229E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.bd = load i8, ptr %i.t, align 8, !range !231, !noalias !8481, !noundef !26
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !8481, !nonnull !26, !align !191, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8481
  br label %.loopexit50.i.i.i

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.bh = load i8, ptr %i.aw, align 1, !range !231, !noalias !8481, !noundef !26
  %i.bi = trunc nuw i8 %i.bh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8481
  br i1 %i.bi, label %bb.k, label %_ZN10serde_core2de9SeqAccess12next_element17hcfc3dc1164611007E.exit.thread37.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.v, align 8, !alias.scope !8485, !noalias !8486, !nonnull !26, !align !191, !noundef !26 ; 29 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8487)
  call void @llvm.experimental.noalias.scope.decl(metadata !8490)
  call void @llvm.experimental.noalias.scope.decl(metadata !8493)
  call void @llvm.experimental.noalias.scope.decl(metadata !8496)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 18 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !8499, !noalias !8502, !noundef !26 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !8508, !noalias !8509 ; 2 uses
  %i.bn = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !8499, !noalias !8502, !nonnull !26, !align !208, !noundef !26 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bq = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.m ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8510)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noalias !8511, !noundef !26
  switch i8 %i.bs, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 123, label %bb.o
    i8 34, label %bb.p
  ], !prof !8512

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bt = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bk, align 8, !alias.scope !8513, !noalias !8509
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bt, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit19.i.i.i.i.i.i.i.i, label %bb.l

.loopexit19.i.i.i.i.i.i.i.i:                      ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8516
  store i64 5, ptr %i.o, align 8, !noalias !8516
  %i.bu = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !8484

.noexc7.i.i.i:                                    ; preds = %.loopexit19.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8516
  br label %.loopexit50.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8516
  store i64 10, ptr %i.p, align 8, !noalias !8516
  %i.bv = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !8484

.noexc8.i.i.i:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8516
  br label %.loopexit50.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !231, !alias.scope !8517, !noalias !8518, !noundef !26
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.w, label %bb.v

bb.p:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !8519)
  call void @llvm.experimental.noalias.scope.decl(metadata !8522)
  call void @llvm.experimental.noalias.scope.decl(metadata !8525)
  call void @llvm.experimental.noalias.scope.decl(metadata !8528)
  call void @llvm.experimental.noalias.scope.decl(metadata !8531)
  call void @llvm.experimental.noalias.scope.decl(metadata !8534)
  call void @llvm.experimental.noalias.scope.decl(metadata !8537)
  call void @llvm.experimental.noalias.scope.decl(metadata !8540)
  %2 = icmp ult i64 %i.bq, %i.bm
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.p, %bb.q
  %i.bz = phi i64 [ %i.cc, %bb.q ], [ %i.bq, %bb.p ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !8543, !noundef !26 ; 2 uses
  switch i8 %i.cb, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = add i64 %i.bz, 1                        ; 3 uses
  store i64 %i.cc, ptr %i.bk, align 8, !alias.scope !8555, !noalias !8558
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cc, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8559
  %i.cd = icmp eq i8 %i.cb, 34
  br i1 %i.cd, label %bb.r, label %bb.s, !prof !791

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8559
  store i64 5, ptr %i.n, align 8, !noalias !8559
  %i.ce = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !8484

.noexc9.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8559
  br label %_ZN10serde_core2de10EnumAccess7variant17hfffb0ea7d62ffca5E.exit.thread.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.cf = add i64 %i.bz, 1
  store i64 %i.cf, ptr %i.bk, align 8, !alias.scope !8560, !noalias !8563
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !8564, !noalias !8563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8559
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %.noexc10.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc10.i.i.i:                                   ; preds = %bb.r
  %i.ch = load i64, ptr %i.l, align 8, !range !795, !noalias !8559, !noundef !26
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = load ptr, ptr %i.ax, align 8, !noalias !8559 ; 3 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h6e68c62551803292E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ck = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h1bcf6c8f55886afeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @375)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !8484

bb.t:                                             ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8559
  br label %_ZN10serde_core2de10EnumAccess7variant17hfffb0ea7d62ffca5E.exit.thread.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %.noexc10.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8559
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h69f3fd22fd372154E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cj, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc12.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc12.i.i.i:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8559
  %i.cl = load i8, ptr %i.m, align 8, !range !231, !noalias !8559, !noundef !26
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9SeqAccess12next_element17hcfc3dc1164611007E.exit.thread42.i.i.i, !prof !28

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc12.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !8559
  br label %.noexc11.i.i.i

.noexc11.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.cn = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.ck, %bb.s ]
  %i.co = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj)
          to label %.noexc13.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !8484

.noexc13.i.i.i:                                   ; preds = %.noexc11.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8559
  br label %_ZN10serde_core2de10EnumAccess7variant17hfffb0ea7d62ffca5E.exit.thread.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de10EnumAccess7variant17hfffb0ea7d62ffca5E.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %.noexc13.i.i.i, %bb.t, %.noexc9.i.i.i
  %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc9.i.i.i ], [ %i.co, %.noexc13.i.i.i ], [ %i.cj, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.loopexit50.i.i.i

_ZN10serde_core2de9SeqAccess12next_element17hcfc3dc1164611007E.exit.thread42.i.i.i: ; preds = %.noexc12.i.i.i
  %i.cp = load i8, ptr %i.ay, align 1, !range !3760, !noalias !8559, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8559
  br label %bb.fl

default.unreachable:                              ; preds = %"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17he41fcafebef5457cE.exit.i.i.i.i.i.i.i.i"
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 57 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !8517, !noalias !8518, !noundef !26
  %i.cs = add i8 %i.cr, -1                        ; 2 uses
  store i8 %i.cs, ptr %i.cq, align 1, !alias.scope !8517, !noalias !8518
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.fb, label %bb.w, !prof !28

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cu = add i64 %i.bq, 1                        ; 3 uses
  store i64 %i.cu, ptr %i.bk, align 8, !alias.scope !8565, !noalias !8518
  call void @llvm.experimental.noalias.scope.decl(metadata !8568)
  call void @llvm.experimental.noalias.scope.decl(metadata !8571)
  call void @llvm.experimental.noalias.scope.decl(metadata !8574)
  call void @llvm.experimental.noalias.scope.decl(metadata !8577)
  %i.cv = icmp ult i64 %i.cu, %i.bm
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.w, %bb.x
  %i.cw = phi i64 [ %i.cz, %bb.x ], [ %i.cu, %bb.w ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !8580, !noundef !26
  switch i8 %i.cy, label %bb.y [
    i8 32, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 13, label %bb.x
    i8 34, label %bb.z
    i8 125, label %bb.aa
  ], !prof !808

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.bk, align 8, !alias.scope !8587, !noalias !8590
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8592
  store i64 3, ptr %i.i, align 8, !noalias !8592
  %i.da = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc14.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc14.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8592
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8592
  store i64 17, ptr %i.j, align 8, !noalias !8592
  %i.db = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc15.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc15.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8592
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8592
  call void @llvm.experimental.noalias.scope.decl(metadata !8593)
  call void @llvm.experimental.noalias.scope.decl(metadata !8596)
  call void @llvm.experimental.noalias.scope.decl(metadata !8599)
  call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.bk, align 8, !alias.scope !8605, !noalias !8608
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.dd, align 8, !alias.scope !8613, !noalias !8608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8614
  invoke void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %.noexc16.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc16.i.i.i:                                   ; preds = %bb.z
  %i.de = load i64, ptr %i.g, align 8, !range !795, !noalias !8614, !noundef !26
  %i.df = icmp eq i64 %i.de, 2
  %i.dg = load ptr, ptr %i.az, align 8, !noalias !8614, !nonnull !26, !noundef !26 ; 2 uses
  br i1 %i.df, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i", !prof !556

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8614
  br label %bb.ab

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i12.i.i.i.i.i.i.i.i, align 8, !noalias !8614
  invoke fastcc void @"_ZN189_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h69f3fd22fd372154E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dg, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i13.i.i.i.i.i.i.i.i)
          to label %.noexc17.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc17.i.i.i:                                   ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.h, align 8, !range !231, !noalias !8592
  %i.dh = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8614
  br i1 %i.dh, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !8615

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc17.i.i.i
  %.pre.i.i16.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i15.i.i.i.i.i.i.i.i, align 8, !noalias !8592
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8592
  store i64 10, ptr %i.k, align 8, !noalias !8592
  %i.di = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc73e39b3ccff3049E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc18.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc18.i.i.i:                                   ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8592
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = phi ptr [ %.pre.i.i16.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i" ], [ %i.dg, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h691f2fb9e5148640E.exit.thread.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.dk = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h3793f630b9a7d5a8E(ptr noalias noundef nonnull align 8 %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj)
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !8484

.noexc19.i.i.i:                                   ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8592
  br label %"_ZN184_$LT$meilisearch_types..keys.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..keys..Action$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17hff0f04e1ac2a853bE.exit.i.i.i.i.i.i.i.i"

bb.ac:                                            ; preds = %.noexc17.i.i.i
  %i.dl = load i8, ptr %i.ba, align 1, !range !3760, !noalias !8592, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8592
  call void @llvm.experimental.noalias.scope.decl(metadata !8616)
  call void @llvm.experimental.noalias.scope.decl(metadata !8619)
  %i.dm = load i64, ptr %i.bl, align 8, !alias.scope !8622, !noalias !8625, !noundef !26 ; 6 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !8628, !noalias !8629 ; 2 uses
  %i.dn = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dm
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ac
  %i.do = load ptr, ptr %i.bo, align 8, !alias.scope !8622, !noalias !8625, !nonnull !26, !align !208, !noundef !26 ; 5 uses
  br label %bb.ad
end_hunk_0
